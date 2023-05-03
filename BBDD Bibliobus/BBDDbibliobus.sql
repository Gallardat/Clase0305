-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public."Libro"
(
    id_libro serial NOT NULL,
    titulo character varying(60) NOT NULL,
    autor character varying(60) NOT NULL,
    num_ejemplares integer NOT NULL,
    id_tema integer NOT NULL,
    PRIMARY KEY (id_libro)
);

CREATE TABLE IF NOT EXISTS public."Tema"
(
    id_tema serial NOT NULL,
    nombre_tema character varying(60) NOT NULL,
    PRIMARY KEY (id_tema)
);

CREATE TABLE IF NOT EXISTS public."Socio"
(
    id_socio serial NOT NULL,
    nombre character varying(60) NOT NULL,
    fecha_alta date NOT NULL,
    PRIMARY KEY (id_socio)
);

CREATE TABLE IF NOT EXISTS public."Prestamo"
(
    id_prestamo serial NOT NULL,
    fecha_inicio date NOT NULL,
    fehca_fin date NOT NULL,
    id_libro integer NOT NULL,
    id_socio integer NOT NULL,
    PRIMARY KEY (id_prestamo)
);

ALTER TABLE IF EXISTS public."Libro"
    ADD CONSTRAINT id_tema FOREIGN KEY (id_tema)
    REFERENCES public."Tema" (id_tema) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."Prestamo"
    ADD CONSTRAINT id_libro FOREIGN KEY (id_libro)
    REFERENCES public."Libro" (id_libro) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."Prestamo"
    ADD CONSTRAINT id_socio FOREIGN KEY (id_socio)
    REFERENCES public."Socio" (id_socio) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;