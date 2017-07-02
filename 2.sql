
\connect - hms

SET search_path = public, pg_catalog;


CREATE TABLE add_users (
    userid character varying,
    "password" character varying,
    roles character varying
);


CREATE TABLE role_service (
    roleid integer NOT NULL,
    serviceid integer NOT NULL
);



CREATE TABLE user_roles (
    roles character varying NOT NULL,
    roleid integer NOT NULL
);


CREATE TABLE mapmonthitem (
    hostelname character varying NOT NULL,
    "month" character varying NOT NULL,
    "year" integer NOT NULL,
    itemname character varying,
    itemnumber integer NOT NULL
);


CREATE TABLE school (
    hostelname character varying NOT NULL,
    schoolname character varying NOT NULL,
    "location" character varying NOT NULL,
    first integer,
    "second" integer,
    third integer,
    fourth integer,
    fifth integer,
    sixth integer,
    seventh integer,
    eighth integer,
    ninth integer,
    tenth integer,
    total integer
);



CREATE TABLE "month" (
    monthnumber integer NOT NULL,
    monthname character varying
);


CREATE TABLE hosteldate (
    hostelname character varying NOT NULL,
    "year" integer NOT NULL,
    "month" character varying NOT NULL,
    monthnumber integer NOT NULL
);

CREATE TABLE hostelattendance (
    hostelname character varying NOT NULL,
    "month" character varying NOT NULL,
    "year" integer NOT NULL,
    sickstudents integer,
    holidayattendance integer,
    totalattendance integer
);


CREATE TABLE openingbalance (
    sno integer,
    hostelname character varying NOT NULL,
    "month" character varying NOT NULL,
    "year" integer NOT NULL,
    itemname character varying NOT NULL,
    quantity double precision,
    rate double precision,
    amount double precision
);

CREATE TABLE purchases (
    sno integer,
    hostelname character varying NOT NULL,
    "month" character varying NOT NULL,
    "year" integer NOT NULL,
    itemname character varying NOT NULL,
    quantity double precision,
    rate double precision,
    amount double precision
);


CREATE TABLE consumption (
    sno integer,
    hostelname character varying NOT NULL,
    "month" character varying NOT NULL,
    "year" integer NOT NULL,
    itemname character varying NOT NULL,
    quantity double precision,
    rate double precision,
    amount double precision
);

CREATE TABLE total (
    sno integer,
    hostelname character varying NOT NULL,
    "month" character varying NOT NULL,
    "year" integer NOT NULL,
    itemname character varying NOT NULL,
    quantity double precision,
    rate double precision,
    amount double precision
);


CREATE TABLE closingbalances (
    sno integer,
    hostelname character varying NOT NULL,
    "month" character varying NOT NULL,
    "year" integer NOT NULL,
    itemname character varying NOT NULL,
    quantity double precision,
    rate double precision,
    amount double precision
);


CREATE TABLE items (
    product_no integer,
    name text,
    price numeric,
    CONSTRAINT products_price CHECK ((price > 0::numeric))
);

CREATE TABLE schoolattendance (
    hostelname character varying NOT NULL,
    schoolname character varying NOT NULL,
    "year" integer NOT NULL,
    "month" character varying NOT NULL,
    totalstudents integer,
    workingdays integer,
    holidays integer,
    totalattendance integer
);

CREATE TABLE stock (
    itemnumber integer,
    itemname character varying NOT NULL
);

CREATE TABLE category (
    sno integer NOT NULL,
    caste character varying
);


CREATE TABLE classes (
    sno integer NOT NULL,
    classname character varying NOT NULL
);

CREATE TABLE a (
    code double precision
);


CREATE TABLE hostel (
    hostelname character varying NOT NULL,
    code double precision NOT NULL,
    "year" integer,
    "month" character varying,
    "location" character varying NOT NULL,
    hwoname character varying,
    first integer,
    "second" integer,
    third integer,
    fourth integer,
    fifth integer,
    sixth integer,
    seventh integer,
    eighth integer,
    ninth integer,
    tenth integer,
    total integer
);

CREATE TABLE hostelstrength (
    sno integer NOT NULL,
    hostelname character varying NOT NULL,
    "year" integer NOT NULL,
    "month" character varying NOT NULL,
    "class" character varying NOT NULL,
    sc integer,
    hc integer,
    st integer,
    bc integer,
    oc integer,
    total integer
);


COPY add_users (userid, "password", roles) FROM stdin;
hwo	admin	admin
admin	home	home
\.


COPY role_service (roleid, serviceid) FROM stdin;
1	2
1	1
1	3
1	4
1	5
1	6
1	10
\.


COPY user_roles (roles, roleid) FROM stdin;
admin	1
home	1
\.

COPY mapmonthitem (hostelname, "month", "year", itemname, itemnumber) FROM stdin;
REDDY	DECEMBER	2005	RICE	1
REDDY	DECEMBER	2005	DAL	3
REDDY	JANUARY	2006	RICE	1
REDDY	JANUARY	2006	DAL	3
REDDY	FEBRUARY	2006	RICE	1
REDDY	FEBRUARY	2006	DAL	3
REDDY	FEBRUARY	2005	RICE	1
REDDY	FEBRUARY	2005	DAL	3
\.


COPY school (hostelname, schoolname, "location", first, "second", third, fourth, fifth, sixth, seventh, eighth, ninth, tenth, total) FROM stdin;
\.


COPY "month" (monthnumber, monthname) FROM stdin;
1	JANUARY
2	FEBRUARY
3	MARCH
4	APRIL
5	MAY
6	JUNE
7	JULY
8	AUGUST
9	SEPTEMBER
10	OCTOBER
11	NOVEMBER
12	DECEMBER
\.


COPY hosteldate (hostelname, "year", "month", monthnumber) FROM stdin;
GIRLS	2005	MARCH	3
\.


COPY hostelattendance (hostelname, "month", "year", sickstudents, holidayattendance, totalattendance) FROM stdin;
\.


COPY openingbalance (sno, hostelname, "month", "year", itemname, quantity, rate, amount) FROM stdin;
\.


COPY purchases (sno, hostelname, "month", "year", itemname, quantity, rate, amount) FROM stdin;
\.

COPY consumption (sno, hostelname, "month", "year", itemname, quantity, rate, amount) FROM stdin;
\.


COPY total (sno, hostelname, "month", "year", itemname, quantity, rate, amount) FROM stdin;
\.

COPY closingbalances (sno, hostelname, "month", "year", itemname, quantity, rate, amount) FROM stdin;
\.

COPY items (product_no, name, price) FROM stdin;
\.


COPY schoolattendance (hostelname, schoolname, "year", "month", totalstudents, workingdays, holidays, totalattendance) FROM stdin;
REDDY	NPS	2005	DECEMBER	91	12	2	3
\.


COPY stock (itemnumber, itemname) FROM stdin;
1	RICE
2	ONION
3	DAL
4	rice
\.


COPY category (sno, caste) FROM stdin;
1	SC
2	HC
3	ST
4	BC
5	OC
\.


COPY classes (sno, classname) FROM stdin;
1	FIRST CLASS
2	SECOND CLASS
3	THIRD CLASS
4	FOURTH CLASS
5	FIFTH CLASS
6	SIXTH CLASS
7	SEVENTH CLASS
8	EIGHT CLASS
9	NINTH CLASS
10	TENTH CLASS
\.


COPY a (code) FROM stdin;
1223334455
1223334455.1
1223334454.1
\.


COPY hostel (hostelname, code, "year", "month", "location", hwoname, first, "second", third, fourth, fifth, sixth, seventh, eighth, ninth, tenth, total) FROM stdin;
\.


COPY hostelstrength (sno, hostelname, "year", "month", "class", sc, hc, st, bc, oc, total) FROM stdin;
\.


ALTER TABLE ONLY role_service
    ADD CONSTRAINT role_service_pkey PRIMARY KEY (roleid, serviceid);

ALTER TABLE ONLY user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (roles, roleid);


ALTER TABLE ONLY mapmonthitem
    ADD CONSTRAINT mapmonthitem_pkey PRIMARY KEY (hostelname, "month", "year", itemnumber);


ALTER TABLE ONLY school
    ADD CONSTRAINT school_pkey PRIMARY KEY (hostelname, schoolname, "location");


ALTER TABLE ONLY "month"
    ADD CONSTRAINT month_pkey PRIMARY KEY (monthnumber);


ALTER TABLE ONLY hosteldate
    ADD CONSTRAINT hosteldate_pkey PRIMARY KEY (hostelname, "year", "month", monthnumber);


ALTER TABLE ONLY hostelattendance
    ADD CONSTRAINT hostelattendance_pkey PRIMARY KEY (hostelname, "month", "year");



ALTER TABLE ONLY openingbalance
    ADD CONSTRAINT openingbalance_pkey PRIMARY KEY (hostelname, "month", "year", itemname);



ALTER TABLE ONLY purchases
    ADD CONSTRAINT purchases_pkey PRIMARY KEY (hostelname, "month", "year", itemname);


ALTER TABLE ONLY consumption
    ADD CONSTRAINT consumption_pkey PRIMARY KEY (hostelname, "month", "year", itemname);


ALTER TABLE ONLY total
    ADD CONSTRAINT total_pkey PRIMARY KEY (hostelname, "month", "year", itemname);


ALTER TABLE ONLY closingbalances
    ADD CONSTRAINT closingbalances_pkey PRIMARY KEY (hostelname, "month", "year", itemname);



ALTER TABLE ONLY schoolattendance
    ADD CONSTRAINT schoolattendance_pkey PRIMARY KEY (hostelname, schoolname, "year", "month");



ALTER TABLE ONLY stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (itemname);


ALTER TABLE ONLY category
    ADD CONSTRAINT category_pkey PRIMARY KEY (sno);

ALTER TABLE ONLY classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (sno, classname);


ALTER TABLE ONLY hostel
    ADD CONSTRAINT hostel_pkey PRIMARY KEY (hostelname, code, "location");


ALTER TABLE ONLY hostelstrength
    ADD CONSTRAINT hostelstrength_pkey PRIMARY KEY (sno, hostelname, "year", "month", "class");


