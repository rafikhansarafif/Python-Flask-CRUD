PGDMP     .                    y            db_bengkel_login    13.2    13.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    41000    db_bengkel_login    DATABASE     t   CREATE DATABASE db_bengkel_login WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
     DROP DATABASE db_bengkel_login;
                postgres    false            ?            1259    41045 	   db_servis    TABLE     ?   CREATE TABLE public.db_servis (
    id integer NOT NULL,
    jenis_jasa character varying(40) NOT NULL,
    biaya_jasa character varying(40) NOT NULL
);
    DROP TABLE public.db_servis;
       public         heap    postgres    false            ?            1259    41043    db_servis_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.db_servis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.db_servis_id_seq;
       public          postgres    false    203            ?           0    0    db_servis_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.db_servis_id_seq OWNED BY public.db_servis.id;
          public          postgres    false    202            ?            1259    41001    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(25) NOT NULL,
    password text NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    41007    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    200            ?           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    201            *           2604    41048    db_servis id    DEFAULT     l   ALTER TABLE ONLY public.db_servis ALTER COLUMN id SET DEFAULT nextval('public.db_servis_id_seq'::regclass);
 ;   ALTER TABLE public.db_servis ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            )           2604    41009    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200            ?          0    41045 	   db_servis 
   TABLE DATA           ?   COPY public.db_servis (id, jenis_jasa, biaya_jasa) FROM stdin;
    public          postgres    false    203   ?       ?          0    41001    users 
   TABLE DATA           7   COPY public.users (id, username, password) FROM stdin;
    public          postgres    false    200   Z       ?           0    0    db_servis_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.db_servis_id_seq', 12, true);
          public          postgres    false    202            ?           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 8, true);
          public          postgres    false    201            0           2606    41050    db_servis db_servis_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.db_servis
    ADD CONSTRAINT db_servis_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.db_servis DROP CONSTRAINT db_servis_pkey;
       public            postgres    false    203            ,           2606    41011    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    200            .           2606    41013    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            postgres    false    200            ?   P   x?3?,NB??e?Y??\?&A|s4?g" 1???Ѐ?(1-3Br? ??3???*?b??ŉ ?g?\1z\\\ ??,?      ?   m   x???JL?L?T)H?NI3?-?H425S1?400PI
5*p??͎??(MI6??KT1I?ϰH?0w??̫0???,??vL?tM2?,?2?rI
5?L)???????  ??     