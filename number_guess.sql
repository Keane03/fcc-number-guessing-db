--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 679, 9);
INSERT INTO public.games VALUES (2, 913, 9);
INSERT INTO public.games VALUES (3, 466, 10);
INSERT INTO public.games VALUES (4, 503, 10);
INSERT INTO public.games VALUES (5, 949, 9);
INSERT INTO public.games VALUES (6, 178, 9);
INSERT INTO public.games VALUES (7, 521, 9);
INSERT INTO public.games VALUES (8, 43, 11);
INSERT INTO public.games VALUES (9, 77, 11);
INSERT INTO public.games VALUES (10, 333, 12);
INSERT INTO public.games VALUES (11, 233, 12);
INSERT INTO public.games VALUES (12, 778, 11);
INSERT INTO public.games VALUES (13, 824, 11);
INSERT INTO public.games VALUES (14, 606, 11);
INSERT INTO public.games VALUES (15, 849, 13);
INSERT INTO public.games VALUES (16, 316, 13);
INSERT INTO public.games VALUES (17, 958, 14);
INSERT INTO public.games VALUES (18, 147, 14);
INSERT INTO public.games VALUES (19, 161, 13);
INSERT INTO public.games VALUES (20, 25, 13);
INSERT INTO public.games VALUES (21, 702, 13);
INSERT INTO public.games VALUES (22, 728, 15);
INSERT INTO public.games VALUES (23, 410, 15);
INSERT INTO public.games VALUES (24, 757, 16);
INSERT INTO public.games VALUES (25, 349, 16);
INSERT INTO public.games VALUES (26, 182, 15);
INSERT INTO public.games VALUES (27, 794, 15);
INSERT INTO public.games VALUES (28, 791, 15);
INSERT INTO public.games VALUES (29, 869, 19);
INSERT INTO public.games VALUES (30, 703, 19);
INSERT INTO public.games VALUES (31, 621, 20);
INSERT INTO public.games VALUES (32, 149, 20);
INSERT INTO public.games VALUES (33, 758, 19);
INSERT INTO public.games VALUES (34, 43, 19);
INSERT INTO public.games VALUES (35, 463, 19);
INSERT INTO public.games VALUES (36, 858, 21);
INSERT INTO public.games VALUES (37, 384, 21);
INSERT INTO public.games VALUES (38, 14, 22);
INSERT INTO public.games VALUES (39, 737, 22);
INSERT INTO public.games VALUES (40, 157, 21);
INSERT INTO public.games VALUES (41, 53, 21);
INSERT INTO public.games VALUES (42, 637, 21);
INSERT INTO public.games VALUES (43, 312, 23);
INSERT INTO public.games VALUES (44, 539, 23);
INSERT INTO public.games VALUES (45, 642, 24);
INSERT INTO public.games VALUES (46, 91, 24);
INSERT INTO public.games VALUES (47, 326, 23);
INSERT INTO public.games VALUES (48, 899, 23);
INSERT INTO public.games VALUES (49, 304, 23);
INSERT INTO public.games VALUES (50, 10, 1);
INSERT INTO public.games VALUES (51, 473, 25);
INSERT INTO public.games VALUES (52, 391, 25);
INSERT INTO public.games VALUES (53, 723, 26);
INSERT INTO public.games VALUES (54, 817, 26);
INSERT INTO public.games VALUES (55, 451, 25);
INSERT INTO public.games VALUES (56, 162, 25);
INSERT INTO public.games VALUES (57, 925, 25);
INSERT INTO public.games VALUES (58, 138, 29);
INSERT INTO public.games VALUES (59, 903, 29);
INSERT INTO public.games VALUES (60, 408, 30);
INSERT INTO public.games VALUES (61, 918, 30);
INSERT INTO public.games VALUES (62, 119, 29);
INSERT INTO public.games VALUES (63, 558, 29);
INSERT INTO public.games VALUES (64, 58, 29);
INSERT INTO public.games VALUES (65, 887, 31);
INSERT INTO public.games VALUES (66, 283, 31);
INSERT INTO public.games VALUES (67, 141, 32);
INSERT INTO public.games VALUES (68, 397, 32);
INSERT INTO public.games VALUES (69, 608, 31);
INSERT INTO public.games VALUES (70, 355, 31);
INSERT INTO public.games VALUES (71, 96, 31);
INSERT INTO public.games VALUES (72, 953, 33);
INSERT INTO public.games VALUES (73, 294, 33);
INSERT INTO public.games VALUES (74, 132, 34);
INSERT INTO public.games VALUES (75, 300, 34);
INSERT INTO public.games VALUES (76, 944, 33);
INSERT INTO public.games VALUES (77, 600, 33);
INSERT INTO public.games VALUES (78, 41, 33);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Keane');
INSERT INTO public.users VALUES (2, 'user_1739004464226');
INSERT INTO public.users VALUES (3, 'user_1739004464225');
INSERT INTO public.users VALUES (4, 'KEane');
INSERT INTO public.users VALUES (5, 'user_1739005096372');
INSERT INTO public.users VALUES (6, 'user_1739005096371');
INSERT INTO public.users VALUES (7, 'user_1739005257409');
INSERT INTO public.users VALUES (8, 'user_1739005257408');
INSERT INTO public.users VALUES (9, 'user_1739005360997');
INSERT INTO public.users VALUES (10, 'user_1739005360996');
INSERT INTO public.users VALUES (11, 'user_1739005392909');
INSERT INTO public.users VALUES (12, 'user_1739005392908');
INSERT INTO public.users VALUES (13, 'user_1739005461565');
INSERT INTO public.users VALUES (14, 'user_1739005461564');
INSERT INTO public.users VALUES (15, 'user_1739005585348');
INSERT INTO public.users VALUES (16, 'user_1739005585347');
INSERT INTO public.users VALUES (17, 'user_1739005774791');
INSERT INTO public.users VALUES (18, 'user_1739005774790');
INSERT INTO public.users VALUES (19, 'user_1739005797754');
INSERT INTO public.users VALUES (20, 'user_1739005797753');
INSERT INTO public.users VALUES (21, 'user_1739005906915');
INSERT INTO public.users VALUES (22, 'user_1739005906914');
INSERT INTO public.users VALUES (23, 'user_1739006081214');
INSERT INTO public.users VALUES (24, 'user_1739006081213');
INSERT INTO public.users VALUES (25, 'user_1739006239210');
INSERT INTO public.users VALUES (26, 'user_1739006239209');
INSERT INTO public.users VALUES (27, 'user_1739006335907');
INSERT INTO public.users VALUES (28, 'user_1739006335906');
INSERT INTO public.users VALUES (29, 'user_1739006606028');
INSERT INTO public.users VALUES (30, 'user_1739006606027');
INSERT INTO public.users VALUES (31, 'user_1739006758381');
INSERT INTO public.users VALUES (32, 'user_1739006758380');
INSERT INTO public.users VALUES (33, 'user_1739007199917');
INSERT INTO public.users VALUES (34, 'user_1739007199916');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 78, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 34, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

