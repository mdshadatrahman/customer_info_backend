--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-04-10 00:17:17 +06

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
-- TOC entry 215 (class 1259 OID 17201)
-- Name: district; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.district (
    id integer NOT NULL,
    name character varying NOT NULL,
    namebn character varying NOT NULL,
    lat integer,
    long integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    division_id integer
);


ALTER TABLE public.district OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 17200)
-- Name: district_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.district_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.district_id_seq OWNER TO postgres;

--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 214
-- Name: district_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.district_id_seq OWNED BY public.district.id;


--
-- TOC entry 217 (class 1259 OID 17212)
-- Name: division; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.division (
    id integer NOT NULL,
    name character varying NOT NULL,
    namebn character varying NOT NULL,
    lat double precision DEFAULT '0'::double precision NOT NULL,
    long double precision DEFAULT '0'::double precision NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.division OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 17211)
-- Name: division_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.division_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.division_id_seq OWNER TO postgres;

--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 216
-- Name: division_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.division_id_seq OWNED BY public.division.id;


--
-- TOC entry 231 (class 1259 OID 17291)
-- Name: microarea; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.microarea (
    id integer NOT NULL,
    name character varying NOT NULL,
    namebn character varying NOT NULL,
    lat integer NOT NULL,
    long integer NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.microarea OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 17290)
-- Name: microarea_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.microarea_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.microarea_id_seq OWNER TO postgres;

--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 230
-- Name: microarea_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.microarea_id_seq OWNED BY public.microarea.id;


--
-- TOC entry 225 (class 1259 OID 17258)
-- Name: municipality; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.municipality (
    id integer NOT NULL,
    name character varying NOT NULL,
    namebn character varying NOT NULL,
    lat integer NOT NULL,
    long integer NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.municipality OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 17257)
-- Name: municipality_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.municipality_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.municipality_id_seq OWNER TO postgres;

--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 224
-- Name: municipality_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.municipality_id_seq OWNED BY public.municipality.id;


--
-- TOC entry 219 (class 1259 OID 17225)
-- Name: thana; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.thana (
    id integer NOT NULL,
    name character varying NOT NULL,
    namebn character varying NOT NULL,
    lat integer NOT NULL,
    long integer NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.thana OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17224)
-- Name: thana_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.thana_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.thana_id_seq OWNER TO postgres;

--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 218
-- Name: thana_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.thana_id_seq OWNED BY public.thana.id;


--
-- TOC entry 229 (class 1259 OID 17280)
-- Name: union; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."union" (
    id integer NOT NULL,
    name character varying NOT NULL,
    namebn character varying NOT NULL,
    lat integer NOT NULL,
    long integer NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public."union" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 17279)
-- Name: union_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.union_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.union_id_seq OWNER TO postgres;

--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 228
-- Name: union_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.union_id_seq OWNED BY public."union".id;


--
-- TOC entry 221 (class 1259 OID 17236)
-- Name: upazila; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upazila (
    id integer NOT NULL,
    name character varying NOT NULL,
    namebn character varying NOT NULL,
    lat integer,
    long integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    district_id integer,
    division_id integer
);


ALTER TABLE public.upazila OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17235)
-- Name: upazila_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upazila_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upazila_id_seq OWNER TO postgres;

--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 220
-- Name: upazila_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upazila_id_seq OWNED BY public.upazila.id;


--
-- TOC entry 223 (class 1259 OID 17247)
-- Name: ward; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ward (
    id integer NOT NULL,
    name character varying NOT NULL,
    namebn character varying NOT NULL,
    lat integer NOT NULL,
    long integer NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.ward OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 17246)
-- Name: ward_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ward_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ward_id_seq OWNER TO postgres;

--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 222
-- Name: ward_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ward_id_seq OWNED BY public.ward.id;


--
-- TOC entry 227 (class 1259 OID 17269)
-- Name: zone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zone (
    id integer NOT NULL,
    name character varying NOT NULL,
    namebn character varying NOT NULL,
    lat integer NOT NULL,
    long integer NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.zone OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17268)
-- Name: zone_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.zone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zone_id_seq OWNER TO postgres;

--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 226
-- Name: zone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.zone_id_seq OWNED BY public.zone.id;


--
-- TOC entry 3241 (class 2604 OID 17204)
-- Name: district id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.district ALTER COLUMN id SET DEFAULT nextval('public.district_id_seq'::regclass);


--
-- TOC entry 3244 (class 2604 OID 17215)
-- Name: division id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.division ALTER COLUMN id SET DEFAULT nextval('public.division_id_seq'::regclass);


--
-- TOC entry 3267 (class 2604 OID 17294)
-- Name: microarea id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.microarea ALTER COLUMN id SET DEFAULT nextval('public.microarea_id_seq'::regclass);


--
-- TOC entry 3258 (class 2604 OID 17261)
-- Name: municipality id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipality ALTER COLUMN id SET DEFAULT nextval('public.municipality_id_seq'::regclass);


--
-- TOC entry 3249 (class 2604 OID 17228)
-- Name: thana id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thana ALTER COLUMN id SET DEFAULT nextval('public.thana_id_seq'::regclass);


--
-- TOC entry 3264 (class 2604 OID 17283)
-- Name: union id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."union" ALTER COLUMN id SET DEFAULT nextval('public.union_id_seq'::regclass);


--
-- TOC entry 3252 (class 2604 OID 17239)
-- Name: upazila id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upazila ALTER COLUMN id SET DEFAULT nextval('public.upazila_id_seq'::regclass);


--
-- TOC entry 3255 (class 2604 OID 17250)
-- Name: ward id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ward ALTER COLUMN id SET DEFAULT nextval('public.ward_id_seq'::regclass);


--
-- TOC entry 3261 (class 2604 OID 17272)
-- Name: zone id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zone ALTER COLUMN id SET DEFAULT nextval('public.zone_id_seq'::regclass);


--
-- TOC entry 3434 (class 0 OID 17201)
-- Dependencies: 215
-- Data for Name: district; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.district VALUES (1, 'BARGUNA', 'বরগুনা', NULL, NULL, '2023-03-20 09:16:50.970016', '2017-02-14 15:55:15', 1);
INSERT INTO public.district VALUES (2, 'BARISAL', 'বরিশাল', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 1);
INSERT INTO public.district VALUES (3, 'BHOLA', 'ভোলা', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 1);
INSERT INTO public.district VALUES (4, 'JHALOKATI', 'ঝালকাঠি', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 1);
INSERT INTO public.district VALUES (5, 'PATUAKHALI', 'পটুয়াখালী ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 1);
INSERT INTO public.district VALUES (6, 'PIROJPUR', 'পিরোজপুর ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 1);
INSERT INTO public.district VALUES (7, 'BANDARBAN', 'বান্দরবান', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 2);
INSERT INTO public.district VALUES (8, 'BRAHMANBARIA', 'ব্রাহ্মণবাড়িয়া', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 2);
INSERT INTO public.district VALUES (9, 'CHANDPUR', 'চাঁদপুর', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 2);
INSERT INTO public.district VALUES (10, 'CHITTAGONG', 'চট্টগ্রাম', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 2);
INSERT INTO public.district VALUES (11, 'COMILLA', 'কুমিল্লা', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 2);
INSERT INTO public.district VALUES (12, 'COX''S BAZAR', 'কক্সবাজার ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 2);
INSERT INTO public.district VALUES (13, 'FENI', 'ফেনী', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 2);
INSERT INTO public.district VALUES (14, 'KHAGRACHHARI', 'খাগড়াছড়ি', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 2);
INSERT INTO public.district VALUES (15, 'LAKSHMIPUR', 'লক্ষ্মীপুর', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 2);
INSERT INTO public.district VALUES (16, 'NOAKHALI', 'নোয়াখালী', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 2);
INSERT INTO public.district VALUES (17, 'RANGAMATI', 'রাঙ্গামাটি', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 2);
INSERT INTO public.district VALUES (18, 'DHAKA', 'ঢাকা ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 3);
INSERT INTO public.district VALUES (19, 'FARIDPUR', 'ফরিদপুর ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 3);
INSERT INTO public.district VALUES (20, 'GAZIPUR', 'গাজীপুর ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 3);
INSERT INTO public.district VALUES (21, 'GOPALGANJ', 'গোপালগঞ্জ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 3);
INSERT INTO public.district VALUES (22, 'JAMALPUR', 'জামালপুর ', NULL, NULL, '2023-03-20 09:16:50.970016', '2016-02-09 14:08:46', 9);
INSERT INTO public.district VALUES (23, 'KISHOREGONJ', 'কিশোরগঞ্জ ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 3);
INSERT INTO public.district VALUES (24, 'MADARIPUR', 'মাদারীপুর ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 3);
INSERT INTO public.district VALUES (25, 'MANIKGANJ', 'মানিকগঞ্জ ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 3);
INSERT INTO public.district VALUES (26, 'MUNSHIGANJ', 'মুন্সিগঞ্জ ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 3);
INSERT INTO public.district VALUES (27, 'MYMENSINGH', 'ময়মনসিংহ ', NULL, NULL, '2023-03-20 09:16:50.970016', '2016-02-09 19:32:20', 9);
INSERT INTO public.district VALUES (28, 'NARAYANGANJ', 'নারায়ণগঞ্জ ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 3);
INSERT INTO public.district VALUES (29, 'NARSINGDI', 'নরসিংদী ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 3);
INSERT INTO public.district VALUES (30, 'NETRAKONA', 'নেত্রকোণা ', NULL, NULL, '2023-03-20 09:16:50.970016', '2016-02-09 19:31:29', 9);
INSERT INTO public.district VALUES (31, 'RAJBARI', 'রাজবাড়ী ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 3);
INSERT INTO public.district VALUES (32, 'SHARIATPUR', 'শরীয়তপুর  ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 3);
INSERT INTO public.district VALUES (33, 'SHERPUR', 'শেরপুর ', NULL, NULL, '2023-03-20 09:16:50.970016', '2016-02-09 19:31:55', 9);
INSERT INTO public.district VALUES (34, 'TANGAIL', 'টাঙ্গাইল ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 3);
INSERT INTO public.district VALUES (35, 'BAGERHAT', 'বাগেরহাট', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 4);
INSERT INTO public.district VALUES (36, 'CHUADANGA', 'চুয়াডাঙ্গা ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 4);
INSERT INTO public.district VALUES (37, 'JESSORE', 'যশোর ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 4);
INSERT INTO public.district VALUES (38, 'JHENAIDAH', 'ঝিনাইদহ ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 4);
INSERT INTO public.district VALUES (39, 'KHULNA', 'খুলনা ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 4);
INSERT INTO public.district VALUES (40, 'KUSHTIA', 'কুষ্টিয়া ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 4);
INSERT INTO public.district VALUES (41, 'MAGURA', 'মাগুরা', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 4);
INSERT INTO public.district VALUES (42, 'MEHERPUR', 'মেহেরপুর ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 4);
INSERT INTO public.district VALUES (43, 'NARAIL', 'নড়াইল ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 4);
INSERT INTO public.district VALUES (44, 'SATKHIRA', 'সাতক্ষীরা ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 4);
INSERT INTO public.district VALUES (45, 'BOGRA', 'বগুড়া ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 5);
INSERT INTO public.district VALUES (46, 'JOYPURHAT', 'জয়পুরহাট', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 5);
INSERT INTO public.district VALUES (47, 'NAOGAON', 'নওগাঁ ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 5);
INSERT INTO public.district VALUES (48, 'NATORE', 'নাটোর ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 5);
INSERT INTO public.district VALUES (49, 'CHAPAI NABABGANJ', 'চাঁপাই নাবাবগঞ্জ ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 5);
INSERT INTO public.district VALUES (50, 'PABNA', 'পাবনা', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 5);
INSERT INTO public.district VALUES (51, 'RAJSHAHI', 'রাজশাহী ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 5);
INSERT INTO public.district VALUES (52, 'SIRAJGANJ', 'সিরাজগঞ্জ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 5);
INSERT INTO public.district VALUES (53, 'DINAJPUR', 'দিনাজপুর ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 6);
INSERT INTO public.district VALUES (54, 'GAIBANDHA', 'গাইবান্ধা ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 6);
INSERT INTO public.district VALUES (55, 'KURIGRAM', 'কুড়িগ্রাম ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 6);
INSERT INTO public.district VALUES (56, 'LALMONIRHAT', 'লালমনিরহাট ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 6);
INSERT INTO public.district VALUES (57, 'NILPHAMARI', 'নীলফামারী', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 6);
INSERT INTO public.district VALUES (58, 'PANCHAGARH', 'পঞ্চগড় ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 6);
INSERT INTO public.district VALUES (59, 'RANGPUR', 'রংপুর ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 6);
INSERT INTO public.district VALUES (60, 'THAKURGAON', 'ঠাকুরগাঁও', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 6);
INSERT INTO public.district VALUES (61, 'HABIGANJ', 'হবিগঞ্জ ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 7);
INSERT INTO public.district VALUES (62, 'MAULVIBAZAR', 'মৌলভীবাজার ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 7);
INSERT INTO public.district VALUES (63, 'SUNAMGANJ', 'সুনামগঞ্জ ', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 7);
INSERT INTO public.district VALUES (64, 'SYLHET', 'সিলেট', NULL, NULL, '2023-03-20 09:16:50.970016', '2023-03-20 09:16:50.970016', 7);


--
-- TOC entry 3436 (class 0 OID 17212)
-- Dependencies: 217
-- Data for Name: division; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.division VALUES (2, 'Chittagong', 'চট্টগ্রাম', 22.3569, 91.7832, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016');
INSERT INTO public.division VALUES (3, 'Dhaka', 'ঢাকা', 23.8103, 90.4125, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016');
INSERT INTO public.division VALUES (4, 'Khulna', 'খুলনা', 22.8456, 89.5403, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016');
INSERT INTO public.division VALUES (5, 'Rajshahi', 'রাজশাহী', 24.3745, 88.6042, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016');
INSERT INTO public.division VALUES (6, 'Rangpur', 'রংপুর', 25.7439, 89.2752, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016');
INSERT INTO public.division VALUES (7, 'Sylhet', 'সিলেট', 24.8949, 91.8687, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016');
INSERT INTO public.division VALUES (9, 'Mymensingh', 'ময়মনসিংহ', 24.7471, 90.4203, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016');
INSERT INTO public.division VALUES (1, 'Barisal', 'বরিশাল', 22.701, 90.3535, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016');


--
-- TOC entry 3450 (class 0 OID 17291)
-- Dependencies: 231
-- Data for Name: microarea; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3444 (class 0 OID 17258)
-- Dependencies: 225
-- Data for Name: municipality; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3438 (class 0 OID 17225)
-- Dependencies: 219
-- Data for Name: thana; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3448 (class 0 OID 17280)
-- Dependencies: 229
-- Data for Name: union; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3440 (class 0 OID 17236)
-- Dependencies: 221
-- Data for Name: upazila; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.upazila VALUES (1, 'AMTALI', 'আমতলী ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 1, 1);
INSERT INTO public.upazila VALUES (2, 'BAMNA', 'বামনা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 1, 1);
INSERT INTO public.upazila VALUES (3, 'BARGUNA SADAR', 'বরগুনা সদর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 1, 1);
INSERT INTO public.upazila VALUES (4, 'BETAGI', 'বেতাগী ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 1, 1);
INSERT INTO public.upazila VALUES (5, 'PATHARGHATA', 'পাথরঘাটা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 1, 1);
INSERT INTO public.upazila VALUES (6, 'TALTALI', 'তালতলি ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 1, 1);
INSERT INTO public.upazila VALUES (7, 'AGAILJHARA', 'আগৈলঝাড়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 2, 1);
INSERT INTO public.upazila VALUES (8, 'BABUGANJ', 'বাবুগঞ্জ ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 2, 1);
INSERT INTO public.upazila VALUES (9, 'BAKERGANJ', 'বাকেরগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 2, 1);
INSERT INTO public.upazila VALUES (10, 'BANARI PARA', 'বানারীপাড়া ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 2, 1);
INSERT INTO public.upazila VALUES (11, 'GAURNADI', 'গৌরনদী ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 2, 1);
INSERT INTO public.upazila VALUES (12, 'HIZLA', 'হিজলা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 2, 1);
INSERT INTO public.upazila VALUES (13, 'BARISAL SADAR (KOTWALI)', 'বরিশাল সদর (কোতোয়ালী)', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 2, 1);
INSERT INTO public.upazila VALUES (14, 'MEHENDIGANJ', 'মেহেন্দিগঞ্জ ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 2, 1);
INSERT INTO public.upazila VALUES (15, 'MULADI', 'মুলাদী  ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 2, 1);
INSERT INTO public.upazila VALUES (16, 'WAZIRPUR', 'উজিরপুর  ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 2, 1);
INSERT INTO public.upazila VALUES (17, 'BHOLA SADAR', 'ভোলা সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 3, 1);
INSERT INTO public.upazila VALUES (18, 'BURHANUDDIN', 'বোরহানউদ্দিন ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 3, 1);
INSERT INTO public.upazila VALUES (19, 'DAULAT KHAN', 'দৌলতখান', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 3, 1);
INSERT INTO public.upazila VALUES (20, 'LALMOHAN', 'লালমোহন ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 3, 1);
INSERT INTO public.upazila VALUES (21, 'MANPURA', 'মনপুরা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 3, 1);
INSERT INTO public.upazila VALUES (22, 'TAZUMUDDIN', 'তজুমদ্দিন ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 3, 1);
INSERT INTO public.upazila VALUES (23, 'JHALOKATI SADAR', 'ঝালকাঠি সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 4, 1);
INSERT INTO public.upazila VALUES (24, 'NALCHITY', 'নলছিটি ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 4, 1);
INSERT INTO public.upazila VALUES (25, 'KATHALIA', 'কাঠালিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 4, 1);
INSERT INTO public.upazila VALUES (26, 'BAUPHAL', 'বাউফল ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 5, 1);
INSERT INTO public.upazila VALUES (27, 'DASHMINA', 'দশমিনা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 5, 1);
INSERT INTO public.upazila VALUES (28, 'DUMKI', 'দুমকি ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 5, 1);
INSERT INTO public.upazila VALUES (29, 'KALAPARA', 'কলাপাড়া ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 5, 1);
INSERT INTO public.upazila VALUES (30, 'MIRZAGANJ', 'মির্জাগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 5, 1);
INSERT INTO public.upazila VALUES (31, 'PATUAKHALI SADAR', 'পটুয়াখালী সদর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 5, 1);
INSERT INTO public.upazila VALUES (32, 'RANGABALI', 'রাঙ্গাবালী ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 5, 1);
INSERT INTO public.upazila VALUES (33, 'BHANDARIA', 'ভান্ডারিয়া ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 6, 1);
INSERT INTO public.upazila VALUES (34, 'KAWKHALI', 'কাউখালী ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 6, 1);
INSERT INTO public.upazila VALUES (35, 'MATHBARIA', 'মঠবাড়ীয়া ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 6, 1);
INSERT INTO public.upazila VALUES (36, 'NAZIRPUR', 'নাজিরপুর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 6, 1);
INSERT INTO public.upazila VALUES (37, 'PIROJPUR SADAR', 'পিরোজপুর সদর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 6, 1);
INSERT INTO public.upazila VALUES (38, 'NESARABAD (SWARUPKATI)', 'নেছারাবা ( স্বরুপকাঠী) ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 6, 1);
INSERT INTO public.upazila VALUES (39, 'ZIANAGAR', 'জিয়ানগর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 6, 1);
INSERT INTO public.upazila VALUES (40, 'ALIKADAM', 'আলীকদম ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 7, 2);
INSERT INTO public.upazila VALUES (41, 'BANDARBAN SADAR', 'বান্দরবান সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 7, 2);
INSERT INTO public.upazila VALUES (42, 'LAMA', 'লামা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 7, 2);
INSERT INTO public.upazila VALUES (43, 'NAIKHONGCHHARI', 'নাইক্ষ্যংছড়ি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 7, 2);
INSERT INTO public.upazila VALUES (44, 'ROWANGCHHARI', 'রোয়াংছড়ি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 7, 2);
INSERT INTO public.upazila VALUES (45, 'RUMA', 'রুমা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 7, 2);
INSERT INTO public.upazila VALUES (46, 'THANCHI', 'থানচি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 7, 2);
INSERT INTO public.upazila VALUES (47, 'AKHAURA', 'আখাউড়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 8, 2);
INSERT INTO public.upazila VALUES (48, 'BANCHHARAMPUR', 'বাঞ্ছারামপুর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 8, 2);
INSERT INTO public.upazila VALUES (49, 'BIJOYNAGAR', 'বিজয়নগর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 8, 2);
INSERT INTO public.upazila VALUES (50, 'BRAHMANBARIA SADAR', 'ব্রাহ্মণবাড়িয়া সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 8, 2);
INSERT INTO public.upazila VALUES (51, 'ASHUGANJ', 'আশুগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 8, 2);
INSERT INTO public.upazila VALUES (52, 'KASBA', 'কসবা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 8, 2);
INSERT INTO public.upazila VALUES (53, 'NABINAGAR', 'নবীনগর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 8, 2);
INSERT INTO public.upazila VALUES (54, 'NASIRNAGAR', 'নাসিরনগর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 8, 2);
INSERT INTO public.upazila VALUES (55, 'SARAIL', 'সরাইল', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 8, 2);
INSERT INTO public.upazila VALUES (56, 'CHANDPUR SADAR', 'চাঁদপুর সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 9, 2);
INSERT INTO public.upazila VALUES (57, 'FARIDGANJ', 'ফরিদগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 9, 2);
INSERT INTO public.upazila VALUES (58, 'HAIM CHAR', 'হাইমচর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 9, 2);
INSERT INTO public.upazila VALUES (59, 'HAJIGANJ', 'হাজীগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 9, 2);
INSERT INTO public.upazila VALUES (60, 'KACHUA', 'কচুয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 9, 2);
INSERT INTO public.upazila VALUES (61, 'MATLAB DAKSHIN', 'মতলব দক্ষিণ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 9, 2);
INSERT INTO public.upazila VALUES (62, 'MATLAB UTTAR', 'মতলব উত্তর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 9, 2);
INSERT INTO public.upazila VALUES (63, 'SHAHRASTI', 'শাহরাস্তি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 9, 2);
INSERT INTO public.upazila VALUES (64, 'ANOWARA', 'আনোয়ারা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 10, 2);
INSERT INTO public.upazila VALUES (65, 'BANSHKHALI', 'বাঁশখালী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 10, 2);
INSERT INTO public.upazila VALUES (66, 'BOALKHALI', 'বোয়ালখালী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 10, 2);
INSERT INTO public.upazila VALUES (67, 'CHANDANAISH', 'চন্দনাইশ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 10, 2);
INSERT INTO public.upazila VALUES (68, 'FATIKCHHARI', 'ফটিকছড়ি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 10, 2);
INSERT INTO public.upazila VALUES (69, 'HATHAZARI', 'হাটহাজারী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 10, 2);
INSERT INTO public.upazila VALUES (70, 'LOHAGARA', 'লোহাগাড়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 10, 2);
INSERT INTO public.upazila VALUES (71, 'MIRSHARAI', 'মীরসরাই', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 10, 2);
INSERT INTO public.upazila VALUES (72, 'PATIYA', 'পটিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 10, 2);
INSERT INTO public.upazila VALUES (73, 'RANGUNIA', 'রাঙ্গুনিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 10, 2);
INSERT INTO public.upazila VALUES (74, 'RAOZAN', 'রাউজান', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 10, 2);
INSERT INTO public.upazila VALUES (75, 'SANDWIP', 'সন্দ্বীপ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 10, 2);
INSERT INTO public.upazila VALUES (76, 'SATKANIA', 'সাতকানিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 10, 2);
INSERT INTO public.upazila VALUES (77, 'SITAKUNDA', 'সীতাকুণ্ড', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 10, 2);
INSERT INTO public.upazila VALUES (78, 'BARURA', 'বরুড়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 11, 2);
INSERT INTO public.upazila VALUES (79, 'BRAHMAN PARA', 'ব্রাহ্মণপাড়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 11, 2);
INSERT INTO public.upazila VALUES (80, 'BURICHANG', 'বুড়িচং', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 11, 2);
INSERT INTO public.upazila VALUES (81, 'CHANDINA', 'চান্দিনা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 11, 2);
INSERT INTO public.upazila VALUES (82, 'CHAUDDAGRAM', 'চৌদ্দগ্রাম', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 11, 2);
INSERT INTO public.upazila VALUES (83, 'COMILLA SADAR DAKSHIN', 'কুমিল্লা সদর দক্ষিণ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 11, 2);
INSERT INTO public.upazila VALUES (84, 'DAUDKANDI', 'দাউদকান্দি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 11, 2);
INSERT INTO public.upazila VALUES (85, 'DEBIDWAR', 'দেবিদ্বার', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 11, 2);
INSERT INTO public.upazila VALUES (86, 'HOMNA', 'হোমনা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 11, 2);
INSERT INTO public.upazila VALUES (87, 'COMILLA ADARSHA SADAR', 'কুমিল্লা সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 11, 2);
INSERT INTO public.upazila VALUES (88, 'LAKSAM', 'লাকসাম', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 11, 2);
INSERT INTO public.upazila VALUES (89, 'MANOHARGANJ', 'মনোহরগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 11, 2);
INSERT INTO public.upazila VALUES (90, 'MEGHNA', 'মেঘনা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 11, 2);
INSERT INTO public.upazila VALUES (91, 'MURADNAGAR', 'মুরাদনগর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 11, 2);
INSERT INTO public.upazila VALUES (92, 'NANGALKOT', 'নাঙ্গলকোট', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 11, 2);
INSERT INTO public.upazila VALUES (93, 'TITAS', 'তিতাস', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 11, 2);
INSERT INTO public.upazila VALUES (94, 'CHAKARIA', 'চকরিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 12, 2);
INSERT INTO public.upazila VALUES (95, 'COX''S BAZAR SADAR', 'কক্সবাজার সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 12, 2);
INSERT INTO public.upazila VALUES (96, 'KUTUBDIA', 'কুতুবদিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 12, 2);
INSERT INTO public.upazila VALUES (97, 'MAHESHKHALI', 'মহেশখালী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 12, 2);
INSERT INTO public.upazila VALUES (98, 'PEKUA', 'পেকুয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 12, 2);
INSERT INTO public.upazila VALUES (99, 'RAMU', 'রামু', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 12, 2);
INSERT INTO public.upazila VALUES (100, 'TEKNAF', 'টেকনাফ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 12, 2);
INSERT INTO public.upazila VALUES (101, 'UKHIA', 'উখিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 12, 2);
INSERT INTO public.upazila VALUES (102, 'CHHAGALNAIYA', 'ছাগলনাইয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 13, 2);
INSERT INTO public.upazila VALUES (103, 'DAGANBHUIYAN', 'দাগনভূঞা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 13, 2);
INSERT INTO public.upazila VALUES (104, 'FENI SADAR', 'ফেনী সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 13, 2);
INSERT INTO public.upazila VALUES (105, 'FULGAZI', 'ফুলগাজী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 13, 2);
INSERT INTO public.upazila VALUES (106, 'PARSHURAM', 'পরশুরাম', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 13, 2);
INSERT INTO public.upazila VALUES (107, 'SONAGAZI', 'সোনাগাজী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 13, 2);
INSERT INTO public.upazila VALUES (108, 'DIGHINALA', 'দিঘীনালা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 14, 2);
INSERT INTO public.upazila VALUES (109, 'MANIKCHHARI', 'মানিকছড়ি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 14, 2);
INSERT INTO public.upazila VALUES (110, 'KHAGRACHHARI SADAR', 'খাগড়াছড়ি সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 14, 2);
INSERT INTO public.upazila VALUES (111, 'LAKSHMICHHARI', 'লক্ষীছড়ি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 14, 2);
INSERT INTO public.upazila VALUES (112, 'MAHALCHHARI', 'মহালছড়ি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 14, 2);
INSERT INTO public.upazila VALUES (113, 'MATIRANGA', 'মাটিরাঙ্গা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 14, 2);
INSERT INTO public.upazila VALUES (114, 'PANCHHARI', 'পানছড়ি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 14, 2);
INSERT INTO public.upazila VALUES (115, 'RAMGARH', 'রামগড়', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 14, 2);
INSERT INTO public.upazila VALUES (116, 'KAMALNAGAR', 'কমলনগর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 15, 2);
INSERT INTO public.upazila VALUES (117, 'LAKSHMIPUR SADAR', 'লক্ষ্মীপুর সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 15, 2);
INSERT INTO public.upazila VALUES (118, 'ROYPUR', 'রায়পুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 15, 2);
INSERT INTO public.upazila VALUES (119, 'RAMGANJ', 'রামগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 15, 2);
INSERT INTO public.upazila VALUES (120, 'RAMGATI', 'রামগতি ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 15, 2);
INSERT INTO public.upazila VALUES (121, 'BEGUMGANJ', 'বেগমগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 16, 2);
INSERT INTO public.upazila VALUES (122, 'CHATKHIL', 'চাটখিল', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 16, 2);
INSERT INTO public.upazila VALUES (123, 'COMPANIGANJ', 'কোম্পানীগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 16, 2);
INSERT INTO public.upazila VALUES (124, 'HATIYA', 'হাতিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 16, 2);
INSERT INTO public.upazila VALUES (125, 'SENBAGH', 'সেনবাগ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 16, 2);
INSERT INTO public.upazila VALUES (126, 'SONAIMURI', 'সোনাইমুড়ী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 16, 2);
INSERT INTO public.upazila VALUES (127, 'SUBARNACHAR', 'সুবর্ণচর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 16, 2);
INSERT INTO public.upazila VALUES (128, 'NOAKHALI ', 'নোয়াখালী ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 16, 2);
INSERT INTO public.upazila VALUES (129, 'BAGHAICHHARI', 'বাঘাইছড়ি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 17, 2);
INSERT INTO public.upazila VALUES (130, 'BARKAL ', 'বরকল', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 17, 2);
INSERT INTO public.upazila VALUES (131, 'KAWKHALI (BETBUNIA)', 'কাউখালী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 17, 2);
INSERT INTO public.upazila VALUES (132, 'KAPTAI  ', 'কাপ্তাই ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 17, 2);
INSERT INTO public.upazila VALUES (133, 'JURAI CHHARI', 'জুরাছড়ি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 17, 2);
INSERT INTO public.upazila VALUES (134, 'LANGADU  ', 'লংগদু ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 17, 2);
INSERT INTO public.upazila VALUES (135, 'NANIARCHAR  ', 'নানিয়ারচর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 17, 2);
INSERT INTO public.upazila VALUES (136, 'RANGAMATI SADAR', 'রাঙ্গামাটি সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 17, 2);
INSERT INTO public.upazila VALUES (137, 'RAJOSTHOLI ', 'রাজস্থলী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 17, 2);
INSERT INTO public.upazila VALUES (138, 'BILAYCHHARI', 'বিলাইছড়ি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 17, 2);
INSERT INTO public.upazila VALUES (139, 'TEJGAON UNNON CIRCLE', 'তেজগাঁও উন্নয়ন সার্কেল', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 18, 3);
INSERT INTO public.upazila VALUES (140, 'BADDA', 'বাড্ডা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 18, 3);
INSERT INTO public.upazila VALUES (141, 'BANGSHAL', 'বংশাল', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 18, 3);
INSERT INTO public.upazila VALUES (142, 'BIMAN BANDAR', 'বিমান বন্দর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 18, 3);
INSERT INTO public.upazila VALUES (143, 'BANANI', 'বনানী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 18, 3);
INSERT INTO public.upazila VALUES (144, 'CANTONMENT', 'সেনানিবাস', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 18, 3);
INSERT INTO public.upazila VALUES (145, 'CHAK BAZAR', 'চকবাজার', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 18, 3);
INSERT INTO public.upazila VALUES (146, 'DAKSHINKHAN', 'দক্ষিনখান', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 18, 3);
INSERT INTO public.upazila VALUES (147, 'DARUS SALAM', 'দারুস সালাম', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 18, 3);
INSERT INTO public.upazila VALUES (148, 'DEMRA', 'ডেমরা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 18, 3);
INSERT INTO public.upazila VALUES (149, 'DHAMRAI', 'ধামরাই', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 18, 3);
INSERT INTO public.upazila VALUES (150, 'DOHAR', 'দোহার', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 18, 3);
INSERT INTO public.upazila VALUES (151, 'KERANIGANJ', 'কেরাণীগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 18, 3);
INSERT INTO public.upazila VALUES (152, 'NAWABGANJ', 'নবাবগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 18, 3);
INSERT INTO public.upazila VALUES (153, 'SAVAR', 'সাভার', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 18, 3);
INSERT INTO public.upazila VALUES (154, 'ALFADANGA', 'আলফাডাঙ্গা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 19, 3);
INSERT INTO public.upazila VALUES (155, 'BHANGA', 'ভাঙ্গা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 19, 3);
INSERT INTO public.upazila VALUES (156, 'BOALMARI', 'বোয়ালমারী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 19, 3);
INSERT INTO public.upazila VALUES (157, 'CHAR BHADRASAN', 'চরভদ্রাসন', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 19, 3);
INSERT INTO public.upazila VALUES (158, 'FARIDPUR SADAR', 'ফরিদপুর সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 19, 3);
INSERT INTO public.upazila VALUES (159, 'MADHUKHALI', 'মধুখালী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 19, 3);
INSERT INTO public.upazila VALUES (160, 'NAGARKANDA', 'নগরকান্দা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 19, 3);
INSERT INTO public.upazila VALUES (161, 'SADARPUR', 'সদরপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 19, 3);
INSERT INTO public.upazila VALUES (162, 'SALTHA', 'সালথা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 19, 3);
INSERT INTO public.upazila VALUES (163, 'GAZIPUR SADAR', 'গাজীপুর সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 20, 3);
INSERT INTO public.upazila VALUES (164, 'KALIAKAIR', 'কালিয়াকৈর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 20, 3);
INSERT INTO public.upazila VALUES (165, 'KALIGANJ', 'কালীগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 20, 3);
INSERT INTO public.upazila VALUES (166, 'KAPASIA', 'কাপাসিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 20, 3);
INSERT INTO public.upazila VALUES (167, 'SREEPUR', 'শ্রীপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 20, 3);
INSERT INTO public.upazila VALUES (168, 'GOPALGANJ SADAR', 'গোপালগঞ্জ সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 21, 3);
INSERT INTO public.upazila VALUES (169, 'KASHIANI', 'কাশিয়ানী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 21, 3);
INSERT INTO public.upazila VALUES (170, 'KOTALIPARA', 'কোটালীপাড়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 21, 3);
INSERT INTO public.upazila VALUES (171, 'MUKSUDPUR', 'মুকসুদপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 21, 3);
INSERT INTO public.upazila VALUES (172, 'TUNGIPARA', 'টুংগীপাড়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 21, 3);
INSERT INTO public.upazila VALUES (173, 'BAKSHIGANJ', 'বকশীগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 22, 3);
INSERT INTO public.upazila VALUES (174, 'DEWANGANJ', 'দেওয়ানগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 22, 3);
INSERT INTO public.upazila VALUES (175, 'ISLAMPUR', 'ইসলামপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 22, 3);
INSERT INTO public.upazila VALUES (176, 'JAMALPUR SADAR', 'জামালপুর সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 22, 3);
INSERT INTO public.upazila VALUES (177, 'MADARGANJ', 'মাদারগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 22, 3);
INSERT INTO public.upazila VALUES (178, 'MELANDAHA', 'মেলান্দহ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 22, 3);
INSERT INTO public.upazila VALUES (179, 'SARISHABARI UPAZILA', 'সরিষাবাড়ী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 22, 3);
INSERT INTO public.upazila VALUES (180, 'AUSTAGRAM', 'অষ্টগ্রাম', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 23, 3);
INSERT INTO public.upazila VALUES (181, 'BAJITPUR', 'বাজিতপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 23, 3);
INSERT INTO public.upazila VALUES (182, 'BHAIRAB', 'ভৈরব', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 23, 3);
INSERT INTO public.upazila VALUES (183, 'HOSSAINPUR', 'হোসেনপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 23, 3);
INSERT INTO public.upazila VALUES (184, 'ITNA', 'ইটনা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 23, 3);
INSERT INTO public.upazila VALUES (185, 'KARIMGANJ', 'করিমগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 23, 3);
INSERT INTO public.upazila VALUES (186, 'KATIADI', 'কটিয়াদী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 23, 3);
INSERT INTO public.upazila VALUES (187, 'KISHOREGANJ SADAR', 'কিশোরগঞ্জ সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 23, 3);
INSERT INTO public.upazila VALUES (188, 'KULIAR CHAR', 'কুলিয়ারচর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 23, 3);
INSERT INTO public.upazila VALUES (189, 'MITHAMAIN', 'মিঠামইন', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 23, 3);
INSERT INTO public.upazila VALUES (190, 'NIKLI', 'নিকলী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 23, 3);
INSERT INTO public.upazila VALUES (191, 'PAKUNDIA', 'পাকুন্দিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 23, 3);
INSERT INTO public.upazila VALUES (192, 'TARAIL', 'তাড়াইল', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 23, 3);
INSERT INTO public.upazila VALUES (193, 'KALKINI', 'কালকিনি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 24, 3);
INSERT INTO public.upazila VALUES (194, 'MADARIPUR SADAR', 'মাদারীপুর সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 24, 3);
INSERT INTO public.upazila VALUES (195, 'RAJOIR', 'রাজৈর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 24, 3);
INSERT INTO public.upazila VALUES (196, 'SHIBCHAR', 'শিবচর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 24, 3);
INSERT INTO public.upazila VALUES (197, 'DAULATPUR', 'দৌলতপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 25, 3);
INSERT INTO public.upazila VALUES (198, 'GHIOR', 'ঘিওর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 25, 3);
INSERT INTO public.upazila VALUES (199, 'HARIRAMPUR', 'হরিরামপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 25, 3);
INSERT INTO public.upazila VALUES (200, 'MANIKGANJ SADAR', 'মানিকগঞ্জ সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 25, 3);
INSERT INTO public.upazila VALUES (201, 'SATURIA', 'সাটুরিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 25, 3);
INSERT INTO public.upazila VALUES (202, 'SHIBALAYA', 'শিবালয়', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 25, 3);
INSERT INTO public.upazila VALUES (203, 'SINGAIR', 'সিংগাইর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 25, 3);
INSERT INTO public.upazila VALUES (204, 'GAZARIA', 'গজারিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 26, 3);
INSERT INTO public.upazila VALUES (205, 'LOHAJANG', 'লৌহজং', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 26, 3);
INSERT INTO public.upazila VALUES (206, 'MUNSHIGANJ SADAR', 'মুন্সিগঞ্জ সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 26, 3);
INSERT INTO public.upazila VALUES (207, 'SERAJDIKHAN', 'সিরাজদিখান', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 26, 3);
INSERT INTO public.upazila VALUES (208, 'SREENAGAR', 'শ্রীনগর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 26, 3);
INSERT INTO public.upazila VALUES (209, 'TONGIBARI', 'টংগিবাড়ী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 26, 3);
INSERT INTO public.upazila VALUES (210, 'BHALUKA', 'ভালুকা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 27, 3);
INSERT INTO public.upazila VALUES (211, 'DHOBAURA', 'ধোবাউড়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 27, 3);
INSERT INTO public.upazila VALUES (212, 'FULBARIA', 'ফুলবাড়ীয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 27, 3);
INSERT INTO public.upazila VALUES (213, 'GAFFARGAON', 'গফরগাঁও', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 27, 3);
INSERT INTO public.upazila VALUES (214, 'GAURIPUR', 'গৌরীপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 27, 3);
INSERT INTO public.upazila VALUES (215, 'HALUAGHAT', 'হালুয়াঘাট', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 27, 3);
INSERT INTO public.upazila VALUES (216, 'ISHWARGANJ', 'ঈশ্বরগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 27, 3);
INSERT INTO public.upazila VALUES (217, 'MYMENSINGH SADAR', 'ময়মনসিংহ সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 27, 3);
INSERT INTO public.upazila VALUES (218, 'MUKTAGACHHA', 'মুক্তাগাছা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 27, 3);
INSERT INTO public.upazila VALUES (219, 'NANDAIL', 'নান্দাইল', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 27, 3);
INSERT INTO public.upazila VALUES (220, 'PHULPUR', 'ফুলপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 27, 3);
INSERT INTO public.upazila VALUES (221, 'TARAKANDA', 'তারাকান্দা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 27, 3);
INSERT INTO public.upazila VALUES (222, 'TRISHAL', 'ত্রিশাল', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 27, 3);
INSERT INTO public.upazila VALUES (223, 'ARAIHAZAR', 'আড়াইহাজার', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 28, 3);
INSERT INTO public.upazila VALUES (224, 'SONARGAON', 'সোনারগাঁ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 28, 3);
INSERT INTO public.upazila VALUES (225, 'NARAYANGANJ SADAR', 'নারায়নগঞ্জ সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 28, 3);
INSERT INTO public.upazila VALUES (226, 'RUPGANJ', 'রূপগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 28, 3);
INSERT INTO public.upazila VALUES (227, 'BELABO', 'বেলাবো', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 29, 3);
INSERT INTO public.upazila VALUES (228, 'MANOHARDI', 'মনোহরদী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 29, 3);
INSERT INTO public.upazila VALUES (229, 'NARSINGDI ', 'নরসিংদী ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 29, 3);
INSERT INTO public.upazila VALUES (230, 'PALASH', 'পলাশ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 29, 3);
INSERT INTO public.upazila VALUES (231, 'ROYPURA', 'রায়পুরা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 29, 3);
INSERT INTO public.upazila VALUES (232, 'SHIBPUR', 'শিবপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 29, 3);
INSERT INTO public.upazila VALUES (233, 'ATPARA', 'আটপাড়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 30, 3);
INSERT INTO public.upazila VALUES (234, 'BARHATTA', 'বারহাট্টা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 30, 3);
INSERT INTO public.upazila VALUES (235, 'DURGAPUR', 'দুর্গাপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 30, 3);
INSERT INTO public.upazila VALUES (236, 'KHALIAJURI', 'খালিয়াজুরী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 30, 3);
INSERT INTO public.upazila VALUES (237, 'KALMAKANDA', 'কলমাকান্দা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 30, 3);
INSERT INTO public.upazila VALUES (238, 'KENDUA', 'কেন্দুয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 30, 3);
INSERT INTO public.upazila VALUES (239, 'MADAN', 'মদন', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 30, 3);
INSERT INTO public.upazila VALUES (240, 'MOHANGANJ', 'মোহনগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 30, 3);
INSERT INTO public.upazila VALUES (241, 'NETROKONA SADAR', 'নেত্রকোণা সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 30, 3);
INSERT INTO public.upazila VALUES (242, 'BALIAKANDI', 'বালিয়াকান্দি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 31, 3);
INSERT INTO public.upazila VALUES (243, 'GOALANDA', 'গোয়ালন্দ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 31, 3);
INSERT INTO public.upazila VALUES (244, 'KALUKHALI', 'কালুখালী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 31, 3);
INSERT INTO public.upazila VALUES (245, 'PANGSHA', 'পাংশা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 31, 3);
INSERT INTO public.upazila VALUES (246, 'RAJBARI SADAR', 'রাজবাড়ী সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 31, 3);
INSERT INTO public.upazila VALUES (247, 'BHEDARGANJ', 'ভেদরগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 32, 3);
INSERT INTO public.upazila VALUES (248, 'DAMUDYA', 'ডামুড্যা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 32, 3);
INSERT INTO public.upazila VALUES (249, 'GOSAIRHAT', 'গোসাইরহাট', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 32, 3);
INSERT INTO public.upazila VALUES (250, 'NARIA', 'নড়িয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 32, 3);
INSERT INTO public.upazila VALUES (251, 'SHARIATPUR SADAR', 'শরিয়তপুর সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 32, 3);
INSERT INTO public.upazila VALUES (252, 'ZANJIRA', 'জাজিরা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 32, 3);
INSERT INTO public.upazila VALUES (253, 'JHENAIGATI', 'ঝিনাইগাতী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 33, 3);
INSERT INTO public.upazila VALUES (254, 'NAKLA', 'নকলা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 33, 3);
INSERT INTO public.upazila VALUES (255, 'NALITABARI', 'নালিতাবাড়ী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 33, 3);
INSERT INTO public.upazila VALUES (256, 'SHERPUR SADAR', 'শেরপুর সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 33, 3);
INSERT INTO public.upazila VALUES (257, 'SREEBARDI', 'শ্রীবরদী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 33, 3);
INSERT INTO public.upazila VALUES (258, 'BASAIL', 'বাসাইল', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 34, 3);
INSERT INTO public.upazila VALUES (259, 'BHUAPUR', 'ভুয়াপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 34, 3);
INSERT INTO public.upazila VALUES (260, 'DELDUAR', 'দেলদুয়ার', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 34, 3);
INSERT INTO public.upazila VALUES (261, 'DHANBARI', 'ধনবাড়ী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 34, 3);
INSERT INTO public.upazila VALUES (262, 'GHATAIL', 'ঘাটাইল', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 34, 3);
INSERT INTO public.upazila VALUES (263, 'GOPALPUR', 'গোপালপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 34, 3);
INSERT INTO public.upazila VALUES (264, 'KALIHATI', 'কালিহাতী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 34, 3);
INSERT INTO public.upazila VALUES (265, 'MADHUPUR', 'মধুপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 34, 3);
INSERT INTO public.upazila VALUES (266, 'MIRZAPUR', 'মির্জাপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 34, 3);
INSERT INTO public.upazila VALUES (267, 'NAGARPUR', 'নাগরপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 34, 3);
INSERT INTO public.upazila VALUES (268, 'SAKHIPUR', 'সখিপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 34, 3);
INSERT INTO public.upazila VALUES (269, 'TANGAIL SADAR', 'টাঙ্গাইল সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 34, 3);
INSERT INTO public.upazila VALUES (271, 'CHITALMARI', 'চিতলমারী ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 35, 4);
INSERT INTO public.upazila VALUES (272, 'FAKIRHAT', 'ফকিরহাট ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 35, 4);
INSERT INTO public.upazila VALUES (273, 'KACHUA', 'কচুয়া ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 35, 4);
INSERT INTO public.upazila VALUES (274, 'MOLLAHAT', 'মোল্লাহাট ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 35, 4);
INSERT INTO public.upazila VALUES (275, 'MONGLA', 'মোংলা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 35, 4);
INSERT INTO public.upazila VALUES (276, 'MORRELGANJ', 'মোড়েলগঞ্জ ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 35, 4);
INSERT INTO public.upazila VALUES (277, 'RAMPAL', 'রামপাল ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 35, 4);
INSERT INTO public.upazila VALUES (278, 'SARANKHOLA', 'শরণখোলা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 35, 4);
INSERT INTO public.upazila VALUES (279, 'ALAMDANGA', 'আলমডাঙ্গা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 36, 4);
INSERT INTO public.upazila VALUES (280, 'CHUADANGA SADAR', 'চুয়াডাঙ্গা সদর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 36, 4);
INSERT INTO public.upazila VALUES (281, 'DAMURHUDA', 'দামুড়হুদা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 36, 4);
INSERT INTO public.upazila VALUES (282, 'JIBAN NAGAR', 'জীবননগর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 36, 4);
INSERT INTO public.upazila VALUES (283, 'ABHAYNAGAR', 'অভয়নগর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 37, 4);
INSERT INTO public.upazila VALUES (284, 'BAGHER PARA', 'বাঘারপাড়া ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 37, 4);
INSERT INTO public.upazila VALUES (285, 'CHAUGACHHA', 'চৌগাছা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 37, 4);
INSERT INTO public.upazila VALUES (286, 'JHIKARGACHHA', 'ঝিকরগাছা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 37, 4);
INSERT INTO public.upazila VALUES (287, 'KESHABPUR', 'কেশবপুর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 37, 4);
INSERT INTO public.upazila VALUES (288, 'JESSORE SADAR', 'যশোর সদর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 37, 4);
INSERT INTO public.upazila VALUES (289, 'MANIRAMPUR', 'মণিরামপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 37, 4);
INSERT INTO public.upazila VALUES (290, 'SHARSHA', 'শার্শা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 37, 4);
INSERT INTO public.upazila VALUES (291, 'HARINAKUNDA', 'হরিণাকুন্ডু ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 38, 4);
INSERT INTO public.upazila VALUES (292, 'JHENAIDAH SADAR', 'ঝিনাইদহ সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 38, 4);
INSERT INTO public.upazila VALUES (293, 'KALIGANJ', 'কালীগঞ্জ ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 38, 4);
INSERT INTO public.upazila VALUES (294, 'KOTCHANDPUR', 'কোটচাঁদপুর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 38, 4);
INSERT INTO public.upazila VALUES (295, 'MAHESHPUR', 'মহেশপুর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 38, 4);
INSERT INTO public.upazila VALUES (296, 'SHAILKUPA', 'শৈলকুপা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 38, 4);
INSERT INTO public.upazila VALUES (297, 'BATIAGHATA', 'বটিয়াঘাটা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 39, 4);
INSERT INTO public.upazila VALUES (298, 'DACOPE', 'দাকোপ ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 39, 4);
INSERT INTO public.upazila VALUES (299, 'DUMURIA', 'ডুমুরিয়া ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 39, 4);
INSERT INTO public.upazila VALUES (300, 'KOYRA', 'কয়রা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 39, 4);
INSERT INTO public.upazila VALUES (301, 'PAIKGACHHA', 'পাইকগাছা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 39, 4);
INSERT INTO public.upazila VALUES (302, 'PHULTALA', 'ফুলতলা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 39, 4);
INSERT INTO public.upazila VALUES (303, 'RUPSA', 'রূপসা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 39, 4);
INSERT INTO public.upazila VALUES (304, 'TEROKHADA', 'তেরখাদা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 39, 4);
INSERT INTO public.upazila VALUES (305, 'DHEGHOLIA', 'দিঘলিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 39, 4);
INSERT INTO public.upazila VALUES (306, 'BHERAMARA', 'ভেড়ামারা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 40, 4);
INSERT INTO public.upazila VALUES (307, 'DAULATPUR', 'দৌলতপুর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 40, 4);
INSERT INTO public.upazila VALUES (308, 'KHOKSA', 'খোকসা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 40, 4);
INSERT INTO public.upazila VALUES (309, 'KUMARKHALI', 'কুমারখালী ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 40, 4);
INSERT INTO public.upazila VALUES (310, 'KUSHTIA SADAR', 'কুষ্টিয়া সদর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 40, 4);
INSERT INTO public.upazila VALUES (311, 'MIRPUR', 'মিরপুর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 40, 4);
INSERT INTO public.upazila VALUES (312, 'MAGURA SADAR', 'মাগুরা সদর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 41, 4);
INSERT INTO public.upazila VALUES (313, 'MOHAMMADPUR', 'মহম্মদপুর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 41, 4);
INSERT INTO public.upazila VALUES (314, 'SHALIKHA', 'শালিখা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 41, 4);
INSERT INTO public.upazila VALUES (315, 'SREEPUR', 'শ্রীপুর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 41, 4);
INSERT INTO public.upazila VALUES (316, 'GANGNI', 'গাংনী ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 42, 4);
INSERT INTO public.upazila VALUES (317, 'MUJIB NAGAR', 'মুজিবনগর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 42, 4);
INSERT INTO public.upazila VALUES (318, 'MEHERPUR SADAR', 'মেহেরপুর সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 42, 4);
INSERT INTO public.upazila VALUES (319, 'KALIA', 'কালিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 43, 4);
INSERT INTO public.upazila VALUES (320, 'LOHAGARA', 'লোহাগড়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 43, 4);
INSERT INTO public.upazila VALUES (321, 'NARAIL SADAR', 'নড়াইল সদর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 43, 4);
INSERT INTO public.upazila VALUES (322, 'ASSASUNI', 'আশাশুনি ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 44, 4);
INSERT INTO public.upazila VALUES (323, 'DEBHATA', 'দেবহাটা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 44, 4);
INSERT INTO public.upazila VALUES (324, 'KALAROA', 'কলারোয়া ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 44, 4);
INSERT INTO public.upazila VALUES (325, 'KALIGANJ', 'কালিগঞ্জ ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 44, 4);
INSERT INTO public.upazila VALUES (326, 'SATKHIRA SADAR', 'সাতক্ষীরা সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 44, 4);
INSERT INTO public.upazila VALUES (327, 'SHYAMNAGAR', 'শ্যামনগর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 44, 4);
INSERT INTO public.upazila VALUES (328, 'TALA', 'তালা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 44, 4);
INSERT INTO public.upazila VALUES (329, 'ADAMDIGHI', 'আদমদিঘি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 45, 5);
INSERT INTO public.upazila VALUES (330, 'BOGRA SADAR', 'বগুড়া  সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 45, 5);
INSERT INTO public.upazila VALUES (331, 'DHUNAT', 'ধুনট', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 45, 5);
INSERT INTO public.upazila VALUES (332, 'DHUPCHANCHIA', 'দুপচাচিঁয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 45, 5);
INSERT INTO public.upazila VALUES (333, 'GABTALI', 'গাবতলি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 45, 5);
INSERT INTO public.upazila VALUES (334, 'KAHALOO', 'কাহালু', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 45, 5);
INSERT INTO public.upazila VALUES (335, 'NANDIGRAM', 'নন্দিগ্রাম', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 45, 5);
INSERT INTO public.upazila VALUES (336, 'SARIAKANDI', 'সারিয়াকান্দি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 45, 5);
INSERT INTO public.upazila VALUES (337, 'SHAJAHANPUR', 'শাজাহানপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 45, 5);
INSERT INTO public.upazila VALUES (338, 'SHERPUR', 'শেরপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 45, 5);
INSERT INTO public.upazila VALUES (339, 'SHIBGANJ', 'শিবগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 45, 5);
INSERT INTO public.upazila VALUES (340, 'SONATOLA', 'সোনাতলা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 45, 5);
INSERT INTO public.upazila VALUES (341, 'AKKELPUR', 'আক্কেলপুর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 46, 5);
INSERT INTO public.upazila VALUES (342, 'JOYPURHAT SADAR', ' জয়পুরহাট সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 46, 5);
INSERT INTO public.upazila VALUES (343, 'KALAI', 'কালাই', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 46, 5);
INSERT INTO public.upazila VALUES (344, 'ATRAI', 'আত্রাই', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 47, 5);
INSERT INTO public.upazila VALUES (345, 'DHAMOIRHAT', 'ধামইরহাট', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 47, 5);
INSERT INTO public.upazila VALUES (346, 'MANDA', 'মান্দা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 47, 5);
INSERT INTO public.upazila VALUES (347, 'MAHADEBPUR', 'মহাদেবপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 47, 5);
INSERT INTO public.upazila VALUES (348, 'NAOGAON SADAR', 'নওগাঁ সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 47, 5);
INSERT INTO public.upazila VALUES (349, 'NIAMATPUR', 'নিয়ামতপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 47, 5);
INSERT INTO public.upazila VALUES (350, 'PATNITALA', 'পত্নীতলা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 47, 5);
INSERT INTO public.upazila VALUES (351, 'RANINAGAR', 'রাণীনগর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 47, 5);
INSERT INTO public.upazila VALUES (352, 'SAPAHAR', 'সাপাহার', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 47, 5);
INSERT INTO public.upazila VALUES (353, 'BODOLGACHI', 'বদলগাছী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 47, 5);
INSERT INTO public.upazila VALUES (354, 'PORSHA', 'পোরশা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 47, 5);
INSERT INTO public.upazila VALUES (355, 'BAGATIPARA', 'বাগাতিপাড়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 48, 5);
INSERT INTO public.upazila VALUES (356, 'BARAIGRAM', 'বড়াইগ্রাম', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 48, 5);
INSERT INTO public.upazila VALUES (357, 'GURUDASPUR', 'গুরুদাসপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 48, 5);
INSERT INTO public.upazila VALUES (358, 'LALPUR', 'লালপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 48, 5);
INSERT INTO public.upazila VALUES (359, 'NATORE SADAR', 'নাটোর সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 48, 5);
INSERT INTO public.upazila VALUES (360, 'SINGRA', 'সিংড়া ', NULL, NULL, '2023-03-20 03:16:50.970016', '2017-09-10 09:28:30', 48, 5);
INSERT INTO public.upazila VALUES (361, 'BHOLAHAT', 'ভোলাহাট', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 49, 5);
INSERT INTO public.upazila VALUES (362, 'GOMASTAPUR', 'গোমস্তাপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 49, 5);
INSERT INTO public.upazila VALUES (363, 'NACHOLE', 'নাচোল', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 49, 5);
INSERT INTO public.upazila VALUES (364, 'CHAPAI NABABGANJ SADAR', 'চাঁপাই নাবাবগঞ্জ সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 49, 5);
INSERT INTO public.upazila VALUES (365, 'SHIBGANJ', 'শিবগঞ্জ ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 49, 5);
INSERT INTO public.upazila VALUES (366, 'ATGHARIA', 'আটঘারিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 50, 5);
INSERT INTO public.upazila VALUES (367, 'BERA', 'বেড়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 50, 5);
INSERT INTO public.upazila VALUES (368, 'BHANGURA', 'ভাঙ্গুরা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 50, 5);
INSERT INTO public.upazila VALUES (369, 'CHATMOHAR', 'চাটমোহর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 50, 5);
INSERT INTO public.upazila VALUES (370, 'FARIDPUR', 'ফরিদপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 50, 5);
INSERT INTO public.upazila VALUES (371, 'ISHWARDI', 'ঈশ্বরদী ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 50, 5);
INSERT INTO public.upazila VALUES (372, 'PABNA SADAR', 'পাবনা সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 50, 5);
INSERT INTO public.upazila VALUES (373, 'SANTHIA', 'সাঁথিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 50, 5);
INSERT INTO public.upazila VALUES (374, 'SUJANAGAR', 'সুজানগর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 50, 5);
INSERT INTO public.upazila VALUES (375, 'BAGHA', 'বাঘা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 51, 5);
INSERT INTO public.upazila VALUES (376, 'BAGHMARA', 'বাগমারা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 51, 5);
INSERT INTO public.upazila VALUES (377, 'CHARGHAT', 'চারঘাট ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 51, 5);
INSERT INTO public.upazila VALUES (378, 'DURGAPUR', 'দুর্গাপুর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 51, 5);
INSERT INTO public.upazila VALUES (379, 'GODAGARI', 'গোদাগাড়ী ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 51, 5);
INSERT INTO public.upazila VALUES (380, 'MOHANPUR', 'মোহনপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 51, 5);
INSERT INTO public.upazila VALUES (381, 'PABA', 'পবা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 51, 5);
INSERT INTO public.upazila VALUES (382, 'PUTHIA', 'পুথিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 51, 5);
INSERT INTO public.upazila VALUES (383, 'TANORE', 'তানোর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 51, 5);
INSERT INTO public.upazila VALUES (384, 'BELKUCHI', 'বেলকুচি ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 52, 5);
INSERT INTO public.upazila VALUES (385, 'CHAUHALI', 'চৌহালি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 52, 5);
INSERT INTO public.upazila VALUES (386, 'KAMARKHANDA', 'কামারখন্দ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 52, 5);
INSERT INTO public.upazila VALUES (387, 'KAZIPUR', 'কাজিপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 52, 5);
INSERT INTO public.upazila VALUES (388, 'ROYGANJ', 'রাইগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 52, 5);
INSERT INTO public.upazila VALUES (389, 'SHAHJADPUR', 'শাহজাদপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 52, 5);
INSERT INTO public.upazila VALUES (390, 'SIRAJGANJ SADAR', 'সিরাজগঞ্জ সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 52, 5);
INSERT INTO public.upazila VALUES (391, 'TARASH', 'তারাশ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 52, 5);
INSERT INTO public.upazila VALUES (392, 'ULLAH PARA', 'উল্লাহ পারা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 52, 5);
INSERT INTO public.upazila VALUES (393, 'BIRAMPUR', 'বিরামপুর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 53, 6);
INSERT INTO public.upazila VALUES (394, 'BIRGANJ', 'বীরগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 53, 6);
INSERT INTO public.upazila VALUES (395, 'BIRAL', 'বিরল', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 53, 6);
INSERT INTO public.upazila VALUES (396, 'BOCHAGANJ', 'বোচাগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 53, 6);
INSERT INTO public.upazila VALUES (397, 'CHIRIRBANDAR', 'চিরিরবন্দর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 53, 6);
INSERT INTO public.upazila VALUES (398, 'FULBARI', 'ফুলবাড়ী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 53, 6);
INSERT INTO public.upazila VALUES (399, 'GHORAGHAT', 'ঘোড়াঘাট', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 53, 6);
INSERT INTO public.upazila VALUES (400, 'HAKIMPUR', 'হাকিমপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 53, 6);
INSERT INTO public.upazila VALUES (401, 'KAHAROLE', 'কাহারোল', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 53, 6);
INSERT INTO public.upazila VALUES (402, 'KHANSAMA', 'খানসামা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 53, 6);
INSERT INTO public.upazila VALUES (403, 'NAWABGANJ', 'নবাবগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 53, 6);
INSERT INTO public.upazila VALUES (404, 'PARBATIPUR', 'পার্বতীপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 53, 6);
INSERT INTO public.upazila VALUES (405, 'DINAJPUR SADAR', 'দিনাজপুর সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 53, 6);
INSERT INTO public.upazila VALUES (406, 'FULCHHARI', 'ফুলছড়ি', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 54, 6);
INSERT INTO public.upazila VALUES (407, 'GAIBANDHA SADAR', 'গাইবান্ধা সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 54, 6);
INSERT INTO public.upazila VALUES (408, 'GOBINDAGANJ', 'গোবিন্দগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 54, 6);
INSERT INTO public.upazila VALUES (409, 'PALASHBARI', 'পলাশবাড়ী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 54, 6);
INSERT INTO public.upazila VALUES (410, 'SADULLAPUR', 'সাদুল্লাপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 54, 6);
INSERT INTO public.upazila VALUES (411, 'SAGHATA', 'সাঘাটা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 54, 6);
INSERT INTO public.upazila VALUES (412, 'SUNDARGANJ', 'সুন্দরগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 54, 6);
INSERT INTO public.upazila VALUES (413, 'BHURUNGAMARI', 'ভুরুঙ্গামারী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 55, 6);
INSERT INTO public.upazila VALUES (414, 'CHAR RAJIBPUR', 'চর রাজিবপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 55, 6);
INSERT INTO public.upazila VALUES (415, 'CHILMARI', 'চিলমারী ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 55, 6);
INSERT INTO public.upazila VALUES (416, 'PHULBARI', 'ফুলবাড়ী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 55, 6);
INSERT INTO public.upazila VALUES (417, 'KURIGRAM SADAR', 'কুড়িগ্রাম সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 55, 6);
INSERT INTO public.upazila VALUES (418, 'NAGESHWARI', 'নাগেশ্বরী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 55, 6);
INSERT INTO public.upazila VALUES (419, 'RAJARHAT', 'রাজারহাট', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 55, 6);
INSERT INTO public.upazila VALUES (420, 'RAUMARI', 'রৌমারী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 55, 6);
INSERT INTO public.upazila VALUES (421, 'ULIPUR', 'উলিপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 55, 6);
INSERT INTO public.upazila VALUES (422, 'ADITMARI', 'আদিতমারী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 56, 6);
INSERT INTO public.upazila VALUES (423, 'HATIBANDHA', 'হাতীবান্ধা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 56, 6);
INSERT INTO public.upazila VALUES (424, 'KALIGANJ', 'কালীগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 56, 6);
INSERT INTO public.upazila VALUES (425, 'LALMONIRHAT SADAR', 'লালমনিরহাট সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 56, 6);
INSERT INTO public.upazila VALUES (426, 'PATGRAM', 'পাটগ্রাম', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 56, 6);
INSERT INTO public.upazila VALUES (427, 'DOMAR UPAZILA', 'ডোমার উপজেলা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 57, 6);
INSERT INTO public.upazila VALUES (428, 'JALDHAKA', 'জলঢাকা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 57, 6);
INSERT INTO public.upazila VALUES (429, 'KISHOREGANJ', 'কিশোরগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 57, 6);
INSERT INTO public.upazila VALUES (430, 'NILPHAMARI SADAR', 'নীলফামারী সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 57, 6);
INSERT INTO public.upazila VALUES (431, 'SAIDPUR UPAZILA', 'সৈয়দপুর উপজেলা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 57, 6);
INSERT INTO public.upazila VALUES (432, 'DIMLA', 'ডিমলা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 57, 6);
INSERT INTO public.upazila VALUES (433, 'ATWARI', 'আটোয়ারী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 58, 6);
INSERT INTO public.upazila VALUES (434, 'BODA', 'বোদা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 58, 6);
INSERT INTO public.upazila VALUES (435, 'DEBIGANJ', 'দেবীগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 58, 6);
INSERT INTO public.upazila VALUES (436, 'PANCHAGARH SADAR', 'পঞ্চগড় সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 58, 6);
INSERT INTO public.upazila VALUES (437, 'TENTULIA', 'তেতুলিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 58, 6);
INSERT INTO public.upazila VALUES (438, 'BADARGANJ', 'বদরগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 59, 6);
INSERT INTO public.upazila VALUES (439, 'KAUNIA', 'কাউনিয়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 59, 6);
INSERT INTO public.upazila VALUES (440, 'RANGPUR SADAR', 'রংপুর সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 59, 6);
INSERT INTO public.upazila VALUES (441, 'MITHA PUKUR', 'মিঠাপুকুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 59, 6);
INSERT INTO public.upazila VALUES (442, 'PIRGACHHA', 'পীরগাছা', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 59, 6);
INSERT INTO public.upazila VALUES (443, 'PIRGANJ', 'পীরগঞ্জ ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 59, 6);
INSERT INTO public.upazila VALUES (444, 'TARAGANJ', 'তারাগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 59, 6);
INSERT INTO public.upazila VALUES (445, 'GANGAHORA', 'গঙ্গাচড়া', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 59, 6);
INSERT INTO public.upazila VALUES (446, 'BALIADANGI', 'বালিয়াডাঙ্গী', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 60, 6);
INSERT INTO public.upazila VALUES (447, 'HARIPUR', 'হরিপুর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 60, 6);
INSERT INTO public.upazila VALUES (448, 'PIRGANJ', 'পীরগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 60, 6);
INSERT INTO public.upazila VALUES (449, 'RANISANKAIL', 'রাণীশংকৈল', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 60, 6);
INSERT INTO public.upazila VALUES (450, 'THAKURGAON SADAR', 'ঠাকুরগাঁও সদর', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 60, 6);
INSERT INTO public.upazila VALUES (451, 'AJMIRIGANJ', 'আজমিরীগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 61, 7);
INSERT INTO public.upazila VALUES (452, 'BAHUBAL', 'বাহুবল ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 61, 7);
INSERT INTO public.upazila VALUES (453, 'BANIACHONG', 'বানিয়াচং ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 61, 7);
INSERT INTO public.upazila VALUES (454, 'CHUNARUGHAT', 'চুনারুঘাট ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 61, 7);
INSERT INTO public.upazila VALUES (455, 'HABIGANJ SADAR', 'হবিগঞ্জ সদর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 61, 7);
INSERT INTO public.upazila VALUES (456, 'LAKHAI', 'লাখাই ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 61, 7);
INSERT INTO public.upazila VALUES (457, 'MADHABPUR', 'মাধবপুর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 61, 7);
INSERT INTO public.upazila VALUES (458, 'NABIGANJ', 'নবীগঞ্জ ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 61, 7);
INSERT INTO public.upazila VALUES (459, 'BARLEKHA', 'বড়লেখা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 62, 7);
INSERT INTO public.upazila VALUES (460, 'JURI', 'জুড়ী ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 62, 7);
INSERT INTO public.upazila VALUES (461, 'KAMALGANJ', 'কমলগঞ্জ ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 62, 7);
INSERT INTO public.upazila VALUES (462, 'KULAURA', 'কুলাউড়া ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 62, 7);
INSERT INTO public.upazila VALUES (463, 'MAULVIBAZAR SADAR', 'মৌলভীবাজার সদর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 62, 7);
INSERT INTO public.upazila VALUES (464, 'RAJNAGAR', 'রাজনগর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 62, 7);
INSERT INTO public.upazila VALUES (465, 'SREEMANGAL', 'শ্রীমঙ্গল', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 62, 7);
INSERT INTO public.upazila VALUES (466, 'BISHWAMBARPUR', 'বিশ্বম্ভরপুর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 63, 7);
INSERT INTO public.upazila VALUES (467, 'CHHATAK', 'ছাতক ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 63, 7);
INSERT INTO public.upazila VALUES (468, 'DERAI', 'দিরাই ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 63, 7);
INSERT INTO public.upazila VALUES (469, 'DHARAMPASHA', 'ধর্মপাশা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 63, 7);
INSERT INTO public.upazila VALUES (470, 'DOWARABAZAR', 'দোয়ারাবাজার ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 63, 7);
INSERT INTO public.upazila VALUES (471, 'JAGANNATHPUR', 'জগন্নাথপুর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 63, 7);
INSERT INTO public.upazila VALUES (472, 'JAMALGANJ', 'জামালগঞ্জ ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 63, 7);
INSERT INTO public.upazila VALUES (473, 'SULLA', 'শাল্লা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 63, 7);
INSERT INTO public.upazila VALUES (474, 'SUNAMGANJ SADAR', 'সুনামগঞ্জ সদর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 63, 7);
INSERT INTO public.upazila VALUES (475, 'TAHIRPUR', 'তাহিরপুর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 63, 7);
INSERT INTO public.upazila VALUES (476, 'DAKSHIN  SUNAMGANJ', 'দক্ষিণ  সুনামগঞ্জ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 63, 7);
INSERT INTO public.upazila VALUES (477, 'BALAGANJ', 'বালাগঞ্জ ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 64, 7);
INSERT INTO public.upazila VALUES (478, 'BEANI BAZAR', 'বিয়ানীবাজার ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 64, 7);
INSERT INTO public.upazila VALUES (479, 'BISHWANATH', 'বিশ্বনাথ ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 64, 7);
INSERT INTO public.upazila VALUES (480, 'COMPANIGANJ', 'কোম্পানীগঞ্জ ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 64, 7);
INSERT INTO public.upazila VALUES (481, 'DAKSHIN SURMA', 'দক্ষিণ সুরমা ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 64, 7);
INSERT INTO public.upazila VALUES (482, 'FENCHUGANJ', 'ফেঞ্চুগঞ্জ ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 64, 7);
INSERT INTO public.upazila VALUES (483, 'GOLAPGANJ', 'গোলাপগঞ্জ ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 64, 7);
INSERT INTO public.upazila VALUES (484, 'GOWAINGHAT', 'গোয়াইনঘাট ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 64, 7);
INSERT INTO public.upazila VALUES (485, 'JAINTIAPUR', 'জৈন্তাপুর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 64, 7);
INSERT INTO public.upazila VALUES (486, 'KANAIGHAT', 'কানাইঘাট ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 64, 7);
INSERT INTO public.upazila VALUES (487, 'SYLHET SADAR', 'সিলেট সদর ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 64, 7);
INSERT INTO public.upazila VALUES (488, 'ZAKIGANJ', 'জকিগঞ্জ ', NULL, NULL, '2023-03-20 03:16:50.970016', '2023-03-20 03:16:50.970016', 64, 7);
INSERT INTO public.upazila VALUES (489, 'Bagerhat Sadar', 'বাগেরহাট সদর', NULL, NULL, '2016-07-12 09:52:14', '2016-07-12 09:52:14', 35, 4);
INSERT INTO public.upazila VALUES (490, 'Guimara', 'গুইমারা', NULL, NULL, '2017-04-24 04:37:10', '2017-04-24 04:37:10', 14, 2);
INSERT INTO public.upazila VALUES (491, 'charfassion', 'চরফ্যাশন', NULL, NULL, '2017-06-08 07:25:38', '2017-06-08 07:25:38', 3, 1);
INSERT INTO public.upazila VALUES (492, 'Osmaninagar', 'ওসমানীনগর', NULL, NULL, '2017-06-20 09:34:12', '2017-06-20 09:34:12', 64, 7);
INSERT INTO public.upazila VALUES (493, 'Khetlal', 'ক্ষেতলাল', NULL, NULL, '2017-08-20 05:29:08', '2017-08-20 05:29:08', 46, 5);
INSERT INTO public.upazila VALUES (494, 'Panchbibi', 'পাঁচবিবি', NULL, NULL, '2017-08-20 05:30:06', '2017-08-20 05:30:06', 46, 5);
INSERT INTO public.upazila VALUES (495, 'Naldanga ', 'নলডাঙ্গা ', NULL, NULL, '2017-09-10 09:23:57', '2017-09-10 09:23:57', 48, 5);
INSERT INTO public.upazila VALUES (496, 'KABIRHAT', 'কবিরহাট', NULL, NULL, '2021-01-04 08:02:56', '2021-01-04 08:02:56', 16, 2);
INSERT INTO public.upazila VALUES (497, 'GALACHIPA', 'গলাচিপা', NULL, NULL, '2021-01-05 04:01:11', '2021-01-05 04:01:11', 5, 1);


--
-- TOC entry 3442 (class 0 OID 17247)
-- Dependencies: 223
-- Data for Name: ward; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3446 (class 0 OID 17269)
-- Dependencies: 227
-- Data for Name: zone; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 214
-- Name: district_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.district_id_seq', 1, false);


--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 216
-- Name: division_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.division_id_seq', 1, false);


--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 230
-- Name: microarea_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.microarea_id_seq', 1, false);


--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 224
-- Name: municipality_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.municipality_id_seq', 1, false);


--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 218
-- Name: thana_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.thana_id_seq', 1, false);


--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 228
-- Name: union_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.union_id_seq', 1, false);


--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 220
-- Name: upazila_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upazila_id_seq', 1, false);


--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 222
-- Name: ward_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ward_id_seq', 1, false);


--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 226
-- Name: zone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.zone_id_seq', 1, false);


--
-- TOC entry 3281 (class 2606 OID 17267)
-- Name: municipality PK_281ad341f20df7c41b83a182e2a; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipality
    ADD CONSTRAINT "PK_281ad341f20df7c41b83a182e2a" PRIMARY KEY (id);


--
-- TOC entry 3285 (class 2606 OID 17289)
-- Name: union PK_2f696669d19c0c844045b08a35e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."union"
    ADD CONSTRAINT "PK_2f696669d19c0c844045b08a35e" PRIMARY KEY (id);


--
-- TOC entry 3287 (class 2606 OID 17300)
-- Name: microarea PK_31926d99d431a2d31288e9e6409; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.microarea
    ADD CONSTRAINT "PK_31926d99d431a2d31288e9e6409" PRIMARY KEY (id);


--
-- TOC entry 3275 (class 2606 OID 17234)
-- Name: thana PK_69f2febd2325fb718e289629f27; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thana
    ADD CONSTRAINT "PK_69f2febd2325fb718e289629f27" PRIMARY KEY (id);


--
-- TOC entry 3273 (class 2606 OID 17223)
-- Name: division PK_b6f0d207e38106dbddabab3a078; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.division
    ADD CONSTRAINT "PK_b6f0d207e38106dbddabab3a078" PRIMARY KEY (id);


--
-- TOC entry 3283 (class 2606 OID 17278)
-- Name: zone PK_bd3989e5a3c3fb5ed546dfaf832; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zone
    ADD CONSTRAINT "PK_bd3989e5a3c3fb5ed546dfaf832" PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 17245)
-- Name: upazila PK_c62ea48a619902a381b772cb459; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upazila
    ADD CONSTRAINT "PK_c62ea48a619902a381b772cb459" PRIMARY KEY (id);


--
-- TOC entry 3279 (class 2606 OID 17256)
-- Name: ward PK_e6725fa4a50e449c4352d2230e1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ward
    ADD CONSTRAINT "PK_e6725fa4a50e449c4352d2230e1" PRIMARY KEY (id);


--
-- TOC entry 3271 (class 2606 OID 17210)
-- Name: district PK_ee5cb6fd5223164bb87ea693f1e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.district
    ADD CONSTRAINT "PK_ee5cb6fd5223164bb87ea693f1e" PRIMARY KEY (id);


--
-- TOC entry 3289 (class 2606 OID 17311)
-- Name: upazila FK_20ea6a33c001bc7618d09cfbeab; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upazila
    ADD CONSTRAINT "FK_20ea6a33c001bc7618d09cfbeab" FOREIGN KEY (division_id) REFERENCES public.division(id) ON DELETE CASCADE;


--
-- TOC entry 3288 (class 2606 OID 17301)
-- Name: district FK_3212c7b175a6bb4bcf82ff2b899; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.district
    ADD CONSTRAINT "FK_3212c7b175a6bb4bcf82ff2b899" FOREIGN KEY (division_id) REFERENCES public.division(id) ON DELETE CASCADE;


--
-- TOC entry 3290 (class 2606 OID 17306)
-- Name: upazila FK_7465637ecaf8f909ee087ffdc1d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upazila
    ADD CONSTRAINT "FK_7465637ecaf8f909ee087ffdc1d" FOREIGN KEY (district_id) REFERENCES public.district(id) ON DELETE CASCADE;


-- Completed on 2023-04-10 00:17:17 +06

--
-- PostgreSQL database dump complete
--

