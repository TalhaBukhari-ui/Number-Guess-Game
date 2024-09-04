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
    user_id integer NOT NULL,
    best_guess integer DEFAULT 0 NOT NULL
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
    username character varying(22) NOT NULL,
    frequent_games integer DEFAULT 0 NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 609);
INSERT INTO public.games VALUES (2, 1, 108);
INSERT INTO public.games VALUES (3, 2, 961);
INSERT INTO public.games VALUES (4, 2, 419);
INSERT INTO public.games VALUES (5, 1, 630);
INSERT INTO public.games VALUES (6, 1, 728);
INSERT INTO public.games VALUES (7, 1, 179);
INSERT INTO public.games VALUES (8, 3, 2);
INSERT INTO public.games VALUES (9, 4, 517);
INSERT INTO public.games VALUES (10, 4, 626);
INSERT INTO public.games VALUES (11, 5, 982);
INSERT INTO public.games VALUES (12, 5, 813);
INSERT INTO public.games VALUES (13, 4, 30);
INSERT INTO public.games VALUES (14, 4, 112);
INSERT INTO public.games VALUES (15, 4, 577);
INSERT INTO public.games VALUES (16, 6, 2);
INSERT INTO public.games VALUES (17, 7, 76);
INSERT INTO public.games VALUES (18, 7, 4);
INSERT INTO public.games VALUES (19, 8, 397);
INSERT INTO public.games VALUES (20, 8, 325);
INSERT INTO public.games VALUES (21, 7, 624);
INSERT INTO public.games VALUES (22, 7, 587);
INSERT INTO public.games VALUES (23, 7, 619);
INSERT INTO public.games VALUES (24, 9, 777);
INSERT INTO public.games VALUES (25, 9, 854);
INSERT INTO public.games VALUES (26, 10, 882);
INSERT INTO public.games VALUES (27, 10, 915);
INSERT INTO public.games VALUES (28, 9, 281);
INSERT INTO public.games VALUES (29, 9, 885);
INSERT INTO public.games VALUES (30, 9, 797);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1725446982556', 2);
INSERT INTO public.users VALUES (1, 'user_1725446982557', 5);
INSERT INTO public.users VALUES (3, 'freecodecamp', 1);
INSERT INTO public.users VALUES (5, 'user_1725447949199', 2);
INSERT INTO public.users VALUES (4, 'user_1725447949200', 5);
INSERT INTO public.users VALUES (6, 'ff', 1);
INSERT INTO public.users VALUES (8, 'user_1725448195910', 2);
INSERT INTO public.users VALUES (7, 'user_1725448195911', 5);
INSERT INTO public.users VALUES (10, 'user_1725448591833', 2);
INSERT INTO public.users VALUES (9, 'user_1725448591834', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 30, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 10, true);


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

