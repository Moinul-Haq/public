
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    fifth_table_id integer NOT NULL,
    name character varying,
    column_1 integer NOT NULL,
    column_2 integer NOT NULL,
    column_3 numeric,
    column_4 text,
    column_5 boolean,
    column_6 boolean
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_fifth_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_fifth_table_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_fifth_table_id_seq OWNED BY public.fifth_table.fifth_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying,
    column_1 integer NOT NULL,
    column_2 integer NOT NULL,
    column_3 numeric,
    column_4 text,
    column_5 boolean,
    column_6 boolean
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
    name character varying,
    column_1 integer NOT NULL,
    column_2 integer NOT NULL,
    column_3 numeric,
    column_4 text,
    column_5 boolean,
    column_6 boolean,
    planet_id integer
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
    name character varying,
    column_2 integer NOT NULL,
    column_3 numeric,
    column_4 text,
    column_5 boolean,
    column_6 boolean,
    star_id integer,
    column_1 integer NOT NULL
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
    name character varying,
    column_1 integer NOT NULL,
    column_2 integer NOT NULL,
    column_3 numeric,
    column_4 text,
    column_5 boolean,
    column_6 boolean,
    galaxy_id integer
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
-- Name: fifth_table fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table ALTER COLUMN fifth_table_id SET DEFAULT nextval('public.fifth_table_fifth_table_id_seq'::regclass);


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
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES (1, 'AA', 1, 1, 1.1, NULL, NULL, NULL);
INSERT INTO public.fifth_table VALUES (2, 'BB', 2, 2, 2.2, NULL, NULL, NULL);
INSERT INTO public.fifth_table VALUES (3, 'CC', 3, 3, 3.3, NULL, NULL, NULL);
INSERT INTO public.fifth_table VALUES (4, 'DD', 4, 4, 4.4, NULL, NULL, NULL);
INSERT INTO public.fifth_table VALUES (5, 'EE', 5, 5, 5.5, NULL, NULL, NULL);
INSERT INTO public.fifth_table VALUES (6, 'FF', 6, 6, 6.6, NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'AA', 1, 1, 1.1, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'BB', 2, 2, 2.2, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'CC', 3, 3, 3.3, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'DD', 4, 4, 4.4, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'EE', 5, 5, 5.5, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'FF', 6, 6, 6.6, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'AA', 1, 1, 1.1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'BB', 2, 2, 2.2, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'CC', 3, 3, 3.3, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'DD', 4, 4, 4.4, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'EE', 5, 5, 5.5, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'FF', 6, 6, 6.6, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'GG', 7, 7, 7.7, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'HH', 8, 8, 8.8, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'II', 9, 9, 9.9, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'JJ', 10, 10, 10.10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'KK', 11, 11, 11.11, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'LL', 12, 12, 12.12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'MM', 13, 13, 13.13, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'NN', 14, 14, 14.14, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'OO', 15, 15, 15.15, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'PP', 16, 16, 16.16, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'QQ', 17, 17, 17.17, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'RR', 18, 18, 18.18, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'SS', 19, 19, 19.19, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'TT', 20, 20, 20.20, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'AA', 1, 1.1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'BB', 2, 2.2, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'CC', 3, 3.3, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'DD', 4, 4.4, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'EE', 5, 5.5, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'FF', 6, 6.6, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'GG', 7, 7.7, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (8, 'HH', 8, 8.8, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (9, 'II', 9, 9.9, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES (10, 'JJ', 10, 10.10, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES (11, 'KK', 11, 11.11, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES (12, 'LL', 12, 12.12, NULL, NULL, NULL, NULL, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'AA', 1, 1, 1.1, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'BB', 2, 2, 2.2, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'CC', 3, 3, 3.3, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'DD', 4, 4, 4.4, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'EE', 5, 5, 5.5, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'FF', 6, 6, 6.6, NULL, NULL, NULL, NULL);


--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_fifth_table_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: fifth_table fifth_table_column_3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_column_3_key UNIQUE (column_3);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


--
-- Name: galaxy galaxy_column_3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_column_3_key UNIQUE (column_3);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_column_3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_column_3_key UNIQUE (column_3);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_column_3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_column_3_key UNIQUE (column_3);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_column_3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_column_3_key UNIQUE (column_3);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_column_7_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_column_7_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_column_7_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_column_7_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_column_7_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_column_7_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


