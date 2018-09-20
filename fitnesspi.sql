--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO pi;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO pi;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO pi;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO pi;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO pi;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO pi;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO pi;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO pi;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO pi;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO pi;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO pi;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO pi;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO pi;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO pi;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO pi;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO pi;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO pi;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO pi;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO pi;

--
-- Name: workouts_series; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE public.workouts_series (
    id integer NOT NULL,
    rep smallint NOT NULL,
    painfulness character varying(1),
    workout_id integer NOT NULL,
    number smallint NOT NULL,
    training_id integer,
    date date NOT NULL,
    note text,
    type character varying(1),
    CONSTRAINT workouts_series_number_check CHECK ((number >= 0)),
    CONSTRAINT workouts_series_rep_check CHECK ((rep >= 0))
);


ALTER TABLE public.workouts_series OWNER TO pi;

--
-- Name: workouts_series_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE public.workouts_series_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workouts_series_id_seq OWNER TO pi;

--
-- Name: workouts_series_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE public.workouts_series_id_seq OWNED BY public.workouts_series.id;


--
-- Name: workouts_trainingprogram; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE public.workouts_trainingprogram (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.workouts_trainingprogram OWNER TO pi;

--
-- Name: workouts_training_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE public.workouts_training_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workouts_training_id_seq OWNER TO pi;

--
-- Name: workouts_training_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE public.workouts_training_id_seq OWNED BY public.workouts_trainingprogram.id;


--
-- Name: workouts_trainingprogram_workouts; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE public.workouts_trainingprogram_workouts (
    id integer NOT NULL,
    trainingprogram_id integer NOT NULL,
    workout_id integer NOT NULL
);


ALTER TABLE public.workouts_trainingprogram_workouts OWNER TO pi;

--
-- Name: workouts_training_workouts_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE public.workouts_training_workouts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workouts_training_workouts_id_seq OWNER TO pi;

--
-- Name: workouts_training_workouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE public.workouts_training_workouts_id_seq OWNED BY public.workouts_trainingprogram_workouts.id;


--
-- Name: workouts_workout; Type: TABLE; Schema: public; Owner: pi
--

CREATE TABLE public.workouts_workout (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    weight smallint,
    note text,
    CONSTRAINT workouts_workout_weight_check CHECK ((weight >= 0))
);


ALTER TABLE public.workouts_workout OWNER TO pi;

--
-- Name: workouts_workout_id_seq; Type: SEQUENCE; Schema: public; Owner: pi
--

CREATE SEQUENCE public.workouts_workout_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workouts_workout_id_seq OWNER TO pi;

--
-- Name: workouts_workout_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pi
--

ALTER SEQUENCE public.workouts_workout_id_seq OWNED BY public.workouts_workout.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: workouts_series id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.workouts_series ALTER COLUMN id SET DEFAULT nextval('public.workouts_series_id_seq'::regclass);


--
-- Name: workouts_trainingprogram id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.workouts_trainingprogram ALTER COLUMN id SET DEFAULT nextval('public.workouts_training_id_seq'::regclass);


--
-- Name: workouts_trainingprogram_workouts id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.workouts_trainingprogram_workouts ALTER COLUMN id SET DEFAULT nextval('public.workouts_training_workouts_id_seq'::regclass);


--
-- Name: workouts_workout id; Type: DEFAULT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.workouts_workout ALTER COLUMN id SET DEFAULT nextval('public.workouts_workout_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: pi
--



--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: pi
--



--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: pi
--

INSERT INTO public.auth_permission VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission VALUES (25, 'Can add series', 7, 'add_series');
INSERT INTO public.auth_permission VALUES (26, 'Can change series', 7, 'change_series');
INSERT INTO public.auth_permission VALUES (27, 'Can delete series', 7, 'delete_series');
INSERT INTO public.auth_permission VALUES (28, 'Can view series', 7, 'view_series');
INSERT INTO public.auth_permission VALUES (29, 'Can add workout', 8, 'add_workout');
INSERT INTO public.auth_permission VALUES (30, 'Can change workout', 8, 'change_workout');
INSERT INTO public.auth_permission VALUES (31, 'Can delete workout', 8, 'delete_workout');
INSERT INTO public.auth_permission VALUES (32, 'Can view workout', 8, 'view_workout');
INSERT INTO public.auth_permission VALUES (33, 'Can add training', 9, 'add_training');
INSERT INTO public.auth_permission VALUES (34, 'Can change training', 9, 'change_training');
INSERT INTO public.auth_permission VALUES (35, 'Can delete training', 9, 'delete_training');
INSERT INTO public.auth_permission VALUES (36, 'Can view training', 9, 'view_training');
INSERT INTO public.auth_permission VALUES (37, 'Can add training program', 9, 'add_trainingprogram');
INSERT INTO public.auth_permission VALUES (38, 'Can change training program', 9, 'change_trainingprogram');
INSERT INTO public.auth_permission VALUES (39, 'Can delete training program', 9, 'delete_trainingprogram');
INSERT INTO public.auth_permission VALUES (40, 'Can view training program', 9, 'view_trainingprogram');
INSERT INTO public.auth_permission VALUES (41, 'Can add daily training', 10, 'add_dailytraining');
INSERT INTO public.auth_permission VALUES (42, 'Can change daily training', 10, 'change_dailytraining');
INSERT INTO public.auth_permission VALUES (43, 'Can delete daily training', 10, 'delete_dailytraining');
INSERT INTO public.auth_permission VALUES (44, 'Can view daily training', 10, 'view_dailytraining');


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: pi
--

INSERT INTO public.auth_user VALUES (1, 'pbkdf2_sha256$120000$0pZyqNnuIlWa$eeomDhFHgb1A3U2PbcKO9OyQu/cddzJ+uSrLuHiaq9Q=', '2018-09-03 19:02:12.858896+02', true, 'olivier', '', '', 'info@metacoherence.ch', true, true, '2018-08-26 12:26:06.314731+02');


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: pi
--



--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: pi
--



--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: pi
--

INSERT INTO public.django_admin_log VALUES (1, '2018-08-26 12:37:09.057888+02', '1', 'Workout object (1)', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (2, '2018-08-26 12:38:04.665766+02', '2', 'pompes standard', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (3, '2018-08-26 12:38:30.282248+02', '1', 'Training object (1)', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log VALUES (4, '2018-08-26 18:26:30.083904+02', '1', 'Series object (1)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (5, '2018-08-26 18:27:43.727347+02', '1', 'DailyTraining object (1)', 1, '[{"added": {}}]', 10, 1);
INSERT INTO public.django_admin_log VALUES (6, '2018-08-26 18:36:49.508415+02', '1', 'extensions élastiques', 2, '[{"changed": {"fields": ["date"]}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (7, '2018-08-26 18:37:42.355089+02', '2', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (8, '2018-08-26 18:38:46.12248+02', '2', 'extensions élastiques', 2, '[{"changed": {"fields": ["painfulness"]}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (9, '2018-08-26 18:38:54.263956+02', '2', 'extensions élastiques', 2, '[{"changed": {"fields": ["painfulness"]}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (10, '2018-08-26 18:39:00.179592+02', '1', 'extensions élastiques', 2, '[{"changed": {"fields": ["painfulness"]}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (11, '2018-08-26 18:39:37.82196+02', '3', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (12, '2018-08-26 18:41:01.508405+02', '1', 'extensions élastiques', 2, '[{"changed": {"fields": ["painfulness"]}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (13, '2018-08-26 18:41:14.005323+02', '2', 'extensions élastiques', 2, '[{"changed": {"fields": ["painfulness"]}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (14, '2018-08-26 18:48:08.204994+02', '3', 'pompes diamant', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (15, '2018-08-26 18:48:19.855986+02', '4', 'korean dips', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (16, '2018-08-26 18:48:58.105351+02', '5', 'élastiques pectoraux', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (17, '2018-08-26 18:49:35.645576+02', '6', 'haltères standard', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (18, '2018-08-26 18:49:54.168266+02', '7', 'haltères rotation', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (19, '2018-08-26 18:50:07.444862+02', '8', 'haltères levées de bras', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (20, '2018-08-26 18:50:15.600221+02', '9', 'fentes avant', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (21, '2018-08-26 18:50:22.385772+02', '10', 'squats', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (22, '2018-08-26 18:51:29.202042+02', '1', 'Beginner', 2, '[{"changed": {"fields": ["workouts"]}}]', 9, 1);
INSERT INTO public.django_admin_log VALUES (23, '2018-08-26 18:52:44.214488+02', '4', 'pompes standard', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (24, '2018-08-26 18:53:13.756818+02', '5', 'pompes standard', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (25, '2018-08-26 18:53:50.49565+02', '6', 'pompes standard', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (27, '2018-08-27 16:57:02.424614+02', '2', 'golivier', 3, '', 4, 1);
INSERT INTO public.django_admin_log VALUES (28, '2018-08-27 16:59:07.894421+02', '7', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (29, '2018-08-27 16:59:28.65369+02', '8', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (30, '2018-08-27 16:59:48.147439+02', '9', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (31, '2018-08-27 17:00:07.017765+02', '7', 'extensions élastiques', 2, '[{"changed": {"fields": ["date"]}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (32, '2018-08-27 17:00:27.199967+02', '7', 'extensions élastiques', 2, '[{"changed": {"fields": ["date"]}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (33, '2018-08-27 17:00:38.066766+02', '8', 'extensions élastiques', 2, '[{"changed": {"fields": ["date"]}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (34, '2018-08-27 17:00:46.737168+02', '9', 'extensions élastiques', 2, '[{"changed": {"fields": ["date"]}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (35, '2018-08-27 17:01:12.783518+02', '10', 'pompes diamant', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (36, '2018-08-27 17:01:30.139793+02', '11', 'pompes diamant', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (37, '2018-08-27 17:01:54.460549+02', '12', 'pompes diamant', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (38, '2018-08-27 17:02:20.484204+02', '13', 'korean dips', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (39, '2018-08-28 09:27:24.430867+02', '13', 'korean dips', 2, '[{"changed": {"fields": ["note"]}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (40, '2018-08-28 19:07:44.913419+02', '14', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (41, '2018-08-28 19:08:06.740242+02', '15', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (42, '2018-08-28 19:08:25.421685+02', '16', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (43, '2018-08-28 19:08:49.67748+02', '17', 'pompes standard', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (44, '2018-08-28 19:09:06.580238+02', '18', 'pompes standard', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (45, '2018-08-28 19:09:26.482664+02', '19', 'pompes standard', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (46, '2018-08-28 19:09:51.54905+02', '20', 'pompes diamant', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (47, '2018-08-28 19:10:05.225922+02', '21', 'pompes diamant', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (48, '2018-08-28 19:10:16.375953+02', '22', 'pompes diamant', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (49, '2018-08-28 19:10:45.274629+02', '23', 'korean dips', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (50, '2018-08-28 19:11:32.319551+02', '24', 'korean dips', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (51, '2018-08-28 19:11:45.655984+02', '25', 'korean dips', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (52, '2018-08-28 19:12:20.612891+02', '26', 'élastiques pectoraux', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (53, '2018-08-28 19:12:31.001463+02', '27', 'élastiques pectoraux', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (54, '2018-08-28 19:12:41.856354+02', '28', 'élastiques pectoraux', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (55, '2018-08-28 19:12:59.835562+02', '29', 'élastiques pectoraux', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (56, '2018-08-28 19:13:30.0846+02', '27', 'élastiques pectoraux', 3, '', 7, 1);
INSERT INTO public.django_admin_log VALUES (57, '2018-08-28 19:13:58.043427+02', '30', 'haltères standard', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (58, '2018-08-28 19:14:15.711952+02', '31', 'haltères standard', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (59, '2018-08-28 19:14:45.137576+02', '32', 'haltères standard', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (60, '2018-08-28 19:15:14.895877+02', '33', 'haltères rotation', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (61, '2018-08-28 19:15:27.379065+02', '34', 'haltères rotation', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (62, '2018-08-28 19:15:47.258748+02', '35', 'haltères rotation', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (63, '2018-08-28 19:16:33.167151+02', '36', 'haltères levées de bras', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (64, '2018-08-28 19:16:49.019794+02', '37', 'haltères levées de bras', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (65, '2018-08-28 19:17:10.312503+02', '38', 'haltères levées de bras', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (66, '2018-08-28 19:18:45.322741+02', '38', 'haltères levées de bras', 2, '[]', 7, 1);
INSERT INTO public.django_admin_log VALUES (67, '2018-08-29 10:03:56.120292+02', '33', 'haltères rotation', 2, '[]', 7, 1);
INSERT INTO public.django_admin_log VALUES (68, '2018-08-29 10:05:13.18336+02', '33', 'haltères rotation', 2, '[]', 7, 1);
INSERT INTO public.django_admin_log VALUES (69, '2018-08-29 13:47:26.326587+02', '33', 'haltères rotation', 2, '[]', 7, 1);
INSERT INTO public.django_admin_log VALUES (70, '2018-08-29 13:47:52.519517+02', '39', 'haltères rotation', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (71, '2018-08-29 13:48:20.691434+02', '40', 'haltères rotation', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (72, '2018-08-29 13:49:29.174232+02', '38', 'haltères levées de bras', 3, '', 7, 1);
INSERT INTO public.django_admin_log VALUES (73, '2018-08-29 13:49:54.89249+02', '41', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (74, '2018-08-29 13:50:24.027536+02', '37', 'haltères levées de bras', 2, '[]', 7, 1);
INSERT INTO public.django_admin_log VALUES (75, '2018-08-29 13:51:09.185173+02', '37', 'haltères levées de bras', 2, '[]', 7, 1);
INSERT INTO public.django_admin_log VALUES (76, '2018-08-29 13:51:27.732589+02', '42', 'haltères levées de bras', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (77, '2018-08-30 17:05:10.629067+02', '41', 'extensions élastiques', 3, '', 7, 1);
INSERT INTO public.django_admin_log VALUES (78, '2018-09-03 19:05:23.388243+02', '43', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (79, '2018-09-03 19:05:36.014784+02', '43', 'extensions élastiques', 2, '[]', 7, 1);
INSERT INTO public.django_admin_log VALUES (80, '2018-09-03 19:05:58.321456+02', '44', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (81, '2018-09-03 19:06:14.903927+02', '45', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (82, '2018-09-03 19:07:11.070364+02', '46', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (83, '2018-09-03 19:07:28.951773+02', '47', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (84, '2018-09-03 19:07:49.138086+02', '48', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (85, '2018-09-03 19:09:03.645064+02', '49', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (86, '2018-09-03 19:09:20.104545+02', '50', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (87, '2018-09-03 19:09:36.385333+02', '51', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (88, '2018-09-03 19:10:11.328058+02', '52', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (89, '2018-09-03 19:10:27.211801+02', '53', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (90, '2018-09-03 19:11:12.992199+02', '54', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (91, '2018-09-03 19:11:47.209822+02', '55', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (92, '2018-09-03 19:12:08.701707+02', '56', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (93, '2018-09-03 19:12:23.921201+02', '57', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (94, '2018-09-03 19:14:29.368558+02', '58', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (95, '2018-09-03 19:14:46.313599+02', '59', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (96, '2018-09-03 19:15:08.023447+02', '60', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (97, '2018-09-03 19:18:23.615248+02', '61', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (98, '2018-09-03 19:18:44.178696+02', '62', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log VALUES (99, '2018-09-03 19:19:10.511797+02', '63', 'extensions élastiques', 1, '[{"added": {}}]', 7, 1);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 99, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: pi
--

INSERT INTO public.django_content_type VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type VALUES (7, 'workouts', 'series');
INSERT INTO public.django_content_type VALUES (8, 'workouts', 'workout');
INSERT INTO public.django_content_type VALUES (9, 'workouts', 'trainingprogram');
INSERT INTO public.django_content_type VALUES (10, 'workouts', 'dailytraining');


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: pi
--

INSERT INTO public.django_migrations VALUES (1, 'contenttypes', '0001_initial', '2018-08-26 11:55:53.128789+02');
INSERT INTO public.django_migrations VALUES (2, 'auth', '0001_initial', '2018-08-26 11:55:53.307717+02');
INSERT INTO public.django_migrations VALUES (3, 'admin', '0001_initial', '2018-08-26 11:55:53.366715+02');
INSERT INTO public.django_migrations VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2018-08-26 11:55:53.380701+02');
INSERT INTO public.django_migrations VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2018-08-26 11:55:53.389975+02');
INSERT INTO public.django_migrations VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2018-08-26 11:55:53.431306+02');
INSERT INTO public.django_migrations VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2018-08-26 11:55:53.442597+02');
INSERT INTO public.django_migrations VALUES (8, 'auth', '0003_alter_user_email_max_length', '2018-08-26 11:55:53.454704+02');
INSERT INTO public.django_migrations VALUES (9, 'auth', '0004_alter_user_username_opts', '2018-08-26 11:55:53.461907+02');
INSERT INTO public.django_migrations VALUES (10, 'auth', '0005_alter_user_last_login_null', '2018-08-26 11:55:53.473371+02');
INSERT INTO public.django_migrations VALUES (11, 'auth', '0006_require_contenttypes_0002', '2018-08-26 11:55:53.477829+02');
INSERT INTO public.django_migrations VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2018-08-26 11:55:53.48648+02');
INSERT INTO public.django_migrations VALUES (13, 'auth', '0008_alter_user_username_max_length', '2018-08-26 11:55:53.50177+02');
INSERT INTO public.django_migrations VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2018-08-26 11:55:53.515721+02');
INSERT INTO public.django_migrations VALUES (15, 'sessions', '0001_initial', '2018-08-26 11:55:53.54476+02');
INSERT INTO public.django_migrations VALUES (16, 'workouts', '0001_initial', '2018-08-26 12:23:19.090804+02');
INSERT INTO public.django_migrations VALUES (17, 'workouts', '0002_auto_20180826_1030', '2018-08-26 12:30:57.553542+02');
INSERT INTO public.django_migrations VALUES (18, 'workouts', '0003_training_workouts', '2018-08-26 12:35:50.513716+02');
INSERT INTO public.django_migrations VALUES (19, 'workouts', '0004_auto_20180826_1457', '2018-08-26 16:57:07.992574+02');
INSERT INTO public.django_migrations VALUES (20, 'workouts', '0005_auto_20180826_1520', '2018-08-26 17:25:17.330481+02');
INSERT INTO public.django_migrations VALUES (21, 'workouts', '0006_remove_trainingprogram_date', '2018-08-26 17:25:17.342697+02');
INSERT INTO public.django_migrations VALUES (22, 'workouts', '0007_auto_20180826_1621', '2018-08-26 18:21:44.379957+02');
INSERT INTO public.django_migrations VALUES (23, 'workouts', '0008_auto_20180826_1630', '2018-08-26 18:30:24.892371+02');
INSERT INTO public.django_migrations VALUES (24, 'workouts', '0009_series_date', '2018-08-26 18:31:10.595653+02');
INSERT INTO public.django_migrations VALUES (25, 'workouts', '0010_auto_20180826_1638', '2018-08-26 18:38:31.289478+02');
INSERT INTO public.django_migrations VALUES (26, 'workouts', '0011_auto_20180828_0722', '2018-08-28 09:23:00.34698+02');
INSERT INTO public.django_migrations VALUES (27, 'workouts', '0012_auto_20180829_0753', '2018-08-29 10:01:04.357772+02');
INSERT INTO public.django_migrations VALUES (28, 'workouts', '0013_auto_20180829_0755', '2018-08-29 10:01:04.379643+02');
INSERT INTO public.django_migrations VALUES (29, 'workouts', '0014_auto_20180829_1145', '2018-08-29 13:45:23.846428+02');


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: pi
--

INSERT INTO public.django_session VALUES ('4jmu8ow4r1by2a4kb2gjgrutju927gq1', 'ZjI5YmZlM2RhN2MwYWMzMmQyOTg4NjlkMzk3ZGVkY2RhZDcxMzU4Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YTUzN2VhMDE0YTk2YjNjZDk2NWI0ZDdhYTVjOGY1ZWMzZDFkOWVjIn0=', '2018-09-09 12:26:50.398844+02');
INSERT INTO public.django_session VALUES ('wvty4h9taa6a7impzy0cqd2elj5w9022', 'MmM2NzRmMjBiNGYyZDM5ODgzMmVhZTQ0MDc2ODQ4MDU4NzEzZjIzMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmU3MmI5YjM2ZTE2NzRhMWRmZjIzZDgwOGVhZTc3YTg5M2RhNWYxNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-09-11 09:23:26.981623+02');
INSERT INTO public.django_session VALUES ('qqc9fv89id0nfz4dfd79bl8upwq0epjy', 'ZGM5YzgwMzMzZjcwMTU5MTM5MTI0ZDA0ZTI2YTUxOWU3MGRkMjM1Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmZTcyYjliMzZlMTY3NGExZGZmMjNkODA4ZWFlNzdhODkzZGE1ZjE2In0=', '2018-09-17 19:02:12.866998+02');


--
-- Data for Name: workouts_series; Type: TABLE DATA; Schema: public; Owner: pi
--

INSERT INTO public.workouts_series VALUES (3, 15, '2', 1, 3, 1, '2018-08-25', NULL, '1');
INSERT INTO public.workouts_series VALUES (1, 25, NULL, 1, 1, 1, '2018-08-25', NULL, '1');
INSERT INTO public.workouts_series VALUES (2, 19, '3', 1, 2, 1, '2018-08-25', NULL, '1');
INSERT INTO public.workouts_series VALUES (4, 8, '1', 2, 1, 1, '2018-08-25', NULL, '1');
INSERT INTO public.workouts_series VALUES (5, 16, '3', 2, 2, 1, '2018-08-25', NULL, '1');
INSERT INTO public.workouts_series VALUES (6, 8, '2', 2, 3, 1, '2018-08-25', NULL, '1');
INSERT INTO public.workouts_series VALUES (7, 23, NULL, 1, 1, 1, '2018-08-21', NULL, '1');
INSERT INTO public.workouts_series VALUES (8, 25, '3', 1, 2, 1, '2018-08-21', NULL, '1');
INSERT INTO public.workouts_series VALUES (9, 23, '3', 1, 3, 1, '2018-08-21', NULL, '1');
INSERT INTO public.workouts_series VALUES (10, 11, NULL, 3, 1, 1, '2018-08-21', NULL, '1');
INSERT INTO public.workouts_series VALUES (11, 9, NULL, 3, 2, 1, '2018-08-21', NULL, '1');
INSERT INTO public.workouts_series VALUES (12, 7, NULL, 3, 3, 1, '2018-08-21', NULL, '1');
INSERT INTO public.workouts_series VALUES (13, 17, '3', 4, 1, 1, '2018-08-21', 'arrêt de la session suite à des douleurs violentes à la tête', '1');
INSERT INTO public.workouts_series VALUES (14, 28, '2', 1, 1, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (15, 22, '2', 1, 2, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (16, 20, '2', 1, 3, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (17, 15, '3', 2, 1, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (18, 13, '2', 2, 2, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (19, 8, '3', 2, 3, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (20, 11, '2', 3, 1, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (21, 10, NULL, 3, 2, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (22, 9, NULL, 3, 3, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (23, 16, '3', 4, 1, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (24, 14, '2', 4, 2, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (25, 12, NULL, 4, 3, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (26, 25, NULL, 5, 1, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (28, 23, NULL, 5, 2, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (29, 21, NULL, 5, 3, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (30, 18, '3', 6, 1, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (31, 11, NULL, 6, 2, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (32, 10, '3', 6, 3, 1, '2018-08-28', 'épuisement à gauche', '1');
INSERT INTO public.workouts_series VALUES (36, 27, '3', 8, 1, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (33, 14, NULL, 7, 1, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (39, 11, NULL, 7, 2, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (40, 9, NULL, 7, 3, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (37, 25, NULL, 8, 2, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (42, 23, NULL, 8, 3, 1, '2018-08-28', '', '1');
INSERT INTO public.workouts_series VALUES (43, 29, NULL, 1, 1, 1, '2018-08-01', '', '1');
INSERT INTO public.workouts_series VALUES (44, 23, NULL, 1, 2, 1, '2018-08-01', '', '1');
INSERT INTO public.workouts_series VALUES (45, 17, NULL, 1, 3, 1, '2018-08-01', '', '1');
INSERT INTO public.workouts_series VALUES (46, 46, NULL, 1, 1, 1, '2018-08-04', '', '1');
INSERT INTO public.workouts_series VALUES (47, 23, NULL, 1, 2, 1, '2018-08-04', '', '1');
INSERT INTO public.workouts_series VALUES (48, 17, NULL, 1, 3, 1, '2018-08-04', '', '1');
INSERT INTO public.workouts_series VALUES (49, 26, NULL, 1, 1, 1, '2018-08-06', '', '1');
INSERT INTO public.workouts_series VALUES (50, 18, NULL, 1, 2, 1, '2018-08-06', '', '1');
INSERT INTO public.workouts_series VALUES (51, 13, NULL, 1, 3, 1, '2018-08-06', '', '1');
INSERT INTO public.workouts_series VALUES (52, 47, NULL, 1, 1, 1, '2018-08-10', '', '1');
INSERT INTO public.workouts_series VALUES (53, 25, NULL, 1, 2, 1, '2018-08-10', '', '1');
INSERT INTO public.workouts_series VALUES (54, 23, NULL, 1, 3, 1, '2018-08-10', '', '1');
INSERT INTO public.workouts_series VALUES (55, 35, NULL, 1, 1, 1, '2018-08-13', '', '1');
INSERT INTO public.workouts_series VALUES (56, 25, '1', 1, 2, 1, '2018-08-13', '', '1');
INSERT INTO public.workouts_series VALUES (57, 23, NULL, 1, 3, 1, '2018-08-13', '', '1');
INSERT INTO public.workouts_series VALUES (58, 35, NULL, 1, 1, 1, '2018-08-18', '', '1');
INSERT INTO public.workouts_series VALUES (59, 33, NULL, 1, 2, 1, '2018-08-18', '', '1');
INSERT INTO public.workouts_series VALUES (60, 31, '2', 1, 3, 1, '2018-08-18', '', '1');
INSERT INTO public.workouts_series VALUES (61, 25, NULL, 1, 1, 1, '2018-09-02', '', '1');
INSERT INTO public.workouts_series VALUES (62, 23, '2', 1, 2, 1, '2018-09-02', '', '1');
INSERT INTO public.workouts_series VALUES (63, 21, '2', 1, 3, 1, '2018-09-02', '', '1');


--
-- Name: workouts_series_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.workouts_series_id_seq', 63, true);


--
-- Name: workouts_training_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.workouts_training_id_seq', 1, true);


--
-- Name: workouts_training_workouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.workouts_training_workouts_id_seq', 10, true);


--
-- Data for Name: workouts_trainingprogram; Type: TABLE DATA; Schema: public; Owner: pi
--

INSERT INTO public.workouts_trainingprogram VALUES (1, 'Beginner');


--
-- Data for Name: workouts_trainingprogram_workouts; Type: TABLE DATA; Schema: public; Owner: pi
--

INSERT INTO public.workouts_trainingprogram_workouts VALUES (1, 1, 1);
INSERT INTO public.workouts_trainingprogram_workouts VALUES (2, 1, 2);
INSERT INTO public.workouts_trainingprogram_workouts VALUES (3, 1, 3);
INSERT INTO public.workouts_trainingprogram_workouts VALUES (4, 1, 4);
INSERT INTO public.workouts_trainingprogram_workouts VALUES (5, 1, 5);
INSERT INTO public.workouts_trainingprogram_workouts VALUES (6, 1, 6);
INSERT INTO public.workouts_trainingprogram_workouts VALUES (7, 1, 7);
INSERT INTO public.workouts_trainingprogram_workouts VALUES (8, 1, 8);
INSERT INTO public.workouts_trainingprogram_workouts VALUES (9, 1, 9);
INSERT INTO public.workouts_trainingprogram_workouts VALUES (10, 1, 10);


--
-- Data for Name: workouts_workout; Type: TABLE DATA; Schema: public; Owner: pi
--

INSERT INTO public.workouts_workout VALUES (1, 'extensions élastiques', 0, '');
INSERT INTO public.workouts_workout VALUES (2, 'pompes standard', NULL, '');
INSERT INTO public.workouts_workout VALUES (3, 'pompes diamant', NULL, '');
INSERT INTO public.workouts_workout VALUES (4, 'korean dips', NULL, '');
INSERT INTO public.workouts_workout VALUES (5, 'élastiques pectoraux', NULL, 'hauteur à 20cm du sol, prise d''une main à l''intérieur');
INSERT INTO public.workouts_workout VALUES (6, 'haltères standard', 5, 'mouvement comme en tenant un marteau');
INSERT INTO public.workouts_workout VALUES (7, 'haltères rotation', 5, '');
INSERT INTO public.workouts_workout VALUES (8, 'haltères levées de bras', 3, '');
INSERT INTO public.workouts_workout VALUES (9, 'fentes avant', NULL, '');
INSERT INTO public.workouts_workout VALUES (10, 'squats', NULL, '');


--
-- Name: workouts_workout_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.workouts_workout_id_seq', 10, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: workouts_series workouts_series_date_workout_id_number_rep_054dfeb5_uniq; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.workouts_series
    ADD CONSTRAINT workouts_series_date_workout_id_number_rep_054dfeb5_uniq UNIQUE (date, workout_id, number, rep);


--
-- Name: workouts_series workouts_series_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.workouts_series
    ADD CONSTRAINT workouts_series_pkey PRIMARY KEY (id);


--
-- Name: workouts_trainingprogram workouts_training_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.workouts_trainingprogram
    ADD CONSTRAINT workouts_training_pkey PRIMARY KEY (id);


--
-- Name: workouts_trainingprogram_workouts workouts_training_workouts_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.workouts_trainingprogram_workouts
    ADD CONSTRAINT workouts_training_workouts_pkey PRIMARY KEY (id);


--
-- Name: workouts_trainingprogram_workouts workouts_training_workouts_training_id_workout_id_0da0e803_uniq; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.workouts_trainingprogram_workouts
    ADD CONSTRAINT workouts_training_workouts_training_id_workout_id_0da0e803_uniq UNIQUE (trainingprogram_id, workout_id);


--
-- Name: workouts_workout workouts_workout_pkey; Type: CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.workouts_workout
    ADD CONSTRAINT workouts_workout_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: workouts_series_training_id_8f4d0069; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX workouts_series_training_id_8f4d0069 ON public.workouts_series USING btree (training_id);


--
-- Name: workouts_series_workout_id_d5f71ef0; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX workouts_series_workout_id_d5f71ef0 ON public.workouts_series USING btree (workout_id);


--
-- Name: workouts_training_workouts_training_id_9b4635ae; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX workouts_training_workouts_training_id_9b4635ae ON public.workouts_trainingprogram_workouts USING btree (trainingprogram_id);


--
-- Name: workouts_training_workouts_workout_id_22546e79; Type: INDEX; Schema: public; Owner: pi
--

CREATE INDEX workouts_training_workouts_workout_id_22546e79 ON public.workouts_trainingprogram_workouts USING btree (workout_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: workouts_series workouts_series_training_id_8f4d0069_fk_workouts_; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.workouts_series
    ADD CONSTRAINT workouts_series_training_id_8f4d0069_fk_workouts_ FOREIGN KEY (training_id) REFERENCES public.workouts_trainingprogram(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: workouts_series workouts_series_workout_id_d5f71ef0_fk_workouts_workout_id; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.workouts_series
    ADD CONSTRAINT workouts_series_workout_id_d5f71ef0_fk_workouts_workout_id FOREIGN KEY (workout_id) REFERENCES public.workouts_workout(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: workouts_trainingprogram_workouts workouts_training_wo_workout_id_22546e79_fk_workouts_; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.workouts_trainingprogram_workouts
    ADD CONSTRAINT workouts_training_wo_workout_id_22546e79_fk_workouts_ FOREIGN KEY (workout_id) REFERENCES public.workouts_workout(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: workouts_trainingprogram_workouts workouts_trainingpro_trainingprogram_id_ce1c49d0_fk_workouts_; Type: FK CONSTRAINT; Schema: public; Owner: pi
--

ALTER TABLE ONLY public.workouts_trainingprogram_workouts
    ADD CONSTRAINT workouts_trainingpro_trainingprogram_id_ce1c49d0_fk_workouts_ FOREIGN KEY (trainingprogram_id) REFERENCES public.workouts_trainingprogram(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

