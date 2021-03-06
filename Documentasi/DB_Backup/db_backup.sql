PGDMP                         z            db_bus    14.3    14.3 Q    U           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            V           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            W           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            X           1262    41119    db_bus    DATABASE     i   CREATE DATABASE db_bus WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE db_bus;
                yusuf    false            ?            1259    41123    flyway_schema_history    TABLE     ?  CREATE TABLE public.flyway_schema_history (
    installed_rank integer NOT NULL,
    version character varying(50),
    description character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    script character varying(1000) NOT NULL,
    checksum integer,
    installed_by character varying(100) NOT NULL,
    installed_on timestamp without time zone DEFAULT now() NOT NULL,
    execution_time integer NOT NULL,
    success boolean NOT NULL
);
 )   DROP TABLE public.flyway_schema_history;
       public         heap    postgres    false            ?            1259    41129 	   tb_agency    TABLE     ?   CREATE TABLE public.tb_agency (
    id bigint NOT NULL,
    code character varying(255),
    details character varying(255),
    name character varying(255),
    owner_user_id bigint
);
    DROP TABLE public.tb_agency;
       public         heap    postgres    false            ?            1259    41134    tb_agency_id_seq    SEQUENCE     y   CREATE SEQUENCE public.tb_agency_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tb_agency_id_seq;
       public          postgres    false    210            Y           0    0    tb_agency_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tb_agency_id_seq OWNED BY public.tb_agency.id;
          public          postgres    false    211            ?            1259    41135    tb_bus    TABLE     ?   CREATE TABLE public.tb_bus (
    id bigint NOT NULL,
    capacity integer,
    code character varying(255),
    make character varying(255),
    agency_id bigint
);
    DROP TABLE public.tb_bus;
       public         heap    postgres    false            ?            1259    41140    tb_bus_id_seq    SEQUENCE     v   CREATE SEQUENCE public.tb_bus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tb_bus_id_seq;
       public          postgres    false    212            Z           0    0    tb_bus_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tb_bus_id_seq OWNED BY public.tb_bus.id;
          public          postgres    false    213            ?            1259    41141    tb_role    TABLE     X   CREATE TABLE public.tb_role (
    id bigint NOT NULL,
    name character varying(20)
);
    DROP TABLE public.tb_role;
       public         heap    postgres    false            ?            1259    41144    tb_role_id_seq    SEQUENCE     w   CREATE SEQUENCE public.tb_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tb_role_id_seq;
       public          postgres    false    214            [           0    0    tb_role_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tb_role_id_seq OWNED BY public.tb_role.id;
          public          postgres    false    215            ?            1259    41145    tb_stop    TABLE     ?   CREATE TABLE public.tb_stop (
    id bigint NOT NULL,
    code character varying(255),
    detail character varying(255),
    name character varying(255)
);
    DROP TABLE public.tb_stop;
       public         heap    postgres    false            ?            1259    41150    tb_stop_id_seq    SEQUENCE     w   CREATE SEQUENCE public.tb_stop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tb_stop_id_seq;
       public          postgres    false    216            \           0    0    tb_stop_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tb_stop_id_seq OWNED BY public.tb_stop.id;
          public          postgres    false    217            ?            1259    41151 	   tb_ticket    TABLE     ?   CREATE TABLE public.tb_ticket (
    id bigint NOT NULL,
    cancellable boolean,
    journey_date character varying(255),
    seat_number integer,
    user_id bigint,
    trip_schedule_id bigint
);
    DROP TABLE public.tb_ticket;
       public         heap    postgres    false            ?            1259    41154    tb_ticket_id_seq    SEQUENCE     y   CREATE SEQUENCE public.tb_ticket_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tb_ticket_id_seq;
       public          postgres    false    218            ]           0    0    tb_ticket_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tb_ticket_id_seq OWNED BY public.tb_ticket.id;
          public          postgres    false    219            ?            1259    41155    tb_trip    TABLE     ?   CREATE TABLE public.tb_trip (
    id bigint NOT NULL,
    fare integer NOT NULL,
    journey_time integer NOT NULL,
    agency_id bigint,
    bus_id bigint,
    dest_stop_id bigint,
    source_stop_id bigint
);
    DROP TABLE public.tb_trip;
       public         heap    postgres    false            ?            1259    41158    tb_trip_id_seq    SEQUENCE     w   CREATE SEQUENCE public.tb_trip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tb_trip_id_seq;
       public          postgres    false    220            ^           0    0    tb_trip_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tb_trip_id_seq OWNED BY public.tb_trip.id;
          public          postgres    false    221            ?            1259    41159    tb_trip_schedule    TABLE     ?   CREATE TABLE public.tb_trip_schedule (
    id bigint NOT NULL,
    available_seats integer NOT NULL,
    trip_date character varying(255),
    trip_id bigint
);
 $   DROP TABLE public.tb_trip_schedule;
       public         heap    postgres    false            ?            1259    41162    tb_trip_schedule_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tb_trip_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tb_trip_schedule_id_seq;
       public          postgres    false    222            _           0    0    tb_trip_schedule_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tb_trip_schedule_id_seq OWNED BY public.tb_trip_schedule.id;
          public          postgres    false    223            ?            1259    41163    tb_user    TABLE       CREATE TABLE public.tb_user (
    id bigint NOT NULL,
    email character varying(50),
    first_name character varying(120),
    last_name character varying(120),
    mobile_number character varying(120),
    password character varying(120),
    username character varying(50)
);
    DROP TABLE public.tb_user;
       public         heap    postgres    false            ?            1259    41168    tb_user_id_seq    SEQUENCE     w   CREATE SEQUENCE public.tb_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tb_user_id_seq;
       public          postgres    false    224            `           0    0    tb_user_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tb_user_id_seq OWNED BY public.tb_user.id;
          public          postgres    false    225            ?            1259    41169    tb_user_roles    TABLE     `   CREATE TABLE public.tb_user_roles (
    user_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 !   DROP TABLE public.tb_user_roles;
       public         heap    postgres    false            ?           2604    41172    tb_agency id    DEFAULT     l   ALTER TABLE ONLY public.tb_agency ALTER COLUMN id SET DEFAULT nextval('public.tb_agency_id_seq'::regclass);
 ;   ALTER TABLE public.tb_agency ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            ?           2604    41173 	   tb_bus id    DEFAULT     f   ALTER TABLE ONLY public.tb_bus ALTER COLUMN id SET DEFAULT nextval('public.tb_bus_id_seq'::regclass);
 8   ALTER TABLE public.tb_bus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            ?           2604    41174 
   tb_role id    DEFAULT     h   ALTER TABLE ONLY public.tb_role ALTER COLUMN id SET DEFAULT nextval('public.tb_role_id_seq'::regclass);
 9   ALTER TABLE public.tb_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            ?           2604    41175 
   tb_stop id    DEFAULT     h   ALTER TABLE ONLY public.tb_stop ALTER COLUMN id SET DEFAULT nextval('public.tb_stop_id_seq'::regclass);
 9   ALTER TABLE public.tb_stop ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            ?           2604    41176    tb_ticket id    DEFAULT     l   ALTER TABLE ONLY public.tb_ticket ALTER COLUMN id SET DEFAULT nextval('public.tb_ticket_id_seq'::regclass);
 ;   ALTER TABLE public.tb_ticket ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            ?           2604    41177 
   tb_trip id    DEFAULT     h   ALTER TABLE ONLY public.tb_trip ALTER COLUMN id SET DEFAULT nextval('public.tb_trip_id_seq'::regclass);
 9   ALTER TABLE public.tb_trip ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            ?           2604    41178    tb_trip_schedule id    DEFAULT     z   ALTER TABLE ONLY public.tb_trip_schedule ALTER COLUMN id SET DEFAULT nextval('public.tb_trip_schedule_id_seq'::regclass);
 B   ALTER TABLE public.tb_trip_schedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            ?           2604    41179 
   tb_user id    DEFAULT     h   ALTER TABLE ONLY public.tb_user ALTER COLUMN id SET DEFAULT nextval('public.tb_user_id_seq'::regclass);
 9   ALTER TABLE public.tb_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            A          0    41123    flyway_schema_history 
   TABLE DATA           ?   COPY public.flyway_schema_history (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) FROM stdin;
    public          postgres    false    209   ?^       B          0    41129 	   tb_agency 
   TABLE DATA           K   COPY public.tb_agency (id, code, details, name, owner_user_id) FROM stdin;
    public          postgres    false    210   ?^       D          0    41135    tb_bus 
   TABLE DATA           E   COPY public.tb_bus (id, capacity, code, make, agency_id) FROM stdin;
    public          postgres    false    212   \_       F          0    41141    tb_role 
   TABLE DATA           +   COPY public.tb_role (id, name) FROM stdin;
    public          postgres    false    214   ?_       H          0    41145    tb_stop 
   TABLE DATA           9   COPY public.tb_stop (id, code, detail, name) FROM stdin;
    public          postgres    false    216   ?_       J          0    41151 	   tb_ticket 
   TABLE DATA           j   COPY public.tb_ticket (id, cancellable, journey_date, seat_number, user_id, trip_schedule_id) FROM stdin;
    public          postgres    false    218   T`       L          0    41155    tb_trip 
   TABLE DATA           j   COPY public.tb_trip (id, fare, journey_time, agency_id, bus_id, dest_stop_id, source_stop_id) FROM stdin;
    public          postgres    false    220   q`       N          0    41159    tb_trip_schedule 
   TABLE DATA           S   COPY public.tb_trip_schedule (id, available_seats, trip_date, trip_id) FROM stdin;
    public          postgres    false    222   ?`       P          0    41163    tb_user 
   TABLE DATA           f   COPY public.tb_user (id, email, first_name, last_name, mobile_number, password, username) FROM stdin;
    public          postgres    false    224   ?`       R          0    41169    tb_user_roles 
   TABLE DATA           9   COPY public.tb_user_roles (user_id, role_id) FROM stdin;
    public          postgres    false    226   ?b       a           0    0    tb_agency_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tb_agency_id_seq', 7, true);
          public          postgres    false    211            b           0    0    tb_bus_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tb_bus_id_seq', 7, true);
          public          postgres    false    213            c           0    0    tb_role_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tb_role_id_seq', 1, false);
          public          postgres    false    215            d           0    0    tb_stop_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tb_stop_id_seq', 6, true);
          public          postgres    false    217            e           0    0    tb_ticket_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tb_ticket_id_seq', 1, false);
          public          postgres    false    219            f           0    0    tb_trip_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tb_trip_id_seq', 1, false);
          public          postgres    false    221            g           0    0    tb_trip_schedule_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tb_trip_schedule_id_seq', 2, true);
          public          postgres    false    223            h           0    0    tb_user_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tb_user_id_seq', 6, true);
          public          postgres    false    225            ?           2606    41181 .   flyway_schema_history flyway_schema_history_pk 
   CONSTRAINT     x   ALTER TABLE ONLY public.flyway_schema_history
    ADD CONSTRAINT flyway_schema_history_pk PRIMARY KEY (installed_rank);
 X   ALTER TABLE ONLY public.flyway_schema_history DROP CONSTRAINT flyway_schema_history_pk;
       public            postgres    false    209            ?           2606    41183    tb_agency tb_agency_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tb_agency
    ADD CONSTRAINT tb_agency_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tb_agency DROP CONSTRAINT tb_agency_pkey;
       public            postgres    false    210            ?           2606    41185    tb_bus tb_bus_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tb_bus
    ADD CONSTRAINT tb_bus_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tb_bus DROP CONSTRAINT tb_bus_pkey;
       public            postgres    false    212            ?           2606    41187    tb_role tb_role_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tb_role
    ADD CONSTRAINT tb_role_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tb_role DROP CONSTRAINT tb_role_pkey;
       public            postgres    false    214            ?           2606    41189    tb_stop tb_stop_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tb_stop
    ADD CONSTRAINT tb_stop_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tb_stop DROP CONSTRAINT tb_stop_pkey;
       public            postgres    false    216            ?           2606    41191    tb_ticket tb_ticket_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tb_ticket
    ADD CONSTRAINT tb_ticket_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tb_ticket DROP CONSTRAINT tb_ticket_pkey;
       public            postgres    false    218            ?           2606    41193    tb_trip tb_trip_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tb_trip
    ADD CONSTRAINT tb_trip_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tb_trip DROP CONSTRAINT tb_trip_pkey;
       public            postgres    false    220            ?           2606    41195 &   tb_trip_schedule tb_trip_schedule_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tb_trip_schedule
    ADD CONSTRAINT tb_trip_schedule_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tb_trip_schedule DROP CONSTRAINT tb_trip_schedule_pkey;
       public            postgres    false    222            ?           2606    41197    tb_user tb_user_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tb_user
    ADD CONSTRAINT tb_user_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tb_user DROP CONSTRAINT tb_user_pkey;
       public            postgres    false    224            ?           2606    41199     tb_user_roles tb_user_roles_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tb_user_roles
    ADD CONSTRAINT tb_user_roles_pkey PRIMARY KEY (user_id, role_id);
 J   ALTER TABLE ONLY public.tb_user_roles DROP CONSTRAINT tb_user_roles_pkey;
       public            postgres    false    226    226            ?           2606    41201 "   tb_bus uk2x8q9txwx59cij0fu8f4bbgww 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tb_bus
    ADD CONSTRAINT uk2x8q9txwx59cij0fu8f4bbgww UNIQUE (code);
 L   ALTER TABLE ONLY public.tb_bus DROP CONSTRAINT uk2x8q9txwx59cij0fu8f4bbgww;
       public            postgres    false    212            ?           2606    41203 #   tb_user uk4vih17mube9j7cqyjlfbcrk4m 
   CONSTRAINT     _   ALTER TABLE ONLY public.tb_user
    ADD CONSTRAINT uk4vih17mube9j7cqyjlfbcrk4m UNIQUE (email);
 M   ALTER TABLE ONLY public.tb_user DROP CONSTRAINT uk4vih17mube9j7cqyjlfbcrk4m;
       public            postgres    false    224            ?           2606    41205 #   tb_user uk4wv83hfajry5tdoamn8wsqa6x 
   CONSTRAINT     b   ALTER TABLE ONLY public.tb_user
    ADD CONSTRAINT uk4wv83hfajry5tdoamn8wsqa6x UNIQUE (username);
 M   ALTER TABLE ONLY public.tb_user DROP CONSTRAINT uk4wv83hfajry5tdoamn8wsqa6x;
       public            postgres    false    224            ?           1259    41206    flyway_schema_history_s_idx    INDEX     `   CREATE INDEX flyway_schema_history_s_idx ON public.flyway_schema_history USING btree (success);
 /   DROP INDEX public.flyway_schema_history_s_idx;
       public            postgres    false    209            ?           2606    41207 )   tb_user_roles fk19t64ocsol5x06fy2cytp7gey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tb_user_roles
    ADD CONSTRAINT fk19t64ocsol5x06fy2cytp7gey FOREIGN KEY (user_id) REFERENCES public.tb_user(id);
 S   ALTER TABLE ONLY public.tb_user_roles DROP CONSTRAINT fk19t64ocsol5x06fy2cytp7gey;
       public          postgres    false    3236    224    226            ?           2606    41212 "   tb_bus fk5u7ho69v708db1wfmwyxy7ada    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tb_bus
    ADD CONSTRAINT fk5u7ho69v708db1wfmwyxy7ada FOREIGN KEY (agency_id) REFERENCES public.tb_agency(id);
 L   ALTER TABLE ONLY public.tb_bus DROP CONSTRAINT fk5u7ho69v708db1wfmwyxy7ada;
       public          postgres    false    3220    212    210            ?           2606    41217 %   tb_ticket fk97lwd2e4myiak0iv8liqy6m73    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tb_ticket
    ADD CONSTRAINT fk97lwd2e4myiak0iv8liqy6m73 FOREIGN KEY (trip_schedule_id) REFERENCES public.tb_trip_schedule(id);
 O   ALTER TABLE ONLY public.tb_ticket DROP CONSTRAINT fk97lwd2e4myiak0iv8liqy6m73;
       public          postgres    false    222    3234    218            ?           2606    41222 %   tb_agency fkaf52n3hv8gkrwutflsx3dsu0a    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tb_agency
    ADD CONSTRAINT fkaf52n3hv8gkrwutflsx3dsu0a FOREIGN KEY (owner_user_id) REFERENCES public.tb_user(id);
 O   ALTER TABLE ONLY public.tb_agency DROP CONSTRAINT fkaf52n3hv8gkrwutflsx3dsu0a;
       public          postgres    false    210    3236    224            ?           2606    41227 #   tb_trip fkb9ya2jdoqp7e561bcffkfcg0w    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tb_trip
    ADD CONSTRAINT fkb9ya2jdoqp7e561bcffkfcg0w FOREIGN KEY (agency_id) REFERENCES public.tb_agency(id);
 M   ALTER TABLE ONLY public.tb_trip DROP CONSTRAINT fkb9ya2jdoqp7e561bcffkfcg0w;
       public          postgres    false    3220    220    210            ?           2606    41232 )   tb_user_roles fkft1jmfcluls775jqp5142wvl8    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tb_user_roles
    ADD CONSTRAINT fkft1jmfcluls775jqp5142wvl8 FOREIGN KEY (role_id) REFERENCES public.tb_role(id);
 S   ALTER TABLE ONLY public.tb_user_roles DROP CONSTRAINT fkft1jmfcluls775jqp5142wvl8;
       public          postgres    false    3226    214    226            ?           2606    41237 ,   tb_trip_schedule fkh8m8v7xrx1gxk97wmqcgdwkpd    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tb_trip_schedule
    ADD CONSTRAINT fkh8m8v7xrx1gxk97wmqcgdwkpd FOREIGN KEY (trip_id) REFERENCES public.tb_trip(id);
 V   ALTER TABLE ONLY public.tb_trip_schedule DROP CONSTRAINT fkh8m8v7xrx1gxk97wmqcgdwkpd;
       public          postgres    false    220    222    3232            ?           2606    41242 "   tb_trip fklxk3n3ls1rxdlrt0mly1utso    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tb_trip
    ADD CONSTRAINT fklxk3n3ls1rxdlrt0mly1utso FOREIGN KEY (dest_stop_id) REFERENCES public.tb_stop(id);
 L   ALTER TABLE ONLY public.tb_trip DROP CONSTRAINT fklxk3n3ls1rxdlrt0mly1utso;
       public          postgres    false    3228    220    216            ?           2606    41247 #   tb_trip fkmm1rg49eegmxrqb6l0rmds4xf    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tb_trip
    ADD CONSTRAINT fkmm1rg49eegmxrqb6l0rmds4xf FOREIGN KEY (source_stop_id) REFERENCES public.tb_stop(id);
 M   ALTER TABLE ONLY public.tb_trip DROP CONSTRAINT fkmm1rg49eegmxrqb6l0rmds4xf;
       public          postgres    false    3228    216    220            ?           2606    41252 #   tb_trip fkn2846c608hiibwh4rfl73ebtl    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tb_trip
    ADD CONSTRAINT fkn2846c608hiibwh4rfl73ebtl FOREIGN KEY (bus_id) REFERENCES public.tb_bus(id);
 M   ALTER TABLE ONLY public.tb_trip DROP CONSTRAINT fkn2846c608hiibwh4rfl73ebtl;
       public          postgres    false    220    3222    212            ?           2606    41257 %   tb_ticket fkoa6dths1eu8gnrlchutafn97o    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tb_ticket
    ADD CONSTRAINT fkoa6dths1eu8gnrlchutafn97o FOREIGN KEY (user_id) REFERENCES public.tb_user(id);
 O   ALTER TABLE ONLY public.tb_ticket DROP CONSTRAINT fkoa6dths1eu8gnrlchutafn97o;
       public          postgres    false    3236    224    218            A      x?????? ? ?      B   ?   x?E??
?0 ?s?}???۽??ͱb^v	?hVh+co?T?]?Ǘ?d?A?B?@NԆ?z?(􎠸??`
Rmxx?'???d_?u?9??j??(?8[K?L???!?x?JuUn4?!g8v?Sؠ"g>[??	uc?~??k?%;?_v?3(tML???R???W~?q@?*JC4      D   K   x?3?46??u	Q?\F ???H??qs?@e? 
LAT?{??9?	????s?r?8?q???qqq "??      F   !   x?3???q?v?2??]|=??b???? t??      H   \   x?3?4?5??MMĨ?\F@cN???0?5??p$???&%??#X
@q.??)?ObnA)PJeL?L?2?&?!@??EP?W? J[$#      J      x?????? ? ?      L   <   x?5??  ?3c??e???!\??)"????[?r?-?BfK?g˪?V?{?<l??      N   ,   x?3?4?t+?T?*?Q02R00?#O?###N#?=... ???      P   ?  x?m?Ks?@????p???@?.デ$0cͦ??????A??J??V???S?S??*?KƏpW???V???Y$??&?M?4!?\[n?Yb????>?bך?G??3?\?&dFWk?x??۝u7D?T?%eW?o?N]|V???)&?D{ ??)??I???({?V??QZ6R?32E?jm??Vl???ɡW?wO??V?l,?+Nө&SI?????>t]?q??j???v~?in}꿒?????'oc[7f??
4c?'ܭխ?.SLeBo/??ݞU?rW?[??8????'??|??F???}???^e-?;?)?&??%J?'???}誰0???Y?)????Ǭ??2V????`?H??ƣ҃??????ۇSҩ??i?>??????aV?߈Q?t?*???d??WK^???? ? /??      R      x?3?4?2bcN#. 6b3 ?F??? 4?y     