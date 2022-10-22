--
-- PostgreSQL database dump
--

-- Dumped from database version 10.22 (Ubuntu 10.22-1.pgdg18.04+1)
-- Dumped by pg_dump version 10.22 (Ubuntu 10.22-1.pgdg18.04+1)

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: api_calls; Type: TABLE; Schema: public; Owner: flower
--

CREATE TABLE public.api_calls (
    id bigint NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.api_calls OWNER TO flower;

--
-- Name: api_calls_id_seq; Type: SEQUENCE; Schema: public; Owner: flower
--

CREATE SEQUENCE public.api_calls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_calls_id_seq OWNER TO flower;

--
-- Name: api_calls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: flower
--

ALTER SEQUENCE public.api_calls_id_seq OWNED BY public.api_calls.id;


--
-- Name: api_calls id; Type: DEFAULT; Schema: public; Owner: flower
--

ALTER TABLE ONLY public.api_calls ALTER COLUMN id SET DEFAULT nextval('public.api_calls_id_seq'::regclass);


--
-- Name: api_calls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: flower
--

SELECT pg_catalog.setval('public.api_calls_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

