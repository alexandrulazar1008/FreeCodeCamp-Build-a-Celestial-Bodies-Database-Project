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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    percentage_of_co2 numeric(1,1),
    description text,
    has_life boolean
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
    age_in_millions_of_years integer,
    distance_from_earth integer,
    percentage_of_co2 numeric(1,1),
    description text,
    has_life boolean,
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    percentage_of_co2 numeric(1,1),
    description text,
    has_life boolean,
    star_id integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radious_int_km integer
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    percentage_of_co2 numeric(1,1),
    description text,
    has_life boolean,
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
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100, 0, 0.3, 'fdgosiojegr', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 200, 400, 0.2, 'sdvdknsfiush', false);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 123, 51203, 0.8, 'dsfg', false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 1230, 2534, 0.7, 'fd124gosiojegr', false);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel', 1420, 432400, 0.2, 'sdv214dknsfiush', false);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 131223, 513203, 0.8, 'dsf124g', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1020, 1, 0.2, 'fdgo13siojegr', false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 220, 4, 0.4, 's2dvdkn4s3fiush', false, 7);
INSERT INTO public.moon VALUES (3, 'Deimos', 1233, 5, 0.3, 'd112sfg', false, 7);
INSERT INTO public.moon VALUES (4, 'Io', 10220, 13, 0.3, 'fdgo13siojegr', false, 2);
INSERT INTO public.moon VALUES (5, 'Europa', 2220, 34, 0.3, 's2dvdkn4s3fiush', false, 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 12533, 53, 0.3, 'd112sfg', false, 6);
INSERT INTO public.moon VALUES (7, 'Enceladus', 100, 30, 0.4, 'fdgo13siojegr', false, 4);
INSERT INTO public.moon VALUES (8, 'Mimas', 2220, 34, 0.3, 's2dvdkn4s3fiush', false, 5);
INSERT INTO public.moon VALUES (9, 'Rhea', 13, 43, 0.3, 'd112sfg', false, 8);
INSERT INTO public.moon VALUES (10, 'Dione', 100, 302, 0.5, 'fdgo13siojegr', false, 6);
INSERT INTO public.moon VALUES (11, 'Tethys', 220, 324, 0.3, 's2dvdkn4s3fiush', false, 5);
INSERT INTO public.moon VALUES (12, 'Hyperion', 13, 43, 0.3, 'd112sfg', false, 12);
INSERT INTO public.moon VALUES (13, 'Titan', 100, 302, 0.5, 'fdgo13siojegr', false, 6);
INSERT INTO public.moon VALUES (14, 'Callisto', 220, 324, 0.3, 's2dvdkn4s3fiush', false, 5);
INSERT INTO public.moon VALUES (15, 'Triton', 13, 43, 0.3, 'd112sfg', false, 12);
INSERT INTO public.moon VALUES (16, 'Charon', 100, 302, 0.5, 'fdgo13siojegr', false, 6);
INSERT INTO public.moon VALUES (17, 'Oberon', 220, 324, 0.3, 's2dvdkn4s3fiush', false, 5);
INSERT INTO public.moon VALUES (18, 'Titania', 13, 43, 0.3, 'd112sfg', false, 12);
INSERT INTO public.moon VALUES (19, 'Umbriel', 100, 30, 0.4, 'fdgo13siojegr', false, 4);
INSERT INTO public.moon VALUES (20, 'Ariel', 2220, 34, 0.3, 's2dvdkn4s3fiush', false, 5);
INSERT INTO public.moon VALUES (21, 'Miranda', 13, 43, 0.3, 'd112sfg', false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1020, 0, 0.3, 'fdgosiojegr', true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 220, 10, 0.4, 's2dvdkn4s3fiush', false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 123, 12, 0.6, 'd112sfg', false, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 1020, 20, 0.2, 'fdgo13siojegr', true, 1);
INSERT INTO public.planet VALUES (5, 'Neptune', 220, 30, 0.4, 's2dvdkn4s3fiush', false, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', 123, 40, 0.5, 'd112sfg', false, 1);
INSERT INTO public.planet VALUES (7, 'Mars', 1020, 5, 0.4, 'fdgo13siojegr', false, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 220, 60, 0.4, 's2dvdkn4s3fiush', false, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', 123, 10232, 0.5, 'd112sfg', false, 3);
INSERT INTO public.planet VALUES (10, 'Haumea', 1020, 2135, 0.2, 'fdgo13siojegr', false, 4);
INSERT INTO public.planet VALUES (11, 'Makemake', 220, 60, 0.4, 's2dvdkn4s3fiush', false, 6);
INSERT INTO public.planet VALUES (12, 'Eris', 123, 102, 0.5, 'd112sfg', false, 2);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (4, 'Normal', 1239);
INSERT INTO public.planet_types VALUES (5, 'Big', 412432);
INSERT INTO public.planet_types VALUES (6, 'Small', 100);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 100, 10, 0.9, 'fdgosiojegr', false, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 22100, 43400, 0.5, 's2dvdknsfiush', false, 2);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 12323, 541203, 0.4, 'd12sfg', false, 1);
INSERT INTO public.star VALUES (4, 'Arcturus', 1020, 130, 0.3, 'fdgosiojegr', false, 3);
INSERT INTO public.star VALUES (5, 'Sirius B', 221020, 4300, 0.4, 's2dvdkn4s3fiush', false, 5);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 123, 1203, 0.6, 'd112sfg', false, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_types_planet_types_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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

