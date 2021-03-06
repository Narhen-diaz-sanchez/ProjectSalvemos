PGDMP             
        	    y         
   salvemosdb    13.4    13.4 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    17435 
   salvemosdb    DATABASE     i   CREATE DATABASE salvemosdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE salvemosdb;
                postgres    false            ?            1259    17690    Home_contact    TABLE       CREATE TABLE public."Home_contact" (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    full_name character varying(60) NOT NULL,
    email character varying(254) NOT NULL,
    message text NOT NULL
);
 "   DROP TABLE public."Home_contact";
       public         heap    salvemosadmin    false            ?            1259    17688    Home_contact_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."Home_contact_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Home_contact_id_seq";
       public          salvemosadmin    false    230            ?           0    0    Home_contact_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Home_contact_id_seq" OWNED BY public."Home_contact".id;
          public          salvemosadmin    false    229            ?            1259    17601    Posts_category    TABLE     ?   CREATE TABLE public."Posts_category" (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    name character varying(30) NOT NULL
);
 $   DROP TABLE public."Posts_category";
       public         heap    salvemosadmin    false            ?            1259    17599    Posts_category_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Posts_category_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Posts_category_id_seq";
       public          salvemosadmin    false    220            ?           0    0    Posts_category_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Posts_category_id_seq" OWNED BY public."Posts_category".id;
          public          salvemosadmin    false    219            ?            1259    17619    Posts_posts    TABLE     ?  CREATE TABLE public."Posts_posts" (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    title character varying(200) NOT NULL,
    resume text NOT NULL,
    content text NOT NULL,
    public boolean NOT NULL,
    image character varying(100) NOT NULL,
    slug character varying(300) NOT NULL,
    category_id bigint NOT NULL,
    user_id bigint NOT NULL
);
 !   DROP TABLE public."Posts_posts";
       public         heap    salvemosadmin    false            ?            1259    17617    Posts_posts_id_seq    SEQUENCE     }   CREATE SEQUENCE public."Posts_posts_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Posts_posts_id_seq";
       public          salvemosadmin    false    224            ?           0    0    Posts_posts_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Posts_posts_id_seq" OWNED BY public."Posts_posts".id;
          public          salvemosadmin    false    223            ?            1259    17630    Posts_posts_tag    TABLE     |   CREATE TABLE public."Posts_posts_tag" (
    id bigint NOT NULL,
    posts_id bigint NOT NULL,
    tag_id bigint NOT NULL
);
 %   DROP TABLE public."Posts_posts_tag";
       public         heap    salvemosadmin    false            ?            1259    17628    Posts_posts_tag_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Posts_posts_tag_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Posts_posts_tag_id_seq";
       public          salvemosadmin    false    226            ?           0    0    Posts_posts_tag_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Posts_posts_tag_id_seq" OWNED BY public."Posts_posts_tag".id;
          public          salvemosadmin    false    225            ?            1259    17611 	   Posts_tag    TABLE     ?   CREATE TABLE public."Posts_tag" (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    name character varying(30) NOT NULL
);
    DROP TABLE public."Posts_tag";
       public         heap    salvemosadmin    false            ?            1259    17609    Posts_tag_id_seq    SEQUENCE     {   CREATE SEQUENCE public."Posts_tag_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Posts_tag_id_seq";
       public          salvemosadmin    false    222            ?           0    0    Posts_tag_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Posts_tag_id_seq" OWNED BY public."Posts_tag".id;
          public          salvemosadmin    false    221            ?            1259    17667    Users_favorites    TABLE     ?   CREATE TABLE public."Users_favorites" (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    post_id bigint NOT NULL,
    user_id bigint NOT NULL
);
 %   DROP TABLE public."Users_favorites";
       public         heap    salvemosadmin    false            ?            1259    17665    Users_favorites_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Users_favorites_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Users_favorites_id_seq";
       public          salvemosadmin    false    228            ?           0    0    Users_favorites_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Users_favorites_id_seq" OWNED BY public."Users_favorites".id;
          public          salvemosadmin    false    227            ?            1259    17512 
   Users_user    TABLE     ?  CREATE TABLE public."Users_user" (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    email character varying(254) NOT NULL,
    name character varying(30) NOT NULL,
    last_name character varying(40) NOT NULL,
    is_foundation boolean NOT NULL,
    genero character varying(1) NOT NULL,
    date_birth date,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL
);
     DROP TABLE public."Users_user";
       public         heap    salvemosadmin    false            ?            1259    17522    Users_user_groups    TABLE     ?   CREATE TABLE public."Users_user_groups" (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);
 '   DROP TABLE public."Users_user_groups";
       public         heap    salvemosadmin    false            ?            1259    17520    Users_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Users_user_groups_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Users_user_groups_id_seq";
       public          salvemosadmin    false    213            ?           0    0    Users_user_groups_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Users_user_groups_id_seq" OWNED BY public."Users_user_groups".id;
          public          salvemosadmin    false    212            ?            1259    17510    Users_user_id_seq    SEQUENCE     |   CREATE SEQUENCE public."Users_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Users_user_id_seq";
       public          salvemosadmin    false    211            ?           0    0    Users_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Users_user_id_seq" OWNED BY public."Users_user".id;
          public          salvemosadmin    false    210            ?            1259    17530    Users_user_user_permissions    TABLE     ?   CREATE TABLE public."Users_user_user_permissions" (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 1   DROP TABLE public."Users_user_user_permissions";
       public         heap    salvemosadmin    false            ?            1259    17528 "   Users_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Users_user_user_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."Users_user_user_permissions_id_seq";
       public          salvemosadmin    false    215            ?           0    0 "   Users_user_user_permissions_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."Users_user_user_permissions_id_seq" OWNED BY public."Users_user_user_permissions".id;
          public          salvemosadmin    false    214            ?            1259    17468 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    salvemosadmin    false            ?            1259    17466    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          salvemosadmin    false    207            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          salvemosadmin    false    206            ?            1259    17478    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    salvemosadmin    false            ?            1259    17476    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          salvemosadmin    false    209            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          salvemosadmin    false    208            ?            1259    17460    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    salvemosadmin    false            ?            1259    17458    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          salvemosadmin    false    205            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          salvemosadmin    false    204            ?            1259    17567    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    salvemosadmin    false            ?            1259    17565    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          salvemosadmin    false    217            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          salvemosadmin    false    216            ?            1259    17450    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    salvemosadmin    false            ?            1259    17448    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          salvemosadmin    false    203            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          salvemosadmin    false    202            ?            1259    17439    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    salvemosadmin    false            ?            1259    17437    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          salvemosadmin    false    201            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          salvemosadmin    false    200            ?            1259    17589    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    salvemosadmin    false            ?           2604    17693    Home_contact id    DEFAULT     v   ALTER TABLE ONLY public."Home_contact" ALTER COLUMN id SET DEFAULT nextval('public."Home_contact_id_seq"'::regclass);
 @   ALTER TABLE public."Home_contact" ALTER COLUMN id DROP DEFAULT;
       public          salvemosadmin    false    230    229    230            ?           2604    17604    Posts_category id    DEFAULT     z   ALTER TABLE ONLY public."Posts_category" ALTER COLUMN id SET DEFAULT nextval('public."Posts_category_id_seq"'::regclass);
 B   ALTER TABLE public."Posts_category" ALTER COLUMN id DROP DEFAULT;
       public          salvemosadmin    false    219    220    220            ?           2604    17622    Posts_posts id    DEFAULT     t   ALTER TABLE ONLY public."Posts_posts" ALTER COLUMN id SET DEFAULT nextval('public."Posts_posts_id_seq"'::regclass);
 ?   ALTER TABLE public."Posts_posts" ALTER COLUMN id DROP DEFAULT;
       public          salvemosadmin    false    223    224    224            ?           2604    17633    Posts_posts_tag id    DEFAULT     |   ALTER TABLE ONLY public."Posts_posts_tag" ALTER COLUMN id SET DEFAULT nextval('public."Posts_posts_tag_id_seq"'::regclass);
 C   ALTER TABLE public."Posts_posts_tag" ALTER COLUMN id DROP DEFAULT;
       public          salvemosadmin    false    226    225    226            ?           2604    17614    Posts_tag id    DEFAULT     p   ALTER TABLE ONLY public."Posts_tag" ALTER COLUMN id SET DEFAULT nextval('public."Posts_tag_id_seq"'::regclass);
 =   ALTER TABLE public."Posts_tag" ALTER COLUMN id DROP DEFAULT;
       public          salvemosadmin    false    222    221    222            ?           2604    17670    Users_favorites id    DEFAULT     |   ALTER TABLE ONLY public."Users_favorites" ALTER COLUMN id SET DEFAULT nextval('public."Users_favorites_id_seq"'::regclass);
 C   ALTER TABLE public."Users_favorites" ALTER COLUMN id DROP DEFAULT;
       public          salvemosadmin    false    227    228    228            ?           2604    17515    Users_user id    DEFAULT     r   ALTER TABLE ONLY public."Users_user" ALTER COLUMN id SET DEFAULT nextval('public."Users_user_id_seq"'::regclass);
 >   ALTER TABLE public."Users_user" ALTER COLUMN id DROP DEFAULT;
       public          salvemosadmin    false    210    211    211            ?           2604    17525    Users_user_groups id    DEFAULT     ?   ALTER TABLE ONLY public."Users_user_groups" ALTER COLUMN id SET DEFAULT nextval('public."Users_user_groups_id_seq"'::regclass);
 E   ALTER TABLE public."Users_user_groups" ALTER COLUMN id DROP DEFAULT;
       public          salvemosadmin    false    212    213    213            ?           2604    17533    Users_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public."Users_user_user_permissions" ALTER COLUMN id SET DEFAULT nextval('public."Users_user_user_permissions_id_seq"'::regclass);
 O   ALTER TABLE public."Users_user_user_permissions" ALTER COLUMN id DROP DEFAULT;
       public          salvemosadmin    false    215    214    215            ?           2604    17471    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          salvemosadmin    false    207    206    207            ?           2604    17481    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          salvemosadmin    false    209    208    209            ?           2604    17463    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          salvemosadmin    false    204    205    205            ?           2604    17570    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          salvemosadmin    false    217    216    217            ?           2604    17453    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          salvemosadmin    false    202    203    203                       2604    17442    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          salvemosadmin    false    200    201    201            ?          0    17690    Home_contact 
   TABLE DATA           Z   COPY public."Home_contact" (id, created, modified, full_name, email, message) FROM stdin;
    public          salvemosadmin    false    230   ??       ~          0    17601    Posts_category 
   TABLE DATA           G   COPY public."Posts_category" (id, created, modified, name) FROM stdin;
    public          salvemosadmin    false    220   S?       ?          0    17619    Posts_posts 
   TABLE DATA           ?   COPY public."Posts_posts" (id, created, modified, title, resume, content, public, image, slug, category_id, user_id) FROM stdin;
    public          salvemosadmin    false    224   ??       ?          0    17630    Posts_posts_tag 
   TABLE DATA           A   COPY public."Posts_posts_tag" (id, posts_id, tag_id) FROM stdin;
    public          salvemosadmin    false    226   ??       ?          0    17611 	   Posts_tag 
   TABLE DATA           B   COPY public."Posts_tag" (id, created, modified, name) FROM stdin;
    public          salvemosadmin    false    222    ?       ?          0    17667    Users_favorites 
   TABLE DATA           T   COPY public."Users_favorites" (id, created, modified, post_id, user_id) FROM stdin;
    public          salvemosadmin    false    228   ??       u          0    17512 
   Users_user 
   TABLE DATA           ?   COPY public."Users_user" (id, password, last_login, is_superuser, email, name, last_name, is_foundation, genero, date_birth, is_staff, is_active) FROM stdin;
    public          salvemosadmin    false    211   ??       w          0    17522    Users_user_groups 
   TABLE DATA           D   COPY public."Users_user_groups" (id, user_id, group_id) FROM stdin;
    public          salvemosadmin    false    213   ??       y          0    17530    Users_user_user_permissions 
   TABLE DATA           S   COPY public."Users_user_user_permissions" (id, user_id, permission_id) FROM stdin;
    public          salvemosadmin    false    215   ??       q          0    17468 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          salvemosadmin    false    207   ?       s          0    17478    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          salvemosadmin    false    209   /?       o          0    17460    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          salvemosadmin    false    205   L?       {          0    17567    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          salvemosadmin    false    217   #?       m          0    17450    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          salvemosadmin    false    203   B?       k          0    17439    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          salvemosadmin    false    201   ??       |          0    17589    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          salvemosadmin    false    218   ??       ?           0    0    Home_contact_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Home_contact_id_seq"', 1, true);
          public          salvemosadmin    false    229            ?           0    0    Posts_category_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Posts_category_id_seq"', 3, true);
          public          salvemosadmin    false    219            ?           0    0    Posts_posts_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Posts_posts_id_seq"', 17, true);
          public          salvemosadmin    false    223            ?           0    0    Posts_posts_tag_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Posts_posts_tag_id_seq"', 9, true);
          public          salvemosadmin    false    225            ?           0    0    Posts_tag_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Posts_tag_id_seq"', 3, true);
          public          salvemosadmin    false    221            ?           0    0    Users_favorites_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Users_favorites_id_seq"', 1, false);
          public          salvemosadmin    false    227            ?           0    0    Users_user_groups_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Users_user_groups_id_seq"', 1, false);
          public          salvemosadmin    false    212            ?           0    0    Users_user_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Users_user_id_seq"', 2, true);
          public          salvemosadmin    false    210            ?           0    0 "   Users_user_user_permissions_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."Users_user_user_permissions_id_seq"', 1, false);
          public          salvemosadmin    false    214            ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          salvemosadmin    false    206            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          salvemosadmin    false    208            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
          public          salvemosadmin    false    204            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 20, true);
          public          salvemosadmin    false    216            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
          public          salvemosadmin    false    202            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);
          public          salvemosadmin    false    200            ?           2606    17698    Home_contact Home_contact_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Home_contact"
    ADD CONSTRAINT "Home_contact_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Home_contact" DROP CONSTRAINT "Home_contact_pkey";
       public            salvemosadmin    false    230            ?           2606    17608 &   Posts_category Posts_category_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public."Posts_category"
    ADD CONSTRAINT "Posts_category_name_key" UNIQUE (name);
 T   ALTER TABLE ONLY public."Posts_category" DROP CONSTRAINT "Posts_category_name_key";
       public            salvemosadmin    false    220            ?           2606    17606 "   Posts_category Posts_category_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Posts_category"
    ADD CONSTRAINT "Posts_category_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Posts_category" DROP CONSTRAINT "Posts_category_pkey";
       public            salvemosadmin    false    220            ?           2606    17627    Posts_posts Posts_posts_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Posts_posts"
    ADD CONSTRAINT "Posts_posts_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Posts_posts" DROP CONSTRAINT "Posts_posts_pkey";
       public            salvemosadmin    false    224            ?           2606    17635 $   Posts_posts_tag Posts_posts_tag_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Posts_posts_tag"
    ADD CONSTRAINT "Posts_posts_tag_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."Posts_posts_tag" DROP CONSTRAINT "Posts_posts_tag_pkey";
       public            salvemosadmin    false    226            ?           2606    17652 =   Posts_posts_tag Posts_posts_tag_posts_id_tag_id_03bbcbb9_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public."Posts_posts_tag"
    ADD CONSTRAINT "Posts_posts_tag_posts_id_tag_id_03bbcbb9_uniq" UNIQUE (posts_id, tag_id);
 k   ALTER TABLE ONLY public."Posts_posts_tag" DROP CONSTRAINT "Posts_posts_tag_posts_id_tag_id_03bbcbb9_uniq";
       public            salvemosadmin    false    226    226            ?           2606    17616    Posts_tag Posts_tag_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Posts_tag"
    ADD CONSTRAINT "Posts_tag_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Posts_tag" DROP CONSTRAINT "Posts_tag_pkey";
       public            salvemosadmin    false    222            ?           2606    17672 $   Users_favorites Users_favorites_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Users_favorites"
    ADD CONSTRAINT "Users_favorites_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."Users_favorites" DROP CONSTRAINT "Users_favorites_pkey";
       public            salvemosadmin    false    228            ?           2606    17674 =   Users_favorites Users_favorites_user_id_post_id_3323b75a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public."Users_favorites"
    ADD CONSTRAINT "Users_favorites_user_id_post_id_3323b75a_uniq" UNIQUE (user_id, post_id);
 k   ALTER TABLE ONLY public."Users_favorites" DROP CONSTRAINT "Users_favorites_user_id_post_id_3323b75a_uniq";
       public            salvemosadmin    false    228    228            ?           2606    17519    Users_user Users_user_email_key 
   CONSTRAINT     _   ALTER TABLE ONLY public."Users_user"
    ADD CONSTRAINT "Users_user_email_key" UNIQUE (email);
 M   ALTER TABLE ONLY public."Users_user" DROP CONSTRAINT "Users_user_email_key";
       public            salvemosadmin    false    211            ?           2606    17527 (   Users_user_groups Users_user_groups_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Users_user_groups"
    ADD CONSTRAINT "Users_user_groups_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."Users_user_groups" DROP CONSTRAINT "Users_user_groups_pkey";
       public            salvemosadmin    false    213            ?           2606    17538 B   Users_user_groups Users_user_groups_user_id_group_id_21477a3e_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public."Users_user_groups"
    ADD CONSTRAINT "Users_user_groups_user_id_group_id_21477a3e_uniq" UNIQUE (user_id, group_id);
 p   ALTER TABLE ONLY public."Users_user_groups" DROP CONSTRAINT "Users_user_groups_user_id_group_id_21477a3e_uniq";
       public            salvemosadmin    false    213    213            ?           2606    17517    Users_user Users_user_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Users_user"
    ADD CONSTRAINT "Users_user_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Users_user" DROP CONSTRAINT "Users_user_pkey";
       public            salvemosadmin    false    211            ?           2606    17535 <   Users_user_user_permissions Users_user_user_permissions_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."Users_user_user_permissions"
    ADD CONSTRAINT "Users_user_user_permissions_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."Users_user_user_permissions" DROP CONSTRAINT "Users_user_user_permissions_pkey";
       public            salvemosadmin    false    215            ?           2606    17552 [   Users_user_user_permissions Users_user_user_permissions_user_id_permission_id_87c10865_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public."Users_user_user_permissions"
    ADD CONSTRAINT "Users_user_user_permissions_user_id_permission_id_87c10865_uniq" UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public."Users_user_user_permissions" DROP CONSTRAINT "Users_user_user_permissions_user_id_permission_id_87c10865_uniq";
       public            salvemosadmin    false    215    215            ?           2606    17508    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            salvemosadmin    false    207            ?           2606    17494 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            salvemosadmin    false    209    209            ?           2606    17483 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            salvemosadmin    false    209            ?           2606    17473    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            salvemosadmin    false    207            ?           2606    17485 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            salvemosadmin    false    205    205            ?           2606    17465 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            salvemosadmin    false    205            ?           2606    17576 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            salvemosadmin    false    217            ?           2606    17457 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            salvemosadmin    false    203    203            ?           2606    17455 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            salvemosadmin    false    203            ?           2606    17447 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            salvemosadmin    false    201            ?           2606    17596 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            salvemosadmin    false    218            ?           1259    17636 !   Posts_category_name_e9423674_like    INDEX     t   CREATE INDEX "Posts_category_name_e9423674_like" ON public."Posts_category" USING btree (name varchar_pattern_ops);
 7   DROP INDEX public."Posts_category_name_e9423674_like";
       public            salvemosadmin    false    220            ?           1259    17649     Posts_posts_category_id_308c162a    INDEX     c   CREATE INDEX "Posts_posts_category_id_308c162a" ON public."Posts_posts" USING btree (category_id);
 6   DROP INDEX public."Posts_posts_category_id_308c162a";
       public            salvemosadmin    false    224            ?           1259    17647    Posts_posts_slug_f80ae073    INDEX     U   CREATE INDEX "Posts_posts_slug_f80ae073" ON public."Posts_posts" USING btree (slug);
 /   DROP INDEX public."Posts_posts_slug_f80ae073";
       public            salvemosadmin    false    224            ?           1259    17648    Posts_posts_slug_f80ae073_like    INDEX     n   CREATE INDEX "Posts_posts_slug_f80ae073_like" ON public."Posts_posts" USING btree (slug varchar_pattern_ops);
 4   DROP INDEX public."Posts_posts_slug_f80ae073_like";
       public            salvemosadmin    false    224            ?           1259    17663 !   Posts_posts_tag_posts_id_aa151d9f    INDEX     e   CREATE INDEX "Posts_posts_tag_posts_id_aa151d9f" ON public."Posts_posts_tag" USING btree (posts_id);
 7   DROP INDEX public."Posts_posts_tag_posts_id_aa151d9f";
       public            salvemosadmin    false    226            ?           1259    17664    Posts_posts_tag_tag_id_ab92d47d    INDEX     a   CREATE INDEX "Posts_posts_tag_tag_id_ab92d47d" ON public."Posts_posts_tag" USING btree (tag_id);
 5   DROP INDEX public."Posts_posts_tag_tag_id_ab92d47d";
       public            salvemosadmin    false    226            ?           1259    17650    Posts_posts_user_id_f1a5fd77    INDEX     [   CREATE INDEX "Posts_posts_user_id_f1a5fd77" ON public."Posts_posts" USING btree (user_id);
 2   DROP INDEX public."Posts_posts_user_id_f1a5fd77";
       public            salvemosadmin    false    224            ?           1259    17685     Users_favorites_post_id_cdb46bd7    INDEX     c   CREATE INDEX "Users_favorites_post_id_cdb46bd7" ON public."Users_favorites" USING btree (post_id);
 6   DROP INDEX public."Users_favorites_post_id_cdb46bd7";
       public            salvemosadmin    false    228            ?           1259    17686     Users_favorites_user_id_10a40957    INDEX     c   CREATE INDEX "Users_favorites_user_id_10a40957" ON public."Users_favorites" USING btree (user_id);
 6   DROP INDEX public."Users_favorites_user_id_10a40957";
       public            salvemosadmin    false    228            ?           1259    17536    Users_user_email_3445d80e_like    INDEX     n   CREATE INDEX "Users_user_email_3445d80e_like" ON public."Users_user" USING btree (email varchar_pattern_ops);
 4   DROP INDEX public."Users_user_email_3445d80e_like";
       public            salvemosadmin    false    211            ?           1259    17550 #   Users_user_groups_group_id_884146f8    INDEX     i   CREATE INDEX "Users_user_groups_group_id_884146f8" ON public."Users_user_groups" USING btree (group_id);
 9   DROP INDEX public."Users_user_groups_group_id_884146f8";
       public            salvemosadmin    false    213            ?           1259    17549 "   Users_user_groups_user_id_e0963e48    INDEX     g   CREATE INDEX "Users_user_groups_user_id_e0963e48" ON public."Users_user_groups" USING btree (user_id);
 8   DROP INDEX public."Users_user_groups_user_id_e0963e48";
       public            salvemosadmin    false    213            ?           1259    17564 2   Users_user_user_permissions_permission_id_cfe39496    INDEX     ?   CREATE INDEX "Users_user_user_permissions_permission_id_cfe39496" ON public."Users_user_user_permissions" USING btree (permission_id);
 H   DROP INDEX public."Users_user_user_permissions_permission_id_cfe39496";
       public            salvemosadmin    false    215            ?           1259    17563 ,   Users_user_user_permissions_user_id_ffe2deb0    INDEX     {   CREATE INDEX "Users_user_user_permissions_user_id_ffe2deb0" ON public."Users_user_user_permissions" USING btree (user_id);
 B   DROP INDEX public."Users_user_user_permissions_user_id_ffe2deb0";
       public            salvemosadmin    false    215            ?           1259    17509    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            salvemosadmin    false    207            ?           1259    17505 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            salvemosadmin    false    209            ?           1259    17506 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            salvemosadmin    false    209            ?           1259    17491 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            salvemosadmin    false    205            ?           1259    17587 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            salvemosadmin    false    217            ?           1259    17588 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            salvemosadmin    false    217            ?           1259    17598 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            salvemosadmin    false    218            ?           1259    17597 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            salvemosadmin    false    218            ?           2606    17637 A   Posts_posts Posts_posts_category_id_308c162a_fk_Posts_category_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Posts_posts"
    ADD CONSTRAINT "Posts_posts_category_id_308c162a_fk_Posts_category_id" FOREIGN KEY (category_id) REFERENCES public."Posts_category"(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public."Posts_posts" DROP CONSTRAINT "Posts_posts_category_id_308c162a_fk_Posts_category_id";
       public          salvemosadmin    false    3010    220    224            ?           2606    17653 C   Posts_posts_tag Posts_posts_tag_posts_id_aa151d9f_fk_Posts_posts_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Posts_posts_tag"
    ADD CONSTRAINT "Posts_posts_tag_posts_id_aa151d9f_fk_Posts_posts_id" FOREIGN KEY (posts_id) REFERENCES public."Posts_posts"(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public."Posts_posts_tag" DROP CONSTRAINT "Posts_posts_tag_posts_id_aa151d9f_fk_Posts_posts_id";
       public          salvemosadmin    false    226    3015    224            ?           2606    17658 ?   Posts_posts_tag Posts_posts_tag_tag_id_ab92d47d_fk_Posts_tag_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Posts_posts_tag"
    ADD CONSTRAINT "Posts_posts_tag_tag_id_ab92d47d_fk_Posts_tag_id" FOREIGN KEY (tag_id) REFERENCES public."Posts_tag"(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public."Posts_posts_tag" DROP CONSTRAINT "Posts_posts_tag_tag_id_ab92d47d_fk_Posts_tag_id";
       public          salvemosadmin    false    3012    222    226            ?           2606    17642 9   Posts_posts Posts_posts_user_id_f1a5fd77_fk_Users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Posts_posts"
    ADD CONSTRAINT "Posts_posts_user_id_f1a5fd77_fk_Users_user_id" FOREIGN KEY (user_id) REFERENCES public."Users_user"(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public."Posts_posts" DROP CONSTRAINT "Posts_posts_user_id_f1a5fd77_fk_Users_user_id";
       public          salvemosadmin    false    224    2985    211            ?           2606    17675 B   Users_favorites Users_favorites_post_id_cdb46bd7_fk_Posts_posts_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Users_favorites"
    ADD CONSTRAINT "Users_favorites_post_id_cdb46bd7_fk_Posts_posts_id" FOREIGN KEY (post_id) REFERENCES public."Posts_posts"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."Users_favorites" DROP CONSTRAINT "Users_favorites_post_id_cdb46bd7_fk_Posts_posts_id";
       public          salvemosadmin    false    228    3015    224            ?           2606    17680 A   Users_favorites Users_favorites_user_id_10a40957_fk_Users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Users_favorites"
    ADD CONSTRAINT "Users_favorites_user_id_10a40957_fk_Users_user_id" FOREIGN KEY (user_id) REFERENCES public."Users_user"(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public."Users_favorites" DROP CONSTRAINT "Users_favorites_user_id_10a40957_fk_Users_user_id";
       public          salvemosadmin    false    211    2985    228            ?           2606    17544 F   Users_user_groups Users_user_groups_group_id_884146f8_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Users_user_groups"
    ADD CONSTRAINT "Users_user_groups_group_id_884146f8_fk_auth_group_id" FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."Users_user_groups" DROP CONSTRAINT "Users_user_groups_group_id_884146f8_fk_auth_group_id";
       public          salvemosadmin    false    2974    213    207            ?           2606    17539 E   Users_user_groups Users_user_groups_user_id_e0963e48_fk_Users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Users_user_groups"
    ADD CONSTRAINT "Users_user_groups_user_id_e0963e48_fk_Users_user_id" FOREIGN KEY (user_id) REFERENCES public."Users_user"(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public."Users_user_groups" DROP CONSTRAINT "Users_user_groups_user_id_e0963e48_fk_Users_user_id";
       public          salvemosadmin    false    2985    211    213            ?           2606    17558 T   Users_user_user_permissions Users_user_user_perm_permission_id_cfe39496_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Users_user_user_permissions"
    ADD CONSTRAINT "Users_user_user_perm_permission_id_cfe39496_fk_auth_perm" FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public."Users_user_user_permissions" DROP CONSTRAINT "Users_user_user_perm_permission_id_cfe39496_fk_auth_perm";
       public          salvemosadmin    false    215    2969    205            ?           2606    17553 Y   Users_user_user_permissions Users_user_user_permissions_user_id_ffe2deb0_fk_Users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Users_user_user_permissions"
    ADD CONSTRAINT "Users_user_user_permissions_user_id_ffe2deb0_fk_Users_user_id" FOREIGN KEY (user_id) REFERENCES public."Users_user"(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public."Users_user_user_permissions" DROP CONSTRAINT "Users_user_user_permissions_user_id_ffe2deb0_fk_Users_user_id";
       public          salvemosadmin    false    215    2985    211            ?           2606    17500 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          salvemosadmin    false    209    2969    205            ?           2606    17495 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          salvemosadmin    false    2974    207    209            ?           2606    17486 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          salvemosadmin    false    203    205    2964            ?           2606    17577 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          salvemosadmin    false    217    2964    203            ?           2606    17582 C   django_admin_log django_admin_log_user_id_c564eba6_fk_Users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_Users_user_id" FOREIGN KEY (user_id) REFERENCES public."Users_user"(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT "django_admin_log_user_id_c564eba6_fk_Users_user_id";
       public          salvemosadmin    false    217    211    2985            ?   _   x?3?4202?54?52T0??26?21ѳ?42???50% ??X????YPT???萞?????????Z\???Z?P?????W??????? Q????? z%$      ~   f   x?3?4202?54?52T04?26?2??3?0732?50% 똒_??yxs??JcS=KKCK????:$?e?%qc?41?33444??Y?|?1z\\\ B -B      ?     x??Wێ?F}??BOy?(ùK	䂢@S H?R ?0?e?Y??Rx?W???X9#?ڒ?$H??]?m?Жx)???P? ?r??ib??Ox,ۡ?e?z?uMo#?#??'??h???h[宎C~?"{pmt?u?n??F?m?2ǟ????͓w??ڿ???M?<???_?r]?=?UE?nO?z_]F?Ф??Pz?W??ٯv?????
Vl?fܤJ???L?%???e???ϴG??s??Y?s6W?{b?Ж?%???ۑmA?t~?6???lk???????]???U?4Q?&L???N!??p?????(??{Q?????cb?]???#??<?????6?@ڡ늪???n??KP? kXO???&)*???^z???VO??9@???|??7?yJ{??k???i?e޵sO?P?
?*??t???P??Ђ?J!?dM?T?TB??*ȘIA????.w?R{*?????˃?]?~W?V9??/10?^?O??i?q5???{??ݛ??? ??o	|I2}?0???=[?% ?5??l???bC?D??
`h??Q:Y?{_?????????=??hD0??i?__?!????RƹZk?1
	U`hB9??B?C"?qIWؚ?fɔ?X)dzU?K?[???????5????xϘ??Q???4Ef?K?&Eb???{??}??m??C՟:Y??y-?F-?:??e4?ͱ?/Ř{ߔ????1"3=??	?q???rcqVc#}??????j ?%5?S?R,??????????yj}???[??z?nɛW??_?e(??????%?0z?ˌ?j?N@??Ta? ?c?"?J?H???????{v?Y?{xM$??????o
?>~?????s<.?C."????0??r??)q?;?Yܓ}????2'?l??`]&)h?A)3?n2ШR??EeJ-????B???f?????L3??b2K?9?."?k?((?SWB?2?wC?	цe??}????lt?
??J7sݒ??81j??]s?r۝?\4?n???????mѝ??????WAɱ?M?*\IS*?; ??K??v?ݝ?q?!?????R?.kʢ?l??V??[m?A%?k?????ߡN??tR%p?c)??a\??=????ܞ;?h^6???F???f?.?Aæ??????????/??g d??=.?9ڮ?۾۴???????7>Z?#9.̡C?K?Ұ?RH??L?+ޟ˾?A??a???}???߶&Z?p٨>(??P7>Q??/A?̀sc??:SJ??A??dD+uz?z????v	      ?   3   x?Ĺ  ?x?$ۘ?????`? ??/?O&???b?ͦt8?r??>?_!      ?   k   x?????0?jn
HtO?D?!1??PVcJ??ږM#?#tL-u&j??S?H????~??un?3FS??	I?NM?cZ??M?0)Y??rx?u????6F 70?-@      ?      x?????? ? ?      u     x?m??n?@E??S?`~3???4)?B)?-???I3?
?@?i?>}?n\??????!?kW???e??T&??	??`Wk????,ıHL??S??7?p??ݟo?Ftq??a68?w???X?i??e??"@??A!0!?5?Y@U?Q?::?r?
?q???祚??W???????B?X{	?/??????i??q??-˓춞v??::	?6?? X-? t???62q7?w???ҩ?5??@?????m???L?@n?/7U???q?K?$I??Ra?      w      x?????? ? ?      y      x?????? ? ?      q      x?????? ? ?      s      x?????? ? ?      o   ?  x?]?Kn?0@??)8A???t?T??ĥH-?????kfƞv???<???9????k?=vU??4Τ?#?0??˗??(\b???C? .1???ß??????~??q05????I9??`??O?$(?+*w,??4?o?Ax?n#??>y??SFH???U2 ????8??????ӂ--+ֵRg?????mœ??w,???W??b=|?[?ɺ??e?<v????^???1Vq??>???@gy??:?K"??	 D????\??8????Ʃ??ك?'?a???}͒??U?k??.?_? +P???Ϊ?zs???~7?Fu?D>????G!?>#x??O>?.	zs??qNג?^b9?B??%?s/?h]rz???s??!z?.??.??6?qI?@?p	????o?? \?)CI?չrE?ٶ?rI??@U?ť ??^b?6X??k???0/      {     x???Mn?0???)?bf??U?)
??4?4Fbm??h?N?"ȩz?^??T ?l%]dǅ???<????ጠ ? <	n?-?@1d]?,c?vцfū?2b?e??"֥/?oM\??|?.???Z5uږo??C??&?O1_Ա?BմM?v??y|?a???"?ʣ? h??G ???6lC?3??m?]s?Lı	w-?W3?&?K?rm?$?j&???^?'Ǖ????ؼN????????u=???	?? r??s????7?A0?)?&D??}?V۱Zy??^? !#?a=
.?sF??fs?
???f@??????R%|j?ݔ?r????$ػw?tO??#? a<??? ??k?k@1fXO?+????#?y??T9V;???jH???2?2???X??-i%??~n?/??????q??]???c???A;(?N??????c*???z??`??+:4k??<r 0?{v??????ݱ\n???ò?t;?&?	< Wh5??:??ioÄ?+??f ?br      m   ?   x?M??1???a??7`dac?J(???jR?{{?qH,???Q??߆??)???+??T?I5I????*?`CA???????%??B;?(W?????%5+t5??Qg
?8J???sb>?9:???G??7x??      k   ?  x???M??0???}??\???	f9?ٍdY?;m	0m??s??	8??(ٰy?_=?
?????c?&T?P?????B???G??????w?g͞??P???s??*?Q???6?a?cFՕ????QR?!+hQ??m4^?w6???D??o՚??????IBьbUϨ1????m?R??i?B?kJ~Lv??6"??!DA?5??!?֝mll???????m|?֗???I?ȶ"9Ɉ? ????[{?????餌?Ϋ΄????T?bH???d?DL1NL$(??G@/????>?
Ȍ:{7?a?䬞0?? jRDF?}_Wm?·ʔ?T?(U\O?a??c1??X?'i_??9K???????5?39i?]????]??|?i?{?I?[x????\0}??;?h?Y??=>h???A?????~:???v?~?i??偱TC*o??pՇ?8o???J? ?-f???K???A?=P????`뻹???y??߬?^2??ѿ?????^??      |   J  x???Y??@  ???}MUaQ?? ???f?f????~???g??^???a?#?iZ4Kb??ӊ`ٸ!?I?1???ɲֆ?n????Jӆ3?ծ??.?˪?????k?Q?Kn^sW?B?jEU.J?diτj????x
???*%????L?1諱x?_'??^Zo??a??Ze3c?ώs?&?)??d:W???;?	6?e?%????,?ė@)?k?<????9??n??޷7^???Sf????x?Y?C?| ???1??1/Bn??????V??
C??y/??k??$
p??D^?.?C????
?As/?Ak??>?????}^m??E???M?? "NDx2%?!???vi'??C@x??|W?8s?>??w?????4'?p}1?@?٭?tmp?L6X?ב????Y??_!?	??9??&???????A?/#???Vw?? Yօ?PB??DU/?_AS?V?b#'??҇2??	lI????????dX?ЄP??C?4?0??W?:7??M?x?|?S\ӷ$"???S??cX?=?Y?O?ip?[S?Vny??v?????<???D????3a$|???F??.?ك     