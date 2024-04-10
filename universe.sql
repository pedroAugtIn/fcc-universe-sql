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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    name character varying(20),
    earth_id integer NOT NULL,
    population integer DEFAULT 10000 NOT NULL,
    area integer DEFAULT 245781 NOT NULL,
    vegetation character varying(10)
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    distance numeric(4,1) DEFAULT 123.4,
    range integer,
    years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    satellite boolean DEFAULT true NOT NULL,
    planet_id integer,
    hits integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    life boolean DEFAULT false NOT NULL,
    star_id integer,
    water boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    color text DEFAULT 'red'::text,
    galaxy_id integer,
    moving boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES ('plants', 1, 10000, 245781, NULL);
INSERT INTO public.earth VALUES ('ocean', 2, 10000, 245781, NULL);
INSERT INTO public.earth VALUES ('animals', 3, 10000, 245781, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('vialactea', 1, 123.4, NULL, NULL);
INSERT INTO public.galaxy VALUES ('andromea', 2, 123.4, NULL, NULL);
INSERT INTO public.galaxy VALUES ('scalibur', 3, 123.4, NULL, NULL);
INSERT INTO public.galaxy VALUES ('triangulo', 4, 123.4, NULL, NULL);
INSERT INTO public.galaxy VALUES ('bode', 5, 123.4, NULL, NULL);
INSERT INTO public.galaxy VALUES ('sombreiro', 6, 123.4, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('namekuzen', 1, true, 1, NULL);
INSERT INTO public.moon VALUES ('vegeta', 2, true, 2, NULL);
INSERT INTO public.moon VALUES ('kame', 3, true, 3, NULL);
INSERT INTO public.moon VALUES ('lo', 4, true, 4, NULL);
INSERT INTO public.moon VALUES ('europa', 5, true, 5, NULL);
INSERT INTO public.moon VALUES ('ganimedes', 6, true, 6, NULL);
INSERT INTO public.moon VALUES ('calisto', 7, true, 7, NULL);
INSERT INTO public.moon VALUES ('nereida', 8, true, 8, NULL);
INSERT INTO public.moon VALUES ('japeto', 9, true, 9, NULL);
INSERT INTO public.moon VALUES ('encelado', 10, true, 10, NULL);
INSERT INTO public.moon VALUES ('mimas', 11, true, 11, NULL);
INSERT INTO public.moon VALUES ('dione', 12, true, 12, NULL);
INSERT INTO public.moon VALUES ('epimeteu', 13, true, 13, NULL);
INSERT INTO public.moon VALUES ('tetis', 14, true, 12, NULL);
INSERT INTO public.moon VALUES ('ariel', 15, true, 11, NULL);
INSERT INTO public.moon VALUES ('tarqeq', 16, true, 10, NULL);
INSERT INTO public.moon VALUES ('kiviuq', 17, true, 9, NULL);
INSERT INTO public.moon VALUES ('ijiraq', 18, true, 8, NULL);
INSERT INTO public.moon VALUES ('paaliaq', 19, true, 7, NULL);
INSERT INTO public.moon VALUES ('skathi', 20, true, 6, NULL);
INSERT INTO public.moon VALUES ('ymir', 21, true, 5, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('pluton', 1, false, 1, NULL);
INSERT INTO public.planet VALUES ('neptuno', 2, false, 2, NULL);
INSERT INTO public.planet VALUES ('urane', 3, false, 3, NULL);
INSERT INTO public.planet VALUES ('spe', 4, false, 4, NULL);
INSERT INTO public.planet VALUES ('arion', 5, false, 4, NULL);
INSERT INTO public.planet VALUES ('arkas', 6, false, 5, NULL);
INSERT INTO public.planet VALUES ('orbitar', 7, false, 6, NULL);
INSERT INTO public.planet VALUES ('galileo', 8, false, 1, NULL);
INSERT INTO public.planet VALUES ('brahe', 9, false, 1, NULL);
INSERT INTO public.planet VALUES ('harriot', 10, false, 3, NULL);
INSERT INTO public.planet VALUES ('dagom', 11, false, 4, NULL);
INSERT INTO public.planet VALUES ('tadmor', 12, false, 2, NULL);
INSERT INTO public.planet VALUES ('meztli', 13, false, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('ocean', 1, 'red', 1, NULL);
INSERT INTO public.star VALUES ('light', 2, 'red', 1, NULL);
INSERT INTO public.star VALUES ('bellatrix', 5, 'red', 3, NULL);
INSERT INTO public.star VALUES ('craft', 3, 'red', 4, NULL);
INSERT INTO public.star VALUES ('sirius', 4, 'red', 3, NULL);
INSERT INTO public.star VALUES ('antares', 6, 'red', 6, NULL);


--
-- Name: earth earth_earth_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_earth_id_key UNIQUE (earth_id);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


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

