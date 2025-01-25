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
-- Name: a; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.a (
    a_id integer NOT NULL,
    name character varying(30),
    c integer NOT NULL
);


ALTER TABLE public.a OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    size numeric,
    life integer,
    water boolean,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxynum_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxynum_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxynum_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxynum_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxynum_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    age integer NOT NULL,
    size numeric,
    life integer,
    water boolean,
    description text,
    planet_id integer,
    moon_id integer NOT NULL
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
    name character varying(30),
    age integer NOT NULL,
    size numeric,
    life integer,
    water boolean,
    description text,
    star_id integer,
    planet_id integer NOT NULL
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
    name character varying(30),
    age integer NOT NULL,
    size numeric,
    life integer,
    water boolean,
    description text,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_seq OWNER TO freecodecamp;

--
-- Name: star_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxynum_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_seq'::regclass);


--
-- Data for Name: a; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.a VALUES (1, 'b', 1);
INSERT INTO public.a VALUES (2, 'c', 2);
INSERT INTO public.a VALUES (3, 'c', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', 1, 1, 1, false, 'q');
INSERT INTO public.galaxy VALUES (2, 'b', 2, 2, 2, false, 'w');
INSERT INTO public.galaxy VALUES (3, 'c', 3, 3, 3, false, 'e');
INSERT INTO public.galaxy VALUES (4, 'd', 4, 4, 4, false, 'e');
INSERT INTO public.galaxy VALUES (5, 'e', 5, 5, 5, false, 'r');
INSERT INTO public.galaxy VALUES (6, 'f', 6, 6, 6, false, 't');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('a', 2, 1, 1, false, 'a', 20, 21);
INSERT INTO public.moon VALUES ('a', 77, 1, 1, false, 'a', 20, 22);
INSERT INTO public.moon VALUES ('a', 20, 1, 1, false, 'a', 20, 23);
INSERT INTO public.moon VALUES ('a', 99, 1, 1, false, 'a', 20, 24);
INSERT INTO public.moon VALUES ('a', 100, 1, 1, false, 'a', 20, 25);
INSERT INTO public.moon VALUES ('a', 5, 1, 1, false, 'a', 20, 30);
INSERT INTO public.moon VALUES ('a', 4, 1, 1, false, 'a', 20, 31);
INSERT INTO public.moon VALUES ('a', 3, 1, 1, false, 'a', 20, 32);
INSERT INTO public.moon VALUES ('a', 22, 1, 1, false, 'a', 20, 33);
INSERT INTO public.moon VALUES ('a', 1, 1, 1, false, 'a', 20, 34);
INSERT INTO public.moon VALUES ('a', 10, 1, 1, false, 'a', 20, 35);
INSERT INTO public.moon VALUES ('a', 9, 1, 1, false, 'a', 20, 36);
INSERT INTO public.moon VALUES ('a', 8, 1, 1, false, 'a', 20, 37);
INSERT INTO public.moon VALUES ('a', 7, 1, 1, false, 'a', 20, 38);
INSERT INTO public.moon VALUES ('a', 6, 1, 1, false, 'a', 20, 39);
INSERT INTO public.moon VALUES ('a', 15, 1, 1, false, 'a', 20, 40);
INSERT INTO public.moon VALUES ('a', 14, 1, 1, false, 'a', 20, 41);
INSERT INTO public.moon VALUES ('a', 13, 1, 1, false, 'a', 20, 42);
INSERT INTO public.moon VALUES ('a', 12, 1, 1, false, 'a', 20, 43);
INSERT INTO public.moon VALUES ('a', 11, 1, 1, false, 'a', 20, 44);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('a', 1, 1, 1, false, 'a', 7, 20);
INSERT INTO public.planet VALUES ('a', 2, 1, 1, false, 'a', 7, 21);
INSERT INTO public.planet VALUES ('a', 3, 1, 1, false, 'a', 7, 22);
INSERT INTO public.planet VALUES ('a', 5, 1, 1, false, 'a', 7, 23);
INSERT INTO public.planet VALUES ('a', 6, 1, 1, false, 'a', 7, 24);
INSERT INTO public.planet VALUES ('a', 8, 1, 1, false, 'a', 7, 26);
INSERT INTO public.planet VALUES ('a', 9, 1, 1, false, 'a', 7, 27);
INSERT INTO public.planet VALUES ('a', 10, 1, 1, false, 'a', 7, 28);
INSERT INTO public.planet VALUES ('a', 11, 1, 1, false, 'a', 7, 29);
INSERT INTO public.planet VALUES ('a', 12, 1, 1, false, 'a', 7, 30);
INSERT INTO public.planet VALUES ('a', 66, 1, 1, false, 'a', 7, 31);
INSERT INTO public.planet VALUES ('a', 77, 1, 1, false, 'a', 7, 32);
INSERT INTO public.planet VALUES ('a', 88, 1, 1, false, 'a', 7, 33);
INSERT INTO public.planet VALUES ('a', 99, 1, 1, false, 'a', 7, 34);
INSERT INTO public.planet VALUES ('a', 100, 1, 1, false, 'a', 7, 35);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('a', 1, 1, 1, false, 'a', 1, 7);
INSERT INTO public.star VALUES ('a', 2, 1, 1, false, 'a', 1, 8);
INSERT INTO public.star VALUES ('a', 3, 1, 1, false, 'a', 1, 9);
INSERT INTO public.star VALUES ('a', 5, 1, 1, false, 'a', 1, 10);
INSERT INTO public.star VALUES ('a', 6, 1, 1, false, 'a', 1, 11);
INSERT INTO public.star VALUES ('a', 1001, 1, 1, false, 'a', 1, 12);


--
-- Name: galaxy_galaxynum_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxynum_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 44, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 37, true);


--
-- Name: star_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_seq', 6, true);


--
-- Name: star_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_seq', 12, true);


--
-- Name: a a_a_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.a
    ADD CONSTRAINT a_a_key UNIQUE (a_id);


--
-- Name: a a_c_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.a
    ADD CONSTRAINT a_c_key UNIQUE (c);


--
-- Name: a a_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.a
    ADD CONSTRAINT a_pkey PRIMARY KEY (a_id);


--
-- Name: galaxy galaxy_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_key UNIQUE (age);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_key UNIQUE (age);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_key UNIQUE (age);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_key UNIQUE (star_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_star_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey1 FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

