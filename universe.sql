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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    black_holes_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spinning boolean
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_black_hole_id_seq OWNED BY public.black_holes.black_holes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    distance_from_earth integer,
    gravity numeric(4,1),
    description text
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
    distance_from_earth integer,
    age integer,
    gravity numeric(4,1),
    description text,
    has_life boolean,
    has_atmosphere boolean,
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
    distance_from_earth integer,
    age integer,
    gravity numeric(4,1),
    description text,
    has_life boolean,
    has_atmosphere boolean,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age integer,
    gravity numeric(4,1),
    description text,
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
-- Name: black_holes black_holes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN black_holes_id SET DEFAULT nextval('public.black_holes_black_hole_id_seq'::regclass);


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
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES (1, 'Sagittarius A*', true);
INSERT INTO public.black_holes VALUES (2, 'Messier 82', false);
INSERT INTO public.black_holes VALUES (3, 'M82', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'x', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'y', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'z', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'a', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'b', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'c', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Titan', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Prometheus', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Pandora', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (4, 'Janus', NULL, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (5, 'Io', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (6, 'Europa', NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (7, 'Callisto', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (8, 'Gannymede', NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (9, 'Elara', NULL, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'Miranda', NULL, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'Titania', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, 'Umbriel', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (13, 'Oberon', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (14, 'Ariel', NULL, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (15, 'Puck', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (16, 'Perdita', NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (17, 'Setebos', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (18, 'Cordelia', NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (19, 'Cupid', NULL, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (20, 'Sycorax', NULL, NULL, NULL, NULL, NULL, NULL, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Trappist-1a', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Trappist-1b', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'Trappist-1c', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'Trappist-1d', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'Trappist-1e', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'Trappist-1f', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (7, 'Trappist-1g', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Trappist-1h', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'Trappist-1i', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Trappist-1j', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Trappist-1k', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (12, 'Trappist-1l', NULL, NULL, NULL, NULL, NULL, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'bob', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'zed', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'cletus', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'alpha', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'beta', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'gamma', NULL, NULL, NULL, NULL, 2);


--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_black_hole_id_seq', 3, true);


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
-- Name: black_holes black_holes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_name_key UNIQUE (name);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);


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

