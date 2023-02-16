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
-- Name: age_in_millions_of_years; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.age_in_millions_of_years (
    age_in_millions_of_years_id integer NOT NULL,
    name character varying(40),
    galaxy_id integer NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.age_in_millions_of_years OWNER TO freecodecamp;

--
-- Name: age_in_millions_of_years_age_in_millions_of_years_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.age_in_millions_of_years_age_in_millions_of_years_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.age_in_millions_of_years_age_in_millions_of_years_id_seq OWNER TO freecodecamp;

--
-- Name: age_in_millions_of_years_age_in_millions_of_years_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.age_in_millions_of_years_age_in_millions_of_years_id_seq OWNED BY public.age_in_millions_of_years.age_in_millions_of_years_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    description text NOT NULL,
    galaxy_types character varying(20),
    distance_from_earth numeric(6,4),
    diameter integer
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
    name character varying(20),
    planet_id integer NOT NULL,
    area integer,
    surface_temperature_in_celsius integer
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
    name character varying(20),
    is_spherical boolean NOT NULL,
    planet_types character varying(20),
    ray integer,
    star_id integer,
    has_life boolean
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
    name character varying(20),
    star_types character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    color_in_k integer
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
-- Name: age_in_millions_of_years age_in_millions_of_years_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age_in_millions_of_years ALTER COLUMN age_in_millions_of_years_id SET DEFAULT nextval('public.age_in_millions_of_years_age_in_millions_of_years_id_seq'::regclass);


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
-- Data for Name: age_in_millions_of_years; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.age_in_millions_of_years VALUES (1, NULL, 5, 45465465);
INSERT INTO public.age_in_millions_of_years VALUES (2, NULL, 2, 125456);
INSERT INTO public.age_in_millions_of_years VALUES (3, NULL, 1, 9875465);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Voie lactée', 'Galaxie à laquelle appartien la planète terre', 'SBbc', 0.0265, 100000);
INSERT INTO public.galaxy VALUES (2, 'Galaxie naine du grand chien', 'Satellite de la voie lactée', 'Irr', 0.0250, NULL);
INSERT INTO public.galaxy VALUES (3, 'Draco II', 'Satellite de la voie lactée', NULL, 0.0701, 120);
INSERT INTO public.galaxy VALUES (4, 'Tucana III', 'Satellite de la voie lactée perturbée', NULL, 0.0747, 220);
INSERT INTO public.galaxy VALUES (5, 'Segue 1', 'Satellite de la voie lactée', 'dSph or Glob Clus', 0.0750, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxie naine du Sagittaire', 'Satellite de la voie lactée', 'dSph/E7', 0.0810, 10000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lune', 5, 37871220, -73);
INSERT INTO public.moon VALUES (2, 'Phobos', 7, 3780000, -73);
INSERT INTO public.moon VALUES (3, 'Deimos', 7, 1546456, -70);
INSERT INTO public.moon VALUES (4, 'Ganymede', 8, 5465456, -60);
INSERT INTO public.moon VALUES (5, 'Callisto', 8, 44651561, -45);
INSERT INTO public.moon VALUES (6, 'Io', 8, 676768, -150);
INSERT INTO public.moon VALUES (7, 'Europe', 8, 454654, -184);
INSERT INTO public.moon VALUES (8, 'Titan', 9, 454654, -454);
INSERT INTO public.moon VALUES (9, 'Hyperion', 9, 4564654, -454);
INSERT INTO public.moon VALUES (10, 'Rhéa', 9, 4564, -454);
INSERT INTO public.moon VALUES (11, 'Phobos', 7, 3780000, -73);
INSERT INTO public.moon VALUES (12, 'Deimos', 7, 1546456, -70);
INSERT INTO public.moon VALUES (13, 'Ganymede', 8, 5465456, -60);
INSERT INTO public.moon VALUES (14, 'Callisto', 8, 44651561, -45);
INSERT INTO public.moon VALUES (15, 'Io', 8, 676768, -150);
INSERT INTO public.moon VALUES (16, 'Europe', 8, 454654, -184);
INSERT INTO public.moon VALUES (17, 'Titan', 9, 454654, -454);
INSERT INTO public.moon VALUES (18, 'Hyperion', 9, 4564654, -454);
INSERT INTO public.moon VALUES (19, 'Rhéa', 9, 4564, -454);
INSERT INTO public.moon VALUES (20, 'Phobos', 7, 3780000, -73);
INSERT INTO public.moon VALUES (21, 'Deimos', 7, 1546456, -70);
INSERT INTO public.moon VALUES (22, 'Ganymede', 8, 5465456, -60);
INSERT INTO public.moon VALUES (23, 'Callisto', 8, 44651561, -45);
INSERT INTO public.moon VALUES (24, 'Io', 8, 676768, -150);
INSERT INTO public.moon VALUES (25, 'Europe', 8, 454654, -184);
INSERT INTO public.moon VALUES (26, 'Titan', 9, 454654, -454);
INSERT INTO public.moon VALUES (27, 'Hyperion', 9, 4564654, -454);
INSERT INTO public.moon VALUES (28, 'Rhéa', 9, 4564, -454);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Titan', true, '7 grands satellites', 2576, 1, false);
INSERT INTO public.planet VALUES (2, 'Mercure', true, '7 grands satellites', 2440, 1, false);
INSERT INTO public.planet VALUES (3, 'Pluton', true, 'transneptunien', 1195, 1, false);
INSERT INTO public.planet VALUES (4, 'Titania', true, '8 moyens satellites', 790, 1, false);
INSERT INTO public.planet VALUES (6, 'Venus', true, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (7, 'Mars', true, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (8, 'Jupiter', true, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (9, 'Saturne', true, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (10, 'Uranus', true, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (11, 'Neptune', true, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (12, 'Eris', true, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (5, 'Terre', true, NULL, NULL, NULL, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Soleil', 'Naine jaune', 1, NULL);
INSERT INTO public.star VALUES (2, 'Canopus', 'Supergéante', 1, NULL);
INSERT INTO public.star VALUES (6, 'Sirius', 'Blanche', 1, NULL);
INSERT INTO public.star VALUES (3, 'Proxima du centaure', 'Naine rouge', 1, 3040);
INSERT INTO public.star VALUES (4, 'Alpha du centaure', 'Jaune', 1, 5070);
INSERT INTO public.star VALUES (5, 'Etoile de Barnard', 'Naine rouge', 1, 3100);


--
-- Name: age_in_millions_of_years_age_in_millions_of_years_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.age_in_millions_of_years_age_in_millions_of_years_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: age_in_millions_of_years age_in_millions_of_years_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age_in_millions_of_years
    ADD CONSTRAINT age_in_millions_of_years_pkey PRIMARY KEY (age_in_millions_of_years_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: age_in_millions_of_years unique_age_in_millions_of_years_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age_in_millions_of_years
    ADD CONSTRAINT unique_age_in_millions_of_years_id UNIQUE (age_in_millions_of_years_id);


--
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (galaxy_id);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (moon_id);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (planet_id);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: age_in_millions_of_years galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age_in_millions_of_years
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

