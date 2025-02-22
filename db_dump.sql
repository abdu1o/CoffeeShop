PGDMP      '                 }            Cafe    17.2    17.2 @    _           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            `           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            a           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            b           1262    16394    Cafe    DATABASE     {   CREATE DATABASE "Cafe" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Ukraine.1252';
    DROP DATABASE "Cafe";
                     postgres    false            �            1259    16409    Clients    TABLE     �   CREATE TABLE public."Clients" (
    id integer NOT NULL,
    birth_date date NOT NULL,
    phone text NOT NULL,
    address text NOT NULL,
    discount integer
);
    DROP TABLE public."Clients";
       public         heap r       postgres    false            �            1259    16402    Desserts    TABLE     �   CREATE TABLE public."Desserts" (
    id integer NOT NULL,
    name_eng text NOT NULL,
    name_ua text NOT NULL,
    price integer NOT NULL
);
    DROP TABLE public."Desserts";
       public         heap r       postgres    false            �            1259    16395    Drinks    TABLE     �   CREATE TABLE public."Drinks" (
    name_eng text NOT NULL,
    name_ua text NOT NULL,
    price integer NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public."Drinks";
       public         heap r       postgres    false            �            1259    16423    Drinks_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Drinks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Drinks_id_seq";
       public               postgres    false    217            c           0    0    Drinks_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Drinks_id_seq" OWNED BY public."Drinks".id;
          public               postgres    false    221            �            1259    16480    Orders    TABLE     �   CREATE TABLE public."Orders" (
    id integer NOT NULL,
    client_id integer NOT NULL,
    staff_id integer NOT NULL,
    dessert_id integer NOT NULL,
    drink_id integer NOT NULL
);
    DROP TABLE public."Orders";
       public         heap r       postgres    false            �            1259    16476    Orders_client_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Orders_client_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Orders_client_id_seq";
       public               postgres    false    231            d           0    0    Orders_client_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Orders_client_id_seq" OWNED BY public."Orders".client_id;
          public               postgres    false    227            �            1259    16478    Orders_dessert_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Orders_dessert_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Orders_dessert_id_seq";
       public               postgres    false    231            e           0    0    Orders_dessert_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Orders_dessert_id_seq" OWNED BY public."Orders".dessert_id;
          public               postgres    false    229            �            1259    16479    Orders_drink_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Orders_drink_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Orders_drink_id_seq";
       public               postgres    false    231            f           0    0    Orders_drink_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Orders_drink_id_seq" OWNED BY public."Orders".drink_id;
          public               postgres    false    230            �            1259    16475    Orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Orders_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Orders_id_seq";
       public               postgres    false    231            g           0    0    Orders_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Orders_id_seq" OWNED BY public."Orders".id;
          public               postgres    false    226            �            1259    16477    Orders_staff_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Orders_staff_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Orders_staff_id_seq";
       public               postgres    false    231            h           0    0    Orders_staff_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Orders_staff_id_seq" OWNED BY public."Orders".staff_id;
          public               postgres    false    228            �            1259    16453 	   Positions    TABLE     ^   CREATE TABLE public."Positions" (
    id integer NOT NULL,
    position_name text NOT NULL
);
    DROP TABLE public."Positions";
       public         heap r       postgres    false            �            1259    16452    Positions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Positions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Positions_id_seq";
       public               postgres    false    224            i           0    0    Positions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Positions_id_seq" OWNED BY public."Positions".id;
          public               postgres    false    223            �            1259    16416    Staff    TABLE     �   CREATE TABLE public."Staff" (
    phone text NOT NULL,
    address text NOT NULL,
    id integer NOT NULL,
    position_id integer NOT NULL,
    schedule text
);
    DROP TABLE public."Staff";
       public         heap r       postgres    false            �            1259    16433    Staff_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Staff_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Staff_id_seq";
       public               postgres    false    220            j           0    0    Staff_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Staff_id_seq" OWNED BY public."Staff".id;
          public               postgres    false    222            �            1259    16461    Staff_position_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Staff_position_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Staff_position_id_seq";
       public               postgres    false    220            k           0    0    Staff_position_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Staff_position_id_seq" OWNED BY public."Staff".position_id;
          public               postgres    false    225            �           2604    16424 	   Drinks id    DEFAULT     j   ALTER TABLE ONLY public."Drinks" ALTER COLUMN id SET DEFAULT nextval('public."Drinks_id_seq"'::regclass);
 :   ALTER TABLE public."Drinks" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    217            �           2604    16483 	   Orders id    DEFAULT     j   ALTER TABLE ONLY public."Orders" ALTER COLUMN id SET DEFAULT nextval('public."Orders_id_seq"'::regclass);
 :   ALTER TABLE public."Orders" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    231    226    231            �           2604    16484    Orders client_id    DEFAULT     x   ALTER TABLE ONLY public."Orders" ALTER COLUMN client_id SET DEFAULT nextval('public."Orders_client_id_seq"'::regclass);
 A   ALTER TABLE public."Orders" ALTER COLUMN client_id DROP DEFAULT;
       public               postgres    false    231    227    231            �           2604    16485    Orders staff_id    DEFAULT     v   ALTER TABLE ONLY public."Orders" ALTER COLUMN staff_id SET DEFAULT nextval('public."Orders_staff_id_seq"'::regclass);
 @   ALTER TABLE public."Orders" ALTER COLUMN staff_id DROP DEFAULT;
       public               postgres    false    228    231    231            �           2604    16486    Orders dessert_id    DEFAULT     z   ALTER TABLE ONLY public."Orders" ALTER COLUMN dessert_id SET DEFAULT nextval('public."Orders_dessert_id_seq"'::regclass);
 B   ALTER TABLE public."Orders" ALTER COLUMN dessert_id DROP DEFAULT;
       public               postgres    false    231    229    231            �           2604    16487    Orders drink_id    DEFAULT     v   ALTER TABLE ONLY public."Orders" ALTER COLUMN drink_id SET DEFAULT nextval('public."Orders_drink_id_seq"'::regclass);
 @   ALTER TABLE public."Orders" ALTER COLUMN drink_id DROP DEFAULT;
       public               postgres    false    231    230    231            �           2604    16456    Positions id    DEFAULT     p   ALTER TABLE ONLY public."Positions" ALTER COLUMN id SET DEFAULT nextval('public."Positions_id_seq"'::regclass);
 =   ALTER TABLE public."Positions" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224            �           2604    16434    Staff id    DEFAULT     h   ALTER TABLE ONLY public."Staff" ALTER COLUMN id SET DEFAULT nextval('public."Staff_id_seq"'::regclass);
 9   ALTER TABLE public."Staff" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    220            �           2604    16462    Staff position_id    DEFAULT     z   ALTER TABLE ONLY public."Staff" ALTER COLUMN position_id SET DEFAULT nextval('public."Staff_position_id_seq"'::regclass);
 B   ALTER TABLE public."Staff" ALTER COLUMN position_id DROP DEFAULT;
       public               postgres    false    225    220            P          0    16409    Clients 
   TABLE DATA           M   COPY public."Clients" (id, birth_date, phone, address, discount) FROM stdin;
    public               postgres    false    219   YF       O          0    16402    Desserts 
   TABLE DATA           B   COPY public."Desserts" (id, name_eng, name_ua, price) FROM stdin;
    public               postgres    false    218   -G       N          0    16395    Drinks 
   TABLE DATA           @   COPY public."Drinks" (name_eng, name_ua, price, id) FROM stdin;
    public               postgres    false    217   �G       \          0    16480    Orders 
   TABLE DATA           Q   COPY public."Orders" (id, client_id, staff_id, dessert_id, drink_id) FROM stdin;
    public               postgres    false    231   rH       U          0    16453 	   Positions 
   TABLE DATA           8   COPY public."Positions" (id, position_name) FROM stdin;
    public               postgres    false    224   �H       Q          0    16416    Staff 
   TABLE DATA           L   COPY public."Staff" (phone, address, id, position_id, schedule) FROM stdin;
    public               postgres    false    220   GI       l           0    0    Drinks_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Drinks_id_seq"', 8, true);
          public               postgres    false    221            m           0    0    Orders_client_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Orders_client_id_seq"', 1, false);
          public               postgres    false    227            n           0    0    Orders_dessert_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Orders_dessert_id_seq"', 7, true);
          public               postgres    false    229            o           0    0    Orders_drink_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Orders_drink_id_seq"', 3, true);
          public               postgres    false    230            p           0    0    Orders_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Orders_id_seq"', 32, true);
          public               postgres    false    226            q           0    0    Orders_staff_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Orders_staff_id_seq"', 1, false);
          public               postgres    false    228            r           0    0    Positions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Positions_id_seq"', 19, true);
          public               postgres    false    223            s           0    0    Staff_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Staff_id_seq"', 17, true);
          public               postgres    false    222            t           0    0    Staff_position_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Staff_position_id_seq"', 1, false);
          public               postgres    false    225            �           2606    16415    Clients Clients_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Clients"
    ADD CONSTRAINT "Clients_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Clients" DROP CONSTRAINT "Clients_pkey";
       public                 postgres    false    219            �           2606    16408    Desserts Desserts_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Desserts"
    ADD CONSTRAINT "Desserts_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Desserts" DROP CONSTRAINT "Desserts_pkey";
       public                 postgres    false    218            �           2606    16426    Drinks Drinks_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Drinks"
    ADD CONSTRAINT "Drinks_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Drinks" DROP CONSTRAINT "Drinks_pkey";
       public                 postgres    false    217            �           2606    16489    Orders Orders_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_pkey";
       public                 postgres    false    231            �           2606    16460    Positions Positions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Positions"
    ADD CONSTRAINT "Positions_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Positions" DROP CONSTRAINT "Positions_pkey";
       public                 postgres    false    224            �           2606    16436    Staff Staff_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Staff"
    ADD CONSTRAINT "Staff_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Staff" DROP CONSTRAINT "Staff_pkey";
       public                 postgres    false    220            �           1259    16474    fki_position    INDEX     G   CREATE INDEX fki_position ON public."Staff" USING btree (position_id);
     DROP INDEX public.fki_position;
       public                 postgres    false    220            �           2606    16490    Orders client    FK CONSTRAINT     t   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT client FOREIGN KEY (client_id) REFERENCES public."Clients"(id);
 9   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT client;
       public               postgres    false    231    4784    219            �           2606    16500    Orders dessert    FK CONSTRAINT     w   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT dessert FOREIGN KEY (dessert_id) REFERENCES public."Desserts"(id);
 :   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT dessert;
       public               postgres    false    231    4782    218            �           2606    16505    Orders drinks    FK CONSTRAINT     r   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT drinks FOREIGN KEY (drink_id) REFERENCES public."Drinks"(id);
 9   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT drinks;
       public               postgres    false    217    231    4780            �           2606    16469    Staff position    FK CONSTRAINT     �   ALTER TABLE ONLY public."Staff"
    ADD CONSTRAINT "position" FOREIGN KEY (position_id) REFERENCES public."Positions"(id) NOT VALID;
 <   ALTER TABLE ONLY public."Staff" DROP CONSTRAINT "position";
       public               postgres    false    4789    224    220            �           2606    16495    Orders staff    FK CONSTRAINT     p   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT staff FOREIGN KEY (staff_id) REFERENCES public."Staff"(id);
 8   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT staff;
       public               postgres    false    231    220    4786            P   �   x�=�M�0��s�+rw�$�[{�AT<�����P;�c࿷s(��^��9kj�,&�b^���,}�by�y�3��M/����Xi�6N���:XG����g�ڿJQ�Yb+�
���B�M��ç*�[_g����:x,�[E�f��/fd85U��7�B��<b+���$��� �N kؗM�c����'�穔��>�      O      x�3��()*MI�ἰ�b�ņ���\�za��NS.N�Ă����<�s/l���¾����.��44*0��{a�!H�!�_�BHfQbnfq)H�V��.�� Լ�ⴋ�����qqq �P9�      N   �   x�s��-�/�0�¾{.쿰�b�����obQj^z>�96\l������/��4Jsy�f&�r^Xxqڅ]��F@1���<�Ф;�*�q�L1��N,(M����Y������ۡ*�L9-�ɃL5#����/_!)5�����[�>�qaPd�!W� \h�      \   .   x�34�4�4bC.C8�� �4B0ML�6#�6c�6c��=... ���      U   �   x�mͽ�P�ڞ�	�L?�0L��Ф��HOQ^f���!=�ߝ}&�!�C�=���8��	��6�+ޘ���~���Nׂ'�_�
2�^����7���?�Դ�i_�Y`M`���,�=,U��#��      Q   �   x����
�0Eg�+��.�e��YJ�]���P(i����#�ӹ\qK�X���p�ϲ�{Ӻ��U3�l��p��t�O-����N| ��S���	/��w}���^2�_���!�|�zMQ�*򽅖��Y)���u:     