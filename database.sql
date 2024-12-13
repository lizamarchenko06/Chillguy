--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2024-12-13 08:05:00

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4961 (class 1262 OID 25108)
-- Name: database; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE database WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE database OWNER TO postgres;

\connect database

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 239 (class 1255 OID 25153)
-- Name: create_category_table(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.create_category_table(category_name text) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    EXECUTE format('
        CREATE TABLE %I (
            id SERIAL PRIMARY KEY,
            category_id INT REFERENCES categories(id) ON DELETE CASCADE,
            data JSONB NOT NULL
        )', category_name);
END;
$$;


ALTER FUNCTION public.create_category_table(category_name text) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 25320)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 25319)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO postgres;

--
-- TOC entry 4962 (class 0 OID 0)
-- Dependencies: 217
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 220 (class 1259 OID 25328)
-- Name: electricshavers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.electricshavers (
    id integer NOT NULL,
    category_id integer NOT NULL,
    product_id integer,
    title character varying(255),
    description text,
    image text,
    rating double precision,
    price_with_discount numeric,
    price_without_discount numeric
);


ALTER TABLE public.electricshavers OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 25327)
-- Name: electricshavers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.electricshavers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.electricshavers_id_seq OWNER TO postgres;

--
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 219
-- Name: electricshavers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.electricshavers_id_seq OWNED BY public.electricshavers.id;


--
-- TOC entry 238 (class 1259 OID 25469)
-- Name: fridge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fridge (
    id integer NOT NULL,
    category_id integer NOT NULL,
    product_id integer,
    title character varying(255),
    description text,
    image text,
    rating double precision,
    price_with_discount numeric,
    price_without_discount numeric
);


ALTER TABLE public.fridge OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 25468)
-- Name: fridge_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fridge_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fridge_id_seq OWNER TO postgres;

--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 237
-- Name: fridge_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fridge_id_seq OWNED BY public.fridge.id;


--
-- TOC entry 222 (class 1259 OID 25356)
-- Name: gasstoves; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gasstoves (
    id integer NOT NULL,
    category_id integer NOT NULL,
    product_id integer,
    title character varying(255),
    description text,
    image text,
    rating double precision,
    price_with_discount numeric,
    price_without_discount numeric
);


ALTER TABLE public.gasstoves OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 25355)
-- Name: gasstoves_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gasstoves_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gasstoves_id_seq OWNER TO postgres;

--
-- TOC entry 4965 (class 0 OID 0)
-- Dependencies: 221
-- Name: gasstoves_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gasstoves_id_seq OWNED BY public.gasstoves.id;


--
-- TOC entry 224 (class 1259 OID 25370)
-- Name: hairdryer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hairdryer (
    id integer NOT NULL,
    category_id integer NOT NULL,
    product_id integer,
    title character varying(255),
    description text,
    image text,
    rating double precision,
    price_with_discount numeric,
    price_without_discount numeric
);


ALTER TABLE public.hairdryer OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 25369)
-- Name: hairdryer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hairdryer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hairdryer_id_seq OWNER TO postgres;

--
-- TOC entry 4966 (class 0 OID 0)
-- Dependencies: 223
-- Name: hairdryer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hairdryer_id_seq OWNED BY public.hairdryer.id;


--
-- TOC entry 226 (class 1259 OID 25384)
-- Name: headphones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.headphones (
    id integer NOT NULL,
    category_id integer NOT NULL,
    product_id integer,
    title character varying(255),
    description text,
    image text,
    rating double precision,
    price_with_discount numeric,
    price_without_discount numeric
);


ALTER TABLE public.headphones OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 25383)
-- Name: headphones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.headphones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.headphones_id_seq OWNER TO postgres;

--
-- TOC entry 4967 (class 0 OID 0)
-- Dependencies: 225
-- Name: headphones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.headphones_id_seq OWNED BY public.headphones.id;


--
-- TOC entry 228 (class 1259 OID 25398)
-- Name: kidswatch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kidswatch (
    id integer NOT NULL,
    category_id integer NOT NULL,
    product_id integer,
    title character varying(255),
    description text,
    image text,
    rating double precision,
    price_with_discount numeric,
    price_without_discount numeric
);


ALTER TABLE public.kidswatch OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 25397)
-- Name: kidswatch_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kidswatch_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.kidswatch_id_seq OWNER TO postgres;

--
-- TOC entry 4968 (class 0 OID 0)
-- Dependencies: 227
-- Name: kidswatch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kidswatch_id_seq OWNED BY public.kidswatch.id;


--
-- TOC entry 230 (class 1259 OID 25412)
-- Name: laptop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.laptop (
    id integer NOT NULL,
    category_id integer NOT NULL,
    product_id integer,
    title character varying(255),
    description text,
    image text,
    rating double precision,
    price_with_discount numeric,
    price_without_discount numeric
);


ALTER TABLE public.laptop OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 25411)
-- Name: laptop_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.laptop_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.laptop_id_seq OWNER TO postgres;

--
-- TOC entry 4969 (class 0 OID 0)
-- Dependencies: 229
-- Name: laptop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.laptop_id_seq OWNED BY public.laptop.id;


--
-- TOC entry 232 (class 1259 OID 25426)
-- Name: screwdrivers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.screwdrivers (
    id integer NOT NULL,
    category_id integer NOT NULL,
    product_id integer,
    title character varying(255),
    description text,
    image text,
    rating double precision,
    price_with_discount numeric,
    price_without_discount numeric
);


ALTER TABLE public.screwdrivers OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 25425)
-- Name: screwdrivers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.screwdrivers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.screwdrivers_id_seq OWNER TO postgres;

--
-- TOC entry 4970 (class 0 OID 0)
-- Dependencies: 231
-- Name: screwdrivers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.screwdrivers_id_seq OWNED BY public.screwdrivers.id;


--
-- TOC entry 234 (class 1259 OID 25440)
-- Name: smartphone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.smartphone (
    id integer NOT NULL,
    category_id integer NOT NULL,
    product_id integer,
    title character varying(255),
    description text,
    image text,
    rating double precision,
    price_with_discount numeric,
    price_without_discount numeric
);


ALTER TABLE public.smartphone OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 25439)
-- Name: smartphone_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.smartphone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.smartphone_id_seq OWNER TO postgres;

--
-- TOC entry 4971 (class 0 OID 0)
-- Dependencies: 233
-- Name: smartphone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.smartphone_id_seq OWNED BY public.smartphone.id;


--
-- TOC entry 236 (class 1259 OID 25454)
-- Name: smartwatch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.smartwatch (
    id integer NOT NULL,
    category_id integer NOT NULL,
    product_id integer,
    title character varying(255),
    description text,
    image text,
    rating double precision,
    price_with_discount numeric,
    price_without_discount numeric
);


ALTER TABLE public.smartwatch OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 25453)
-- Name: smartwatch_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.smartwatch_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.smartwatch_id_seq OWNER TO postgres;

--
-- TOC entry 4972 (class 0 OID 0)
-- Dependencies: 235
-- Name: smartwatch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.smartwatch_id_seq OWNED BY public.smartwatch.id;


--
-- TOC entry 4746 (class 2604 OID 25323)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 4747 (class 2604 OID 25331)
-- Name: electricshavers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.electricshavers ALTER COLUMN id SET DEFAULT nextval('public.electricshavers_id_seq'::regclass);


--
-- TOC entry 4756 (class 2604 OID 25472)
-- Name: fridge id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fridge ALTER COLUMN id SET DEFAULT nextval('public.fridge_id_seq'::regclass);


--
-- TOC entry 4748 (class 2604 OID 25359)
-- Name: gasstoves id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gasstoves ALTER COLUMN id SET DEFAULT nextval('public.gasstoves_id_seq'::regclass);


--
-- TOC entry 4749 (class 2604 OID 25373)
-- Name: hairdryer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hairdryer ALTER COLUMN id SET DEFAULT nextval('public.hairdryer_id_seq'::regclass);


--
-- TOC entry 4750 (class 2604 OID 25387)
-- Name: headphones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.headphones ALTER COLUMN id SET DEFAULT nextval('public.headphones_id_seq'::regclass);


--
-- TOC entry 4751 (class 2604 OID 25401)
-- Name: kidswatch id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kidswatch ALTER COLUMN id SET DEFAULT nextval('public.kidswatch_id_seq'::regclass);


--
-- TOC entry 4752 (class 2604 OID 25415)
-- Name: laptop id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laptop ALTER COLUMN id SET DEFAULT nextval('public.laptop_id_seq'::regclass);


--
-- TOC entry 4753 (class 2604 OID 25429)
-- Name: screwdrivers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.screwdrivers ALTER COLUMN id SET DEFAULT nextval('public.screwdrivers_id_seq'::regclass);


--
-- TOC entry 4754 (class 2604 OID 25443)
-- Name: smartphone id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.smartphone ALTER COLUMN id SET DEFAULT nextval('public.smartphone_id_seq'::regclass);


--
-- TOC entry 4755 (class 2604 OID 25457)
-- Name: smartwatch id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.smartwatch ALTER COLUMN id SET DEFAULT nextval('public.smartwatch_id_seq'::regclass);


--
-- TOC entry 4935 (class 0 OID 25320)
-- Dependencies: 218
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories VALUES (1, 'Electric Shavers');
INSERT INTO public.categories VALUES (2, 'Fridge');
INSERT INTO public.categories VALUES (3, 'Gasstoves');
INSERT INTO public.categories VALUES (4, 'Hairdryer');
INSERT INTO public.categories VALUES (6, 'Kidswatch');
INSERT INTO public.categories VALUES (5, 'Headphones');
INSERT INTO public.categories VALUES (7, 'Laptop');
INSERT INTO public.categories VALUES (8, 'Screwdrivers');
INSERT INTO public.categories VALUES (9, 'Smartphone');
INSERT INTO public.categories VALUES (10, 'Smartwatch');


--
-- TOC entry 4937 (class 0 OID 25328)
-- Dependencies: 220
-- Data for Name: electricshavers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.electricshavers VALUES (1, 1, 1, 'Электробритва Panasonic ES-RT77', 'черный/серебристый, сеточная, бритье: влажное/сухое, головок - 3, триммер, питание - от аккумулятора', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/15abf4d1206a71dc5d0d6b4dba3c4697/85786424322d21c514fb7aec0ed42e794519a22b2adeecafba7486e534fdaeac.png', 4.5, 10.799, NULL);
INSERT INTO public.electricshavers VALUES (2, 1, 2, 'Электробритва Polaris PMR 0714RC Ultimate shave 5D PRO', 'серебристый/черный, роторная, бритье: влажное/сухое, головок - 3, триммер, питание - от аккумулятора, от сети', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/67223a015cdf8f1d248bb5b4eb8ec694/c215dffb2baaa840e391c0023a247fff447db81f6aab0aed7e8db88d1640e036.png', 4.8, 10.999, NULL);
INSERT INTO public.electricshavers VALUES (3, 1, 3, 'Электробритва Philips S5586/66', 'серый, роторная, бритье: влажное/сухое, головок - 3, триммер, автоматическая очистка, питание - от аккумулятора', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/7402dc162185e61750a0d2fb69fb8ad7/8021a27df44621f10de35f8e51d65a476872a97344f919af18753aa52a18d3c8.jpg', 4.8, 17.999, NULL);
INSERT INTO public.electricshavers VALUES (4, 1, 4, 'Электробритва Polaris PMR 0611RC', 'коричневый, роторная, бритье: влажное/сухое, головок - 3, питание - от аккумулятора, от сети', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/d5d97c1737b3415ab3da92aa7dc19de4/bafb0be6e513c7084239e180d73b751b0bc4836827fd2755fe35c10a9f6a35d4.jpg', 4.9, 4.599, 4.999);
INSERT INTO public.electricshavers VALUES (5, 1, 5, 'Электробритва Braun S7 71-N1000s', 'черный/серебристый, сеточная, бритье: влажное/сухое, головок - 3, питание - от аккумулятора', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/9aab10d83cb42e24ccced96c55fbc57b/e9d44b156bddbb872601371597c5be341c5006fe0b59c18d0bcb393eb2936506.jpg', 4.6, 17.999, NULL);
INSERT INTO public.electricshavers VALUES (6, 1, 6, 'Электробритва Braun S9 Pro+ 9527s Silver PowerCase', 'серый/черный, сеточная, бритье: влажное/сухое, головок - 5, триммер, автоматическая очистка, питание - от аккумулятора', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/53d809d7761dbca3e527d71a203e110c/a8a04d63410beb6e1e72e58f9cefceab44ab8715851bc73d29ffdaf8ea207eb9.jpg', 5, 50.999, NULL);
INSERT INTO public.electricshavers VALUES (7, 1, 7, 'Электробритва Braun S5 51-B1200S', 'черный/голубой, сеточная, бритье: влажное/сухое, головок - 3, триммер, питание - от аккумулятора', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/6479b2bf23e7d2f10f433132a9c35b5d/05b9bbdc165c951edc58b49ba63ecc1e059e8cc4a645f6685f26ac2f98705322.jpg', 4.9, 12.599, NULL);
INSERT INTO public.electricshavers VALUES (8, 1, 8, 'Электробритва Panasonic ES-6002', 'черный/серый, синий, сеточная, бритье: влажное/сухое, головок - 3, триммер, питание - от аккумулятора', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/2d3fffc4af14b7269318a5cd8e2c25bb/77c55670c95cb07f9be9a420ba260b76c21f43ae0336cbf4273bc0c4bce7411b.jpg', 4.7, 5.799, NULL);
INSERT INTO public.electricshavers VALUES (9, 1, 9, 'Электробритва Philips S5898/35', 'черный, роторная, бритье: влажное/сухое, головок - 3, триммер, питание - от аккумулятора', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/602daa0de04758f2ba60530f64937081/b2f79747f459f6a12685a2a5acc927e749713e7464e73dcafda6cb271e8ac33f.jpg', 5, 16.199, NULL);
INSERT INTO public.electricshavers VALUES (10, 1, 10, 'Электробритва Panasonic ES-LV97', 'черный/серый, сеточная, бритье: влажное/сухое, головок - 5, триммер, автоматическая очистка, питание - от аккумулятора', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/c72cd8bcbf7a6dc1105e789ac4ff2c46/afa2ebda10719a22a90f671ead34f86c5e4b5a09f6718f27905fe87640600f79.jpg', 5, 38.499, NULL);
INSERT INTO public.electricshavers VALUES (11, 1, 11, 'Электробритва Xiaomi Mijia Electric Shaver S500C', 'черный, роторная, бритье: влажное/сухое, головок - 3, питание - от аккумулятора', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/762dc50a521b0d55ebc6e0f77ea50a96/cad3727c8a15c5f72cae5d7093eb3d7c14cb1c8e154762985a99ce7007286a05.png', 4.6, 4.999, NULL);
INSERT INTO public.electricshavers VALUES (12, 1, 12, 'Электробритва Philips S5588/30', 'черный, роторная, бритье: влажное/сухое, головок - 3, триммер, питание - от аккумулятора', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/4e4f055d6aeff9ccd609ada1912b42d7/9ecb70e9e37c5295f7de1a12669f4b68ff1706ac70c722cbb8d5454089ce9f14.jpg', 4.8, 12.499, NULL);
INSERT INTO public.electricshavers VALUES (13, 1, 13, 'Электробритва Philips S5585/10', 'синий/черный, роторная, бритье: влажное/сухое, головок - 3, триммер, питание - от аккумулятора', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/75e7a3a0955662abd4e7d83931009803/903b0b675c0e49dae8a025056370b5e0470aadd4c0c3284f9f13d517aa040212.jpg', 4.9, 13.999, NULL);
INSERT INTO public.electricshavers VALUES (14, 1, 14, 'Электробритва Philips Series 7000 S7887/55', 'черный/синий, роторная, бритье: влажное/сухое, головок - 3, триммер, автоматическая очистка, питание - от аккумулятора', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/a17ee15904c90042cf9c9b32e4b42d07/b668c6f8f9b0ce3ca2080761e9a7986bad79e540e16855d0f2f55df78e9b9991.jpg', 4.8, 23.999, NULL);
INSERT INTO public.electricshavers VALUES (15, 1, 15, 'Электробритва Polaris PMR 0420R flex&float 4D PRO', 'черный/серебристый, роторная, бритье: влажное/сухое, головок - 3, триммер, питание - от аккумулятора, от сети', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/3079bef1ddd6b743a5d272ddffb00319/40197a1bd329ecb00a1d15be090382d43d86ff3e06912a65f6c6d9a571a4e8b7.jpg', 4.9, 3.999, NULL);
INSERT INTO public.electricshavers VALUES (16, 1, 16, 'Электробритва Polaris PMR 0724RC Ultimate shave 5D PRO base', 'черный, роторная, бритье: влажное/сухое, головок - 3, триммер, питание - от аккумулятора', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/cd1a261513c5ce3c42652ae85abd37b6/0123783d1b5ee8dd36ca909631ab6a066092b7857a03ade5674f710f0dce3b93.jpg', 4.7, 12.499, NULL);
INSERT INTO public.electricshavers VALUES (17, 1, 17, 'Электробритва Polaris PMR 0304R PRO 5', 'синий/черный, роторная, бритье: влажное/сухое, головок - 3, триммер, питание - от аккумулятора', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/8e4952848078868a5174594772f338ad/82ec2cb4bfb7bd7fa8904fe49dcaa6706e539aff34014b63c713a104d69da81c.jpg', 4.9, 2.999, NULL);


--
-- TOC entry 4955 (class 0 OID 25469)
-- Dependencies: 238
-- Data for Name: fridge; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fridge VALUES (1, 2, 1, 'Холодильник с морозильником DEXP B2-26AHA', '254 л, внешнее покрытие-металл, размораживание - ручное, 55 см х 180 см х 56 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/9884cd38803295c594bca342960cd9a7/1584858f364aba2b93cf1197cc18d7c91f42bc8cdefb34ba00dbaf87ad447a11.jpg', 4.7, 29.999, NULL);
INSERT INTO public.fridge VALUES (2, 2, 2, 'Холодильник с морозильником DEXP B4-32AMA', '310 л, внешнее покрытие-металл, размораживание - No Frost, дисплей, 59.5 см х 188 см х 63 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/d3e62197b10d47f0c9a5c7ebb8b3aa0a/c9dd568d7fe8d9365e5dbf1d1c9d444d502f8558908588231dc841645eb3f5f2.jpg', 4.8, 36.999, NULL);
INSERT INTO public.fridge VALUES (3, 2, 3, 'Холодильник с морозильником DEXP RF-TD210NMA/W', '207 л, внешнее покрытие-металл, размораживание - ручное, 55 см х 143 см х 55 см', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/159e4f7f7bf5b93657cb270a3d2da1e9/a9d9e0b6dddd3e1c8c10c8d779dddd6f59515eb6643f09018d3e14f55d702aa5.jpg', 4.7, 20.999, NULL);
INSERT INTO public.fridge VALUES (4, 2, 4, 'Холодильник с морозильником DEXP B4-0340BKA', '335 л, внешнее покрытие-металл, размораживание - No Frost, дисплей, 59.5 см х 195.3 см х 63.5 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/1781c50b5e5629db347008748e584ecf/d9cd9fd669345a7eb907b3fdf2464dc9c2e11f53954a5da00df88714b9a48947.jpg', 4.6, 37.999, NULL);
INSERT INTO public.fridge VALUES (5, 2, 5, 'Холодильник с морозильником Aceline T14AKA', '138 л, внешнее покрытие-металл, размораживание - ручное, 45.4 см х 128.5 см х 51.5 см', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/8e4a421da5deebc54f357f47c04754ef/b182f806b3f1aaa379028895dfe43fa725b3c39a573cf8408d1cb913f0c74776.jpg', 4.7, 18.999, NULL);
INSERT INTO public.fridge VALUES (6, 2, 6, 'Холодильник с морозильником LG GC-B459MQWM', '341 л, внешнее покрытие-металл, размораживание - No Frost, дисплей, 59.5 см х 186 см х 68.2 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/50460b986996ed7fb83a229fded45f04/bc296f5f77f56d6c44b97d91d7c5b46edcbd1b09fa083da9dc72521403a3bbc6.jpg', 4.8, 65.799, NULL);
INSERT INTO public.fridge VALUES (7, 2, 7, 'Холодильник с морозильником LG GC-B509FNMW', '387 л, внешнее покрытие-металл, размораживание - No Frost, дисплей, 59.5 см х 203 см х 68.2 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/783b035bd08a594cf2b13acb47bc56bc/68ed6ef97c55681ad3c06aa2d082f3382789679af60cf54a3314f0f9074583ee.jpg', 5, 75.799, NULL);
INSERT INTO public.fridge VALUES (8, 2, 8, 'Холодильник с морозильником LG GC-B459MLWM', '341 л, внешнее покрытие-металл, размораживание - No Frost, дисплей, 59.5 см х 186 см х 68.2 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/d667be466501b00362bc76a17c875a9f/7587bf07ba0374b989d4a8a8349a7d63f649eca2bbb89ffc18ae1282fa348f53.jpg', 4.8, 66.799, NULL);
INSERT INTO public.fridge VALUES (9, 2, 9, 'Холодильник с морозильником Haier CEF535ASD', '346 л, внешнее покрытие-металл, размораживание - No Frost, дисплей, 59.5 см х 190 см х 65 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/6474f1290d8187cadf4b0eef000b406c/cf5a4603d969d922ab4e284265be4f989e05b493f507c410d67a09b614db5ef8.jpg', 4.7, 54.999, NULL);
INSERT INTO public.fridge VALUES (10, 2, 10, 'Холодильник с морозильником DEXP B4-27AMA', '259 л, внешнее покрытие-металл, размораживание - No Frost, 54.7 см х 180 см х 63.2 см', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/2c008749353375e63e08df4ca28ec33b/2ba8e76a190afeb34d56582d149017457be8f6a69191922d1fb7b63b7e4cfda9.jpg', 4.7, 34.999, NULL);
INSERT INTO public.fridge VALUES (11, 2, 11, 'Холодильник с морозильником DEXP B2-26AHA', '254 л, внешнее покрытие-металл, размораживание - ручное, 55 см х 180 см х 56 см', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/41a946009e9d0c700617ca7fa5e5d602/39a8ee20bd6506a4643250c96b27c97429933256b6430731e7320f1f6e2f23e2.jpg', 4.7, 28.999, NULL);
INSERT INTO public.fridge VALUES (12, 2, 12, 'Холодильник с морозильником DEXP B2-0270AMG', '262 л, внешнее покрытие-металл, размораживание - ручное, 54 см х 176 см х 55 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/5f4794f16b7565121d2250815efff66e/5174d9d9693aafaae19ea34c8c87cf4c19fde54e609e68cd6ea2db675a364d97.jpg', 4.7, 28.999, NULL);
INSERT INTO public.fridge VALUES (13, 2, 13, 'Холодильник Side by Side DEXP SBS510M', '510 л, внешнее покрытие-металл, размораживание - No Frost, дисплей, 89.5 см х 176.5 см х 70.6 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/07fdb8b833dde43ad201be92ae21ac4d/0e329f8ecce122fb7d07f2e930be7ccfdba80f819e19fc71bff8572da21f9a71.jpg', 4.8, 57.999, NULL);
INSERT INTO public.fridge VALUES (14, 2, 14, 'Холодильник с морозильником LG GC-B509SQSM', '384 л, внешнее покрытие-металл, размораживание - No Frost, дисплей, 59.5 см х 203 см х 65.5 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/3fe5ae382bd962a6883f6777854d058b/e613fe926ed86a77fa455802a087d4d04094fe255ebeb12268e34c69e74ea9f9.jpg', 4.7, 71.999, NULL);
INSERT INTO public.fridge VALUES (15, 2, 15, 'Холодильник компактный Aceline S201AMG', '85 л, внешнее покрытие-металл, пластик, размораживание - ручное, 47.4 см х 83.1 см х 44.7 см', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/e6a6a5d57ae853c372d6e89e2b6d4214/9f6e4041bd7140b64f40dcffff02cfe8235bf98da6f476dfee4df763e806829b.jpg', 4.7, 11.699, NULL);
INSERT INTO public.fridge VALUES (16, 2, 16, 'Холодильник с морозильником DEXP RF-CN350DMG/S', '351 л, внешнее покрытие-металл, размораживание - No Frost, дисплей, 59.5 см х 200 см х 63.5 см', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/8989a6740afbe1ac6be48796cf64e6c7/a5074ff7b3ca1bcd3b6006b6e89517fcf2e900f947c297fc518d292cb1ccfb96.jpg', 4.6, 44.999, NULL);
INSERT INTO public.fridge VALUES (17, 2, 17, 'Холодильник с морозильником Eigen Stark-RF22', '402 л, внешнее покрытие-металл, размораживание - No Frost, дисплей, 60 см х 190.8 см х 63.8 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/8f6df7f3eefb8c3b5c51c48bd4873659/125e03be0db17ce2283113a2361a93ab88f161b08f0b7733b9573c322058f99d.jpg', 4.6, 49.999, NULL);
INSERT INTO public.fridge VALUES (18, 2, 18, 'Холодильник с морозильником Aceline B16AMG', '157 л, внешнее покрытие-металл, размораживание - ручное, 47.4 см х 144 см х 49.5 см', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/a2c9733587cc046753aae9389667b8fb/b34518af1d312b3fa9e036560c714d2ca5f80f437ddf08d12b70275a43db1e9f.jpg', 4.7, 20.999, NULL);


--
-- TOC entry 4939 (class 0 OID 25356)
-- Dependencies: 222
-- Data for Name: gasstoves; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.gasstoves VALUES (1, 3, 1, 'Газовая плита Gefest GS 3208 W', 'конфорок - 4 шт, духовка - 42 л, стальные решетки, 50 см x 85 см x 53 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/b5d474f01ac3a5d0bf85691ac9d02a3b/934e5d1bf6df4e269c75b5c350dd6c361a67730c457dacd992126b1e1c5260d9.jpg', 4.8, 21.599, NULL);
INSERT INTO public.gasstoves VALUES (2, 3, 2, 'Газовая плита DARINA B1 3G07 W', 'конфорок - 4 шт, духовка - 50 л, электроподжиг, чугунные решетки, 50 см x 85 см x 56 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/ae56b1120daaf6b45cbe7f5144126155/7b023541ae59c3a16ea0691040f23844db04edb79d127e117e365e8377391f72.jpg', 4.6, 21.499, NULL);
INSERT INTO public.gasstoves VALUES (3, 3, 3, 'Газовая плита Gefest 5300-02 0046', 'конфорок - 4 шт, духовка - 52 л, электроподжиг, гриль, чугунные решетки, 50 см x 85 см x 58.5 см', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/8e00fe36bcadbbc892238a391f10bc10/33ea6849bf5d36137cc528d2cafbebd469b6fc029889f84a7becf75a28282a0e.jpg', 4.6, 37.999, NULL);
INSERT INTO public.gasstoves VALUES (4, 3, 4, 'Газовая плита Gefest GS 3208 W GC', 'конфорок - 4 шт, духовка - 42 л, газ-контроль панели, стальные решетки, 50 см x 85 см x 53 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/97323dffc28156924833abf77704a6b6/f5c41ab32d1ac36def738c6fce59da651f7c47ecc3d31eed3c89b78ab6ffd4f0.jpg', 4.8, 22.699, NULL);
INSERT INTO public.gasstoves VALUES (5, 3, 5, 'Газовая плита Gefest GS 32W633', 'конфорок - 4 шт, духовка - 42 л, электроподжиг, газ-контроль панели, стальные решетки, 50 см x 85 см x 57 см', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/f74582e50512b40c8bd4dccd5efc6de6/989740d984fddc33ff3257f04f196f70a9843431e893baa68471d0b24b67d560.jpg', 4.8, 27.799, NULL);
INSERT INTO public.gasstoves VALUES (6, 3, 6, 'Газовая плита Gefest GS 3206 B', 'конфорок - 4 шт, духовка - 42 л, электроподжиг, чугунные решетки, 50 см x 85 см x 57 см', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/0eaec8cef9f4e73858c90eb60687c904/ff21143b19db3f4b114e602156b5fc4dfebbe2ae2359aef5424c694969f34c90.jpg', 4.8, 24.399, NULL);
INSERT INTO public.gasstoves VALUES (7, 3, 7, 'Газовая плита Flama NP CG 32020 W', 'конфорок - 2 шт, духовка - 30 л, стальные решетки, 50 см x 85 см x 35 см', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/6b90031d7cf44aef7dbb87414f4fb230/ada064eb1320cbb0648c4e12aed7f4c327c84bc4776dff3e6cdd7e15ce36dff8.jpg', 4.8, 13.999, NULL);
INSERT INTO public.gasstoves VALUES (8, 3, 8, 'Газовая плита Aceline G15-1G', 'конфорок - 4 шт, духовка - 54 л, стальные решетки, 49.3 см x 85 см x 60 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/10df11af55ea1eb92d5dd6cdaa0e6148/232e50a9d1b11d2cfcef3d14d5274514a31a83dddae7bad6ac2f8b42a90fc7da.jpg', 4.9, 14.799, NULL);
INSERT INTO public.gasstoves VALUES (9, 3, 9, 'Газовая плита Gorenje GG5A12WF', 'конфорок - 4 шт, духовка - 70 л, электроподжиг, газ-контроль панели, чугунные решетки, 50 см x 85 см x 59.4 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/52356e1434aa13356a9ba7a255ae7624/11a7d87e6bd39f8f9cb781553a0be9440c87ea17b52df9c0aabf4a2ba16e00e1.jpg', 4.6, 39.499, NULL);
INSERT INTO public.gasstoves VALUES (10, 3, 10, 'Газовая плита DARINA G 4001 At', 'конфорок - 4 шт, духовка - 50 л, стальные решетки, 50 см x 85 см x 51 см', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/53e5abe0fb03bae0a40684740c218eff/916a178aff38dd6b5e786d7050af86d23a6e418bb65060cb4284de1a1cd2c0f1.jpg', 4.7, 16.399, NULL);
INSERT INTO public.gasstoves VALUES (11, 3, 11, 'Газовая плита Aceline G15-1W', 'конфорок - 4 шт, духовка - 54 л, стальные решетки, 49.3 см x 85 см x 60 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/637e9c62389c7f57ee44612ccb3043d9/b3eb1fb9e19866d983cd03a3662eb83520c19713e97e2e855343cecd3c28eaff.jpg', 4.7, 14.499, NULL);
INSERT INTO public.gasstoves VALUES (12, 3, 12, 'Газовая плита Gefest ПГ 5100-03 0004', 'конфорок - 4 шт, духовка - 52 л, электроподжиг, газ-контроль панели, гриль, чугунные решетки, 50 см x 85 см x 58.5 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/31c0a7c96e35c356595d07ecca14190b/3e47fe2bc576b7b74f674be57ba36088e9259a9ad67dd993d00997061051f8e7.jpg', 4.8, 41.299, NULL);
INSERT INTO public.gasstoves VALUES (13, 3, 13, 'Газовая плита Gefest GS 3206 W GC', 'конфорок - 4 шт, духовка - 42 л, электроподжиг, газ-контроль панели, чугунные решетки, 50 см x 85 см x 57 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/585c06ef378f9b23890432a63f62e7b0/16258b51c5dde236a0a68180c29b99e0c3bb310c71ff8e80d873e8ff78dc23eb.jpg', 4.8, 29.599, NULL);
INSERT INTO public.gasstoves VALUES (14, 3, 14, 'Газовая плита DARINA G 4001 W', 'конфорок - 4 шт, духовка - 50 л, стальные решетки, 50 см x 83 см x 51 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/585c06ef378f9b23890432a63f62e7b0/16258b51c5dde236a0a68180c29b99e0c3bb310c71ff8e80d873e8ff78dc23eb.jpg', 4.9, 29.599, NULL);
INSERT INTO public.gasstoves VALUES (15, 3, 15, 'Газовая плита Gefest GS 3206 W', 'конфорок - 4 шт, духовка - 42 л, электроподжиг, чугунные решетки, 50 см x 85 см x 57 см', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/1625ed8ddb069d8f4e4f606239723841/3aa2784bc6f08f9c1052e38ad0657574f1965e270d932927be96290a2a2f9c73.jpg', 4.7, 26.299, NULL);
INSERT INTO public.gasstoves VALUES (16, 3, 16, 'Газовая плита Flama RG 24051 W', 'конфорок - 4 шт, духовка - 50 л, стальные решетки, 50 см x 85 см x 60.5 см', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/52d3fd7694234f84bf7cecbe6bcbb27d/80c9b84523086d3d23d3cf93a6476895a3a7e092c5b54cef43b63c11bc8ec6a9.jpg', 4.7, 17.399, NULL);
INSERT INTO public.gasstoves VALUES (17, 3, 17, 'Газовая плита DARINA F1 3110 W', 'конфорок - 4 шт, духовка - 50 л, электроподжиг, газ-контроль панели, чугунные решетки, 50 см x 85 см x 56 см', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/6cc0fa0cc038a956fba8b45d2efa22bf/1a05a56d5da2b077b357d6865403612eb3efa13be6ca3858447f2924a240cc83.jpg', 4.8, 28.599, NULL);
INSERT INTO public.gasstoves VALUES (18, 3, 18, 'Газовая плита Gefest GS 513002', 'конфорок - 4 шт, духовка - 52 л, электроподжиг, газ-контроль панели, гриль, чугунные решетки, 50 см x 85 см x 58.5 см', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/6cb98e8951ba7182ae6f23648b29ac8f/7b8365f2e18cb60f4cbbf880302f5089d4dc1072b44c9207f1aa615fbe57878d.jpg', 4.7, 38.499, NULL);


--
-- TOC entry 4941 (class 0 OID 25370)
-- Dependencies: 224
-- Data for Name: hairdryer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.hairdryer VALUES (1, 4, 1, 'Фен Rowenta Studio Dry + CV5460F0', 'компактный, 1900 Вт, подача холодного воздуха, генератор ионов, шнур - 1.8 м', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/eac58b13325a3dd33d85e51d55dd4211/d5fbd547338d8dbf23ce145c31f7c1f2f743bc0457d0f27d8aa1531a277480a6.jpg', 4.8, 2.499, NULL);
INSERT INTO public.hairdryer VALUES (2, 4, 2, 'Фен Dyson Supersonic Nural HD16', 'компактный, 1600 Вт, подача холодного воздуха, шнур - 1.8 м', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/8b9459503d3dbf51cc06982ecdce7352/f4ccc040aef288b66931831ea4f884ec3590435f1ce070d3b4e09574285ed33b.png', 5, 68.999, NULL);
INSERT INTO public.hairdryer VALUES (3, 4, 3, 'Фен Polaris PHD 2450Ti', 'компактный, 2400 Вт, подача холодного воздуха, генератор ионов, шнур - 1.8 м', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/88138902937adb4b9b671ee7dd0e5116/b9860ff06dce20feae1b4eaf4c5665e38329c3713bbffa9c4ed77de127d87f4a.jpg', 4.8, 2.799, NULL);
INSERT INTO public.hairdryer VALUES (4, 4, 4, 'Фен SenCiciMen Super hair dryer HD-08', 'компактный, 1600 Вт, подача холодного воздуха, генератор ионов, шнур - 3 м', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/b1bc924c58f6463bc836b7b999ecc3e9/af5c43f36b02a1ab64ebc48f4212fe1f2943cc5e156b8e4e32dcdb5d7d3305a7.jpg', 4.8, 2.999, NULL);
INSERT INTO public.hairdryer VALUES (5, 4, 5, 'Фен SenCiciMen Super hair dryer HD-08', 'компактный, 1600 Вт, подача холодного воздуха, шнур - 3 м, в комплекте: 1 шт', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/fb04a82361802aff5633213a3f309471/1c18c54e248a3efbd5df01fc47a165edafd609a5a54db40b091d9315b9beb030.png', 4.8, 2.999, NULL);
INSERT INTO public.hairdryer VALUES (6, 4, 6, 'Фен Xiaomi Mi Ionic Hair Dryer H300', 'компактный, 1600 Вт, подача холодного воздуха, генератор ионов, шнур - 1.6 м', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/2afe0101601de2b386b19c14dd0ecade/702622986b8f23a17a009ed1b36e3040dfe2493584e3d44ed35c112faf54824f.jpg', 4.9, 3.399, NULL);
INSERT INTO public.hairdryer VALUES (7, 4, 7, 'Фен Dyson Supersonic HD15', 'компактный, 1600 Вт, подача холодного воздуха, генератор ионов, шнур - 2.8 м', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/a1e6a18279aad799c36b50b6d8b30e3f/5ffac1356548465bcf7a055d2107a662ba9629995c65cb6bfda71c57cf663be3.jpg', 5, 56.999, NULL);
INSERT INTO public.hairdryer VALUES (8, 4, 8, 'Фен Sheo Kamari Black Sand', 'полноразмерный, 2000 Вт, подача холодного воздуха, генератор ионов, шнур - 3 м', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/b18e1a551590871340ac5fe4ace71a84/ed67de5ef52f457997b2441179f3776b277701b734a0f1251f63238522b6df38.jpg', 5, 6.199, NULL);
INSERT INTO public.hairdryer VALUES (9, 4, 9, 'Фен BaByliss Pro Caruso', 'полноразмерный, 2400 Вт, подача холодного воздуха, шнур - 2.7 м', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/68fbcc0844ce7e0571cb284d6f705689/b92d398db54ea7d09bf432990282d6f47f6c2a0be34ecec3c885153050a428da.jpg', 4.9, 5.699, NULL);
INSERT INTO public.hairdryer VALUES (10, 4, 10, 'Фен Dyson Supersonic HD07', 'компактный, 1600 Вт, подача холодного воздуха, генератор ионов, шнур - 2.8 м', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/9d025ddfca908d61d71140fc6c760dc6/da0a463521f910212264a2c17a301630b29ae547fb7131d87fda2180dd1fb4ad.png', 5, 47.999, NULL);
INSERT INTO public.hairdryer VALUES (11, 4, 11, 'Фен Dyson Supersonic Nural HD16', 'полноразмерный, 1600 Вт, подача холодного воздуха, шнур - 2.6 м, в комплекте: 1 шт', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/bf6fde77c23f1fb6f8bf48df7a9f0e93/d6de37ec65d5d283fee44f4af56efdf23d4b2a9149b346e48cf7dbbaf88725f1.jpg', 5, 68.999, NULL);
INSERT INTO public.hairdryer VALUES (12, 4, 12, 'Фен Dyson Supersonic HD15', 'полноразмерный, 1600 Вт, подача холодного воздуха, генератор ионов, шнур - 2.8 м', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/de8d37436e6a34bc530cdea16747675f/31a60a23314df6de39096eae1d7e03d3a644cd8037cc3ca46956d11099613fb6.jpg', 5, 56.999, NULL);
INSERT INTO public.hairdryer VALUES (13, 4, 13, 'Фен Polaris PHD2289AC', 'полноразмерный, 2200 Вт, подача холодного воздуха, турмалиновая ионизация, шнур - 1.8 м', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/5766974e93ac0bafed6f1ef6fbd914c1/6cf2d0d19bcb4e9b26b837355ea8027d41ecd3bbce9b310fab27b8a18dd5e359.jpg', 4.9, 2.399, 2.899);
INSERT INTO public.hairdryer VALUES (14, 4, 14, 'Фен Dyson Supersonic HD07 синий/розовый', 'компактный, 1600 Вт, подача холодного воздуха, генератор ионов, шнур - 2.8 м', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/15e1d67a8c3e6a4ae143bcbaf309d9d2/bbd34dc567e0745e2d80ad91e3b3d0eaeb3605f036c6d2e1c19547f3f5de0103.png', 4.6, 49.999, NULL);
INSERT INTO public.hairdryer VALUES (15, 4, 15, 'Фен SenCiciMen Super hair dryer HD-08 розовый/серый', 'компактный, 1600 Вт, подача холодного воздуха, генератор ионов, шнур - 3 м', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/c001d831d90fc6e08f9569631dfb74b9/be211d5c3f15d3472c9e4e4640dd9c0d928479ad0365dbaaf4381764236c9d38.jpg', 4.8, 2.999, NULL);
INSERT INTO public.hairdryer VALUES (16, 4, 16, 'Фен Dyson Supersonic HD07 синий/розовый', 'компактный, 1600 Вт, подача холодного воздуха, шнур - 2.8 м', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/75c0eff2ce6852aa691a3402599b483b/9f851c36a3c2f507580585ddc8dacb4862fbf1a22cb6a6e5f6cc0dac2432b519.jpg', 4.9, 49.999, NULL);
INSERT INTO public.hairdryer VALUES (17, 4, 17, 'Фен BaByliss Pro Caruso BAB6510', 'полноразмерный, 2400 Вт, подача холодного воздуха, генератор ионов, шнур - 2.7 м', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/1d5ee4152d231bf961f7784617fa7b08/133f62ed3b11a0e88abb95b6e3fd3229630212be9379b846d3e5a2790caa88cf.jpg', 4.9, 6.599, NULL);
INSERT INTO public.hairdryer VALUES (18, 4, 18, 'Фен Dyson Supersonic HD07 серый/коричневый', 'компактный, 1600 Вт, подача холодного воздуха, генератор ионов, шнур - 2.7 м', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/e920418c35771b38f612fab62f727086/ee3ec37aa7f1cad037bea75f87b6fc7eb913e9d46dca01280542ee9f48fa351f.jpg', 4.8, 47.999, NULL);


--
-- TOC entry 4943 (class 0 OID 25384)
-- Dependencies: 226
-- Data for Name: headphones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.headphones VALUES (1, 5, 1, 'Беспроводные наушники Logitech G733', '2021, 7.1 Virtual, поддержка PS4, PS5, охватывающие, 20 Гц - 20000 Гц, 39Ω, радиоканал', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/a6f18ebf6711610336e0a47c09d52de2/331d95b80b0853f652abd38d59f0e70fbf30c2da9ffae0de96e219bb60959812.jpg', 4.6, 16.499, NULL);
INSERT INTO public.headphones VALUES (2, 5, 2, 'Проводные наушники HyperX Cloud II KHX-HSCP-RD', '2022, 7.1 Virtual, поддержка PS5, Xbox Series X|S, охватывающие, 15 Гц - 25000 Гц, 60Ω, проводной, кабель - 1 м', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/7aa3f21ecf087b2de86cec18a6964f6d/1f5494ffc8729ebd0bfd07793bfcf6ed26187f57f7b4740c0d6725e62ebec991.jpg', 4.7, 11.199, NULL);
INSERT INTO public.headphones VALUES (3, 5, 3, 'Беспроводные наушники Logitech G435', '2021, 2.0, поддержка Nintendo Switch, PS4, PS5, охватывающие, 20 Гц - 20000 Гц, 45Ω, Bluetooth, радиоканал', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/2b4e93c24b2b4eb9b871627fdeda311e/8fc96f00e5a61e5496ec61a22e6d62474c8ea2fea99b3fb7b340a58982603461.jpg', 4.5, 8.699, NULL);
INSERT INTO public.headphones VALUES (4, 5, 4, 'Проводные наушники Fifine H6', '2022, 7.1 Virtual, охватывающие, 20 Гц - 20000 Гц, 32Ω, проводной, кабель - 2 м', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/9d1d776db73eab49314d5d918e28fc91/c724926e6e617e2502d3ede74e43f56a85d62c46284f52f5de4987f01571ca9a.jpg', 4.4, 4.099, NULL);
INSERT INTO public.headphones VALUES (5, 5, 5, 'Проводные наушники ARDOR GAMING Edge', '2022, 7.1 Virtual, охватывающие, 20 Гц - 20000 Гц, 32Ω, проводной, кабель - 1 м', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/aad26b6c08e413a5b29e1ae53c119f6b/bab38bee1b0f98a9639b1f9a763e968faf18a347758d8fd93eec74fe709a5c67.jpg', 4.7, 4.899, NULL);
INSERT INTO public.headphones VALUES (6, 5, 6, 'Проводные наушники Logitech G PRO X', '2019, 7.1 Virtual, охватывающие, 20 Гц - 20000 Гц, 35Ω, проводной, кабель - 2 м', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/8b77e6504f01e2bc84770c2c14e1265d/e0bb9c27dc2e95c3e4cc7ad307e32fd5376fb404c4ba999b7a393df0181cddb5.jpg', 4.6, 13.999, NULL);
INSERT INTO public.headphones VALUES (7, 5, 7, 'Беспроводные/проводные наушники Razer Barracuda X (2022)', '2022, 7.1 Virtual, поддержка Nintendo Switch, PS4, PS5, охватывающие, 20 Гц - 20000 Гц, 32Ω, Bluetooth, проводной, радиоканал, 5.2, кабель - 1.3 м', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/5dae88ce55406d918d8a68292b9f032a/e2362912df2aa10e8a5a1bf1cfc0a4bc1b5774eb583f4264783106bfbba8dec2.jpg', 4.5, 11.999, NULL);
INSERT INTO public.headphones VALUES (8, 5, 8, 'Беспроводные наушники Logitech G435', '2021, 2.0, поддержка Nintendo Switch, PS4, PS5, охватывающие, 20 Гц - 20000 Гц, 45Ω, Bluetooth, радиоканал', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/d4bfd939c34805cc874f6da34d6a4070/73dd06c0a2d4c9ff74cfaafaedec60012cae0a437e72ed35351e0fa8fa203289.jpg', 4.5, 9.599, NULL);
INSERT INTO public.headphones VALUES (9, 5, 9, 'Беспроводные/проводные наушники ARDOR GAMING Vault', '2023, 7.1 Virtual, охватывающие, 20 Гц - 20000 Гц, 64Ω, Bluetooth, проводной, радиоканал, 5.2, кабель - 1.8 м', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/a17d7b0a8d1c869c0e1c7af30ecb70de/f78f4f33e6e8296cb00011bfc0c4d15d60fcb21cedd5c5320baf9ee5e4b92fb5.jpg', 4.4, 5.799, NULL);


--
-- TOC entry 4945 (class 0 OID 25398)
-- Dependencies: 228
-- Data for Name: kidswatch; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.kidswatch VALUES (1, 6, 1, 'Детские часы Кнопка Жизни Aimoto Omega 4G розовый', '2G, 3G, 4G, ремешок - розовый, Android 5.1 и выше, iOS 10 и выше, камера, LBS, Wi-Fi, IP65', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/791798dbc43a732c06ab10bbd688b22d/a63a77adf8f938370c21f61b37cb22e72341731555be59a428b6c7d77ae4162a.jpg', 4.1, 2.999, NULL);
INSERT INTO public.kidswatch VALUES (2, 6, 2, 'Детские часы ELARI KidPhone 4G Wink фиолетовый', '4G, ремешок - фиолетовый, Android, iOS, камера, GPS, LBS, ГЛОНАСС, Wi-Fi, IP67', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/e7d88b8b2836b15038c64dd5649cff59/1a44b688886f8459fc264bf28aca835cf6ce54cbea12d661a9d07873c83b159f.png', 3.9, 8.999, 9.999);
INSERT INTO public.kidswatch VALUES (3, 6, 3, 'Детские часы Elari Kidphone MB черный', '2G, 3G, 4G, ремешок - черный, Android 4.4 и выше, iOS 14 и выше, камера, GPS, LBS, ГЛОНАСС, Wi-Fi, IP67', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/c30b29e60a22ce0793f3a68bafd9e5a6/d1f65d23b9a96706edb73e2a12da1cd70ed4009fbae32fb355b35fc91666f228.jpg', 3.9, 10.999, NULL);
INSERT INTO public.kidswatch VALUES (4, 6, 4, 'Детские часы Кнопка Жизни Aimoto IQ розовый', '2G, 3G, 4G, ремешок - розовый, Android 4.0 и выше, iOS 10 и выше, камера, GPS, LBS, Wi-Fi, IP65', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/17e027883bef55498f4dd9cda82f4a5f/41ead201fbffb86f98d615629887a62b32209b30bbc929f30c1b6b710febb5e3.png', 4, 5.499, NULL);
INSERT INTO public.kidswatch VALUES (5, 6, 5, 'Детские часы ELARI Kidphone 4GR M черный', '2G, 3G, 4G, ремешок - черный, Android, iOS, камера, GPS, LBS, ГЛОНАСС, Wi-Fi, IP67', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/bd496761950692a885b887a326c39840/869744f0f1b999ca7c41864d8ec70d0b5570cceab51c1795b0482bb4348de7d0.jpg', 4.5, 7.999, NULL);
INSERT INTO public.kidswatch VALUES (6, 6, 6, 'Детские часы ELARI KidPhone 4G Wink черный', '4G, ремешок - черный, Android, iOS, камера, GPS, LBS, ГЛОНАСС, Wi-Fi, IP67', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/94a6eb6859f1f24802b79bd0637c8658/76b59e5712d312d13257551610561e2d34c8f2f26ebac2b38e40f067fb6f0981.png', 3.9, 8.999, 9.999);
INSERT INTO public.kidswatch VALUES (7, 6, 7, 'Детские часы Кнопка Жизни Aimoto Miracle фиолетовый', '2G, 3G, 4G, ремешок - фиолетовый, Android 5.0 и выше, iOS 10 и выше, камера, GPS, LBS, ГЛОНАСС, Wi-Fi, IP65', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/a74982328341348ec997e4a81ad826ce/cc703cff85b957c4c8d026a9047b77711d42a3c8860efeb514b8e017c7f67b4c.jpg', 4, 7.999, NULL);
INSERT INTO public.kidswatch VALUES (8, 6, 8, 'Детские часы Кнопка Жизни Aimoto IQ черный', '2G, 3G, 4G, ремешок - черный, Android 4.0 и выше, iOS 10 и выше, камера, GPS, LBS, Wi-Fi, IP65', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/49002a28e322ceb0bfe4268230c23e1a/4f4694e2477dcd82b6f94412a2193b9710d2ba8d88b97c10f06a4fff47def0a5.png', 4, 5.499, NULL);
INSERT INTO public.kidswatch VALUES (9, 6, 9, 'Детские часы Philips W6610 зеленый', '2G, 3G, 4G, ремешок - зеленый, Android 4.4 и выше, iOS 13 и выше, камера, GPS, LBS, Wi-Fi, IP67', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/7ccef5d08452bda9c7d63354f57b4bcc/497f8b2cb4acff64d1cefe5f6ddd3d2303116f2981cb691c87319b773c829061.jpg', 4.3, 5.499, NULL);
INSERT INTO public.kidswatch VALUES (10, 6, 10, 'Детские часы Кнопка Жизни Aimoto Active Pro 4G черный', '2G, 3G, 4G, ремешок - черный, Android 5.1 и выше, iOS 8 и вышe, камера, GPS, LBS, ГЛОНАСС, Wi-Fi, IP65', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/f8218c16b95a5a242139ad9f8b11bc8b/5ca42361b0619613811dc398244375c8147241f7cff33d3307cd3a67c00d5900.png', 3.6, 3.699, NULL);
INSERT INTO public.kidswatch VALUES (11, 6, 11, 'Детские часы Кнопка Жизни Aimoto Pro Indigo TG синий', '2G, 3G, 4G, ремешок - черный, Android 4.0 и выше, iOS 10 и выше, камера, GPS, LBS, Wi-Fi, IP67', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/874e909232dc47ba0182382e6468f783/08fb124136af0895c8b496d4daf451b26b20d61e5e483184f07a5c3a4d435b6b.png', 4, 4.999, NULL);
INSERT INTO public.kidswatch VALUES (12, 6, 12, 'Детские часы Кнопка Жизни Aimoto Omega 4G черный', '2G, 3G, 4G, ремешок - черный, Android 5.1 и выше, iOS 10 и выше, камера, LBS, Wi-Fi, IP65', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/a607c5dc24f69903f496267f4e9b1d5a/a0f640e146beedb95087e38004e39235a2b2cdba7d6e6bdaca728bfbe9d27894.jpg', 4.1, 2.999, NULL);
INSERT INTO public.kidswatch VALUES (13, 6, 13, 'Детские часы Кнопка Жизни Aimoto Miracle черный', '2G, 3G, 4G, ремешок - черный, Android 5.0 и выше, iOS 10 и выше, камера, GPS, LBS, ГЛОНАСС, Wi-Fi, IP65', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/8f417c0de2cff0cd63d0c153ccc4fe51/e141b67d1dd51b40800e06d2deee21e5f0bac9389d8e17a7045ce61b5226f4e5.jpg', 4, 7.999, NULL);
INSERT INTO public.kidswatch VALUES (14, 6, 14, 'Детские часы Кнопка Жизни Aimoto Teen черный', '2G, 3G, 4G, ремешок - черный, Android 5.1 и выше, iOS 8 и вышe, камера, GPS, LBS, ГЛОНАСС, Wi-Fi, IP65', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/8266634052375732b529356bc2fd720d/6bcbc2234b05f805dcd1422b73024f040183262cff3e1f6e8c9e1491d4cd7a16.jpg', 4, 4.499, NULL);
INSERT INTO public.kidswatch VALUES (15, 6, 15, 'Детские часы Кнопка Жизни Aimoto Teen розовый', '2G, 3G, 4G, ремешок - розовый, Android 5.1 и выше, iOS 8 и вышe, камера, GPS, LBS, ГЛОНАСС, Wi-Fi, IP65', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/ac6356c6d8cef0921d1c8f610562c79d/261701e2eb78a54d6cadc4fffa93b4494a7b654dc35bf7509f863cb3ca64ebd1.jpg', 4, 4.499, NULL);
INSERT INTO public.kidswatch VALUES (16, 6, 16, 'Детские часы Philips W6610 розовый', '2G, 3G, 4G, ремешок - розовый, Android 4.4 и выше, iOS 13 и выше, камера, GPS, LBS, Wi-Fi, IP67', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/951690b58d2b76f4e022bc55426a962f/8f496d6ab0b053aff3fa893b71fa6f83369921fc5d374cea7794f480bc82a5d1.jpg', 4.3, 5.499, NULL);
INSERT INTO public.kidswatch VALUES (17, 6, 17, 'Детские часы HUAWEI Watch Kids 4 Pro розовый', '2G, 3G, 4G, ремешок - розовый, Android 6.0 и выше, HarmonyOS 2 и выше, iOS 9 и выше, камера, GPS, LBS, ГЛОНАСС, Wi-Fi, IP68', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/cab85fb4b4b761fefe5ea8eaedc1cd24/70273e22cdd6d391a75f249610198a96f1a12d566bae6dddf1225872ad08c7b8.jpg', 4.7, 8.999, 9.999);
INSERT INTO public.kidswatch VALUES (18, 6, 18, 'Детские часы HUAWEI Watch Kids 4 Pro синий', '2G, 3G, 4G, ремешок - синий, Android 6.0 и выше, HarmonyOS 2 и выше, iOS 9 и выше, камера, GPS, LBS, ГЛОНАСС, Wi-Fi, IP68', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/61dd60118b8821c2153061327342facb/12cfea9504dc519ac53bd89548b0faeec45213cab94834c7f8111d5120ed060d.jpg', 4.7, 8.999, 9.999);


--
-- TOC entry 4947 (class 0 OID 25412)
-- Dependencies: 230
-- Data for Name: laptop; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.laptop VALUES (1, 7, 1, '17.3" Ноутбук MSI Katana 17 B12VEK-268XRU черный', 'английская/русская раскладка, 1920x1080, IPS, Intel Core i5-12450H, ядра: 4 + 4 х 2 ГГц + 1.5 ГГц, RAM 16 ГБ, SSD 512 ГБ, GeForce RTX 4050 для ноутбуков 6 ГБ, без ОС', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/d71865f08b46e4b8c8e7f89d5e466d05/202565e06c123962e94f29b35c4f70130299fff0a515d1a8bde14c2d1939765e.jpg', 4.7, 111.999, NULL);
INSERT INTO public.laptop VALUES (2, 7, 2, '16" Ноутбук Tecno Megabook K16S серый', 'английская/русская раскладка, 1920x1200, IPS, AMD Ryzen 7 5800U, ядра: 8 х 1.9 ГГц, RAM 16 ГБ, SSD 512 ГБ, AMD Radeon Graphics, Windows 11 Home', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/34bb2cc9a54770753eea3c66e0f12daf/fa3aa063e4d89706eefdde2e0882dc080d69dd5821b0e37495f4b9a5784738cc.jpg', 4.7, 47.999, 55.999);
INSERT INTO public.laptop VALUES (3, 7, 3, '16" Ноутбук Tecno Megabook K16S серый', 'английская/русская раскладка, 1920x1200, IPS, AMD Ryzen 5 5600H, ядра: 6 х 3.3 ГГц, RAM 16 ГБ, SSD 512 ГБ, AMD Radeon Graphics, Windows 11 Home', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/25b57fecfe3e5cbabb0134500c65c7c6/ec93b358d70efdb6c714c9f1db6e39cc83065a069206018a80b5d49a634860b7.png', 4.7, 44.999, 52.999);
INSERT INTO public.laptop VALUES (4, 7, 4, '15.6" Ноутбук ASUS TUF Gaming A15 FA507NU-LP101 серый', 'английская/русская раскладка, 1920x1080, IPS, AMD Ryzen 5 7535HS, ядра: 6 х 3.3 ГГц, RAM 16 ГБ, SSD 512 ГБ, GeForce RTX 4050 для ноутбуков 6 ГБ, без ОС', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/bbb09f901774b04fc53f1aec63a2d67a/84e7052010c7f2fc2013683b73abb6578b2a47c3fa512c60f874c9c16d585bb4.jpg', 4.8, 106.999, NULL);
INSERT INTO public.laptop VALUES (5, 7, 5, '17.3" Ноутбук ASUS TUF Gaming F17 FX707ZC4-HX014 серый', 'английская/русская раскладка, 1920x1080, IPS, Intel Core i5-12500H, ядра: 4 + 8 х 2.5 ГГц + 1.8 ГГц, RAM 16 ГБ, SSD 512 ГБ, GeForce RTX 3050 для ноутбуков 4 ГБ, без ОС', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/e9db0a5bc6c19e4e4290d43b67215091/0be7e84009b0ff86863ffc1886ae4d570502a6c1c630e6c94462e07dc337feff.jpg', 4.8, 94.999, NULL);
INSERT INTO public.laptop VALUES (6, 7, 6, '17.3" Ноутбук MSI Katana B12VFK-463XRU черный', 'английская/русская раскладка, 1920x1080, IPS, Intel Core i5-12450H, ядра: 4 + 4 х 2 ГГц + 1.5 ГГц, RAM 16 ГБ, SSD 512 ГБ, GeForce RTX 4060 для ноутбуков 8 ГБ, без ОС', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/491a8ae821c1c31ad0364a6421d52e90/ab5ec9f53950677cdc29656f3bf87a82aed1db13f4895ec11bd14b2f593a82a0.jpg', 4.8, 121.999, NULL);
INSERT INTO public.laptop VALUES (7, 7, 7, '16" Ноутбук Tecno Megabook K16S серый', 'английская/русская раскладка, 1920x1200, IPS, AMD Ryzen 7 5800U, ядра: 8 х 1.9 ГГц, RAM 16 ГБ, SSD 1024 ГБ, AMD Radeon Graphics, Windows 11 Home', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/50097e5d86387da8832c78199322b1db/10625f0fc1286a49ea486eeb5cedb991f9cb1c559fe8fb6c244722a611da74c2.jpg', 4.7, 51.999, 59.999);
INSERT INTO public.laptop VALUES (8, 7, 8, '16" Ноутбук HUAWEI MateBook D 16 2024 MCLF-X серый', 'английская/русская раскладка, 1920x1200, IPS, Intel Core i5-12450H, ядра: 4 + 4 х 2 ГГц + 1.5 ГГц, RAM 16 ГБ, SSD 512 ГБ, Intel UHD Graphics, без ОС', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/a836a0f8fb5bfb713889fd3b815e5ebc/f8c1d514292bd887b7279a1fa5f26692c8c70e6dd1ca86b6a8a7b3a4f4b6b0bd.jpg', 4.7, 54.999, NULL);
INSERT INTO public.laptop VALUES (9, 7, 9, '17.3" Ноутбук ASUS TUF Gaming F17 FX707VV-HX122 серый', 'английская/русская раскладка, 1920x1080, IPS, Intel Core i7-13620H, ядра: 6 + 4 х 2.4 ГГц + 1.8 ГГц, RAM 16 ГБ, SSD 1000 ГБ, GeForce RTX 4060 для ноутбуков 8 ГБ, без ОС', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/20cfd81df68e81c30a98479f5cf046e6/08d767e96261c00cf3f79f41cba1a25b26c953c468eaa0ed26152c4e0e8e69fb.png', 4.8, 136.999, NULL);
INSERT INTO public.laptop VALUES (10, 7, 10, '15.6" Ноутбук ASUS TUF Gaming A15 FA507NV-LP025 серый', 'английская/русская раскладка, 1920x1080, IPS, AMD Ryzen 5 7535HS, ядра: 6 х 3.3 ГГц, RAM 16 ГБ, SSD 512 ГБ, GeForce RTX 4060 для ноутбуков 8 ГБ, без ОС', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/2524fb2a927a28aa42f4a0cd89479064/010f4a579755c128ed5272c2424250e096b66c4ac7d7cbe77504c7ae2706bb8f.jpg', 4.8, 104.999, 119.999);
INSERT INTO public.laptop VALUES (11, 7, 11, '15.6" Ноутбук ASUS TUF Gaming A15 FA506NF-HN018 черный', 'английская/русская раскладка, 1920x1080, IPS, AMD Ryzen 5 7535HS, ядра: 6 х 3.3 ГГц, RAM 16 ГБ, SSD 512 ГБ, GeForce RTX 2050 для ноутбуков 4 ГБ, без ОС', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/0821e773ac6d00756fd523d4bd84feed/71679ab23c64f7d3c0c9cbdc92d2552d84498a105ecd989977ce2626a11310cc.jpg', 4.7, 70.999, 81.799);
INSERT INTO public.laptop VALUES (12, 7, 12, '15.6" Ноутбук ASUS VivoBook 15 X1502ZA-BQ2346 серебристый', 'английская/русская раскладка, 1920x1080, IPS, Intel Core i7-12700H, ядра: 6 + 8 х 2.3 ГГц + 1.7 ГГц, RAM 16 ГБ, SSD 512 ГБ, Intel Iris Xe Graphics, без ОС', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/4245eb6ede233c3ab15ba56d52513ad8/4f992b5b5abcc284679f6acab1dccdac46ae53af40cc0deec66713d5ad5e1ef8.jpg', 4.9, 63.999, 73.999);
INSERT INTO public.laptop VALUES (13, 7, 13, '17.3" Ноутбук MSI Katana 17 B13VFK-1091XRU черный', 'английская/русская раскладка, 1920x1080, IPS, Intel Core i7-13620H, ядра: 6 + 4 х 2.4 ГГц + 1.8 ГГц, RAM 16 ГБ, SSD 512 ГБ, GeForce RTX 4060 для ноутбуков 8 ГБ, без ОС', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/84832bc1d300b973fc69cc82d432ba84/dc477123cb232a28c83f29f3d45b2c9dc5b8f85465dd874bd7b6be05ff0be1cb.jpg', 4.7, 135.999, NULL);
INSERT INTO public.laptop VALUES (14, 7, 14, '15.6" Ноутбук ASUS TUF Gaming F15 FX507ZC4-HN009 серый', 'английская/русская раскладка, 1920x1080, IPS, Intel Core i5-12500H, ядра: 4 + 8 х 2.5 ГГц + 1.8 ГГц, RAM 16 ГБ, SSD 512 ГБ, GeForce RTX 3050 для ноутбуков 4 ГБ, без ОС', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/cf01f28f9ad73d86ad3d91bc0e62cb83/5dab810d5042d5667b6d01f3dbf431316cd2803af577a3b5ec49b9adecd7b6ba.jpg', 4.7, 82.999, 94.499);
INSERT INTO public.laptop VALUES (15, 7, 15, '16" Ноутбук HUAWEI MateBook D 16 2024 MCLF-X серый', 'английская/русская раскладка, 1920x1200, IPS, Intel Core i5-12450H, ядра: 4 + 4 х 2 ГГц + 1.5 ГГц, RAM 16 ГБ, SSD 512 ГБ, Intel UHD Graphics, Windows 11 Home Single Language', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/a05a2224bd67e1277136fdf329f5d09a/a459701d4554c4cd40bc944e3cf9cc3487ae738e1102a3e03036d0f321abe3ad.jpg', 4.7, 50.999, 59.499);
INSERT INTO public.laptop VALUES (16, 7, 16, '16" Ноутбук Tecno Megabook K16S серый', 'английская/русская раскладка, 1920x1200, IPS, AMD Ryzen 5 5625U, ядра: 6 х 2.3 ГГц, RAM 8 ГБ, SSD 512 ГБ, AMD Radeon Graphics, Windows 11 Home', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/6cda0bcf6cf40f0342b58cb78d1b6a8c/855003564eef0de2f688795a469e1f146159666b1ef0e27f1313716c228bcd76.jpg', 4.7, 42.999, 49.999);
INSERT INTO public.laptop VALUES (17, 7, 17, '15.6" Ноутбук ASUS Vivobook Go 15 E1504FA-BQ533 черный', 'английская/русская раскладка, 1920x1080, IPS, AMD Ryzen 5 7520U, ядра: 4 х 2.8 ГГц, RAM 16 ГБ, SSD 512 ГБ, AMD Radeon 610M, без ОС', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/771faba85b5ccceb0f58d840975a0337/e56f301b55c89ee1983769303023bd19a458a0b31f81719ac3f48eebcea1d4b2.jpg', 4.7, 56.999, NULL);
INSERT INTO public.laptop VALUES (18, 7, 18, '17.3" Ноутбук MSI Katana GF76 B12UCR-821XRU черный', 'английская/русская раскладка, 1920x1080, IPS, Intel Core i5-12450H, ядра: 4 + 4 х 2 ГГц + 1.5 ГГц, RAM 16 ГБ, SSD 512 ГБ, GeForce RTX 3050 для ноутбуков 4 ГБ, без ОС', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/5ae4c0ddf39b7998778e5f70f19821a6/64cad8497f91c7b926d47580ba6e67c39534e707153591a1b161302c07634135.jpg', 4.8, 95.999, NULL);


--
-- TOC entry 4949 (class 0 OID 25426)
-- Dependencies: 232
-- Data for Name: screwdrivers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.screwdrivers VALUES (1, 8, 1, 'Дрель-шуруповерт Metabo PowerMaxx BS BL 10.8/12V', '2 АКБ, бесщеточный, безударный, быстрозажимной, 32 Н·м, Li-Power, 2 А*ч, кейс, 0.9 кг', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/a31842f4c6c066e189b2e332b418c26c/95f0ee3f303d8a065724bafd9555b23d4bf3e8c3dbfed5532d44e2a0bec55a69.jpg', 4.9, 22.499, NULL);
INSERT INTO public.screwdrivers VALUES (2, 8, 2, 'Дрель-шуруповерт Bosch EasyDrill 1200 06039D3006 POWER FOR ALL 12V', '1 АКБ, щеточный, безударный, быстрозажимной, 30 Н·м, Li-Ion, 1.5 А*ч, кейс, 1 кг', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/946339d61682782049308e0ce0c690a6/26f43a3a276dff3c4a26941d404e6e7f34e967fe34ed7a0721af2d680e361209.jpg', 4.8, 5.499, NULL);
INSERT INTO public.screwdrivers VALUES (3, 8, 3, 'Дрель-шуруповерт Интерскол ДА-10/12В', '2 АКБ, бесщеточный, безударный, быстрозажимной, 36 Н·м, Li-Ion, 2 А*ч, кейс, 0.82 кг', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/65d03d45677bc6d485bd27c316e5a704/49e1dac916d16e5c7797c9fe5b6dbd276aae4f49b98e0c3683bb11bdffb864b1.jpg', 4.8, 5.999, NULL);
INSERT INTO public.screwdrivers VALUES (4, 8, 4, 'Дрель-шуруповерт Makita DF333DWAE CXT 12V', '2 АКБ, щеточный, безударный, быстрозажимной, 30 Н·м, Li-Ion, 2 А*ч, кейс, 1.1 кг', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/3ddf51c2c69834f65bff4cf3ab52a9a2/87a82df38b681aa1120f9e881845b8596f390ec8bd3493d3b078dde61f268899.jpg', 4.8, 16.999, NULL);
INSERT INTO public.screwdrivers VALUES (5, 8, 5, 'Дрель-шуруповерт Makita DDF485Z LXT 18V, Без ЗУ, Без АКБ', 'бесщеточный, безударный, быстрозажимной, 50 Н·м, Li-Ion, 1.4 кг', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/61d9b0429ea26a5b3bee871fe7018ebf/8610c8fbecff1d47b838f88a180ff1e5debfb71a181d6322cc65a1d3f699ed3e.jpg', 4.9, 11.999, NULL);
INSERT INTO public.screwdrivers VALUES (6, 8, 6, 'Дрель-шуруповерт Makita DDF453SYE LXT 18V', '2 АКБ, щеточный, безударный, быстрозажимной, 42 Н·м, Li-Ion, 1.5 А*ч, кейс, 1.6 кг', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/1e2d8eacb9221cd8ed70a8b29f15caa8/55cbdb5cbe6df8b8b95594fd4d34ee6e15094726ef21a47045110287415e18cb.jpg', 4.8, 20.999, NULL);
INSERT INTO public.screwdrivers VALUES (7, 8, 7, 'Дрель-шуруповерт FinePower OneBase CDHBL65K2 OneBase20', '2 АКБ, бесщеточный, ударный (удар поступательный, осевой), быстрозажимной, 65 Н·м, Li-Ion, 4 А*ч, кейс, 4.76 кг', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/0033fac298c29bbd7718d9821b05cccd/10a6c475e878c1bec0ba3918debafc7fdbf44eed6763d6bbff34fdca0e2bd226.jpg', 4.8, 15.899, NULL);
INSERT INTO public.screwdrivers VALUES (8, 8, 8, 'Дрель-шуруповерт Bosch GSB 183-Li', '2 АКБ, щеточный, ударный (удар поступательный, осевой), быстрозажимной, 67 Н·м, Li-Ion, 2 А*ч, кейс, 1.6 кг', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/946a92f46b7e2b63c7e9187ad42a6a65/67aa16257ef1a51983ce0f1b2489f4922eefa09915d03cc7fb30764731ddca91.jpg', 5, 16.999, NULL);
INSERT INTO public.screwdrivers VALUES (9, 8, 9, 'Дрель-шуруповерт Makita DF333DWYE CXT 12V', '2 АКБ, щеточный, безударный, быстрозажимной, 30 Н·м, Li-Ion, 1.5 А*ч, кейс, 1.1 кг', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/107b8b5cb2d55f304c22d93e3129284c/6c43ae8c3ff0d2c81430feedf87ec2fb3ce3769184c5f2aa2dadfb0cac2ff98e.jpg', NULL, 13.999, NULL);
INSERT INTO public.screwdrivers VALUES (10, 8, 10, 'Дрель-шуруповерт Bosch UniversalDrill 18V 06039D4005 POWER FOR ALL 18V', '1 АКБ, щеточный, безударный, быстрозажимной, 40 Н·м, Li-Ion, 2.5 А*ч, кейс, 1.2 кг', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/02c73d5538a927d74cadf5d507b8a92f/60022c9d377e93d060ddd69d7b9823d35c59ea5413bb4faa8349088498ebc0e9.jpg', 4.9, 8.999, NULL);
INSERT INTO public.screwdrivers VALUES (11, 8, 11, 'Дрель-шуруповерт DeWalt DCD996P2 XR FLEXVOLТ 18/54V', '2 АКБ, бесщеточный, ударный (удар поступательный, осевой), быстрозажимной, 95 Н·м, Li-Ion, 5 А*ч, кейс, 2.1 кг', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/85b981b3e074b19289d80a6cfef9118b/a01fdf12d0a1434ab1bdf6720ea699cb44e63c5424c4bf44f101073b3286863c.jpg', 4.9, 54.999, NULL);
INSERT INTO public.screwdrivers VALUES (12, 8, 12, 'Дрель-шуруповерт Makita DF347DWE G-SERIES', '2 АКБ, щеточный, безударный, быстрозажимной, 30 Н·м, Li-Ion, 1.5 А*ч, кейс, 1.4 кг', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/81cf46efece23c840c69c53ac34f705f/56ec6b01469aada10de32389c4da6d9e27cc36f6bed590bddf2867562c56174f.jpg', 4.9, 15.999, NULL);
INSERT INTO public.screwdrivers VALUES (13, 8, 13, 'Дрель-шуруповерт Metabo PowerMaxx BS Basic 10.8/12V', '2 АКБ, щеточный, безударный, быстрозажимной, 34 Н·м, LiHD, Li-Ion, 2 А*ч, 0.936 кг', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/8fa202a06bf02711d9f267d3c8104a33/e1adfe53fb4d9fa0cc370d23d5b767fc73a3a6248ec4715dbb7462e43a7033ee.jpg', 4.9, 14.999, NULL);
INSERT INTO public.screwdrivers VALUES (14, 8, 14, 'Дрель-шуруповерт Makita DF488DWE G-SERIES', '2 АКБ, щеточный, безударный, быстрозажимной, 42 Н·м, Li-Ion, 1.5 А*ч, кейс, 4 кг', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/60a2ab12503ed28d04901e58aada30d6/a7b72fdfbdc49a2ce7d02f29faa03452de7579a012a1dc9e7ce48f776ef16f8e.jpg', 4.9, 18.999, NULL);
INSERT INTO public.screwdrivers VALUES (15, 8, 15, 'Дрель-шуруповерт CAT DX11 1 for All 18V', '2 АКБ, бесщеточный, безударный, быстрозажимной, 65 Н·м, Li-Ion, 2 А*ч, кейс, 1.92 кг', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/4abdf0c60226d7be0bdabef7493ac795/85889f9b93ed835711232f2b793335661754ad86dbcefb5a55b01f0bd3f0b33e.jpg', 4.7, 15.999, NULL);
INSERT INTO public.screwdrivers VALUES (16, 8, 16, 'Дрель-шуруповерт CAT DX12 1 for All 18V', '2 АКБ, бесщеточный, ударный (удар поступательный, осевой), быстрозажимной, 65 Н·м, Li-Ion, 2 А*ч, кейс, 1.82 кг', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/8255280210bc1e6611a608f2a865e9e3/037d4f7859b706f9d4c462973f09ad3dd6ea50c36f5f7411db0d01617fe68860.jpg', 4.9, 15.899, NULL);
INSERT INTO public.screwdrivers VALUES (17, 8, 17, 'Дрель-шуруповерт Metabo PowerMaxx BS 10.8/12V', '2 АКБ, щеточный, безударный, быстрозажимной, 34 Н·м, LiHD, Li-Ion, 2 А*ч, 0.95 кг', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/0863f786acfb17b9012288e16b679e70/6119965589a666c2312d597a040a12280c8db3b8e427cfd6a4bd93274125b387.jpg', 4.9, 13.499, NULL);
INSERT INTO public.screwdrivers VALUES (18, 8, 18, 'Дрель-шуруповерт CAT DX155.1 1 for All 18V', '2 АКБ, щеточный, ударный (удар поступательный, осевой), быстрозажимной, 50 Н·м, Li-Ion, 2 А*ч, кейс, 1.88 кг', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/070144870742747cfb569d07541e1dd4/b44c59a3f0eb799de45a6ecb6c9f375dfc5458903f0f87f426a31dc25f137371.jpg', 4.9, 9.599, NULL);


--
-- TOC entry 4951 (class 0 OID 25440)
-- Dependencies: 234
-- Data for Name: smartphone; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.smartphone VALUES (1, 9, 1, 'Смартфон Apple iPhone 15 Pro 256 ГБ белый', 'ядер - 6x(3.78 ГГц), 8 ГБ, 2 SIM, Super Retina XDR, 2556x1179, камера 48+12+12 Мп, NFC, 5G, GPS, 3274 мА*ч', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/d7b1554cc74e090219188943fb738b2b/70127d9fb73f91ad6907b7eef6d78452a632093f641679aaadf7cbe3ca52d165.jpg', 4.9, 135.999, 169.999);
INSERT INTO public.smartphone VALUES (2, 9, 2, 'Смартфон Xiaomi Redmi Note 13 128 ГБ черный', 'ядер - 8x(2.8 ГГц), 6 ГБ, 2 SIM, AMOLED, 2400x1080, камера 108+8+2 Мп, NFC, 4G, GPS, FM, 5000 мА*ч', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/1302ba12d74e83425ca1c544722d9d8d/f83a2f069f5f5410406551bc22b4a6e8f62b6e4f51579dae84866c9bb16b6a81.jpg', 4.6, 18.499, NULL);
INSERT INTO public.smartphone VALUES (3, 9, 3, 'Смартфон Apple iPhone 13 128 ГБ белый', 'ядер - 6x(3.23 ГГц), 4 ГБ, 1 SIM, Super Retina XDR, 2532x1170, камера 12+12 Мп, NFC, 5G, GPS, 3240 мА*ч', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/486a07092b84ffa510c82cb5728b15ac/9567d18107af5c3d1264b429db988c4bc63a8089d4cb76add0236817adeb3af8.jpg', 4.9, 65.999, 74.999);
INSERT INTO public.smartphone VALUES (4, 9, 4, 'Смартфон Samsung Galaxy A55 256 ГБ фиолетовый', 'ядер - 8x(2.75 ГГц), 8 ГБ, 2 SIM, Super AMOLED, 2340x1080, камера 50+12+5 Мп, NFC, 5G, GPS, 5000 мА*ч', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/15feac35e8c27b23deddd735d444c602/d232b7b37c70cb4c8888beacb31379c3f60648a2e3aeac5d069cc6f4a867d92e.jpg', 4.9, 41.999, NULL);
INSERT INTO public.smartphone VALUES (5, 9, 5, 'Смартфон Apple iPhone 15 Pro Max 256 ГБ белый', 'ядер - 6x(3.78 ГГц), 8 ГБ, 2 SIM, Super Retina XDR, 2796x1290, камера 48+12+12 Мп, NFC, 5G, GPS, 4441 мА*ч', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/d2a709fb9dd2c7fdf68644cac145f74b/eeff1cbef4c43a2021b124eb759434e9ba0b8d93d085a896680b94504a324593.jpg', 4.8, 144.799, 180.999);
INSERT INTO public.smartphone VALUES (6, 9, 6, 'Смартфон Samsung Galaxy S24 Ultra 512 ГБ черный', 'ядер - 8x(3.39 ГГц), 12 ГБ, 2 SIM, Dynamic AMOLED 2X, 3120x1440, камера 200+50+12+10 Мп, NFC, 5G, GPS, 5000 мА*ч', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/eaeba33a42d4467c49de57f334bd36a7/666e7887f02c3b8fab3972c5e3cdf21561ec814af9a9276dc5f1b2a2163b69bf.jpg', 4.8, 129.999, 159.999);
INSERT INTO public.smartphone VALUES (7, 9, 7, 'Смартфон Apple iPhone 13 128 ГБ черный', 'ядер - 6x(3.23 ГГц), 4 ГБ, 1 SIM, Super Retina XDR, 2532x1170, камера 12+12 Мп, NFC, 5G, GPS, 3240 мА*ч', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/484b878691d685e6045bb0b2de36f9d2/c201023fee63375d614103f3eb86c77160656dae59094cd22a883302c5144fbc.jpg', 4.8, 65.999, 74.999);
INSERT INTO public.smartphone VALUES (8, 9, 8, 'Смартфон Xiaomi Redmi A3 128 ГБ черный', 'ядер - 8x(2.2 ГГц), 4 ГБ, 2 SIM, IPS, 1650x720, камера 8+0.08 Мп, 4G, GPS, FM, 5000 мА*ч', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/8171a14b59d74c4939e86fe473a6e92f/56ac0db08a2ab1f7487ad636ceca613aa24b0c8feb2e54bc95fcfa89285340e7.jpg', 4.8, 8.999, NULL);
INSERT INTO public.smartphone VALUES (9, 9, 9, 'Смартфон Apple iPhone 15 Pro 128 ГБ черный', 'ядер - 6x(3.78 ГГц), 8 ГБ, 2 SIM, Super Retina XDR, 2556x1179, камера 48+12+12 Мп, NFC, 5G, GPS, 3274 мА*ч', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/e853c72719633e353b65193e301cc9e9/8517b5d57caefeef97194196729bd221e1606cafc9a005f423b21eb56314ba96.jpg', 4.9, 116.799, 145.999);
INSERT INTO public.smartphone VALUES (10, 9, 10, 'Смартфон Xiaomi Redmi Note 13 128 ГБ черный', 'ядер - 8x(2.8 ГГц), 8 ГБ, 2 SIM, AMOLED, 2400x1080, камера 108+8+2 Мп, NFC, 4G, GPS, FM, 5000 мА*ч', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/dd182dc1b0265b6b9c762a76553ecb91/c535077fe172ce14b87dc57b1c9a0d3873cf76bf608832dfa58f4f928759fe0c.jpg', 4.6, 18.999, NULL);
INSERT INTO public.smartphone VALUES (11, 9, 11, 'Смартфон HONOR 90 Lite 256 ГБ черный', 'ядер - 8x(2.2 ГГц), 8 ГБ, 2 SIM, IPS, 2388x1080, камера 100+5+2 Мп, NFC, 5G, GPS, 4500 мА*ч', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/23d69e083d3a06e645c127803856946a/01be22a53e3389f7585889f676e1c8472b53486332985b078600b9ed6f60da7f.jpg', 4.7, 17.999, NULL);
INSERT INTO public.smartphone VALUES (12, 9, 12, 'Смартфон Apple iPhone 15 Pro 256 ГБ черный', 'ядер - 6x(3.78 ГГц), 8 ГБ, 2 SIM, Super Retina XDR, 2556x1179, камера 48+12+12 Мп, NFC, 5G, GPS, 3274 мА*ч', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/e853c72719633e353b65193e301cc9e9/8517b5d57caefeef97194196729bd221e1606cafc9a005f423b21eb56314ba96.jpg', 4.9, 135.999, 169.999);
INSERT INTO public.smartphone VALUES (13, 9, 13, 'Смартфон Xiaomi Redmi Note 13 256 ГБ черный', 'ядер - 8x(2.8 ГГц), 8 ГБ, 2 SIM, AMOLED, 2400x1080, камера 108+8+2 Мп, NFC, 4G, GPS, FM, 5000 мА*ч', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/dd182dc1b0265b6b9c762a76553ecb91/c535077fe172ce14b87dc57b1c9a0d3873cf76bf608832dfa58f4f928759fe0c.jpg', 4.6, 20.999, 27.999);
INSERT INTO public.smartphone VALUES (14, 9, 14, 'Смартфон Apple iPhone 15 Pro 128 ГБ серый', 'ядер - 6x(3.78 ГГц), 8 ГБ, 2 SIM, Super Retina XDR, 2556x1179, камера 48+12+12 Мп, NFC, 5G, GPS, 3274 мА*ч', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/31b28373068528817401be1fa0f72ff2/57c3fa75db8745654a371cbec253d141e7b1ac632f61e9dce6b5bd421941132e.jpg', 4.9, 116.799, 145.999);
INSERT INTO public.smartphone VALUES (15, 9, 15, 'Смартфон Apple iPhone 15 Pro Max 256 ГБ серый', 'ядер - 6x(3.78 ГГц), 8 ГБ, 1 SIM, Super Retina XDR, 2796x1290, камера 48+12+12 Мп, NFC, 5G, GPS, 4441 мА*ч', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/5f69c1f4061e959527c7af3113000853/dd3531d9a9470880430939cc74a603121be902b4624098c4dfa8ac87e4a3f5bc.jpg', 4.8, 144.799, 180.999);
INSERT INTO public.smartphone VALUES (16, 9, 16, 'Смартфон Apple iPhone 15 Pro 256 ГБ серый', 'ядер - 6x(3.78 ГГц), 8 ГБ, 2 SIM, Super Retina XDR, 2556x1179, камера 48+12+12 Мп, NFC, 5G, GPS, 3274 мА*ч', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/31b28373068528817401be1fa0f72ff2/57c3fa75db8745654a371cbec253d141e7b1ac632f61e9dce6b5bd421941132e.jpg', 4.9, 135.999, 169.999);
INSERT INTO public.smartphone VALUES (17, 9, 17, 'Смартфон Apple iPhone 15 128 ГБ черный', 'ядер - 6x(3.46 ГГц), 6 ГБ, 2 SIM, Super Retina XDR, 2556x1179, камера 48+12 Мп, NFC, 5G, GPS, 3349 мА*ч', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/41edbfdd1b4ef4a38f3ac15b85e02902/2258685cc32bbd96de406852bd9b2d94916029658cd6fa120a9f97a4bc0af297.jpg', 4.9, 81.799, 92.999);
INSERT INTO public.smartphone VALUES (18, 9, 18, 'Смартфон Samsung Galaxy A55 256 ГБ синий', 'ядер - 8x(2.75 ГГц), 8 ГБ, 2 SIM, Super AMOLED, 2340x1080, камера 50+12+5 Мп, NFC, 5G, GPS, 5000 мА*ч', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/a0ec6ac6fd9317b6a03797ba10031fb1/a40a5958bbb44ee158fad1a2d04972c7dadb88f8abbb45fb0b1b4cc6a23c9c86.jpg', 4.9, 41.999, NULL);


--
-- TOC entry 4953 (class 0 OID 25454)
-- Dependencies: 236
-- Data for Name: smartwatch; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.smartwatch VALUES (1, 10, 1, 'Смарт-часы Xiaomi Watch S3', 'корпус - черный, ремешок - черный, 1.43", AMOLED, 466x466, Bluetooth, для Android 6.0 и выше, iOS 12 и выше', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/d9d6e15c178d02222a10ea7fc3120f00/6c195a1e30832d13f17c41f39edd936c40620d7221d2fe51f9116b83f26f9ddb.jpg', 4.7, 14.999, NULL);
INSERT INTO public.smartwatch VALUES (2, 10, 2, 'Смарт-часы Samsung Galaxy Watch7 40mm', 'корпус - бежевый, ремешок - белый, 1.31", Super AMOLED, 432х432, IP68, Bluetooth, NFC, Wi-Fi, для Android 10.0 и выше', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/b7f7c2c18012a96f52603eab38742944/c086eb1f97def67edb66715d7dcdc024ae74d9646bbcdd626b8817254b3c99a3.jpg', 4.7, 23.499, NULL);
INSERT INTO public.smartwatch VALUES (3, 10, 3, 'Смарт-часы Apple Watch Series 9 45mm', 'корпус - черный, ремешок - черный, 1.9", OLED, 484x396, IP6X, Bluetooth, NFC, Wi-Fi, для iOS 17 и выше', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/523dcc5680975cb8595118649c0ab4a8/d2e0a66b3fd2f505fa9a08426a170f381706d1046622d3deea4023da1f62a9df.jpg', 4.9, 47.999, 54.499);
INSERT INTO public.smartwatch VALUES (4, 10, 4, 'Смарт-часы Samsung Galaxy Watch7 44mm', 'корпус - серебристый, ремешок - серебристый, 1.47", Super AMOLED, 480x480, IP68, Bluetooth, NFC, Wi-Fi, для Android 10.0 и выше', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/3bba9b788a27cd3696afaf8f3be83652/bd6ee9c2a4d4d85a0d9439b3d14399e281c50118407ea5671015be48e6403066.jpg', 4.7, 25.499, NULL);
INSERT INTO public.smartwatch VALUES (5, 10, 5, 'Смарт-часы Amazfit T-Rex 3', 'корпус - черный, ремешок - черный, 1.5", AMOLED, 480x480, IP68, Bluetooth, для Android 7.0 и выше, iOS 14 и выше', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/ed954aa126fa8eb239f766986109af1a/e91d14ceb70bf2fed490b83230e04d4f3319f7cca60a4127c6f6c9f9fec2306d.jpg', 4.8, 22.999, NULL);
INSERT INTO public.smartwatch VALUES (6, 10, 6, 'Смарт-часы HUAWEI WATCH GT 5 Pro', 'корпус - черный, ремешок - черный, 1.43", AMOLED, 466x466, IP68, Bluetooth, NFC, для Android 8.0 и выше, iOS 13 и выше', 'https://c.dns-shop.ru/thumb/st1/fit/500/500/ea42477f9f9fff3be4e9167b92d5325b/e2244f2795aa2b06752ca08cc7bf01ff5d9211c43570a46c58df9d9d6c302e7e.jpg', 4.9, 24.999, 26.999);
INSERT INTO public.smartwatch VALUES (7, 10, 7, 'Смарт-часы Apple Watch Series 9 41mm', 'корпус - бежевый, ремешок - бежевый, 1.69", OLED, 430x352, IP6X, Bluetooth, NFC, Wi-Fi, для iOS 17 и выше', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/a81242465b836cb218451fa62fc76f87/2c785636fb0da1436818a849820e83b4bbd138ce94ca1fc556233c27769d205e.jpg', 4.9, 45.799, 51.999);
INSERT INTO public.smartwatch VALUES (8, 10, 8, 'Смарт-часы HUAWEI WATCH GT 4 46mm', 'корпус - черный, ремешок - черный, 1.43", AMOLED, 466x466, IP68, Bluetooth, NFC, для Android 8.0 и выше, iOS 13 и выше', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/9ce1f1383a64ec945b94b96de7b47bd9/4f5c77d1a7c73e18144faf5a51f96e9cab91f037523c6828955fd532867b9d80.jpg', 4.9, 12.999, NULL);
INSERT INTO public.smartwatch VALUES (9, 10, 9, 'Смарт-часы Apple Watch SE 2023 40mm', 'корпус - бежевый, ремешок - бежевый, 1.57", OLED, 394x324, Bluetooth, NFC, Wi-Fi, для iOS 17 и выше', 'https://c.dns-shop.ru/thumb/st4/fit/500/500/d50df1fa03dd18b3953cce3e8335c787/7d7597a6bed145fc05796677e2e1bb29269c8867515c085e1f82218a95b457db.jpg', 4.8, 28.599, 32.499);


--
-- TOC entry 4973 (class 0 OID 0)
-- Dependencies: 217
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 10, true);


--
-- TOC entry 4974 (class 0 OID 0)
-- Dependencies: 219
-- Name: electricshavers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.electricshavers_id_seq', 1, false);


--
-- TOC entry 4975 (class 0 OID 0)
-- Dependencies: 237
-- Name: fridge_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fridge_id_seq', 1, false);


--
-- TOC entry 4976 (class 0 OID 0)
-- Dependencies: 221
-- Name: gasstoves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gasstoves_id_seq', 1, false);


--
-- TOC entry 4977 (class 0 OID 0)
-- Dependencies: 223
-- Name: hairdryer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hairdryer_id_seq', 1, false);


--
-- TOC entry 4978 (class 0 OID 0)
-- Dependencies: 225
-- Name: headphones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.headphones_id_seq', 1, false);


--
-- TOC entry 4979 (class 0 OID 0)
-- Dependencies: 227
-- Name: kidswatch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kidswatch_id_seq', 1, false);


--
-- TOC entry 4980 (class 0 OID 0)
-- Dependencies: 229
-- Name: laptop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.laptop_id_seq', 1, false);


--
-- TOC entry 4981 (class 0 OID 0)
-- Dependencies: 231
-- Name: screwdrivers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.screwdrivers_id_seq', 1, false);


--
-- TOC entry 4982 (class 0 OID 0)
-- Dependencies: 233
-- Name: smartphone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.smartphone_id_seq', 1, false);


--
-- TOC entry 4983 (class 0 OID 0)
-- Dependencies: 235
-- Name: smartwatch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.smartwatch_id_seq', 1, false);


--
-- TOC entry 4758 (class 2606 OID 25325)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 4760 (class 2606 OID 25335)
-- Name: electricshavers electricshavers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.electricshavers
    ADD CONSTRAINT electricshavers_pkey PRIMARY KEY (id);


--
-- TOC entry 4778 (class 2606 OID 25476)
-- Name: fridge fridge_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fridge
    ADD CONSTRAINT fridge_pkey PRIMARY KEY (id);


--
-- TOC entry 4762 (class 2606 OID 25363)
-- Name: gasstoves gasstoves_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gasstoves
    ADD CONSTRAINT gasstoves_pkey PRIMARY KEY (id);


--
-- TOC entry 4764 (class 2606 OID 25377)
-- Name: hairdryer hairdryer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hairdryer
    ADD CONSTRAINT hairdryer_pkey PRIMARY KEY (id);


--
-- TOC entry 4766 (class 2606 OID 25391)
-- Name: headphones headphones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.headphones
    ADD CONSTRAINT headphones_pkey PRIMARY KEY (id);


--
-- TOC entry 4768 (class 2606 OID 25405)
-- Name: kidswatch kidswatch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kidswatch
    ADD CONSTRAINT kidswatch_pkey PRIMARY KEY (id);


--
-- TOC entry 4770 (class 2606 OID 25419)
-- Name: laptop laptop_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laptop
    ADD CONSTRAINT laptop_pkey PRIMARY KEY (id);


--
-- TOC entry 4772 (class 2606 OID 25433)
-- Name: screwdrivers screwdrivers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.screwdrivers
    ADD CONSTRAINT screwdrivers_pkey PRIMARY KEY (id);


--
-- TOC entry 4774 (class 2606 OID 25447)
-- Name: smartphone smartphone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.smartphone
    ADD CONSTRAINT smartphone_pkey PRIMARY KEY (id);


--
-- TOC entry 4776 (class 2606 OID 25461)
-- Name: smartwatch smartwatch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.smartwatch
    ADD CONSTRAINT smartwatch_pkey PRIMARY KEY (id);


--
-- TOC entry 4779 (class 2606 OID 25336)
-- Name: electricshavers electricshavers_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.electricshavers
    ADD CONSTRAINT electricshavers_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- TOC entry 4788 (class 2606 OID 25477)
-- Name: fridge fridge_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fridge
    ADD CONSTRAINT fridge_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- TOC entry 4780 (class 2606 OID 25364)
-- Name: gasstoves gasstoves_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gasstoves
    ADD CONSTRAINT gasstoves_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- TOC entry 4781 (class 2606 OID 25378)
-- Name: hairdryer hairdryer_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hairdryer
    ADD CONSTRAINT hairdryer_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- TOC entry 4782 (class 2606 OID 25392)
-- Name: headphones headphones_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.headphones
    ADD CONSTRAINT headphones_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- TOC entry 4783 (class 2606 OID 25406)
-- Name: kidswatch kidswatch_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kidswatch
    ADD CONSTRAINT kidswatch_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- TOC entry 4784 (class 2606 OID 25420)
-- Name: laptop laptop_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laptop
    ADD CONSTRAINT laptop_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- TOC entry 4785 (class 2606 OID 25434)
-- Name: screwdrivers screwdrivers_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.screwdrivers
    ADD CONSTRAINT screwdrivers_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- TOC entry 4786 (class 2606 OID 25448)
-- Name: smartphone smartphone_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.smartphone
    ADD CONSTRAINT smartphone_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- TOC entry 4787 (class 2606 OID 25462)
-- Name: smartwatch smartwatch_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.smartwatch
    ADD CONSTRAINT smartwatch_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


-- Completed on 2024-12-13 08:05:01

--
-- PostgreSQL database dump complete
--

