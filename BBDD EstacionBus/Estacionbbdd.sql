-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public."Autobus"
(
    id_autobus serial NOT NULL,
    a_fabricacion integer NOT NULL,
    precio numeric(6, 4) NOT NULL
);

CREATE TABLE IF NOT EXISTS public."Conductor"
(
    id_conductor serial NOT NULL,
    nombre character varying(60) NOT NULL,
    edad integer NOT NULL
);

CREATE TABLE IF NOT EXISTS public."Lugar"
(
    id_lugar serial NOT NULL,
    nombre character varying(30) NOT NULL,
    PRIMARY KEY (id_lugar)
);

CREATE TABLE IF NOT EXISTS public."Ruta"
(
    id_ruta serial NOT NULL,
    id_autobus integer NOT NULL,
    id_conductor integer NOT NULL,
    id_lugar integer NOT NULL,
    fecha_ruta date NOT NULL,
    PRIMARY KEY (id_ruta)
);

ALTER TABLE IF EXISTS public."Ruta"
    ADD CONSTRAINT fk_rutas_autobus FOREIGN KEY (id_autobus)
    REFERENCES public."Autobus" (id_autobus) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."Ruta"
    ADD CONSTRAINT fk_rutas_conductor FOREIGN KEY (id_conductor)
    REFERENCES public."Conductor" (id_conductor) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."Ruta"
    ADD CONSTRAINT fk_rutas_lugar FOREIGN KEY (id_lugar)
    REFERENCES public."Lugar" (id_lugar) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;