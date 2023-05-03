--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-03 16:52:52

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
-- TOC entry 215 (class 1259 OID 16542)
-- Name: Libro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Libro" (
    id_libro integer NOT NULL,
    titulo character varying(60) NOT NULL,
    autor character varying(60) NOT NULL,
    num_ejemplares integer NOT NULL,
    id_tema integer NOT NULL
);


ALTER TABLE public."Libro" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16541)
-- Name: Libro_id_libro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Libro_id_libro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Libro_id_libro_seq" OWNER TO postgres;

--
-- TOC entry 3357 (class 0 OID 0)
-- Dependencies: 214
-- Name: Libro_id_libro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Libro_id_libro_seq" OWNED BY public."Libro".id_libro;


--
-- TOC entry 221 (class 1259 OID 16563)
-- Name: Prestamo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Prestamo" (
    id_prestamo integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    id_libro integer NOT NULL,
    id_socio integer NOT NULL
);


ALTER TABLE public."Prestamo" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16562)
-- Name: Prestamo_id_prestamo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Prestamo_id_prestamo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Prestamo_id_prestamo_seq" OWNER TO postgres;

--
-- TOC entry 3358 (class 0 OID 0)
-- Dependencies: 220
-- Name: Prestamo_id_prestamo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Prestamo_id_prestamo_seq" OWNED BY public."Prestamo".id_prestamo;


--
-- TOC entry 217 (class 1259 OID 16549)
-- Name: Socio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Socio" (
    id_socio integer NOT NULL,
    nombre character varying(60) NOT NULL,
    antiguedad date NOT NULL
);


ALTER TABLE public."Socio" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16548)
-- Name: Socio_id_socio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Socio_id_socio_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Socio_id_socio_seq" OWNER TO postgres;

--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 216
-- Name: Socio_id_socio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Socio_id_socio_seq" OWNED BY public."Socio".id_socio;


--
-- TOC entry 219 (class 1259 OID 16556)
-- Name: Tema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tema" (
    id_tema integer NOT NULL,
    nombre character varying(60) NOT NULL
);


ALTER TABLE public."Tema" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16555)
-- Name: Tema_id_tema_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Tema_id_tema_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Tema_id_tema_seq" OWNER TO postgres;

--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 218
-- Name: Tema_id_tema_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Tema_id_tema_seq" OWNED BY public."Tema".id_tema;


--
-- TOC entry 3188 (class 2604 OID 16545)
-- Name: Libro id_libro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Libro" ALTER COLUMN id_libro SET DEFAULT nextval('public."Libro_id_libro_seq"'::regclass);


--
-- TOC entry 3189 (class 2604 OID 16552)
-- Name: Socio id_socio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Socio" ALTER COLUMN id_socio SET DEFAULT nextval('public."Socio_id_socio_seq"'::regclass);


--
-- TOC entry 3190 (class 2604 OID 16559)
-- Name: Tema id_tema; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tema" ALTER COLUMN id_tema SET DEFAULT nextval('public."Tema_id_tema_seq"'::regclass);


--
-- TOC entry 3345 (class 0 OID 16542)
-- Dependencies: 215
-- Data for Name: Libro; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Libro" (id_libro, titulo, autor, num_ejemplares, id_tema) VALUES (1, 'La casa de bernarda alba', 'Garcia Lorca', 1231, 1);


--
-- TOC entry 3351 (class 0 OID 16563)
-- Dependencies: 221
-- Data for Name: Prestamo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Prestamo" (id_prestamo, fecha_inicio, fecha_fin, id_libro, id_socio) VALUES (1, '2023-02-13', '2023-02-15', 1, 1);


--
-- TOC entry 3347 (class 0 OID 16549)
-- Dependencies: 217
-- Data for Name: Socio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Socio" (id_socio, nombre, antiguedad) VALUES (1, 'Daniela ', '2019-10-12');


--
-- TOC entry 3349 (class 0 OID 16556)
-- Dependencies: 219
-- Data for Name: Tema; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Tema" (id_tema, nombre) VALUES (1, 'novelas');


--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 214
-- Name: Libro_id_libro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Libro_id_libro_seq"', 2, true);


--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 220
-- Name: Prestamo_id_prestamo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Prestamo_id_prestamo_seq"', 1, false);


--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 216
-- Name: Socio_id_socio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Socio_id_socio_seq"', 1, true);


--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 218
-- Name: Tema_id_tema_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Tema_id_tema_seq"', 1, true);


--
-- TOC entry 3192 (class 2606 OID 16547)
-- Name: Libro Libro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Libro"
    ADD CONSTRAINT "Libro_pkey" PRIMARY KEY (id_libro);


--
-- TOC entry 3198 (class 2606 OID 16627)
-- Name: Prestamo Prestamo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Prestamo"
    ADD CONSTRAINT "Prestamo_pkey" PRIMARY KEY (id_prestamo);


--
-- TOC entry 3194 (class 2606 OID 16554)
-- Name: Socio Socio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Socio"
    ADD CONSTRAINT "Socio_pkey" PRIMARY KEY (id_socio);


--
-- TOC entry 3196 (class 2606 OID 16561)
-- Name: Tema Tema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tema"
    ADD CONSTRAINT "Tema_pkey" PRIMARY KEY (id_tema);


--
-- TOC entry 3200 (class 2606 OID 16572)
-- Name: Prestamo id_libro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Prestamo"
    ADD CONSTRAINT id_libro FOREIGN KEY (id_libro) REFERENCES public."Libro"(id_libro) NOT VALID;


--
-- TOC entry 3201 (class 2606 OID 16577)
-- Name: Prestamo id_socio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Prestamo"
    ADD CONSTRAINT id_socio FOREIGN KEY (id_socio) REFERENCES public."Socio"(id_socio) NOT VALID;


--
-- TOC entry 3199 (class 2606 OID 16567)
-- Name: Libro id_tema; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Libro"
    ADD CONSTRAINT id_tema FOREIGN KEY (id_tema) REFERENCES public."Tema"(id_tema) NOT VALID;


-- Completed on 2023-05-03 16:52:52

--
-- PostgreSQL database dump complete
--

