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

DROP DATABASE salon;
--
-- Name: salon; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE salon WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE salon OWNER TO freecodecamp;

\connect salon

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
-- Name: appointments; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.appointments (
    appointment_id integer NOT NULL,
    customer_id integer,
    service_id integer,
    "time" character varying NOT NULL
);


ALTER TABLE public.appointments OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.appointments_appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointments_appointment_id_seq OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.appointments_appointment_id_seq OWNED BY public.appointments.appointment_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    name character varying NOT NULL,
    phone character varying NOT NULL
);


ALTER TABLE public.customers OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.services (
    service_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.services OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.services_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_service_id_seq OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.services_service_id_seq OWNED BY public.services.service_id;


--
-- Name: appointments appointment_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointments_appointment_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: services service_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services ALTER COLUMN service_id SET DEFAULT nextval('public.services_service_id_seq'::regclass);


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.appointments VALUES (1, 5, 1, '');
INSERT INTO public.appointments VALUES (3, 5, 1, '');
INSERT INTO public.appointments VALUES (23, 5, 1, '');
INSERT INTO public.appointments VALUES (24, 5, 1, '');


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.customers VALUES (5, '', '');


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.services VALUES (1, 'out');
INSERT INTO public.services VALUES (2, 'color');
INSERT INTO public.services VALUES (3, 'perm');
INSERT INTO public.services VALUES (4, 'style');
INSERT INTO public.services VALUES (5, 'trim');
INSERT INTO public.services VALUES (6, 'out');
INSERT INTO public.services VALUES (7, 'color');
INSERT INTO public.services VALUES (8, 'perm');
INSERT INTO public.services VALUES (9, 'style');
INSERT INTO public.services VALUES (10, 'trim');
INSERT INTO public.services VALUES (11, 'out');
INSERT INTO public.services VALUES (12, 'color');
INSERT INTO public.services VALUES (13, 'perm');
INSERT INTO public.services VALUES (14, 'style');
INSERT INTO public.services VALUES (15, 'trim');
INSERT INTO public.services VALUES (16, 'out');
INSERT INTO public.services VALUES (17, 'color');
INSERT INTO public.services VALUES (18, 'perm');
INSERT INTO public.services VALUES (19, 'style');
INSERT INTO public.services VALUES (20, 'trim');
INSERT INTO public.services VALUES (21, 'out');
INSERT INTO public.services VALUES (22, 'color');
INSERT INTO public.services VALUES (23, 'perm');
INSERT INTO public.services VALUES (24, 'style');
INSERT INTO public.services VALUES (25, 'trim');
INSERT INTO public.services VALUES (26, 'out');
INSERT INTO public.services VALUES (27, 'color');
INSERT INTO public.services VALUES (28, 'perm');
INSERT INTO public.services VALUES (29, 'style');
INSERT INTO public.services VALUES (30, 'trim');
INSERT INTO public.services VALUES (31, 'out');
INSERT INTO public.services VALUES (32, 'color');
INSERT INTO public.services VALUES (33, 'perm');
INSERT INTO public.services VALUES (34, 'style');
INSERT INTO public.services VALUES (35, 'trim');
INSERT INTO public.services VALUES (36, 'cut');
INSERT INTO public.services VALUES (37, 'color');
INSERT INTO public.services VALUES (38, 'perm');
INSERT INTO public.services VALUES (39, 'style');
INSERT INTO public.services VALUES (40, 'trim');
INSERT INTO public.services VALUES (41, 'cut');
INSERT INTO public.services VALUES (42, 'color');
INSERT INTO public.services VALUES (43, 'perm');
INSERT INTO public.services VALUES (44, 'style');
INSERT INTO public.services VALUES (45, 'trim');
INSERT INTO public.services VALUES (46, 'cut');
INSERT INTO public.services VALUES (47, 'color');
INSERT INTO public.services VALUES (48, 'perm');
INSERT INTO public.services VALUES (49, 'style');
INSERT INTO public.services VALUES (50, 'trim');
INSERT INTO public.services VALUES (51, 'cut');
INSERT INTO public.services VALUES (52, 'color');
INSERT INTO public.services VALUES (53, 'perm');
INSERT INTO public.services VALUES (54, 'style');
INSERT INTO public.services VALUES (55, 'trim');
INSERT INTO public.services VALUES (56, 'cut');
INSERT INTO public.services VALUES (57, 'color');
INSERT INTO public.services VALUES (58, 'perm');
INSERT INTO public.services VALUES (59, 'style');
INSERT INTO public.services VALUES (60, 'trim');
INSERT INTO public.services VALUES (61, 'cut');
INSERT INTO public.services VALUES (62, 'color');
INSERT INTO public.services VALUES (63, 'perm');
INSERT INTO public.services VALUES (64, 'style');
INSERT INTO public.services VALUES (65, 'trim');
INSERT INTO public.services VALUES (66, 'cut');
INSERT INTO public.services VALUES (67, 'color');
INSERT INTO public.services VALUES (68, 'perm');
INSERT INTO public.services VALUES (69, 'style');
INSERT INTO public.services VALUES (70, 'trim');
INSERT INTO public.services VALUES (71, 'cut');
INSERT INTO public.services VALUES (72, 'color');
INSERT INTO public.services VALUES (73, 'perm');
INSERT INTO public.services VALUES (74, 'style');
INSERT INTO public.services VALUES (75, 'trim');
INSERT INTO public.services VALUES (76, 'cut');
INSERT INTO public.services VALUES (77, 'color');
INSERT INTO public.services VALUES (78, 'perm');
INSERT INTO public.services VALUES (79, 'style');
INSERT INTO public.services VALUES (80, 'trim');
INSERT INTO public.services VALUES (81, 'cut');
INSERT INTO public.services VALUES (82, 'color');
INSERT INTO public.services VALUES (83, 'perm');
INSERT INTO public.services VALUES (84, 'style');
INSERT INTO public.services VALUES (85, 'trim');
INSERT INTO public.services VALUES (86, 'cut');
INSERT INTO public.services VALUES (87, 'color');
INSERT INTO public.services VALUES (88, 'perm');
INSERT INTO public.services VALUES (89, 'style');
INSERT INTO public.services VALUES (90, 'trim');
INSERT INTO public.services VALUES (91, 'cut');
INSERT INTO public.services VALUES (92, 'color');
INSERT INTO public.services VALUES (93, 'perm');
INSERT INTO public.services VALUES (94, 'style');
INSERT INTO public.services VALUES (95, 'trim');
INSERT INTO public.services VALUES (96, 'cut');
INSERT INTO public.services VALUES (97, 'color');
INSERT INTO public.services VALUES (98, 'perm');
INSERT INTO public.services VALUES (99, 'style');
INSERT INTO public.services VALUES (100, 'trim');
INSERT INTO public.services VALUES (101, 'cut');
INSERT INTO public.services VALUES (102, 'color');
INSERT INTO public.services VALUES (103, 'perm');
INSERT INTO public.services VALUES (104, 'style');
INSERT INTO public.services VALUES (105, 'trim');
INSERT INTO public.services VALUES (106, 'cut');
INSERT INTO public.services VALUES (107, 'color');
INSERT INTO public.services VALUES (108, 'perm');
INSERT INTO public.services VALUES (109, 'style');
INSERT INTO public.services VALUES (110, 'trim');
INSERT INTO public.services VALUES (111, 'cut');
INSERT INTO public.services VALUES (112, 'color');
INSERT INTO public.services VALUES (113, 'perm');
INSERT INTO public.services VALUES (114, 'style');
INSERT INTO public.services VALUES (115, 'trim');
INSERT INTO public.services VALUES (116, 'cut');
INSERT INTO public.services VALUES (117, 'color');
INSERT INTO public.services VALUES (118, 'perm');
INSERT INTO public.services VALUES (119, 'style');
INSERT INTO public.services VALUES (120, 'trim');
INSERT INTO public.services VALUES (121, 'cut');
INSERT INTO public.services VALUES (122, 'color');
INSERT INTO public.services VALUES (123, 'perm');
INSERT INTO public.services VALUES (124, 'style');
INSERT INTO public.services VALUES (125, 'trim');
INSERT INTO public.services VALUES (126, 'cut');
INSERT INTO public.services VALUES (127, 'color');
INSERT INTO public.services VALUES (128, 'perm');
INSERT INTO public.services VALUES (129, 'style');
INSERT INTO public.services VALUES (130, 'trim');
INSERT INTO public.services VALUES (131, 'cut');
INSERT INTO public.services VALUES (132, 'color');
INSERT INTO public.services VALUES (133, 'perm');
INSERT INTO public.services VALUES (134, 'style');
INSERT INTO public.services VALUES (135, 'trim');
INSERT INTO public.services VALUES (136, 'cut');
INSERT INTO public.services VALUES (137, 'color');
INSERT INTO public.services VALUES (138, 'perm');
INSERT INTO public.services VALUES (139, 'style');
INSERT INTO public.services VALUES (140, 'trim');
INSERT INTO public.services VALUES (141, 'cut');
INSERT INTO public.services VALUES (142, 'color');
INSERT INTO public.services VALUES (143, 'perm');
INSERT INTO public.services VALUES (144, 'style');
INSERT INTO public.services VALUES (145, 'trim');
INSERT INTO public.services VALUES (146, 'cut');
INSERT INTO public.services VALUES (147, 'color');
INSERT INTO public.services VALUES (148, 'perm');
INSERT INTO public.services VALUES (149, 'style');
INSERT INTO public.services VALUES (150, 'trim');
INSERT INTO public.services VALUES (151, 'cut');
INSERT INTO public.services VALUES (152, 'color');
INSERT INTO public.services VALUES (153, 'perm');
INSERT INTO public.services VALUES (154, 'style');
INSERT INTO public.services VALUES (155, 'trim');
INSERT INTO public.services VALUES (156, 'cut');
INSERT INTO public.services VALUES (157, 'color');
INSERT INTO public.services VALUES (158, 'perm');
INSERT INTO public.services VALUES (159, 'style');
INSERT INTO public.services VALUES (160, 'trim');
INSERT INTO public.services VALUES (161, 'cut');
INSERT INTO public.services VALUES (162, 'color');
INSERT INTO public.services VALUES (163, 'perm');
INSERT INTO public.services VALUES (164, 'style');
INSERT INTO public.services VALUES (165, 'trim');
INSERT INTO public.services VALUES (166, 'cut');
INSERT INTO public.services VALUES (167, 'color');
INSERT INTO public.services VALUES (168, 'perm');
INSERT INTO public.services VALUES (169, 'style');
INSERT INTO public.services VALUES (170, 'trim');
INSERT INTO public.services VALUES (171, 'cut');
INSERT INTO public.services VALUES (172, 'color');
INSERT INTO public.services VALUES (173, 'perm');
INSERT INTO public.services VALUES (174, 'style');
INSERT INTO public.services VALUES (175, 'trim');
INSERT INTO public.services VALUES (176, 'cut');
INSERT INTO public.services VALUES (177, 'color');
INSERT INTO public.services VALUES (178, 'perm');
INSERT INTO public.services VALUES (179, 'style');
INSERT INTO public.services VALUES (180, 'trim');
INSERT INTO public.services VALUES (181, 'cut');
INSERT INTO public.services VALUES (182, 'color');
INSERT INTO public.services VALUES (183, 'perm');
INSERT INTO public.services VALUES (184, 'style');
INSERT INTO public.services VALUES (185, 'trim');
INSERT INTO public.services VALUES (186, 'cut');
INSERT INTO public.services VALUES (187, 'color');
INSERT INTO public.services VALUES (188, 'perm');
INSERT INTO public.services VALUES (189, 'style');
INSERT INTO public.services VALUES (190, 'trim');
INSERT INTO public.services VALUES (191, 'cut');
INSERT INTO public.services VALUES (192, 'color');
INSERT INTO public.services VALUES (193, 'perm');
INSERT INTO public.services VALUES (194, 'style');
INSERT INTO public.services VALUES (195, 'trim');
INSERT INTO public.services VALUES (196, 'cut');
INSERT INTO public.services VALUES (197, 'color');
INSERT INTO public.services VALUES (198, 'perm');
INSERT INTO public.services VALUES (199, 'style');
INSERT INTO public.services VALUES (200, 'trim');
INSERT INTO public.services VALUES (201, 'cut');
INSERT INTO public.services VALUES (202, 'color');
INSERT INTO public.services VALUES (203, 'perm');
INSERT INTO public.services VALUES (204, 'style');
INSERT INTO public.services VALUES (205, 'trim');
INSERT INTO public.services VALUES (206, 'cut');
INSERT INTO public.services VALUES (207, 'color');
INSERT INTO public.services VALUES (208, 'perm');
INSERT INTO public.services VALUES (209, 'style');
INSERT INTO public.services VALUES (210, 'trim');
INSERT INTO public.services VALUES (211, 'cut');
INSERT INTO public.services VALUES (212, 'color');
INSERT INTO public.services VALUES (213, 'perm');
INSERT INTO public.services VALUES (214, 'style');
INSERT INTO public.services VALUES (215, 'trim');
INSERT INTO public.services VALUES (216, 'cut');
INSERT INTO public.services VALUES (217, 'color');
INSERT INTO public.services VALUES (218, 'perm');
INSERT INTO public.services VALUES (219, 'style');
INSERT INTO public.services VALUES (220, 'trim');
INSERT INTO public.services VALUES (221, 'cut');
INSERT INTO public.services VALUES (222, 'color');
INSERT INTO public.services VALUES (223, 'perm');
INSERT INTO public.services VALUES (224, 'style');
INSERT INTO public.services VALUES (225, 'trim');
INSERT INTO public.services VALUES (226, 'cut');
INSERT INTO public.services VALUES (227, 'color');
INSERT INTO public.services VALUES (228, 'perm');
INSERT INTO public.services VALUES (229, 'style');
INSERT INTO public.services VALUES (230, 'trim');
INSERT INTO public.services VALUES (231, 'cut');
INSERT INTO public.services VALUES (232, 'color');
INSERT INTO public.services VALUES (233, 'perm');
INSERT INTO public.services VALUES (234, 'style');
INSERT INTO public.services VALUES (235, 'trim');
INSERT INTO public.services VALUES (236, 'cut');
INSERT INTO public.services VALUES (237, 'color');
INSERT INTO public.services VALUES (238, 'perm');
INSERT INTO public.services VALUES (239, 'style');
INSERT INTO public.services VALUES (240, 'trim');
INSERT INTO public.services VALUES (241, 'cut');
INSERT INTO public.services VALUES (242, 'color');
INSERT INTO public.services VALUES (243, 'perm');
INSERT INTO public.services VALUES (244, 'style');
INSERT INTO public.services VALUES (245, 'trim');
INSERT INTO public.services VALUES (246, 'cut');
INSERT INTO public.services VALUES (247, 'color');
INSERT INTO public.services VALUES (248, 'perm');
INSERT INTO public.services VALUES (249, 'style');
INSERT INTO public.services VALUES (250, 'trim');
INSERT INTO public.services VALUES (251, 'cut');
INSERT INTO public.services VALUES (252, 'color');
INSERT INTO public.services VALUES (253, 'perm');
INSERT INTO public.services VALUES (254, 'style');
INSERT INTO public.services VALUES (255, 'trim');
INSERT INTO public.services VALUES (256, 'cut');
INSERT INTO public.services VALUES (257, 'color');
INSERT INTO public.services VALUES (258, 'perm');
INSERT INTO public.services VALUES (259, 'style');
INSERT INTO public.services VALUES (260, 'trim');
INSERT INTO public.services VALUES (261, 'cut');
INSERT INTO public.services VALUES (262, 'color');
INSERT INTO public.services VALUES (263, 'perm');
INSERT INTO public.services VALUES (264, 'style');
INSERT INTO public.services VALUES (265, 'trim');


--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.appointments_appointment_id_seq', 30, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 44, true);


--
-- Name: services_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.services_service_id_seq', 265, true);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);


--
-- Name: customers customers_phone_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_phone_key UNIQUE (phone);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);


--
-- Name: appointments appointments_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: appointments appointments_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);


--
-- PostgreSQL database dump complete
--

