--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    lname character varying(100) NOT NULL,
    fname character varying(100) NOT NULL,
    mname character varying(100) NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.employees ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: installs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.installs (
    pc_id integer NOT NULL,
    soft_id integer NOT NULL
);


ALTER TABLE public.installs OWNER TO postgres;

--
-- Name: pcs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pcs (
    id integer NOT NULL,
    note character varying(100),
    ip_addr character varying(100) NOT NULL,
    mac_addr character varying(100) NOT NULL,
    room_id integer NOT NULL
);


ALTER TABLE public.pcs OWNER TO postgres;

--
-- Name: pcs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.pcs ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pcs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: rooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms (
    id integer NOT NULL,
    num integer NOT NULL,
    emp_id integer NOT NULL
);


ALTER TABLE public.rooms OWNER TO postgres;

--
-- Name: rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.rooms ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.rooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: soft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.soft (
    id integer NOT NULL,
    sname character varying(100) NOT NULL,
    ver integer NOT NULL,
    quant integer NOT NULL
);


ALTER TABLE public.soft OWNER TO postgres;

--
-- Name: soft_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.soft ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.soft_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (id, lname, fname, mname) FROM stdin;
1	Попова	София	Данииловна
2	Данилов	Богдан	Максимович
3	Иванов	Илья	Владиславович
4	Лукьянов	Станислав	Романович
5	Ефремова	Мелисса	Александровна
6	Бычков	Артур	Иванович
7	Орлова	Арина	Константиновна
8	Жуков	Георгий	Филиппович
9	Логинов	Кирилл	Михайлович
10	Медведевна	Варвара	Кирилловна
\.


--
-- Data for Name: installs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.installs (pc_id, soft_id) FROM stdin;
30	5
29	4
28	3
27	2
26	1
25	1
24	2
23	3
22	4
21	5
20	5
19	4
18	3
17	2
16	1
16	1
15	2
14	3
13	4
12	5
11	5
9	4
8	3
7	2
6	1
5	1
4	2
3	3
2	4
1	5
1	5
2	4
3	3
4	2
5	1
6	1
7	2
8	3
9	4
10	5
11	5
12	4
13	3
14	2
15	1
16	1
17	2
18	3
19	4
20	5
21	5
22	4
23	3
24	2
25	1
26	1
27	2
28	3
29	4
30	5
\.


--
-- Data for Name: pcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pcs (id, note, ip_addr, mac_addr, room_id) FROM stdin;
1	Комп	1239.708.234.342	db:33:ed:33:f6:33	15
2	Комп	1.55.755.115	cb:25:ef:29:26:32	14
3	Комп	08.979.36.12	fb:11:ab:71:18:51	13
4	Комп	414.770.209.114	74:f5:66:45:06:c7	12
5	Комп	128.703.87.216	62:17:1d:1e:d2:a8	11
6	Комп	17.179.221.111	ce:90:98:19:eb:61	10
7	Комп	36.47.209.211	a5:4b:04:0f:14:68	9
8	Комп	49.127.152.11	60:3c:66:f3:37:ef	8
9	Комп	72.117.35.912	65:08:50:bb:7a:a9	7
10	Комп	176.172.234.722	cc:75:9a:ed:2c:63	6
11	Комп	241.277.123.13	57:f0:2a:78:93:ef	5
12	Комп	54.123.376.23	fd:6f:6c:0c:a6:21	4
13	Комп	131.2307.188.8	ab:75:df:7c:83:e0	3
14	Комп	233.587.233.2	86:e5:6f:b3:f7:be	2
15	Комп	129.457.55.3	6b:2b:2f:5f:66:ad	1
16	Комп	42.637.33.24	b2:a8:1a:56:fc:11	1
17	Комп	152.707.243.48	9c:e8:68:40:d6:59	2
18	Комп	82.932.250.6	49:31:82:a8:4b:21	3
19	Комп	923.933.44.6	2e:6c:fa:77:d1:29	4
20	Комп	297.138.159,9	a9:f2:8f:b0:30:9c	5
21	Комп	67.243.48.20	e6:a6:78:c6:73:6a	6
22	Комп	168.43.20.7	a3:55:e0:3d:11:cd	7
23	Комп	1266.139.102.43	03:55:de:bf:22:b5	8
24	Комп	266.613.2.2	2e:af:ba:1c:94:25	9
25	Комп	996.103.53.5	4b:81:02:82:03:6a	10
26	Комп	240.353.104.17	6b:a0:6e:60:6d:65	11
27	Комп	155.153.165.3	a5:b5:a5:35:a5:a5	12
28	Комп	935.173.85.12	94:04:14:34:b4:54	13
29	Комп	815.232.126.39	35:38:34:38:31:33	14
30	Комп	953.332.49.4	ab:72:26:25:22:2b	15
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms (id, num, emp_id) FROM stdin;
1	15	10
2	9	9
3	8	8
4	7	9
5	6	7
6	5	6
7	4	5
8	3	4
9	2	3
10	1	2
11	11	1
12	12	2
13	13	3
14	14	4
15	15	5
\.


--
-- Data for Name: soft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.soft (id, sname, ver, quant) FROM stdin;
1	MacOS	9	12
2	IOS	16	150
3	Unity	22	15
4	Windows	11	12
5	VirtualBox	7	12
\.


--
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_id_seq', 10, true);


--
-- Name: pcs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pcs_id_seq', 30, true);


--
-- Name: rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_id_seq', 15, true);


--
-- Name: soft_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.soft_id_seq', 5, true);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- Name: pcs pcs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT pcs_pkey PRIMARY KEY (id);


--
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);


--
-- Name: soft soft_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soft
    ADD CONSTRAINT soft_pkey PRIMARY KEY (id);


--
-- Name: installs installs_pc_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT installs_pc_id_fkey FOREIGN KEY (pc_id) REFERENCES public.pcs(id);


--
-- Name: installs installs_soft_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT installs_soft_id_fkey FOREIGN KEY (soft_id) REFERENCES public.soft(id);


--
-- Name: pcs pcs_room_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT pcs_room_id_fkey FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- Name: rooms rooms_emp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_emp_id_fkey FOREIGN KEY (emp_id) REFERENCES public.employees(id);


--
-- PostgreSQL database dump complete
--

