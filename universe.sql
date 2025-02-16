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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_type character varying(100) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(200) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_type_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_id integer NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric NOT NULL
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
    name character varying(100) NOT NULL,
    star_id integer NOT NULL,
    planet_type character varying(100) NOT NULL,
    distance_from_earth_ly numeric NOT NULL,
    has_life boolean NOT NULL
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
    name character varying(100) NOT NULL,
    galaxy_id integer NOT NULL,
    star_type character varying(100) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_planets boolean NOT NULL
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_type_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milkey Way', 'Spiral', 13600, true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 10200, false, true);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'Elliptical', 9900, false, true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 400, false, true);
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 'Spiral', 13300, false, true);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'Lenticular', 10000, false, true);
INSERT INTO public.galaxy VALUES (7, 'Messier 87', 'Elliptical', 6000, false, true);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral', 'A galaxy with a spiral structure');
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical', 'A galaxy with an elliptical shape');
INSERT INTO public.galaxy_types VALUES (3, 'Irregular', 'A galaxy with no definite shape');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Moon', 3, true, 4500);
INSERT INTO public.moon VALUES (22, 'Phobos', 4, false, 4500);
INSERT INTO public.moon VALUES (23, 'Deimos', 4, false, 4500);
INSERT INTO public.moon VALUES (24, 'Io', 5, true, 4500);
INSERT INTO public.moon VALUES (25, 'Europa', 5, true, 4500);
INSERT INTO public.moon VALUES (26, 'Ganymede', 5, true, 4500);
INSERT INTO public.moon VALUES (27, 'Callisto', 5, true, 4500);
INSERT INTO public.moon VALUES (28, 'Titan', 6, true, 4500);
INSERT INTO public.moon VALUES (29, 'Enceladus', 6, true, 4500);
INSERT INTO public.moon VALUES (30, 'Mimas', 6, true, 4500);
INSERT INTO public.moon VALUES (31, 'Tethys', 6, true, 4500);
INSERT INTO public.moon VALUES (32, 'Dione', 6, true, 4500);
INSERT INTO public.moon VALUES (33, 'Rhea', 6, true, 4500);
INSERT INTO public.moon VALUES (34, 'Iapetus', 6, true, 4500);
INSERT INTO public.moon VALUES (35, 'Triton', 7, true, 4500);
INSERT INTO public.moon VALUES (36, 'Proteus', 7, false, 4500);
INSERT INTO public.moon VALUES (37, 'Nereid', 7, false, 4500);
INSERT INTO public.moon VALUES (38, 'Proxima b-I', 8, true, 3000);
INSERT INTO public.moon VALUES (39, 'Alpha Centauri Bb-I', 9, false, 2500);
INSERT INTO public.moon VALUES (40, 'Gliese 581g-I', 11, true, 2800);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'Terrestrial', 0.000006, false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 'Terrestrial', 0.000011, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'Terrestrial', 0, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'Terrestrial', 0.000024, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'Gas Giant', 0.000082, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'Gas Giant', 0.000151, false);
INSERT INTO public.planet VALUES (7, 'Neptune', 1, 'Ice Giant', 0.000462, false);
INSERT INTO public.planet VALUES (8, 'Proxima b', 3, 'Terrestrial', 4.22, true);
INSERT INTO public.planet VALUES (9, 'Alpha Centauri Bb', 5, 'Terrestrial', 4.37, false);
INSERT INTO public.planet VALUES (10, 'Rigel I', 7, 'Gas Giant', 860, false);
INSERT INTO public.planet VALUES (11, 'Gliese 581g', 3, 'Terrestrial', 20.3, true);
INSERT INTO public.planet VALUES (12, 'Tau Ceti f', 4, 'Terrestrial', 11.9, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G-Type Main-Sequence', 4600, true);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 'A-Type Main-Sequence', 300, true);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 2, 'Red Dwarf', 4500, true);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, 'Red Supergiant', 8000, false);
INSERT INTO public.star VALUES (5, 'Alpha Centauri', 2, 'G-Type Main-Sequence', 5500, true);
INSERT INTO public.star VALUES (6, 'Rigel', 1, 'Blue Supergiant', 8, false);
INSERT INTO public.star VALUES (7, 'UY Scuti', 3, 'Red Supergiant', 10, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_type_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: galaxy_types unique_galaxy_type_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT unique_galaxy_type_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

