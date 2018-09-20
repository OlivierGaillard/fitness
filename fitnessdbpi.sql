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
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	workouts	series
8	workouts	workout
9	workouts	trainingprogram
10	workouts	dailytraining
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add series	7	add_series
26	Can change series	7	change_series
27	Can delete series	7	delete_series
28	Can view series	7	view_series
29	Can add workout	8	add_workout
30	Can change workout	8	change_workout
31	Can delete workout	8	delete_workout
32	Can view workout	8	view_workout
33	Can add training	9	add_training
34	Can change training	9	change_training
35	Can delete training	9	delete_training
36	Can view training	9	view_training
37	Can add training program	9	add_trainingprogram
38	Can change training program	9	change_trainingprogram
39	Can delete training program	9	delete_trainingprogram
40	Can view training program	9	view_trainingprogram
41	Can add daily training	10	add_dailytraining
42	Can change daily training	10	change_dailytraining
43	Can delete daily training	10	delete_dailytraining
44	Can view daily training	10	view_dailytraining
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$0pZyqNnuIlWa$eeomDhFHgb1A3U2PbcKO9OyQu/cddzJ+uSrLuHiaq9Q=	2018-09-03 19:02:12.858896+02	t	olivier			info@metacoherence.ch	t	t	2018-08-26 12:26:06.314731+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


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

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-08-26 12:37:09.057888+02	1	Workout object (1)	1	[{"added": {}}]	8	1
2	2018-08-26 12:38:04.665766+02	2	pompes standard	1	[{"added": {}}]	8	1
3	2018-08-26 12:38:30.282248+02	1	Training object (1)	1	[{"added": {}}]	9	1
4	2018-08-26 18:26:30.083904+02	1	Series object (1)	1	[{"added": {}}]	7	1
5	2018-08-26 18:27:43.727347+02	1	DailyTraining object (1)	1	[{"added": {}}]	10	1
6	2018-08-26 18:36:49.508415+02	1	extensions élastiques	2	[{"changed": {"fields": ["date"]}}]	7	1
7	2018-08-26 18:37:42.355089+02	2	extensions élastiques	1	[{"added": {}}]	7	1
8	2018-08-26 18:38:46.12248+02	2	extensions élastiques	2	[{"changed": {"fields": ["painfulness"]}}]	7	1
9	2018-08-26 18:38:54.263956+02	2	extensions élastiques	2	[{"changed": {"fields": ["painfulness"]}}]	7	1
10	2018-08-26 18:39:00.179592+02	1	extensions élastiques	2	[{"changed": {"fields": ["painfulness"]}}]	7	1
11	2018-08-26 18:39:37.82196+02	3	extensions élastiques	1	[{"added": {}}]	7	1
12	2018-08-26 18:41:01.508405+02	1	extensions élastiques	2	[{"changed": {"fields": ["painfulness"]}}]	7	1
13	2018-08-26 18:41:14.005323+02	2	extensions élastiques	2	[{"changed": {"fields": ["painfulness"]}}]	7	1
14	2018-08-26 18:48:08.204994+02	3	pompes diamant	1	[{"added": {}}]	8	1
15	2018-08-26 18:48:19.855986+02	4	korean dips	1	[{"added": {}}]	8	1
16	2018-08-26 18:48:58.105351+02	5	élastiques pectoraux	1	[{"added": {}}]	8	1
17	2018-08-26 18:49:35.645576+02	6	haltères standard	1	[{"added": {}}]	8	1
18	2018-08-26 18:49:54.168266+02	7	haltères rotation	1	[{"added": {}}]	8	1
19	2018-08-26 18:50:07.444862+02	8	haltères levées de bras	1	[{"added": {}}]	8	1
20	2018-08-26 18:50:15.600221+02	9	fentes avant	1	[{"added": {}}]	8	1
21	2018-08-26 18:50:22.385772+02	10	squats	1	[{"added": {}}]	8	1
22	2018-08-26 18:51:29.202042+02	1	Beginner	2	[{"changed": {"fields": ["workouts"]}}]	9	1
23	2018-08-26 18:52:44.214488+02	4	pompes standard	1	[{"added": {}}]	7	1
24	2018-08-26 18:53:13.756818+02	5	pompes standard	1	[{"added": {}}]	7	1
25	2018-08-26 18:53:50.49565+02	6	pompes standard	1	[{"added": {}}]	7	1
27	2018-08-27 16:57:02.424614+02	2	golivier	3		4	1
28	2018-08-27 16:59:07.894421+02	7	extensions élastiques	1	[{"added": {}}]	7	1
29	2018-08-27 16:59:28.65369+02	8	extensions élastiques	1	[{"added": {}}]	7	1
30	2018-08-27 16:59:48.147439+02	9	extensions élastiques	1	[{"added": {}}]	7	1
31	2018-08-27 17:00:07.017765+02	7	extensions élastiques	2	[{"changed": {"fields": ["date"]}}]	7	1
32	2018-08-27 17:00:27.199967+02	7	extensions élastiques	2	[{"changed": {"fields": ["date"]}}]	7	1
33	2018-08-27 17:00:38.066766+02	8	extensions élastiques	2	[{"changed": {"fields": ["date"]}}]	7	1
34	2018-08-27 17:00:46.737168+02	9	extensions élastiques	2	[{"changed": {"fields": ["date"]}}]	7	1
35	2018-08-27 17:01:12.783518+02	10	pompes diamant	1	[{"added": {}}]	7	1
36	2018-08-27 17:01:30.139793+02	11	pompes diamant	1	[{"added": {}}]	7	1
37	2018-08-27 17:01:54.460549+02	12	pompes diamant	1	[{"added": {}}]	7	1
38	2018-08-27 17:02:20.484204+02	13	korean dips	1	[{"added": {}}]	7	1
39	2018-08-28 09:27:24.430867+02	13	korean dips	2	[{"changed": {"fields": ["note"]}}]	7	1
40	2018-08-28 19:07:44.913419+02	14	extensions élastiques	1	[{"added": {}}]	7	1
41	2018-08-28 19:08:06.740242+02	15	extensions élastiques	1	[{"added": {}}]	7	1
42	2018-08-28 19:08:25.421685+02	16	extensions élastiques	1	[{"added": {}}]	7	1
43	2018-08-28 19:08:49.67748+02	17	pompes standard	1	[{"added": {}}]	7	1
44	2018-08-28 19:09:06.580238+02	18	pompes standard	1	[{"added": {}}]	7	1
45	2018-08-28 19:09:26.482664+02	19	pompes standard	1	[{"added": {}}]	7	1
46	2018-08-28 19:09:51.54905+02	20	pompes diamant	1	[{"added": {}}]	7	1
47	2018-08-28 19:10:05.225922+02	21	pompes diamant	1	[{"added": {}}]	7	1
48	2018-08-28 19:10:16.375953+02	22	pompes diamant	1	[{"added": {}}]	7	1
49	2018-08-28 19:10:45.274629+02	23	korean dips	1	[{"added": {}}]	7	1
50	2018-08-28 19:11:32.319551+02	24	korean dips	1	[{"added": {}}]	7	1
51	2018-08-28 19:11:45.655984+02	25	korean dips	1	[{"added": {}}]	7	1
52	2018-08-28 19:12:20.612891+02	26	élastiques pectoraux	1	[{"added": {}}]	7	1
53	2018-08-28 19:12:31.001463+02	27	élastiques pectoraux	1	[{"added": {}}]	7	1
54	2018-08-28 19:12:41.856354+02	28	élastiques pectoraux	1	[{"added": {}}]	7	1
55	2018-08-28 19:12:59.835562+02	29	élastiques pectoraux	1	[{"added": {}}]	7	1
56	2018-08-28 19:13:30.0846+02	27	élastiques pectoraux	3		7	1
57	2018-08-28 19:13:58.043427+02	30	haltères standard	1	[{"added": {}}]	7	1
58	2018-08-28 19:14:15.711952+02	31	haltères standard	1	[{"added": {}}]	7	1
59	2018-08-28 19:14:45.137576+02	32	haltères standard	1	[{"added": {}}]	7	1
60	2018-08-28 19:15:14.895877+02	33	haltères rotation	1	[{"added": {}}]	7	1
61	2018-08-28 19:15:27.379065+02	34	haltères rotation	1	[{"added": {}}]	7	1
62	2018-08-28 19:15:47.258748+02	35	haltères rotation	1	[{"added": {}}]	7	1
63	2018-08-28 19:16:33.167151+02	36	haltères levées de bras	1	[{"added": {}}]	7	1
64	2018-08-28 19:16:49.019794+02	37	haltères levées de bras	1	[{"added": {}}]	7	1
65	2018-08-28 19:17:10.312503+02	38	haltères levées de bras	1	[{"added": {}}]	7	1
66	2018-08-28 19:18:45.322741+02	38	haltères levées de bras	2	[]	7	1
67	2018-08-29 10:03:56.120292+02	33	haltères rotation	2	[]	7	1
68	2018-08-29 10:05:13.18336+02	33	haltères rotation	2	[]	7	1
69	2018-08-29 13:47:26.326587+02	33	haltères rotation	2	[]	7	1
70	2018-08-29 13:47:52.519517+02	39	haltères rotation	1	[{"added": {}}]	7	1
71	2018-08-29 13:48:20.691434+02	40	haltères rotation	1	[{"added": {}}]	7	1
72	2018-08-29 13:49:29.174232+02	38	haltères levées de bras	3		7	1
73	2018-08-29 13:49:54.89249+02	41	extensions élastiques	1	[{"added": {}}]	7	1
74	2018-08-29 13:50:24.027536+02	37	haltères levées de bras	2	[]	7	1
75	2018-08-29 13:51:09.185173+02	37	haltères levées de bras	2	[]	7	1
76	2018-08-29 13:51:27.732589+02	42	haltères levées de bras	1	[{"added": {}}]	7	1
77	2018-08-30 17:05:10.629067+02	41	extensions élastiques	3		7	1
78	2018-09-03 19:05:23.388243+02	43	extensions élastiques	1	[{"added": {}}]	7	1
79	2018-09-03 19:05:36.014784+02	43	extensions élastiques	2	[]	7	1
80	2018-09-03 19:05:58.321456+02	44	extensions élastiques	1	[{"added": {}}]	7	1
81	2018-09-03 19:06:14.903927+02	45	extensions élastiques	1	[{"added": {}}]	7	1
82	2018-09-03 19:07:11.070364+02	46	extensions élastiques	1	[{"added": {}}]	7	1
83	2018-09-03 19:07:28.951773+02	47	extensions élastiques	1	[{"added": {}}]	7	1
84	2018-09-03 19:07:49.138086+02	48	extensions élastiques	1	[{"added": {}}]	7	1
85	2018-09-03 19:09:03.645064+02	49	extensions élastiques	1	[{"added": {}}]	7	1
86	2018-09-03 19:09:20.104545+02	50	extensions élastiques	1	[{"added": {}}]	7	1
87	2018-09-03 19:09:36.385333+02	51	extensions élastiques	1	[{"added": {}}]	7	1
88	2018-09-03 19:10:11.328058+02	52	extensions élastiques	1	[{"added": {}}]	7	1
89	2018-09-03 19:10:27.211801+02	53	extensions élastiques	1	[{"added": {}}]	7	1
90	2018-09-03 19:11:12.992199+02	54	extensions élastiques	1	[{"added": {}}]	7	1
91	2018-09-03 19:11:47.209822+02	55	extensions élastiques	1	[{"added": {}}]	7	1
92	2018-09-03 19:12:08.701707+02	56	extensions élastiques	1	[{"added": {}}]	7	1
93	2018-09-03 19:12:23.921201+02	57	extensions élastiques	1	[{"added": {}}]	7	1
94	2018-09-03 19:14:29.368558+02	58	extensions élastiques	1	[{"added": {}}]	7	1
95	2018-09-03 19:14:46.313599+02	59	extensions élastiques	1	[{"added": {}}]	7	1
96	2018-09-03 19:15:08.023447+02	60	extensions élastiques	1	[{"added": {}}]	7	1
97	2018-09-03 19:18:23.615248+02	61	extensions élastiques	1	[{"added": {}}]	7	1
98	2018-09-03 19:18:44.178696+02	62	extensions élastiques	1	[{"added": {}}]	7	1
99	2018-09-03 19:19:10.511797+02	63	extensions élastiques	1	[{"added": {}}]	7	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 99, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-08-26 11:55:53.128789+02
2	auth	0001_initial	2018-08-26 11:55:53.307717+02
3	admin	0001_initial	2018-08-26 11:55:53.366715+02
4	admin	0002_logentry_remove_auto_add	2018-08-26 11:55:53.380701+02
5	admin	0003_logentry_add_action_flag_choices	2018-08-26 11:55:53.389975+02
6	contenttypes	0002_remove_content_type_name	2018-08-26 11:55:53.431306+02
7	auth	0002_alter_permission_name_max_length	2018-08-26 11:55:53.442597+02
8	auth	0003_alter_user_email_max_length	2018-08-26 11:55:53.454704+02
9	auth	0004_alter_user_username_opts	2018-08-26 11:55:53.461907+02
10	auth	0005_alter_user_last_login_null	2018-08-26 11:55:53.473371+02
11	auth	0006_require_contenttypes_0002	2018-08-26 11:55:53.477829+02
12	auth	0007_alter_validators_add_error_messages	2018-08-26 11:55:53.48648+02
13	auth	0008_alter_user_username_max_length	2018-08-26 11:55:53.50177+02
14	auth	0009_alter_user_last_name_max_length	2018-08-26 11:55:53.515721+02
15	sessions	0001_initial	2018-08-26 11:55:53.54476+02
16	workouts	0001_initial	2018-08-26 12:23:19.090804+02
17	workouts	0002_auto_20180826_1030	2018-08-26 12:30:57.553542+02
18	workouts	0003_training_workouts	2018-08-26 12:35:50.513716+02
19	workouts	0004_auto_20180826_1457	2018-08-26 16:57:07.992574+02
20	workouts	0005_auto_20180826_1520	2018-08-26 17:25:17.330481+02
21	workouts	0006_remove_trainingprogram_date	2018-08-26 17:25:17.342697+02
22	workouts	0007_auto_20180826_1621	2018-08-26 18:21:44.379957+02
23	workouts	0008_auto_20180826_1630	2018-08-26 18:30:24.892371+02
24	workouts	0009_series_date	2018-08-26 18:31:10.595653+02
25	workouts	0010_auto_20180826_1638	2018-08-26 18:38:31.289478+02
26	workouts	0011_auto_20180828_0722	2018-08-28 09:23:00.34698+02
27	workouts	0012_auto_20180829_0753	2018-08-29 10:01:04.357772+02
28	workouts	0013_auto_20180829_0755	2018-08-29 10:01:04.379643+02
29	workouts	0014_auto_20180829_1145	2018-08-29 13:45:23.846428+02
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
4jmu8ow4r1by2a4kb2gjgrutju927gq1	ZjI5YmZlM2RhN2MwYWMzMmQyOTg4NjlkMzk3ZGVkY2RhZDcxMzU4Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YTUzN2VhMDE0YTk2YjNjZDk2NWI0ZDdhYTVjOGY1ZWMzZDFkOWVjIn0=	2018-09-09 12:26:50.398844+02
wvty4h9taa6a7impzy0cqd2elj5w9022	MmM2NzRmMjBiNGYyZDM5ODgzMmVhZTQ0MDc2ODQ4MDU4NzEzZjIzMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmU3MmI5YjM2ZTE2NzRhMWRmZjIzZDgwOGVhZTc3YTg5M2RhNWYxNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-09-11 09:23:26.981623+02
qqc9fv89id0nfz4dfd79bl8upwq0epjy	ZGM5YzgwMzMzZjcwMTU5MTM5MTI0ZDA0ZTI2YTUxOWU3MGRkMjM1Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmZTcyYjliMzZlMTY3NGExZGZmMjNkODA4ZWFlNzdhODkzZGE1ZjE2In0=	2018-09-17 19:02:12.866998+02
\.


--
-- Data for Name: workouts_trainingprogram; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY public.workouts_trainingprogram (id, name) FROM stdin;
1	Beginner
\.


--
-- Data for Name: workouts_workout; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY public.workouts_workout (id, name, weight, note) FROM stdin;
1	extensions élastiques	0	
2	pompes standard	\N	
3	pompes diamant	\N	
4	korean dips	\N	
5	élastiques pectoraux	\N	hauteur à 20cm du sol, prise d'une main à l'intérieur
6	haltères standard	5	mouvement comme en tenant un marteau
7	haltères rotation	5	
8	haltères levées de bras	3	
9	fentes avant	\N	
10	squats	\N	
\.


--
-- Data for Name: workouts_series; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY public.workouts_series (id, rep, painfulness, workout_id, number, training_id, date, note, type) FROM stdin;
3	15	2	1	3	1	2018-08-25	\N	1
1	25	\N	1	1	1	2018-08-25	\N	1
2	19	3	1	2	1	2018-08-25	\N	1
4	8	1	2	1	1	2018-08-25	\N	1
5	16	3	2	2	1	2018-08-25	\N	1
6	8	2	2	3	1	2018-08-25	\N	1
7	23	\N	1	1	1	2018-08-21	\N	1
8	25	3	1	2	1	2018-08-21	\N	1
9	23	3	1	3	1	2018-08-21	\N	1
10	11	\N	3	1	1	2018-08-21	\N	1
11	9	\N	3	2	1	2018-08-21	\N	1
12	7	\N	3	3	1	2018-08-21	\N	1
13	17	3	4	1	1	2018-08-21	arrêt de la session suite à des douleurs violentes à la tête	1
14	28	2	1	1	1	2018-08-28		1
15	22	2	1	2	1	2018-08-28		1
16	20	2	1	3	1	2018-08-28		1
17	15	3	2	1	1	2018-08-28		1
18	13	2	2	2	1	2018-08-28		1
19	8	3	2	3	1	2018-08-28		1
20	11	2	3	1	1	2018-08-28		1
21	10	\N	3	2	1	2018-08-28		1
22	9	\N	3	3	1	2018-08-28		1
23	16	3	4	1	1	2018-08-28		1
24	14	2	4	2	1	2018-08-28		1
25	12	\N	4	3	1	2018-08-28		1
26	25	\N	5	1	1	2018-08-28		1
28	23	\N	5	2	1	2018-08-28		1
29	21	\N	5	3	1	2018-08-28		1
30	18	3	6	1	1	2018-08-28		1
31	11	\N	6	2	1	2018-08-28		1
32	10	3	6	3	1	2018-08-28	épuisement à gauche	1
36	27	3	8	1	1	2018-08-28		1
33	14	\N	7	1	1	2018-08-28		1
39	11	\N	7	2	1	2018-08-28		1
40	9	\N	7	3	1	2018-08-28		1
37	25	\N	8	2	1	2018-08-28		1
42	23	\N	8	3	1	2018-08-28		1
43	29	\N	1	1	1	2018-08-01		1
44	23	\N	1	2	1	2018-08-01		1
45	17	\N	1	3	1	2018-08-01		1
46	46	\N	1	1	1	2018-08-04		1
47	23	\N	1	2	1	2018-08-04		1
48	17	\N	1	3	1	2018-08-04		1
49	26	\N	1	1	1	2018-08-06		1
50	18	\N	1	2	1	2018-08-06		1
51	13	\N	1	3	1	2018-08-06		1
52	47	\N	1	1	1	2018-08-10		1
53	25	\N	1	2	1	2018-08-10		1
54	23	\N	1	3	1	2018-08-10		1
55	35	\N	1	1	1	2018-08-13		1
56	25	1	1	2	1	2018-08-13		1
57	23	\N	1	3	1	2018-08-13		1
58	35	\N	1	1	1	2018-08-18		1
59	33	\N	1	2	1	2018-08-18		1
60	31	2	1	3	1	2018-08-18		1
61	25	\N	1	1	1	2018-09-02		1
62	23	2	1	2	1	2018-09-02		1
63	21	2	1	3	1	2018-09-02		1
\.


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
-- Data for Name: workouts_trainingprogram_workouts; Type: TABLE DATA; Schema: public; Owner: pi
--

COPY public.workouts_trainingprogram_workouts (id, trainingprogram_id, workout_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	1	7
8	1	8
9	1	9
10	1	10
\.


--
-- Name: workouts_workout_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pi
--

SELECT pg_catalog.setval('public.workouts_workout_id_seq', 10, true);


--
-- PostgreSQL database dump complete
--

