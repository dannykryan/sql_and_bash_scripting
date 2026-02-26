--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
        name character varying(30) NOT NULL,
            region text,
                discovered_year integer,
                    is_visible boolean DEFAULT true
                    );


                    ALTER TABLE public.constellation OWNER TO freecodecamp;

                    --
                    -- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
                    --

                    CREATE SEQUENCE public.constellation_constellation_id_seq
                        AS integer
                            START WITH 1
                                INCREMENT BY 1
                                    NO MINVALUE
                                        NO MAXVALUE
                                            CACHE 1;


                                            ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

                                            --
                                            -- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
                                            --

                                            ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


                                            --
                                            -- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
                                            --

                                            CREATE TABLE public.galaxy (
                                                galaxy_id integer NOT NULL,
                                                    name character varying(30) NOT NULL,
                                                        stars bigint,
                                                            star_id integer NOT NULL,
                                                                age_in_billions numeric(5,2),
                                                                    is_active boolean DEFAULT true
                                                                    );


                                                                    ALTER TABLE public.galaxy OWNER TO freecodecamp;

                                                                    --
                                                                    -- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
                                                                    --

                                                                    CREATE SEQUENCE public.galaxy_galaxy_id_seq
                                                                        AS integer
                                                                            START WITH 1
                                                                                INCREMENT BY 1
                                                                                    NO MINVALUE
                                                                                        NO MAXVALUE
                                                                                            CACHE 1;


                                                                                            ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

                                                                                            --
                                                                                            -- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
                                                                                            --

                                                                                            ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


                                                                                            --
                                                                                            -- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
                                                                                            --

                                                                                            CREATE TABLE public.moon (
                                                                                                moon_id integer NOT NULL,
                                                                                                    name character varying(30) NOT NULL,
                                                                                                        radius_in_km numeric(10,2),
                                                                                                            orbital_period_days integer NOT NULL,
                                                                                                                planet_id integer NOT NULL,
                                                                                                                    is_visible boolean DEFAULT true
                                                                                                                    );


                                                                                                                    ALTER TABLE public.moon OWNER TO freecodecamp;

                                                                                                                    --
                                                                                                                    -- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
                                                                                                                    --

                                                                                                                    CREATE SEQUENCE public.moon_moon_id_seq
                                                                                                                        AS integer
                                                                                                                            START WITH 1
                                                                                                                                INCREMENT BY 1
                                                                                                                                    NO MINVALUE
                                                                                                                                        NO MAXVALUE
                                                                                                                                            CACHE 1;


                                                                                                                                            ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

                                                                                                                                            --
                                                                                                                                            -- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
                                                                                                                                            --

                                                                                                                                            ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


                                                                                                                                            --
                                                                                                                                            -- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
                                                                                                                                            --

                                                                                                                                            CREATE TABLE public.planet (
                                                                                                                                                planet_id integer NOT NULL,
                                                                                                                                                    name character varying(30) NOT NULL,
                                                                                                                                                        moons integer,
                                                                                                                                                            order_from_sun integer NOT NULL,
                                                                                                                                                                equatorial_radius numeric(10,2),
                                                                                                                                                                    rings boolean DEFAULT false,
                                                                                                                                                                        roman_name text,
                                                                                                                                                                            star_id integer NOT NULL
                                                                                                                                                                            );


                                                                                                                                                                            ALTER TABLE public.planet OWNER TO freecodecamp;

                                                                                                                                                                            --
                                                                                                                                                                            -- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
                                                                                                                                                                            --

                                                                                                                                                                            CREATE SEQUENCE public.planet_planet_id_seq
                                                                                                                                                                                AS integer
                                                                                                                                                                                    START WITH 1
                                                                                                                                                                                        INCREMENT BY 1
                                                                                                                                                                                            NO MINVALUE
                                                                                                                                                                                                NO MAXVALUE
                                                                                                                                                                                                    CACHE 1;


                                                                                                                                                                                                    ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

                                                                                                                                                                                                    --
                                                                                                                                                                                                    -- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                    --

                                                                                                                                                                                                    ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


                                                                                                                                                                                                    --
                                                                                                                                                                                                    -- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                    --

                                                                                                                                                                                                    CREATE TABLE public.star (
                                                                                                                                                                                                        star_id integer NOT NULL,
                                                                                                                                                                                                            name character varying(30) NOT NULL,
                                                                                                                                                                                                                planets integer,
                                                                                                                                                                                                                    galaxy_id integer NOT NULL,
                                                                                                                                                                                                                        is_active boolean
                                                                                                                                                                                                                        );


                                                                                                                                                                                                                        ALTER TABLE public.star OWNER TO freecodecamp;

                                                                                                                                                                                                                        --
                                                                                                                                                                                                                        -- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                        --

                                                                                                                                                                                                                        CREATE SEQUENCE public.star_star_id_seq
                                                                                                                                                                                                                            AS integer
                                                                                                                                                                                                                                START WITH 1
                                                                                                                                                                                                                                    INCREMENT BY 1
                                                                                                                                                                                                                                        NO MINVALUE
                                                                                                                                                                                                                                            NO MAXVALUE
                                                                                                                                                                                                                                                CACHE 1;


                                                                                                                                                                                                                                                ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                -- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                -- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                -- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                -- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                -- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                -- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                -- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                COPY public.constellation (constellation_id, name, region, discovered_year, is_visible) FROM stdin;
                                                                                                                                                                                                                                                1	Orion	Northern Sky	1500	t
                                                                                                                                                                                                                                                2	Cassiopeia	Northern Sky	1600	t
                                                                                                                                                                                                                                                3	Lyra	Northern Sky	1700	t
                                                                                                                                                                                                                                                \.


                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                -- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                COPY public.galaxy (galaxy_id, name, stars, star_id, age_in_billions, is_active) FROM stdin;
                                                                                                                                                                                                                                                1	Milky Way	100000000000	1	13.80	t
                                                                                                                                                                                                                                                2	Andromeda	1000000000000	2	13.80	t
                                                                                                                                                                                                                                                3	Triangulum	40000000000	3	13.80	t
                                                                                                                                                                                                                                                4	Sombrero	80000000000	4	13.80	t
                                                                                                                                                                                                                                                5	Whirlpool	100000000000	5	13.80	t
                                                                                                                                                                                                                                                6	Pinwheel	100000000000	6	13.80	t
                                                                                                                                                                                                                                                \.


                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                -- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                COPY public.moon (moon_id, name, radius_in_km, orbital_period_days, planet_id, is_visible) FROM stdin;
                                                                                                                                                                                                                                                1	Luna	1737.40	27	3	t
                                                                                                                                                                                                                                                2	Phobos	11.10	1	4	t
                                                                                                                                                                                                                                                3	Deimos	6.20	1	4	t
                                                                                                                                                                                                                                                4	Io	1821.60	2	5	t
                                                                                                                                                                                                                                                5	Europa	1560.80	3	5	t
                                                                                                                                                                                                                                                6	Ganymede	2634.10	7	5	t
                                                                                                                                                                                                                                                7	Callisto	2410.30	16	5	t
                                                                                                                                                                                                                                                8	Titan	2574.70	16	6	t
                                                                                                                                                                                                                                                9	Enceladus	252.10	1	6	t
                                                                                                                                                                                                                                                10	Mimas	198.20	1	6	t
                                                                                                                                                                                                                                                11	Rhea	764.30	4	6	t
                                                                                                                                                                                                                                                12	Tethys	531.10	2	6	t
                                                                                                                                                                                                                                                13	Dione	561.40	2	6	t
                                                                                                                                                                                                                                                14	Triton	1353.40	6	8	t
                                                                                                                                                                                                                                                15	Charon	606.00	6	9	t
                                                                                                                                                                                                                                                16	Ariel	578.90	2	7	t
                                                                                                                                                                                                                                                17	Umbriel	584.70	4	7	t
                                                                                                                                                                                                                                                18	Titania	788.40	8	7	t
                                                                                                                                                                                                                                                19	Oberon	761.40	13	7	t
                                                                                                                                                                                                                                                20	Miranda	235.80	1	7	t
                                                                                                                                                                                                                                                \.


                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                -- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                COPY public.planet (planet_id, name, moons, order_from_sun, equatorial_radius, rings, roman_name, star_id) FROM stdin;
                                                                                                                                                                                                                                                1	Mercury	0	1	2439.70	f	Mercurius	1
                                                                                                                                                                                                                                                2	Venus	0	2	6051.80	f	Venus	1
                                                                                                                                                                                                                                                3	Earth	1	3	6371.00	f	Terra	1
                                                                                                                                                                                                                                                4	Mars	2	4	3389.50	f	Mars	1
                                                                                                                                                                                                                                                5	Jupiter	79	5	69911.00	t	Iuppiter	1
                                                                                                                                                                                                                                                6	Saturn	83	6	58232.00	t	Saturnus	1
                                                                                                                                                                                                                                                7	Uranus	27	7	25362.00	t	Uranus	1
                                                                                                                                                                                                                                                8	Neptune	14	8	24622.00	t	Neptunus	1
                                                                                                                                                                                                                                                9	Kepler-22b	0	9	30000.00	f	Kepler	2
                                                                                                                                                                                                                                                10	Proxima b	0	10	7000.00	f	Proxima	2
                                                                                                                                                                                                                                                11	HD 209458 b	0	11	80000.00	f	Osiris	3
                                                                                                                                                                                                                                                12	Gliese 581 g	0	12	9000.00	f	Gliese	4
                                                                                                                                                                                                                                                \.


                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                -- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                COPY public.star (star_id, name, planets, galaxy_id, is_active) FROM stdin;
                                                                                                                                                                                                                                                1	Sun	8	1	t
                                                                                                                                                                                                                                                2	Proxima Centauri	3	1	t
                                                                                                                                                                                                                                                3	Sirius	5	2	t
                                                                                                                                                                                                                                                4	Betelgeuse	4	3	t
                                                                                                                                                                                                                                                5	Rigel	6	4	t
                                                                                                                                                                                                                                                6	Alpha Centauri A	7	1	t
                                                                                                                                                                                                                                                \.


                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                -- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                -- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                -- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                -- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                -- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                -- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                ALTER TABLE ONLY public.constellation
                                                                                                                                                                                                                                                    ADD CONSTRAINT constellation_name_key UNIQUE (name);


                                                                                                                                                                                                                                                    --
                                                                                                                                                                                                                                                    -- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                    --

                                                                                                                                                                                                                                                    ALTER TABLE ONLY public.constellation
                                                                                                                                                                                                                                                        ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


                                                                                                                                                                                                                                                        --
                                                                                                                                                                                                                                                        -- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                        --

                                                                                                                                                                                                                                                        ALTER TABLE ONLY public.galaxy
                                                                                                                                                                                                                                                            ADD CONSTRAINT galaxy_name_key UNIQUE (name);


                                                                                                                                                                                                                                                            --
                                                                                                                                                                                                                                                            -- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                            --

                                                                                                                                                                                                                                                            ALTER TABLE ONLY public.galaxy
                                                                                                                                                                                                                                                                ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


                                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                                -- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                                ALTER TABLE ONLY public.moon
                                                                                                                                                                                                                                                                    ADD CONSTRAINT moon_name_key UNIQUE (name);


                                                                                                                                                                                                                                                                    --
                                                                                                                                                                                                                                                                    -- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                                    --

                                                                                                                                                                                                                                                                    ALTER TABLE ONLY public.moon
                                                                                                                                                                                                                                                                        ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


                                                                                                                                                                                                                                                                        --
                                                                                                                                                                                                                                                                        -- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                                        --

                                                                                                                                                                                                                                                                        ALTER TABLE ONLY public.planet
                                                                                                                                                                                                                                                                            ADD CONSTRAINT planet_name_key UNIQUE (name);


                                                                                                                                                                                                                                                                            --
                                                                                                                                                                                                                                                                            -- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                                            --

                                                                                                                                                                                                                                                                            ALTER TABLE ONLY public.planet
                                                                                                                                                                                                                                                                                ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


                                                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                                                -- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                                                ALTER TABLE ONLY public.star
                                                                                                                                                                                                                                                                                    ADD CONSTRAINT star_name_key UNIQUE (name);


                                                                                                                                                                                                                                                                                    --
                                                                                                                                                                                                                                                                                    -- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                                                    --

                                                                                                                                                                                                                                                                                    ALTER TABLE ONLY public.star
                                                                                                                                                                                                                                                                                        ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


                                                                                                                                                                                                                                                                                        --
                                                                                                                                                                                                                                                                                        -- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                                                        --

                                                                                                                                                                                                                                                                                        ALTER TABLE ONLY public.moon
                                                                                                                                                                                                                                                                                            ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


                                                                                                                                                                                                                                                                                            --
                                                                                                                                                                                                                                                                                            -- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                                                            --

                                                                                                                                                                                                                                                                                            ALTER TABLE ONLY public.planet
                                                                                                                                                                                                                                                                                                ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


                                                                                                                                                                                                                                                                                                --
                                                                                                                                                                                                                                                                                                -- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
                                                                                                                                                                                                                                                                                                --

                                                                                                                                                                                                                                                                                                ALTER TABLE ONLY public.star
                                                                                                                                                                                                                                                                                                    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


                                                                                                                                                                                                                                                                                                    --
                                                                                                                                                                                                                                                                                                    -- PostgreSQL database dump complete
                                                                                                                                                                                                                                                                                                    --

                                                                                                                                                                                                                                                                                                    