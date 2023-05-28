
# The Bike Haven (Tableau Project)

Chris Who is the sales manager of The Bike Haven, He was determined to take the company to
new heights. When he joined the company, He knew that the quality of the products was
exceptional, but the sales figures didn't reflect that. So, He set out to revamp the sales strategy, introduce new products, and make some much-needed changes to the company's marketing and branding.Recently, Chris realized that our sales reports needed a revamp. Our existing reports were static and did not provide much insight into our sales performance. He knew that we needed to move to visual dashboards to get a better understanding of our sales performance. This is the reason he hired me as a Tableau analyst.

Our Aim is to  enhance our online sales reports by transitioning from static reports to
interactive dashboards/stories.
## How to use the project

### NOTE:

You may have to edit the file paths where it is "$$PATH$$" and replace it with the path to the directory containing the data files

## Project Highlights

![image](https://github.com/zeul22/Bike-Haven-Tableau/assets/62982824/7e759599-4bed-499e-8e39-a94f096f9919)
![image](https://github.com/zeul22/Bike-Haven-Tableau/assets/62982824/c6605399-7a80-4e31-9e2c-32b4b230ba4c)
![image](https://github.com/zeul22/Bike-Haven-Tableau/assets/62982824/585e9ccc-33d7-4944-ad09-095618677287)
![image](https://github.com/zeul22/Bike-Haven-Tableau/assets/62982824/482a13a4-2bdc-450d-b9ba-de8b6683b53a)


### Codes

#### Creating Tables

```bash

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

CREATE TABLE public.productsubcategory (
    productsubcategorykey integer NOT NULL,
    productsubcategoryalternatekey integer,
    englishproductsubcategoryname character varying NOT NULL,
    productcategorykey integer
);


ALTER TABLE public.customer OWNER TO postgres;
ALTER TABLE public.date OWNER TO postgres;
ALTER TABLE public.geography OWNER TO postgres;
ALTER TABLE public.internetsales OWNER TO postgres;
ALTER TABLE public.product OWNER TO postgres;
ALTER TABLE public.productcategory OWNER TO postgres;
ALTER TABLE public.productsubcategory OWNER TO postgres;
```

### Importing the Data

```bash
COPY public.customer (customerkey, geographykey, customeralternatekey, title, firstname, middlename, lastname, namestyle, birthdate, maritalstatus, suffix, gender, emailaddress, yearlyincome, totalchildren, numberchildrenathome, englisheducation, spanisheducation, frencheducation, englishoccupation, spanishoccupation, frenchoccupation, houseownerflag, numbercarsowned, addressline1, addressline2, phone, datefirstpurchase, commutedistance) FROM stdin;
\.
COPY public.customer (customerkey, geographykey, customeralternatekey, title, firstname, middlename, lastname, namestyle, birthdate, maritalstatus, suffix, gender, emailaddress, yearlyincome, totalchildren, numberchildrenathome, englisheducation, spanisheducation, frencheducation, englishoccupation, spanishoccupation, frenchoccupation, houseownerflag, numbercarsowned, addressline1, addressline2, phone, datefirstpurchase, commutedistance) FROM '$$PATH$$/3338.dat';

COPY public.date (datekey, fulldatealternatekey, daynumberofweek, englishdaynameofweek, spanishdaynameofweek, frenchdaynameofweek, daynumberofmonth, daynumberofyear, weeknumberofyear, englishmonthname, spanishmonthname, frenchmonthname, monthnumberofyear, calendarquarter, calendaryear, calendarsemester, fiscalquarter, fiscalyear, fiscalsemester) FROM stdin;
\.
COPY public.date (datekey, fulldatealternatekey, daynumberofweek, englishdaynameofweek, spanishdaynameofweek, frenchdaynameofweek, daynumberofmonth, daynumberofyear, weeknumberofyear, englishmonthname, spanishmonthname, frenchmonthname, monthnumberofyear, calendarquarter, calendaryear, calendarsemester, fiscalquarter, fiscalyear, fiscalsemester) FROM '$$PATH$$/3339.dat';

COPY public.geography (geographykey, city, stateprovincecode, stateprovincename, countryregioncode, englishcountryregionname, spanishcountryregionname, frenchcountryregionname, postalcode, salesterritorykey, ipaddresslocator) FROM stdin;
\.
COPY public.geography (geographykey, city, stateprovincecode, stateprovincename, countryregioncode, englishcountryregionname, spanishcountryregionname, frenchcountryregionname, postalcode, salesterritorykey, ipaddresslocator) FROM '$$PATH$$/3340.dat';

COPY public.internetsales (productkey, orderdatekey, duedatekey, shipdatekey, customerkey, promotionkey, currencykey, salesordernumber, totalproductcost, salesamount, orderdate, duedate, shipdate) FROM stdin;
\.
COPY public.internetsales (productkey, orderdatekey, duedatekey, shipdatekey, customerkey, promotionkey, currencykey, salesordernumber, totalproductcost, salesamount, orderdate, duedate, shipdate) FROM '$$PATH$$/3344.dat';

COPY public.product (productkey, productalternatekey, productsubcategorykey, englishproductname, color, safetystocklevel, reorderpoint, size, daystomanufacture, productline, modelname, englishdescription, startdate, enddate, status) FROM stdin;
\.
COPY public.product (productkey, productalternatekey, productsubcategorykey, englishproductname, color, safetystocklevel, reorderpoint, size, daystomanufacture, productline, modelname, englishdescription, startdate, enddate, status) FROM '$$PATH$$/3343.dat';

COPY public.productcategory (productcategorykey, productcategoryalternatekey, englishproductcategoryname) FROM stdin;
\.
COPY public.productcategory (productcategorykey, productcategoryalternatekey, englishproductcategoryname) FROM '$$PATH$$/3342.dat';

COPY public.productsubcategory (productsubcategorykey, productsubcategoryalternatekey, englishproductsubcategoryname, productcategorykey) FROM stdin;
\.
COPY public.productsubcategory (productsubcategorykey, productsubcategoryalternatekey, englishproductsubcategoryname, productcategorykey) FROM '$$PATH$$/3341.dat';


```

You are good to go to run other queries or even modify them according to your needs!  



## Badges

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)


## Feedback

If you have any feedback, please reach out to me at anandrahul044@gmail.com

