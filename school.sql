--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Debian 15.4-1.pgdg120+1)
-- Dumped by pg_dump version 15.4 (Debian 15.4-1.pgdg120+1)

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
-- Name: Attendance Records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Attendance Records" (
    "Record ID" integer NOT NULL,
    "Student ID" integer,
    "Date" date NOT NULL,
    "Attendance Status" character varying(50) NOT NULL
);


ALTER TABLE public."Attendance Records" OWNER TO postgres;

--
-- Name: Attendance Records_Record ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Attendance Records_Record ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Attendance Records_Record ID_seq" OWNER TO postgres;

--
-- Name: Attendance Records_Record ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Attendance Records_Record ID_seq" OWNED BY public."Attendance Records"."Record ID";


--
-- Name: Exam Results; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Exam Results" (
    "Result ID" integer NOT NULL,
    "Student ID" integer,
    "Exam ID" integer,
    "Marks Obtained" bigint NOT NULL,
    "Grade" character varying(50) NOT NULL
);


ALTER TABLE public."Exam Results" OWNER TO postgres;

--
-- Name: Exam Results_Result ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Exam Results_Result ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Exam Results_Result ID_seq" OWNER TO postgres;

--
-- Name: Exam Results_Result ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Exam Results_Result ID_seq" OWNED BY public."Exam Results"."Result ID";


--
-- Name: Exams and Assessments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Exams and Assessments" (
    "Exam ID" integer NOT NULL,
    "Course ID" integer,
    "Exam Name" character varying(200) NOT NULL,
    "Date" date NOT NULL,
    "Maximum Marks" bigint NOT NULL,
    "Teacher Responsible" integer
);


ALTER TABLE public."Exams and Assessments" OWNER TO postgres;

--
-- Name: Exams and Assessments_Exam ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Exams and Assessments_Exam ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Exams and Assessments_Exam ID_seq" OWNER TO postgres;

--
-- Name: Exams and Assessments_Exam ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Exams and Assessments_Exam ID_seq" OWNED BY public."Exams and Assessments"."Exam ID";


--
-- Name: Fees and Payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Fees and Payments" (
    "Payment ID" integer NOT NULL,
    "Student ID" integer,
    "Payment Date" date NOT NULL,
    "Payment Amount" bigint NOT NULL,
    "Payment Method" character varying(200),
    "Fee Type" character varying(200) NOT NULL
);


ALTER TABLE public."Fees and Payments" OWNER TO postgres;

--
-- Name: Fees and Payments_Payment ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Fees and Payments_Payment ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Fees and Payments_Payment ID_seq" OWNER TO postgres;

--
-- Name: Fees and Payments_Payment ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Fees and Payments_Payment ID_seq" OWNED BY public."Fees and Payments"."Payment ID";


--
-- Name: Library Resources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Library Resources" (
    "Resource ID" integer NOT NULL,
    "Resource Name" character varying(250) NOT NULL,
    "Quantity Available" character varying(100) NOT NULL,
    "Borrowed by" character varying(20) NOT NULL,
    "Due Date" date NOT NULL
);


ALTER TABLE public."Library Resources" OWNER TO postgres;

--
-- Name: Library Resources_Resource ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Library Resources_Resource ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Library Resources_Resource ID_seq" OWNER TO postgres;

--
-- Name: Library Resources_Resource ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Library Resources_Resource ID_seq" OWNED BY public."Library Resources"."Resource ID";


--
-- Name: User Accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User Accounts" (
    "User ID" character varying(100) NOT NULL,
    "Username" character varying(200) NOT NULL,
    "Password" character varying(200) NOT NULL,
    "Access Level" character varying(200) NOT NULL
);


ALTER TABLE public."User Accounts" OWNER TO postgres;

--
-- Name: User Accounts_User ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User Accounts_User ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."User Accounts_User ID_seq" OWNER TO postgres;

--
-- Name: User Accounts_User ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User Accounts_User ID_seq" OWNED BY public."User Accounts"."User ID";


--
-- Name: classes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classes (
    "Class ID " integer NOT NULL,
    "Class Name" character varying(200) NOT NULL,
    "Academic Year" character varying(20) NOT NULL,
    "Teacher Assigned" character varying(100) NOT NULL,
    "Teacher ID" integer
);


ALTER TABLE public.classes OWNER TO postgres;

--
-- Name: classes_Class ID _seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."classes_Class ID _seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."classes_Class ID _seq" OWNER TO postgres;

--
-- Name: classes_Class ID _seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."classes_Class ID _seq" OWNED BY public.classes."Class ID ";


--
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    "Course ID" integer NOT NULL,
    "Course Name" character varying(255),
    "Course Description" text,
    "Course Duration" character varying(100),
    "Teacher ID" integer,
    "Subject ID" integer
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- Name: courses_Course ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."courses_Course ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."courses_Course ID_seq" OWNER TO postgres;

--
-- Name: courses_Course ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."courses_Course ID_seq" OWNED BY public.courses."Course ID";


--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    "Student ID" integer NOT NULL,
    "First Name" character varying(50) NOT NULL,
    "Last Name" character varying(50) NOT NULL,
    "Date of Birth" date NOT NULL,
    "Contact Number" bigint NOT NULL,
    "Parent/Guardian Name" character varying(50) NOT NULL,
    "Class Enrolled" character varying(50) NOT NULL,
    "Academic Grades" character varying(50) NOT NULL
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_Student ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."students_Student ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."students_Student ID_seq" OWNER TO postgres;

--
-- Name: students_Student ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."students_Student ID_seq" OWNED BY public.students."Student ID";


--
-- Name: subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subjects (
    "Subject ID" integer NOT NULL,
    "Subject Name" character varying(50) NOT NULL
);


ALTER TABLE public.subjects OWNER TO postgres;

--
-- Name: subjects_Subject ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."subjects_Subject ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."subjects_Subject ID_seq" OWNER TO postgres;

--
-- Name: subjects_Subject ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."subjects_Subject ID_seq" OWNED BY public.subjects."Subject ID";


--
-- Name: teachers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teachers (
    "Teacher ID" integer NOT NULL,
    "First Name" character varying(100) NOT NULL,
    "Last Name" character varying(100) NOT NULL,
    "Date of Birth" date NOT NULL,
    "Contact Number" bigint NOT NULL,
    "Subject Specialization" character varying(250) NOT NULL,
    "Employment Joining Date" date NOT NULL
);


ALTER TABLE public.teachers OWNER TO postgres;

--
-- Name: teachers_Teacher ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."teachers_Teacher ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."teachers_Teacher ID_seq" OWNER TO postgres;

--
-- Name: teachers_Teacher ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."teachers_Teacher ID_seq" OWNED BY public.teachers."Teacher ID";


--
-- Name: Attendance Records Record ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Attendance Records" ALTER COLUMN "Record ID" SET DEFAULT nextval('public."Attendance Records_Record ID_seq"'::regclass);


--
-- Name: Exam Results Result ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Exam Results" ALTER COLUMN "Result ID" SET DEFAULT nextval('public."Exam Results_Result ID_seq"'::regclass);


--
-- Name: Exams and Assessments Exam ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Exams and Assessments" ALTER COLUMN "Exam ID" SET DEFAULT nextval('public."Exams and Assessments_Exam ID_seq"'::regclass);


--
-- Name: Fees and Payments Payment ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fees and Payments" ALTER COLUMN "Payment ID" SET DEFAULT nextval('public."Fees and Payments_Payment ID_seq"'::regclass);


--
-- Name: Library Resources Resource ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Library Resources" ALTER COLUMN "Resource ID" SET DEFAULT nextval('public."Library Resources_Resource ID_seq"'::regclass);


--
-- Name: User Accounts User ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User Accounts" ALTER COLUMN "User ID" SET DEFAULT nextval('public."User Accounts_User ID_seq"'::regclass);


--
-- Name: classes Class ID ; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes ALTER COLUMN "Class ID " SET DEFAULT nextval('public."classes_Class ID _seq"'::regclass);


--
-- Name: courses Course ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses ALTER COLUMN "Course ID" SET DEFAULT nextval('public."courses_Course ID_seq"'::regclass);


--
-- Name: students Student ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN "Student ID" SET DEFAULT nextval('public."students_Student ID_seq"'::regclass);


--
-- Name: subjects Subject ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects ALTER COLUMN "Subject ID" SET DEFAULT nextval('public."subjects_Subject ID_seq"'::regclass);


--
-- Name: teachers Teacher ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers ALTER COLUMN "Teacher ID" SET DEFAULT nextval('public."teachers_Teacher ID_seq"'::regclass);


--
-- Data for Name: Attendance Records; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Attendance Records" ("Record ID", "Student ID", "Date", "Attendance Status") FROM stdin;
5002	1002	2023-09-18	Present
5003	1003	2023-09-18	Present
5004	1004	2023-09-18	Present
5005	1005	2023-09-18	Present
5006	1006	2023-09-18	Present
5001	1001	2023-09-18	Absent
\.


--
-- Data for Name: Exam Results; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Exam Results" ("Result ID", "Student ID", "Exam ID", "Marks Obtained", "Grade") FROM stdin;
7001	1001	6001	600	A
7002	1002	6002	600	A
7003	1003	6003	600	A
7004	1004	6004	600	A
7005	1005	6005	600	A
7006	1006	6006	600	A
\.


--
-- Data for Name: Exams and Assessments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Exams and Assessments" ("Exam ID", "Course ID", "Exam Name", "Date", "Maximum Marks", "Teacher Responsible") FROM stdin;
6001	3001	BCA	2023-09-18	600	2001
6002	3002	BCA	2023-09-18	600	2002
6003	3003	BCA	2023-09-18	600	2003
6004	3004	BCA	2023-09-18	600	2004
6005	3005	BCA	2023-09-18	600	2005
6006	3006	BCA	2023-09-18	600	2006
\.


--
-- Data for Name: Fees and Payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Fees and Payments" ("Payment ID", "Student ID", "Payment Date", "Payment Amount", "Payment Method", "Fee Type") FROM stdin;
9001	1001	2023-09-18	100	\N	Books
9002	1002	2023-09-18	100	\N	Books
9003	1003	2023-09-18	100	\N	Books
9004	1004	2023-09-18	100	\N	Books
9005	1005	2023-09-18	100	\N	Books
9006	1006	2023-09-18	100	\N	Books
\.


--
-- Data for Name: Library Resources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Library Resources" ("Resource ID", "Resource Name", "Quantity Available", "Borrowed by", "Due Date") FROM stdin;
8001	Books	Good	1001	2023-09-18
8002	Books	Good	1002	2023-09-18
8003	Books	Good	1003	2023-09-18
8004	Books	Good	1004	2023-09-18
8005	Books	Good	1005	2023-09-18
8006	Books	Good	1006	2023-09-18
\.


--
-- Data for Name: User Accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User Accounts" ("User ID", "Username", "Password", "Access Level") FROM stdin;
rahul@123	rahul	keen@123	Admin
roy@123	rahul	keen@123	Teacher
mohan@123	mohan	keen@123	Student
\.


--
-- Data for Name: classes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classes ("Class ID ", "Class Name", "Academic Year", "Teacher Assigned", "Teacher ID") FROM stdin;
4001	BCA(A)	2020	Mahi	2001
4002	BCA(B)	2020	Ramesh	2002
4003	BCA(C)	2020	Rakesh	2003
4004	BCA(D)	2020	arjun	2004
4005	BCA(E)	2020	Balindra	2005
4006	BCA(F)	2020	Ankur	2006
\.


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses ("Course ID", "Course Name", "Course Description", "Course Duration", "Teacher ID", "Subject ID") FROM stdin;
3005	Node.js	This is also used for Backend developer	6 months	2005	\N
3006	MySQL	It is a database	6 months	2006	\N
3001	HTML	HTML is used for web development	6 months	2001	9001
3002	CSS	CSS is used for designing web pages	6 months	2002	9002
3003	JavaScript	JavaScript used for Backend developer	6 months	2003	9003
3004	PHP	It is also used for Backend developer	6 months	2004	9004
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students ("Student ID", "First Name", "Last Name", "Date of Birth", "Contact Number", "Parent/Guardian Name", "Class Enrolled", "Academic Grades") FROM stdin;
1001	Lucifer	Kumar	2002-06-14	7632954998	Ram Singh	1234322	A+
1008	Mahi	Kumar	2002-06-14	7632004998	Ram Singh	123432	A+
1002	Mohan	Kumar	2002-06-14	7632950098	Ram Singh	1234322	A+
1003	Rakesh	Kumar	2002-06-14	7632950098	Ram Singh	1234322	A+
1004	arjun	Kumar	2002-06-14	7632950098	Ram Singh	1234322	A+
1005	Balindra	Kumar	2002-06-14	7632950098	Ram Singh	1234322	A+
1006	Ankur	Kumar	2002-06-14	7632950098	Ram Singh	1234322	A+
1007	Rakesh	Kumar	2002-06-14	7632950098	Ram Singh	1234322	A+
\.


--
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subjects ("Subject ID", "Subject Name") FROM stdin;
9001	Math
9002	DBMS
9003	DS
9004	JAVA
\.


--
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teachers ("Teacher ID", "First Name", "Last Name", "Date of Birth", "Contact Number", "Subject Specialization", "Employment Joining Date") FROM stdin;
2001	Mahi	Kumar	2000-06-14	7632004998	Math	2023-09-18
2002	Ramesh	Kumar	2002-06-14	7632950098	HTML	2023-09-18
2003	Rakesh	Kumar	2002-06-14	7632950098	DS	2023-09-18
2004	arjun	Kumar	2002-06-14	7632950098	CSS	2023-09-18
2005	Balindra	Kumar	2002-06-14	7632950098	Arts	2023-09-18
2006	Ankur	Kumar	2002-06-14	7632950098	PHP	2023-09-18
\.


--
-- Name: Attendance Records_Record ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Attendance Records_Record ID_seq"', 1, false);


--
-- Name: Exam Results_Result ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Exam Results_Result ID_seq"', 1, false);


--
-- Name: Exams and Assessments_Exam ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Exams and Assessments_Exam ID_seq"', 1, false);


--
-- Name: Fees and Payments_Payment ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Fees and Payments_Payment ID_seq"', 1, false);


--
-- Name: Library Resources_Resource ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Library Resources_Resource ID_seq"', 1, false);


--
-- Name: User Accounts_User ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User Accounts_User ID_seq"', 1, false);


--
-- Name: classes_Class ID _seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."classes_Class ID _seq"', 1, false);


--
-- Name: courses_Course ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."courses_Course ID_seq"', 1, false);


--
-- Name: students_Student ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."students_Student ID_seq"', 1, false);


--
-- Name: subjects_Subject ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."subjects_Subject ID_seq"', 1, false);


--
-- Name: teachers_Teacher ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."teachers_Teacher ID_seq"', 1, false);


--
-- Name: Attendance Records Attendance Records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Attendance Records"
    ADD CONSTRAINT "Attendance Records_pkey" PRIMARY KEY ("Record ID");


--
-- Name: Exam Results Exam Results_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Exam Results"
    ADD CONSTRAINT "Exam Results_pkey" PRIMARY KEY ("Result ID");


--
-- Name: Exams and Assessments Exams and Assessments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Exams and Assessments"
    ADD CONSTRAINT "Exams and Assessments_pkey" PRIMARY KEY ("Exam ID");


--
-- Name: Fees and Payments Fees and Payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fees and Payments"
    ADD CONSTRAINT "Fees and Payments_pkey" PRIMARY KEY ("Payment ID");


--
-- Name: Library Resources Library Resources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Library Resources"
    ADD CONSTRAINT "Library Resources_pkey" PRIMARY KEY ("Resource ID");


--
-- Name: User Accounts User Accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User Accounts"
    ADD CONSTRAINT "User Accounts_pkey" PRIMARY KEY ("User ID");


--
-- Name: classes classes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY ("Class ID ");


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY ("Course ID");


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY ("Student ID");


--
-- Name: subjects subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY ("Subject ID");


--
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY ("Teacher ID");


--
-- Name: Attendance Records Attendance Records_Student ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Attendance Records"
    ADD CONSTRAINT "Attendance Records_Student ID_fkey" FOREIGN KEY ("Student ID") REFERENCES public.students("Student ID");


--
-- Name: Exam Results Exam Results_Exam ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Exam Results"
    ADD CONSTRAINT "Exam Results_Exam ID_fkey" FOREIGN KEY ("Exam ID") REFERENCES public."Exams and Assessments"("Exam ID");


--
-- Name: Exam Results Exam Results_Student ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Exam Results"
    ADD CONSTRAINT "Exam Results_Student ID_fkey" FOREIGN KEY ("Student ID") REFERENCES public.students("Student ID");


--
-- Name: Exams and Assessments Exams and Assessments_Course ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Exams and Assessments"
    ADD CONSTRAINT "Exams and Assessments_Course ID_fkey" FOREIGN KEY ("Course ID") REFERENCES public.courses("Course ID");


--
-- Name: Exams and Assessments Exams and Assessments_Teacher Responsible_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Exams and Assessments"
    ADD CONSTRAINT "Exams and Assessments_Teacher Responsible_fkey" FOREIGN KEY ("Teacher Responsible") REFERENCES public.teachers("Teacher ID");


--
-- Name: Fees and Payments Fees and Payments_Student ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fees and Payments"
    ADD CONSTRAINT "Fees and Payments_Student ID_fkey" FOREIGN KEY ("Student ID") REFERENCES public.students("Student ID");


--
-- Name: classes classes_Teacher ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT "classes_Teacher ID_fkey" FOREIGN KEY ("Teacher ID") REFERENCES public.teachers("Teacher ID");


--
-- Name: courses courses_Subject ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT "courses_Subject ID_fkey" FOREIGN KEY ("Subject ID") REFERENCES public.subjects("Subject ID");


--
-- Name: courses courses_Teacher ID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT "courses_Teacher ID_fkey" FOREIGN KEY ("Teacher ID") REFERENCES public.teachers("Teacher ID");


--
-- PostgreSQL database dump complete
--

