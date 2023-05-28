--
-- NOTE:
--
-- File paths need to be edited.
-- Replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--


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

DROP DATABASE "Awdatabase";
--
-- Name: Awdatabase; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Awdatabase" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';


ALTER DATABASE "Awdatabase" OWNER TO postgres;

\connect "Awdatabase"

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
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    customerkey smallint,
    geographykey smallint,
    customeralternatekey character varying,
    title character varying,
    firstname character varying,
    middlename character varying,
    lastname character varying,
    namestyle integer,
    birthdate date,
    maritalstatus character varying,
    suffix character varying,
    gender character varying,
    emailaddress character varying,
    yearlyincome numeric,
    totalchildren integer,
    numberchildrenathome integer,
    englisheducation character varying,
    spanisheducation character varying,
    frencheducation character varying,
    englishoccupation character varying,
    spanishoccupation character varying,
    frenchoccupation character varying,
    houseownerflag bit(1),
    numbercarsowned integer,
    addressline1 character varying,
    addressline2 character varying,
    phone character varying,
    datefirstpurchase date,
    commutedistance character varying
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- Name: date; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.date (
    datekey integer NOT NULL,
    fulldatealternatekey date NOT NULL,
    daynumberofweek integer NOT NULL,
    englishdaynameofweek character varying NOT NULL,
    spanishdaynameofweek character varying NOT NULL,
    frenchdaynameofweek character varying NOT NULL,
    daynumberofmonth integer NOT NULL,
    daynumberofyear smallint NOT NULL,
    weeknumberofyear integer NOT NULL,
    englishmonthname character varying NOT NULL,
    spanishmonthname character varying NOT NULL,
    frenchmonthname character varying NOT NULL,
    monthnumberofyear integer NOT NULL,
    calendarquarter integer NOT NULL,
    calendaryear smallint NOT NULL,
    calendarsemester integer NOT NULL,
    fiscalquarter integer NOT NULL,
    fiscalyear smallint NOT NULL,
    fiscalsemester integer NOT NULL
);


ALTER TABLE public.date OWNER TO postgres;

--
-- Name: geography; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.geography (
    geographykey integer NOT NULL,
    city character varying,
    stateprovincecode character varying,
    stateprovincename character varying,
    countryregioncode character varying,
    englishcountryregionname character varying,
    spanishcountryregionname character varying,
    frenchcountryregionname character varying,
    postalcode character varying,
    salesterritorykey integer,
    ipaddresslocator character varying
);


ALTER TABLE public.geography OWNER TO postgres;

--
-- Name: internetsales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internetsales (
    productkey integer NOT NULL,
    orderdatekey character varying NOT NULL,
    duedatekey integer NOT NULL,
    shipdatekey integer NOT NULL,
    customerkey integer NOT NULL,
    promotionkey integer NOT NULL,
    currencykey integer NOT NULL,
    salesordernumber character varying NOT NULL,
    totalproductcost money NOT NULL,
    salesamount numeric NOT NULL,
    orderdate character varying,
    duedate character varying,
    shipdate character varying
);


ALTER TABLE public.internetsales OWNER TO postgres;

--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    productkey integer NOT NULL,
    productalternatekey character varying,
    productsubcategorykey integer,
    englishproductname character varying NOT NULL,
    color character varying NOT NULL,
    safetystocklevel integer,
    reorderpoint integer,
    size character varying,
    daystomanufacture integer,
    productline character varying,
    modelname character varying,
    englishdescription character varying,
    startdate character varying,
    enddate character varying,
    status character varying
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: productcategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productcategory (
    productcategorykey integer NOT NULL,
    productcategoryalternatekey integer,
    englishproductcategoryname character varying NOT NULL
);


ALTER TABLE public.productcategory OWNER TO postgres;

--
-- Name: productsubcategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productsubcategory (
    productsubcategorykey integer NOT NULL,
    productsubcategoryalternatekey integer,
    englishproductsubcategoryname character varying NOT NULL,
    productcategorykey integer
);


ALTER TABLE public.productsubcategory OWNER TO postgres;

--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (customerkey, geographykey, customeralternatekey, title, firstname, middlename, lastname, namestyle, birthdate, maritalstatus, suffix, gender, emailaddress, yearlyincome, totalchildren, numberchildrenathome, englisheducation, spanisheducation, frencheducation, englishoccupation, spanishoccupation, frenchoccupation, houseownerflag, numbercarsowned, addressline1, addressline2, phone, datefirstpurchase, commutedistance) FROM stdin;
\.
COPY public.customer (customerkey, geographykey, customeralternatekey, title, firstname, middlename, lastname, namestyle, birthdate, maritalstatus, suffix, gender, emailaddress, yearlyincome, totalchildren, numberchildrenathome, englisheducation, spanisheducation, frencheducation, englishoccupation, spanishoccupation, frenchoccupation, houseownerflag, numbercarsowned, addressline1, addressline2, phone, datefirstpurchase, commutedistance) FROM '$$PATH$$/3338.dat';

--
-- Data for Name: date; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.date (datekey, fulldatealternatekey, daynumberofweek, englishdaynameofweek, spanishdaynameofweek, frenchdaynameofweek, daynumberofmonth, daynumberofyear, weeknumberofyear, englishmonthname, spanishmonthname, frenchmonthname, monthnumberofyear, calendarquarter, calendaryear, calendarsemester, fiscalquarter, fiscalyear, fiscalsemester) FROM stdin;
\.
COPY public.date (datekey, fulldatealternatekey, daynumberofweek, englishdaynameofweek, spanishdaynameofweek, frenchdaynameofweek, daynumberofmonth, daynumberofyear, weeknumberofyear, englishmonthname, spanishmonthname, frenchmonthname, monthnumberofyear, calendarquarter, calendaryear, calendarsemester, fiscalquarter, fiscalyear, fiscalsemester) FROM '$$PATH$$/3339.dat';

--
-- Data for Name: geography; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.geography (geographykey, city, stateprovincecode, stateprovincename, countryregioncode, englishcountryregionname, spanishcountryregionname, frenchcountryregionname, postalcode, salesterritorykey, ipaddresslocator) FROM stdin;
\.
COPY public.geography (geographykey, city, stateprovincecode, stateprovincename, countryregioncode, englishcountryregionname, spanishcountryregionname, frenchcountryregionname, postalcode, salesterritorykey, ipaddresslocator) FROM '$$PATH$$/3340.dat';

--
-- Data for Name: internetsales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.internetsales (productkey, orderdatekey, duedatekey, shipdatekey, customerkey, promotionkey, currencykey, salesordernumber, totalproductcost, salesamount, orderdate, duedate, shipdate) FROM stdin;
\.
COPY public.internetsales (productkey, orderdatekey, duedatekey, shipdatekey, customerkey, promotionkey, currencykey, salesordernumber, totalproductcost, salesamount, orderdate, duedate, shipdate) FROM '$$PATH$$/3344.dat';

--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (productkey, productalternatekey, productsubcategorykey, englishproductname, color, safetystocklevel, reorderpoint, size, daystomanufacture, productline, modelname, englishdescription, startdate, enddate, status) FROM stdin;
\.
COPY public.product (productkey, productalternatekey, productsubcategorykey, englishproductname, color, safetystocklevel, reorderpoint, size, daystomanufacture, productline, modelname, englishdescription, startdate, enddate, status) FROM '$$PATH$$/3343.dat';

--
-- Data for Name: productcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productcategory (productcategorykey, productcategoryalternatekey, englishproductcategoryname) FROM stdin;
\.
COPY public.productcategory (productcategorykey, productcategoryalternatekey, englishproductcategoryname) FROM '$$PATH$$/3342.dat';

--
-- Data for Name: productsubcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productsubcategory (productsubcategorykey, productsubcategoryalternatekey, englishproductsubcategoryname, productcategorykey) FROM stdin;
\.
COPY public.productsubcategory (productsubcategorykey, productsubcategoryalternatekey, englishproductsubcategoryname, productcategorykey) FROM '$$PATH$$/3341.dat';

--
-- PostgreSQL database dump complete
--

