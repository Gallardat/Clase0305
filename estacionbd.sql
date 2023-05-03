--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-03 16:54:53

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
-- TOC entry 215 (class 1259 OID 16584)
-- Name: Autobus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Autobus" (
    id_autobus integer NOT NULL,
    antiguedad date NOT NULL
);


ALTER TABLE public."Autobus" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16583)
-- Name: Autobus_id_autobus_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Autobus_id_autobus_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Autobus_id_autobus_seq" OWNER TO postgres;

--
-- TOC entry 3358 (class 0 OID 0)
-- Dependencies: 214
-- Name: Autobus_id_autobus_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Autobus_id_autobus_seq" OWNED BY public."Autobus".id_autobus;


--
-- TOC entry 217 (class 1259 OID 16591)
-- Name: Conductor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Conductor" (
    id_conductor integer NOT NULL,
    nombre character varying(60) NOT NULL
);


ALTER TABLE public."Conductor" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16590)
-- Name: Conductor_id_conductor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Conductor_id_conductor_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Conductor_id_conductor_seq" OWNER TO postgres;

--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 216
-- Name: Conductor_id_conductor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Conductor_id_conductor_seq" OWNED BY public."Conductor".id_conductor;


--
-- TOC entry 219 (class 1259 OID 16598)
-- Name: Lugar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Lugar" (
    id_lugar integer NOT NULL,
    nombre character varying(60) NOT NULL
);


ALTER TABLE public."Lugar" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16597)
-- Name: Lugar_id_lugar_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Lugar_id_lugar_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Lugar_id_lugar_seq" OWNER TO postgres;

--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 218
-- Name: Lugar_id_lugar_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Lugar_id_lugar_seq" OWNED BY public."Lugar".id_lugar;


--
-- TOC entry 221 (class 1259 OID 16605)
-- Name: Ruta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ruta" (
    id_ruta integer NOT NULL,
    id_lugar integer NOT NULL,
    id_conductor integer NOT NULL,
    id_autobus integer NOT NULL
);


ALTER TABLE public."Ruta" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16604)
-- Name: Ruta_id_ruta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Ruta_id_ruta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ruta_id_ruta_seq" OWNER TO postgres;

--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 220
-- Name: Ruta_id_ruta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Ruta_id_ruta_seq" OWNED BY public."Ruta".id_ruta;


--
-- TOC entry 3188 (class 2604 OID 16587)
-- Name: Autobus id_autobus; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Autobus" ALTER COLUMN id_autobus SET DEFAULT nextval('public."Autobus_id_autobus_seq"'::regclass);


--
-- TOC entry 3189 (class 2604 OID 16594)
-- Name: Conductor id_conductor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Conductor" ALTER COLUMN id_conductor SET DEFAULT nextval('public."Conductor_id_conductor_seq"'::regclass);


--
-- TOC entry 3190 (class 2604 OID 16601)
-- Name: Lugar id_lugar; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lugar" ALTER COLUMN id_lugar SET DEFAULT nextval('public."Lugar_id_lugar_seq"'::regclass);


--
-- TOC entry 3191 (class 2604 OID 16608)
-- Name: Ruta id_ruta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ruta" ALTER COLUMN id_ruta SET DEFAULT nextval('public."Ruta_id_ruta_seq"'::regclass);


--
-- TOC entry 3346 (class 0 OID 16584)
-- Dependencies: 215
-- Data for Name: Autobus; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Autobus" (id_autobus, antiguedad) VALUES (1, '2000-10-05');
INSERT INTO public."Autobus" (id_autobus, antiguedad) VALUES (2, '2005-08-03');


--
-- TOC entry 3348 (class 0 OID 16591)
-- Dependencies: 217
-- Data for Name: Conductor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Conductor" (id_conductor, nombre) VALUES (1, 'Daniela');
INSERT INTO public."Conductor" (id_conductor, nombre) VALUES (2, 'Raul');


--
-- TOC entry 3350 (class 0 OID 16598)
-- Dependencies: 219
-- Data for Name: Lugar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Lugar" (id_lugar, nombre) VALUES (1, 'Toledo');
INSERT INTO public."Lugar" (id_lugar, nombre) VALUES (2, 'Segovia');


--
-- TOC entry 3352 (class 0 OID 16605)
-- Dependencies: 221
-- Data for Name: Ruta; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Ruta" (id_ruta, id_lugar, id_conductor, id_autobus) VALUES (1, 1, 1, 1);


--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 214
-- Name: Autobus_id_autobus_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Autobus_id_autobus_seq"', 2, true);


--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 216
-- Name: Conductor_id_conductor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Conductor_id_conductor_seq"', 2, true);


--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 218
-- Name: Lugar_id_lugar_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Lugar_id_lugar_seq"', 2, true);


--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 220
-- Name: Ruta_id_ruta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Ruta_id_ruta_seq"', 1, true);


--
-- TOC entry 3193 (class 2606 OID 16589)
-- Name: Autobus Autobus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Autobus"
    ADD CONSTRAINT "Autobus_pkey" PRIMARY KEY (id_autobus);


--
-- TOC entry 3195 (class 2606 OID 16596)
-- Name: Conductor Conductor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Conductor"
    ADD CONSTRAINT "Conductor_pkey" PRIMARY KEY (id_conductor);


--
-- TOC entry 3197 (class 2606 OID 16603)
-- Name: Lugar Lugar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lugar"
    ADD CONSTRAINT "Lugar_pkey" PRIMARY KEY (id_lugar);


--
-- TOC entry 3199 (class 2606 OID 16610)
-- Name: Ruta Ruta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ruta"
    ADD CONSTRAINT "Ruta_pkey" PRIMARY KEY (id_ruta);


--
-- TOC entry 3200 (class 2606 OID 16616)
-- Name: Ruta id_autobus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ruta"
    ADD CONSTRAINT id_autobus FOREIGN KEY (id_autobus) REFERENCES public."Autobus"(id_autobus) NOT VALID;


--
-- TOC entry 3201 (class 2606 OID 16611)
-- Name: Ruta id_conductor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ruta"
    ADD CONSTRAINT id_conductor FOREIGN KEY (id_conductor) REFERENCES public."Conductor"(id_conductor) NOT VALID;


--
-- TOC entry 3202 (class 2606 OID 16621)
-- Name: Ruta id_lugar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ruta"
    ADD CONSTRAINT id_lugar FOREIGN KEY (id_lugar) REFERENCES public."Lugar"(id_lugar) NOT VALID;


-- Completed on 2023-05-03 16:54:53

--
-- PostgreSQL database dump complete
--

