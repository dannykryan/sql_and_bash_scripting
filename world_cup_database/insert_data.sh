#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
# Clear existing data (important for test runs)
$PSQL "TRUNCATE TABLE games, teams RESTART IDENTITY CASCADE"

# Read the CSV file (skip header)
while IFS=',' read -r year round winner opponent winner_goals opponent_goals
do
  if [[ $year != "year" ]]
  then

    # Insert winner team if not exists
    TEAM_ID=$($PSQL "INSERT INTO teams(name)
                     SELECT '$winner'
                     WHERE NOT EXISTS (
                       SELECT 1 FROM teams WHERE name='$winner'
                     )
                     RETURNING team_id")

    # If team already existed, get its id
    if [[ -z $TEAM_ID ]]
    then
      TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
    fi

    # Insert opponent team if not exists
    OPP_ID=$($PSQL "INSERT INTO teams(name)
                    SELECT '$opponent'
                    WHERE NOT EXISTS (
                      SELECT 1 FROM teams WHERE name='$opponent'
                    )
                    RETURNING team_id")

    if [[ -z $OPP_ID ]]
    then
      OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")
    fi

    # Insert game
    $PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals)
             VALUES ($year, '$round', 
                     (SELECT team_id FROM teams WHERE name='$winner'),
                     (SELECT team_id FROM teams WHERE name='$opponent'),
                     $winner_goals,
                     $opponent_goals)"
  fi

done < games.csv