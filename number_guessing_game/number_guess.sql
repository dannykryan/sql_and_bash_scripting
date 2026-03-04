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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (13, 'danny', 2, 14);
INSERT INTO public.users VALUES (2, 'user_1772656591049', 2, 219);
INSERT INTO public.users VALUES (57, 'user_1772658952743', 2, 422);
INSERT INTO public.users VALUES (10, 'user_1772657091972', 2, 40);
INSERT INTO public.users VALUES (1, 'user_1772656591050', 5, 250);
INSERT INTO public.users VALUES (21, 'user_1772657512257', 2, 424);
INSERT INTO public.users VALUES (9, 'user_1772657091973', 5, 198);
INSERT INTO public.users VALUES (29, 'user_1772657938568', 2, 621);
INSERT INTO public.users VALUES (4, 'user_1772656807275', 2, 71);
INSERT INTO public.users VALUES (20, 'user_1772657512258', 5, 112);
INSERT INTO public.users VALUES (3, 'user_1772656807276', 5, 241);
INSERT INTO public.users VALUES (79, 'user_1772659661831', 5, 182);
INSERT INTO public.users VALUES (12, 'user_1772657124539', 2, 36);
INSERT INTO public.users VALUES (39, 'user_1772658503842', 2, 200);
INSERT INTO public.users VALUES (28, 'user_1772657938569', 5, 622);
INSERT INTO public.users VALUES (56, 'user_1772658952744', 5, 310);
INSERT INTO public.users VALUES (6, 'user_1772656853782', 2, 538);
INSERT INTO public.users VALUES (11, 'user_1772657124540', 5, 14);
INSERT INTO public.users VALUES (49, 'user_1772658911107', 2, 300);
INSERT INTO public.users VALUES (58, 'testuser', 0, NULL);
INSERT INTO public.users VALUES (5, 'user_1772656853783', 5, 219);
INSERT INTO public.users VALUES (23, 'user_1772657557600', 2, 285);
INSERT INTO public.users VALUES (67, 'user_1772659648761', 2, 214);
INSERT INTO public.users VALUES (38, 'user_1772658503843', 5, 433);
INSERT INTO public.users VALUES (8, 'user_1772657014996', 2, 353);
INSERT INTO public.users VALUES (22, 'user_1772657557601', 5, 38);
INSERT INTO public.users VALUES (15, 'user_1772657305854', 2, 493);
INSERT INTO public.users VALUES (31, 'user_1772658083369', 2, 113);
INSERT INTO public.users VALUES (7, 'user_1772657014997', 5, 305);
INSERT INTO public.users VALUES (40, 'user_1772658537382', 1, 626);
INSERT INTO public.users VALUES (14, 'user_1772657305855', 5, 196);
INSERT INTO public.users VALUES (48, 'user_1772658911108', 5, 380);
INSERT INTO public.users VALUES (41, 'user_1772658537381', 1, 55);
INSERT INTO public.users VALUES (25, 'user_1772657601391', 2, 14);
INSERT INTO public.users VALUES (30, 'user_1772658083370', 5, 281);
INSERT INTO public.users VALUES (17, 'user_1772657434754', 2, 208);
INSERT INTO public.users VALUES (24, 'user_1772657601392', 5, 9);
INSERT INTO public.users VALUES (16, 'user_1772657434755', 5, 58);
INSERT INTO public.users VALUES (33, 'user_1772658091314', 2, 256);
INSERT INTO public.users VALUES (19, 'user_1772657454463', 2, 890);
INSERT INTO public.users VALUES (27, 'user_1772657748873', 2, 442);
INSERT INTO public.users VALUES (87, 'a;oshidfg', 1, 8);
INSERT INTO public.users VALUES (43, 'user_1772658547726', 2, 141);
INSERT INTO public.users VALUES (60, 'user_1772659479648', 2, 467);
INSERT INTO public.users VALUES (18, 'user_1772657454464', 5, 160);
INSERT INTO public.users VALUES (32, 'user_1772658091315', 5, 34);
INSERT INTO public.users VALUES (26, 'user_1772657748874', 5, 572);
INSERT INTO public.users VALUES (51, 'user_1772658921332', 2, 603);
INSERT INTO public.users VALUES (65, 'user_1772659648762', 5, 5);
INSERT INTO public.users VALUES (42, 'user_1772658547727', 5, 356);
INSERT INTO public.users VALUES (35, 'user_1772658213247', 2, 59);
INSERT INTO public.users VALUES (59, 'user_1772659479649', 5, 349);
INSERT INTO public.users VALUES (50, 'user_1772658921333', 5, 196);
INSERT INTO public.users VALUES (34, 'user_1772658213248', 5, 83);
INSERT INTO public.users VALUES (128, 'user_1772660331722', 2, 622);
INSERT INTO public.users VALUES (45, 'user_1772658562444', 2, 263);
INSERT INTO public.users VALUES (124, 'user_1772660157798', 2, 58);
INSERT INTO public.users VALUES (37, 'user_1772658296964', 2, 231);
INSERT INTO public.users VALUES (44, 'user_1772658562445', 5, 366);
INSERT INTO public.users VALUES (53, 'user_1772658940273', 2, 39);
INSERT INTO public.users VALUES (111, 'user_1772660072277', 2, 47);
INSERT INTO public.users VALUES (36, 'user_1772658296965', 5, 108);
INSERT INTO public.users VALUES (62, 'user_1772659484454', 2, 407);
INSERT INTO public.users VALUES (47, 'user_1772658577308', 2, 51);
INSERT INTO public.users VALUES (52, 'user_1772658940274', 5, 326);
INSERT INTO public.users VALUES (74, 'user_1772659657941', 2, 66);
INSERT INTO public.users VALUES (123, 'user_1772660157799', 5, 527);
INSERT INTO public.users VALUES (46, 'user_1772658577309', 5, 53);
INSERT INTO public.users VALUES (61, 'user_1772659484455', 5, 94);
INSERT INTO public.users VALUES (127, 'user_1772660331723', 5, 213);
INSERT INTO public.users VALUES (55, 'user_1772658947818', 2, 127);
INSERT INTO public.users VALUES (90, 'user_1772659967020', 2, 10);
INSERT INTO public.users VALUES (54, 'user_1772658947819', 5, 87);
INSERT INTO public.users VALUES (72, 'user_1772659657942', 5, 224);
INSERT INTO public.users VALUES (64, 'user_1772659493934', 2, 496);
INSERT INTO public.users VALUES (126, 'user_1772660278348', 2, 752);
INSERT INTO public.users VALUES (63, 'user_1772659493935', 5, 58);
INSERT INTO public.users VALUES (130, 'user_1772660336254', 2, 94);
INSERT INTO public.users VALUES (88, 'user_1772659967021', 5, 146);
INSERT INTO public.users VALUES (81, 'user_1772659661830', 2, 131);
INSERT INTO public.users VALUES (125, 'user_1772660278349', 5, 25);
INSERT INTO public.users VALUES (95, 'user_1772659985872', 0, NULL);
INSERT INTO public.users VALUES (97, 'user_1772659985871', 0, NULL);
INSERT INTO public.users VALUES (109, 'user_1772660072278', 5, 65);
INSERT INTO public.users VALUES (102, 'user_1772659990498', 0, NULL);
INSERT INTO public.users VALUES (129, 'user_1772660336255', 5, 167);
INSERT INTO public.users VALUES (104, 'user_1772659990497', 0, NULL);
INSERT INTO public.users VALUES (118, 'user_1772660079445', 2, 190);
INSERT INTO public.users VALUES (116, 'user_1772660079446', 5, 333);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 130, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

