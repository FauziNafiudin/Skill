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
-- Name: creatures; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.creatures (
    name character varying(50) NOT NULL,
    height integer,
    weight integer,
    planet_id integer NOT NULL,
    creatures_id integer NOT NULL
);


ALTER TABLE public.creatures OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years numeric(2,1),
    description text,
    is_spherical boolean,
    is_satelite_galaxy boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_million_years numeric(2,1),
    mass integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_million_years numeric(2,1),
    mass integer,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_million_years integer,
    mass integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: creatures; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.creatures VALUES ('Fauzi', NULL, NULL, 3, 1);
INSERT INTO public.creatures VALUES ('Nafi', NULL, NULL, 3, 2);
INSERT INTO public.creatures VALUES ('Udin', NULL, NULL, 3, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Bima Sakti', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Elips', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Bulan', NULL, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, NULL, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, NULL, 4);
INSERT INTO public.moon VALUES (4, 'Io', NULL, NULL, 5);
INSERT INTO public.moon VALUES (5, 'Europa', NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', NULL, NULL, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', NULL, NULL, 5);
INSERT INTO public.moon VALUES (8, 'Titan', NULL, NULL, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', NULL, NULL, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', NULL, NULL, 6);
INSERT INTO public.moon VALUES (11, 'Enceladus', NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Mimas', NULL, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Titania', NULL, NULL, 7);
INSERT INTO public.moon VALUES (14, 'Oberon', NULL, NULL, 7);
INSERT INTO public.moon VALUES (15, 'Umbriel', NULL, NULL, 7);
INSERT INTO public.moon VALUES (16, 'Ariel', NULL, NULL, 7);
INSERT INTO public.moon VALUES (17, 'Miranda', NULL, NULL, 7);
INSERT INTO public.moon VALUES (18, 'Triton', NULL, NULL, 8);
INSERT INTO public.moon VALUES (19, 'Nereid', NULL, NULL, 8);
INSERT INTO public.moon VALUES (20, 'Proteus', NULL, NULL, 8);
INSERT INTO public.moon VALUES (21, 'Larissa', NULL, NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Merkurius', NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Bumi', NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturnus', NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptunus', NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Alpha Centauri Bb', NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Kepler-452', NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Sirius', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Alpha Centauri', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Vega', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Antares', 1, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Nessus', 2, NULL, NULL);


--
-- Name: creatures creatures_cretures_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.creatures
    ADD CONSTRAINT creatures_cretures_id_key UNIQUE (creatures_id);


--
-- Name: creatures creatures_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.creatures
    ADD CONSTRAINT creatures_pkey PRIMARY KEY (creatures_id);


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
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: creatures creatures_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.creatures
    ADD CONSTRAINT creatures_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

