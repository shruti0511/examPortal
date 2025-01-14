PGDMP     "    +                z            exam    14.2    14.2                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16866    exam    DATABASE     `   CREATE DATABASE exam WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE exam;
                postgres    false            �            1259    16867    user    TABLE     �   CREATE TABLE public."user" (
    id integer NOT NULL,
    name character varying(50),
    email character varying(50),
    username character varying(50),
    password character varying(50),
    qualification character varying(50),
    "bit" boolean
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    16870 	   me_id_seq    SEQUENCE     �   CREATE SEQUENCE public.me_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.me_id_seq;
       public          postgres    false    209                       0    0 	   me_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.me_id_seq OWNED BY public."user".id;
          public          postgres    false    210            �            1259    16871    que2    TABLE       CREATE TABLE public.que2 (
    id integer NOT NULL,
    question character varying(100),
    optiona character varying(50),
    optionb character varying(50),
    optionc character varying(50),
    optiond character varying(50),
    language "char",
    answer "char"
);
    DROP TABLE public.que2;
       public         heap    postgres    false            �            1259    16874    que2_id_seq    SEQUENCE     �   CREATE SEQUENCE public.que2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.que2_id_seq;
       public          postgres    false    211                       0    0    que2_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.que2_id_seq OWNED BY public.que2.id;
          public          postgres    false    212            �            1259    16875    result    TABLE     �   CREATE TABLE public.result (
    id integer NOT NULL,
    name character varying,
    email character varying,
    subject "char",
    marks integer,
    sid integer,
    created_at timestamp without time zone DEFAULT now()
);
    DROP TABLE public.result;
       public         heap    postgres    false            �            1259    16880    result_id_seq    SEQUENCE     �   CREATE SEQUENCE public.result_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.result_id_seq;
       public          postgres    false    213                       0    0    result_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.result_id_seq OWNED BY public.result.id;
          public          postgres    false    214            �            1259    16881    rules    TABLE     Y   CREATE TABLE public.rules (
    id integer NOT NULL,
    rules character varying(100)
);
    DROP TABLE public.rules;
       public         heap    postgres    false            �            1259    16884    rules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.rules_id_seq;
       public          postgres    false    215                       0    0    rules_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.rules_id_seq OWNED BY public.rules.id;
          public          postgres    false    216            l           2604    16885    que2 id    DEFAULT     b   ALTER TABLE ONLY public.que2 ALTER COLUMN id SET DEFAULT nextval('public.que2_id_seq'::regclass);
 6   ALTER TABLE public.que2 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            m           2604    16886 	   result id    DEFAULT     f   ALTER TABLE ONLY public.result ALTER COLUMN id SET DEFAULT nextval('public.result_id_seq'::regclass);
 8   ALTER TABLE public.result ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            o           2604    16887    rules id    DEFAULT     d   ALTER TABLE ONLY public.rules ALTER COLUMN id SET DEFAULT nextval('public.rules_id_seq'::regclass);
 7   ALTER TABLE public.rules ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            k           2604    16888    user id    DEFAULT     b   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.me_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209                      0    16871    que2 
   TABLE DATA           b   COPY public.que2 (id, question, optiona, optionb, optionc, optiond, language, answer) FROM stdin;
    public          postgres    false    211   �                  0    16875    result 
   TABLE DATA           R   COPY public.result (id, name, email, subject, marks, sid, created_at) FROM stdin;
    public          postgres    false    213   J"       	          0    16881    rules 
   TABLE DATA           *   COPY public.rules (id, rules) FROM stdin;
    public          postgres    false    215   7#                 0    16867    user 
   TABLE DATA           [   COPY public."user" (id, name, email, username, password, qualification, "bit") FROM stdin;
    public          postgres    false    209   $                  0    0 	   me_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.me_id_seq', 104, true);
          public          postgres    false    210                       0    0    que2_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.que2_id_seq', 112, true);
          public          postgres    false    212                       0    0    result_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.result_id_seq', 25, true);
          public          postgres    false    214                       0    0    rules_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rules_id_seq', 73, true);
          public          postgres    false    216            q           2606    16890    user me_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT me_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public."user" DROP CONSTRAINT me_pkey;
       public            postgres    false    209            s           2606    16892    que2 que2_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.que2
    ADD CONSTRAINT que2_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.que2 DROP CONSTRAINT que2_pkey;
       public            postgres    false    211            u           2606    16894    result result_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.result
    ADD CONSTRAINT result_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.result DROP CONSTRAINT result_pkey;
       public            postgres    false    213            w           2606    16896    rules rules_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rules
    ADD CONSTRAINT rules_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.rules DROP CONSTRAINT rules_pkey;
       public            postgres    false    215               �  x��V�n�0}N��/�b���i��{A-�mLR�}��"X\d����c��m:3�7��!/���w���9~���������a��Xp��>g�k���A����,��g��uW�[��.=O�ఀ"Q��aܚ!���q�=dC�&� $�c�Ubec,����q�fm�$ZZ�6RT=vic[��Ezf]G�:(R3Ȅ�^���μ�n,%$�����vzh��I]��&i	���R+�ʾN�Χ�^��Ih����n�j7�t�W+LP���2H���{�H�u/*JP����<A�RE�@m<���(�ʌ��"f��V��W�%��kJ�z���T����t�DEc�y.�kƃ��/P���ͭuwm��r��}�lz"b�j޹rtuPW\,s��}~�U��ҩ\=�&]�U��Ƕ3�տa����Z��2�+         �   x���Mn1���)� ��;Y� ݌hUF�:Ü���&@%6oa�{�~����2���0`��dy�:�!@�@
��[�-چ��U����h���qY��;0W,�=jr�������R��I���i?^��dP�P�jSd%�����k��9bBD	d/��
�f$��r���0��f���R�����ΤT�(\��F��Ҭ��HU�ǡ-9���/����      	   �   x�]��J1Dϓ����a��7A���q/M�q�d��tg��{3�D(���U����7�!�I����;���n��^�\�P�'�%���a3�/�Dx�l�o_X��?W*��YkLnx���IX��P�TCaT���Ȕ�� s�=>�O�}�dRz?�a�ۤSe���:���F�6|#��ܰRB�u�vT�ݱw�� .�X-         �  x�uSKo� >��J{� �4�UU{�iO+U�6J�X��Ϳ��5i�~���㛁�ҝ����==��nֹX��ol��l��X�=LV_Ґ��O��]�x�)���t����@cwNC�*a�*p1��<ߺ�h�q��@�FtUko�C�F�WU�x:��3?�	�80�6-���!}����^Uo��1�7mD��J�&ˑ�]�&��X��x���f2���r|X9"�4�,e�rƿeۺ�YKt��bu)��Ve����x�.�W>�o;���w�ǻv��d �G�%�p�w����,O�P,�A�v�Ur�/�]�矛ڬy֠��#:�b�+��b�6�M��8�Ӱ��6�-"�#ש�w����y��]nG1Fu�(��E��"Q&�����Mk��t3��J�M��Wb�o=<�����qe����_o۳�ӼQ�9s�Y@AoY����J�x     