#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table --tuples-only --no-align -c"

# set the argument
ARGUMENT=$1

if [[ -z $ARGUMENT ]]
then
  echo "Please provide an element as an argument."
  exit 0
fi

# Determine what type of input it is
if [[ $ARGUMENT =~ ^[0-9]+$ ]]
then
  CONDITION="atomic_number = $ARGUMENT"

elif [[ $ARGUMENT =~ ^[a-zA-Z]+$ ]]
then
  CONDITION="symbol = '$ARGUMENT' OR name = '$ARGUMENT'"

else
  echo "I could not find that element in the database."
  exit 0
fi

RESULT=$($PSQL "
SELECT e.atomic_number,
       e.symbol,
       e.name,
       p.atomic_mass,
       p.melting_point_celsius,
       p.boiling_point_celsius,
       t.type
FROM elements e
JOIN properties p USING (atomic_number)
JOIN types t USING (type_id)
WHERE $CONDITION;
")

if [[ -z $RESULT ]]
then
  echo "I could not find that element in the database."
  exit 0
fi

echo "$RESULT" | while IFS="|" read ATOMIC_NUMBER SYMBOL NAME MASS MELTING BOILING TYPE
do
  echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
done