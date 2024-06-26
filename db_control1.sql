toc.dat                                                                                             0000600 0004000 0002000 00000100066 14605045136 0014446 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       2    1                |            control1    12.18    12.18 n    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    16507    control1    DATABASE     �   CREATE DATABASE control1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Chile.1252' LC_CTYPE = 'Spanish_Chile.1252';
    DROP DATABASE control1;
                postgres    false         �            1259    16578    avion    TABLE     �   CREATE TABLE public.avion (
    id_avion integer NOT NULL,
    vuelos_avion integer,
    "id_compañia" integer,
    id_modelo integer
);
    DROP TABLE public.avion;
       public         heap    postgres    false         �            1259    16576    avion_id_avion_seq    SEQUENCE     �   CREATE SEQUENCE public.avion_id_avion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.avion_id_avion_seq;
       public          postgres    false    215         �           0    0    avion_id_avion_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.avion_id_avion_seq OWNED BY public.avion.id_avion;
          public          postgres    false    214         �            1259    16510    cliente    TABLE     �   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre_cliente character varying(200),
    nacionalidad_cliente character varying(200)
);
    DROP TABLE public.cliente;
       public         heap    postgres    false         �            1259    16552    cliente_compañia    TABLE     �   CREATE TABLE public."cliente_compañia" (
    "id_cliente_compañia" integer NOT NULL,
    id_cliente integer,
    "id_compañia" integer
);
 '   DROP TABLE public."cliente_compañia";
       public         heap    postgres    false         �            1259    16550 *   cliente_compañia_id_cliente_compañia_seq    SEQUENCE     �   CREATE SEQUENCE public."cliente_compañia_id_cliente_compañia_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."cliente_compañia_id_cliente_compañia_seq";
       public          postgres    false    211         �           0    0 *   cliente_compañia_id_cliente_compañia_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."cliente_compañia_id_cliente_compañia_seq" OWNED BY public."cliente_compañia"."id_cliente_compañia";
          public          postgres    false    210         �            1259    16508    cliente_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_id_cliente_seq;
       public          postgres    false    203         �           0    0    cliente_id_cliente_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;
          public          postgres    false    202         �            1259    16614    cliente_vuelo    TABLE     {   CREATE TABLE public.cliente_vuelo (
    id_cliente_vuelo integer NOT NULL,
    id_cliente integer,
    id_vuelo integer
);
 !   DROP TABLE public.cliente_vuelo;
       public         heap    postgres    false         �            1259    16612 "   cliente_vuelo_id_cliente_vuelo_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_vuelo_id_cliente_vuelo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.cliente_vuelo_id_cliente_vuelo_seq;
       public          postgres    false    219         �           0    0 "   cliente_vuelo_id_cliente_vuelo_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.cliente_vuelo_id_cliente_vuelo_seq OWNED BY public.cliente_vuelo.id_cliente_vuelo;
          public          postgres    false    218         �            1259    16526 	   compañia    TABLE     x   CREATE TABLE public."compañia" (
    "id_compañia" integer NOT NULL,
    "nombre_compañia" character varying(200)
);
    DROP TABLE public."compañia";
       public         heap    postgres    false         �            1259    16524    compañia_id_compañia_seq    SEQUENCE     �   CREATE SEQUENCE public."compañia_id_compañia_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."compañia_id_compañia_seq";
       public          postgres    false    207         �           0    0    compañia_id_compañia_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."compañia_id_compañia_seq" OWNED BY public."compañia"."id_compañia";
          public          postgres    false    206         �            1259    16658    costo    TABLE     V   CREATE TABLE public.costo (
    id_costo integer NOT NULL,
    valor_costo integer
);
    DROP TABLE public.costo;
       public         heap    postgres    false         �            1259    16656    costo_id_costo_seq    SEQUENCE     �   CREATE SEQUENCE public.costo_id_costo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.costo_id_costo_seq;
       public          postgres    false    225         �           0    0    costo_id_costo_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.costo_id_costo_seq OWNED BY public.costo.id_costo;
          public          postgres    false    224         �            1259    16632 	   emp_vuelo    TABLE     t   CREATE TABLE public.emp_vuelo (
    id_emp_vuelo integer NOT NULL,
    id_vuelo integer,
    id_empleado integer
);
    DROP TABLE public.emp_vuelo;
       public         heap    postgres    false         �            1259    16630    emp_vuelo_id_emp_vuelo_seq    SEQUENCE     �   CREATE SEQUENCE public.emp_vuelo_id_emp_vuelo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.emp_vuelo_id_emp_vuelo_seq;
       public          postgres    false    221         �           0    0    emp_vuelo_id_emp_vuelo_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.emp_vuelo_id_emp_vuelo_seq OWNED BY public.emp_vuelo.id_emp_vuelo;
          public          postgres    false    220         �            1259    16534    empleado    TABLE     �   CREATE TABLE public.empleado (
    id_empleado integer NOT NULL,
    nombre_empleado character varying(200),
    cargo_empleado character varying(200),
    id_sueldo integer,
    "id_compañia" integer
);
    DROP TABLE public.empleado;
       public         heap    postgres    false         �            1259    16532    empleado_id_empleado_seq    SEQUENCE     �   CREATE SEQUENCE public.empleado_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.empleado_id_empleado_seq;
       public          postgres    false    209         �           0    0    empleado_id_empleado_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.empleado_id_empleado_seq OWNED BY public.empleado.id_empleado;
          public          postgres    false    208         �            1259    16570    modelo    TABLE     i   CREATE TABLE public.modelo (
    id_modelo integer NOT NULL,
    nombre_modelo character varying(200)
);
    DROP TABLE public.modelo;
       public         heap    postgres    false         �            1259    16568    modelo_id_modelo_seq    SEQUENCE     �   CREATE SEQUENCE public.modelo_id_modelo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.modelo_id_modelo_seq;
       public          postgres    false    213         �           0    0    modelo_id_modelo_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.modelo_id_modelo_seq OWNED BY public.modelo.id_modelo;
          public          postgres    false    212         �            1259    16666    pasaje    TABLE     �   CREATE TABLE public.pasaje (
    id_pasaje integer NOT NULL,
    fecha_pasaje date,
    origen_pasaje character varying(200),
    destino_pasaje character varying(200),
    id_vuelo integer,
    id_costo integer,
    id_seccion integer
);
    DROP TABLE public.pasaje;
       public         heap    postgres    false         �            1259    16664    pasaje_id_pasaje_seq    SEQUENCE     �   CREATE SEQUENCE public.pasaje_id_pasaje_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.pasaje_id_pasaje_seq;
       public          postgres    false    227         �           0    0    pasaje_id_pasaje_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.pasaje_id_pasaje_seq OWNED BY public.pasaje.id_pasaje;
          public          postgres    false    226         �            1259    16650    seccion    TABLE     l   CREATE TABLE public.seccion (
    id_seccion integer NOT NULL,
    nombre_seccion character varying(200)
);
    DROP TABLE public.seccion;
       public         heap    postgres    false         �            1259    16648    seccion_id_seccion_seq    SEQUENCE     �   CREATE SEQUENCE public.seccion_id_seccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.seccion_id_seccion_seq;
       public          postgres    false    223         �           0    0    seccion_id_seccion_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.seccion_id_seccion_seq OWNED BY public.seccion.id_seccion;
          public          postgres    false    222         �            1259    16518    sueldo    TABLE     u   CREATE TABLE public.sueldo (
    id_sueldo integer NOT NULL,
    monto_sueldo integer,
    fecha_pago_sueldo date
);
    DROP TABLE public.sueldo;
       public         heap    postgres    false         �            1259    16516    sueldo_id_sueldo_seq    SEQUENCE     �   CREATE SEQUENCE public.sueldo_id_sueldo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sueldo_id_sueldo_seq;
       public          postgres    false    205         �           0    0    sueldo_id_sueldo_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.sueldo_id_sueldo_seq OWNED BY public.sueldo.id_sueldo;
          public          postgres    false    204         �            1259    16596    vuelo    TABLE     o   CREATE TABLE public.vuelo (
    id_vuelo integer NOT NULL,
    "id_compañia" integer,
    id_avion integer
);
    DROP TABLE public.vuelo;
       public         heap    postgres    false         �            1259    16594    vuelo_id_vuelo_seq    SEQUENCE     �   CREATE SEQUENCE public.vuelo_id_vuelo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.vuelo_id_vuelo_seq;
       public          postgres    false    217         �           0    0    vuelo_id_vuelo_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.vuelo_id_vuelo_seq OWNED BY public.vuelo.id_vuelo;
          public          postgres    false    216         �
           2604    16581    avion id_avion    DEFAULT     p   ALTER TABLE ONLY public.avion ALTER COLUMN id_avion SET DEFAULT nextval('public.avion_id_avion_seq'::regclass);
 =   ALTER TABLE public.avion ALTER COLUMN id_avion DROP DEFAULT;
       public          postgres    false    215    214    215         �
           2604    16513    cliente id_cliente    DEFAULT     x   ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);
 A   ALTER TABLE public.cliente ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    202    203    203         �
           2604    16555 &   cliente_compañia id_cliente_compañia    DEFAULT     �   ALTER TABLE ONLY public."cliente_compañia" ALTER COLUMN "id_cliente_compañia" SET DEFAULT nextval('public."cliente_compañia_id_cliente_compañia_seq"'::regclass);
 Y   ALTER TABLE public."cliente_compañia" ALTER COLUMN "id_cliente_compañia" DROP DEFAULT;
       public          postgres    false    210    211    211         �
           2604    16617    cliente_vuelo id_cliente_vuelo    DEFAULT     �   ALTER TABLE ONLY public.cliente_vuelo ALTER COLUMN id_cliente_vuelo SET DEFAULT nextval('public.cliente_vuelo_id_cliente_vuelo_seq'::regclass);
 M   ALTER TABLE public.cliente_vuelo ALTER COLUMN id_cliente_vuelo DROP DEFAULT;
       public          postgres    false    218    219    219         �
           2604    16529    compañia id_compañia    DEFAULT     �   ALTER TABLE ONLY public."compañia" ALTER COLUMN "id_compañia" SET DEFAULT nextval('public."compañia_id_compañia_seq"'::regclass);
 I   ALTER TABLE public."compañia" ALTER COLUMN "id_compañia" DROP DEFAULT;
       public          postgres    false    207    206    207         �
           2604    16661    costo id_costo    DEFAULT     p   ALTER TABLE ONLY public.costo ALTER COLUMN id_costo SET DEFAULT nextval('public.costo_id_costo_seq'::regclass);
 =   ALTER TABLE public.costo ALTER COLUMN id_costo DROP DEFAULT;
       public          postgres    false    224    225    225         �
           2604    16635    emp_vuelo id_emp_vuelo    DEFAULT     �   ALTER TABLE ONLY public.emp_vuelo ALTER COLUMN id_emp_vuelo SET DEFAULT nextval('public.emp_vuelo_id_emp_vuelo_seq'::regclass);
 E   ALTER TABLE public.emp_vuelo ALTER COLUMN id_emp_vuelo DROP DEFAULT;
       public          postgres    false    220    221    221         �
           2604    16537    empleado id_empleado    DEFAULT     |   ALTER TABLE ONLY public.empleado ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleado_id_empleado_seq'::regclass);
 C   ALTER TABLE public.empleado ALTER COLUMN id_empleado DROP DEFAULT;
       public          postgres    false    209    208    209         �
           2604    16573    modelo id_modelo    DEFAULT     t   ALTER TABLE ONLY public.modelo ALTER COLUMN id_modelo SET DEFAULT nextval('public.modelo_id_modelo_seq'::regclass);
 ?   ALTER TABLE public.modelo ALTER COLUMN id_modelo DROP DEFAULT;
       public          postgres    false    213    212    213         �
           2604    16669    pasaje id_pasaje    DEFAULT     t   ALTER TABLE ONLY public.pasaje ALTER COLUMN id_pasaje SET DEFAULT nextval('public.pasaje_id_pasaje_seq'::regclass);
 ?   ALTER TABLE public.pasaje ALTER COLUMN id_pasaje DROP DEFAULT;
       public          postgres    false    226    227    227         �
           2604    16653    seccion id_seccion    DEFAULT     x   ALTER TABLE ONLY public.seccion ALTER COLUMN id_seccion SET DEFAULT nextval('public.seccion_id_seccion_seq'::regclass);
 A   ALTER TABLE public.seccion ALTER COLUMN id_seccion DROP DEFAULT;
       public          postgres    false    222    223    223         �
           2604    16521    sueldo id_sueldo    DEFAULT     t   ALTER TABLE ONLY public.sueldo ALTER COLUMN id_sueldo SET DEFAULT nextval('public.sueldo_id_sueldo_seq'::regclass);
 ?   ALTER TABLE public.sueldo ALTER COLUMN id_sueldo DROP DEFAULT;
       public          postgres    false    205    204    205         �
           2604    16599    vuelo id_vuelo    DEFAULT     p   ALTER TABLE ONLY public.vuelo ALTER COLUMN id_vuelo SET DEFAULT nextval('public.vuelo_id_vuelo_seq'::regclass);
 =   ALTER TABLE public.vuelo ALTER COLUMN id_vuelo DROP DEFAULT;
       public          postgres    false    217    216    217         �          0    16578    avion 
   TABLE DATA           R   COPY public.avion (id_avion, vuelos_avion, "id_compañia", id_modelo) FROM stdin;
    public          postgres    false    215       2952.dat |          0    16510    cliente 
   TABLE DATA           S   COPY public.cliente (id_cliente, nombre_cliente, nacionalidad_cliente) FROM stdin;
    public          postgres    false    203       2940.dat �          0    16552    cliente_compañia 
   TABLE DATA           a   COPY public."cliente_compañia" ("id_cliente_compañia", id_cliente, "id_compañia") FROM stdin;
    public          postgres    false    211       2948.dat �          0    16614    cliente_vuelo 
   TABLE DATA           O   COPY public.cliente_vuelo (id_cliente_vuelo, id_cliente, id_vuelo) FROM stdin;
    public          postgres    false    219       2956.dat �          0    16526 	   compañia 
   TABLE DATA           I   COPY public."compañia" ("id_compañia", "nombre_compañia") FROM stdin;
    public          postgres    false    207       2944.dat �          0    16658    costo 
   TABLE DATA           6   COPY public.costo (id_costo, valor_costo) FROM stdin;
    public          postgres    false    225       2962.dat �          0    16632 	   emp_vuelo 
   TABLE DATA           H   COPY public.emp_vuelo (id_emp_vuelo, id_vuelo, id_empleado) FROM stdin;
    public          postgres    false    221       2958.dat �          0    16534    empleado 
   TABLE DATA           k   COPY public.empleado (id_empleado, nombre_empleado, cargo_empleado, id_sueldo, "id_compañia") FROM stdin;
    public          postgres    false    209       2946.dat �          0    16570    modelo 
   TABLE DATA           :   COPY public.modelo (id_modelo, nombre_modelo) FROM stdin;
    public          postgres    false    213       2950.dat �          0    16666    pasaje 
   TABLE DATA           x   COPY public.pasaje (id_pasaje, fecha_pasaje, origen_pasaje, destino_pasaje, id_vuelo, id_costo, id_seccion) FROM stdin;
    public          postgres    false    227       2964.dat �          0    16650    seccion 
   TABLE DATA           =   COPY public.seccion (id_seccion, nombre_seccion) FROM stdin;
    public          postgres    false    223       2960.dat ~          0    16518    sueldo 
   TABLE DATA           L   COPY public.sueldo (id_sueldo, monto_sueldo, fecha_pago_sueldo) FROM stdin;
    public          postgres    false    205       2942.dat �          0    16596    vuelo 
   TABLE DATA           C   COPY public.vuelo (id_vuelo, "id_compañia", id_avion) FROM stdin;
    public          postgres    false    217       2954.dat �           0    0    avion_id_avion_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.avion_id_avion_seq', 1000, true);
          public          postgres    false    214         �           0    0 *   cliente_compañia_id_cliente_compañia_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."cliente_compañia_id_cliente_compañia_seq"', 1000, true);
          public          postgres    false    210         �           0    0    cliente_id_cliente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 1000, true);
          public          postgres    false    202         �           0    0 "   cliente_vuelo_id_cliente_vuelo_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.cliente_vuelo_id_cliente_vuelo_seq', 1000, true);
          public          postgres    false    218         �           0    0    compañia_id_compañia_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."compañia_id_compañia_seq"', 100, true);
          public          postgres    false    206         �           0    0    costo_id_costo_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.costo_id_costo_seq', 1000, true);
          public          postgres    false    224         �           0    0    emp_vuelo_id_emp_vuelo_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.emp_vuelo_id_emp_vuelo_seq', 1000, true);
          public          postgres    false    220         �           0    0    empleado_id_empleado_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.empleado_id_empleado_seq', 1000, true);
          public          postgres    false    208         �           0    0    modelo_id_modelo_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.modelo_id_modelo_seq', 1000, true);
          public          postgres    false    212         �           0    0    pasaje_id_pasaje_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.pasaje_id_pasaje_seq', 1000, true);
          public          postgres    false    226         �           0    0    seccion_id_seccion_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.seccion_id_seccion_seq', 3, true);
          public          postgres    false    222         �           0    0    sueldo_id_sueldo_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.sueldo_id_sueldo_seq', 100, true);
          public          postgres    false    204         �           0    0    vuelo_id_vuelo_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.vuelo_id_vuelo_seq', 1000, true);
          public          postgres    false    216         �
           2606    16583    avion avion_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.avion
    ADD CONSTRAINT avion_pkey PRIMARY KEY (id_avion);
 :   ALTER TABLE ONLY public.avion DROP CONSTRAINT avion_pkey;
       public            postgres    false    215         �
           2606    16557 (   cliente_compañia cliente_compañia_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."cliente_compañia"
    ADD CONSTRAINT "cliente_compañia_pkey" PRIMARY KEY ("id_cliente_compañia");
 V   ALTER TABLE ONLY public."cliente_compañia" DROP CONSTRAINT "cliente_compañia_pkey";
       public            postgres    false    211         �
           2606    16515    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    203         �
           2606    16619     cliente_vuelo cliente_vuelo_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.cliente_vuelo
    ADD CONSTRAINT cliente_vuelo_pkey PRIMARY KEY (id_cliente_vuelo);
 J   ALTER TABLE ONLY public.cliente_vuelo DROP CONSTRAINT cliente_vuelo_pkey;
       public            postgres    false    219         �
           2606    16531    compañia compañia_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."compañia"
    ADD CONSTRAINT "compañia_pkey" PRIMARY KEY ("id_compañia");
 F   ALTER TABLE ONLY public."compañia" DROP CONSTRAINT "compañia_pkey";
       public            postgres    false    207         �
           2606    16663    costo costo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.costo
    ADD CONSTRAINT costo_pkey PRIMARY KEY (id_costo);
 :   ALTER TABLE ONLY public.costo DROP CONSTRAINT costo_pkey;
       public            postgres    false    225         �
           2606    16637    emp_vuelo emp_vuelo_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.emp_vuelo
    ADD CONSTRAINT emp_vuelo_pkey PRIMARY KEY (id_emp_vuelo);
 B   ALTER TABLE ONLY public.emp_vuelo DROP CONSTRAINT emp_vuelo_pkey;
       public            postgres    false    221         �
           2606    16539    empleado empleado_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);
 @   ALTER TABLE ONLY public.empleado DROP CONSTRAINT empleado_pkey;
       public            postgres    false    209         �
           2606    16575    modelo modelo_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.modelo
    ADD CONSTRAINT modelo_pkey PRIMARY KEY (id_modelo);
 <   ALTER TABLE ONLY public.modelo DROP CONSTRAINT modelo_pkey;
       public            postgres    false    213         �
           2606    16671    pasaje pasaje_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.pasaje
    ADD CONSTRAINT pasaje_pkey PRIMARY KEY (id_pasaje);
 <   ALTER TABLE ONLY public.pasaje DROP CONSTRAINT pasaje_pkey;
       public            postgres    false    227         �
           2606    16655    seccion seccion_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.seccion
    ADD CONSTRAINT seccion_pkey PRIMARY KEY (id_seccion);
 >   ALTER TABLE ONLY public.seccion DROP CONSTRAINT seccion_pkey;
       public            postgres    false    223         �
           2606    16523    sueldo sueldo_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.sueldo
    ADD CONSTRAINT sueldo_pkey PRIMARY KEY (id_sueldo);
 <   ALTER TABLE ONLY public.sueldo DROP CONSTRAINT sueldo_pkey;
       public            postgres    false    205         �
           2606    16601    vuelo vuelo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT vuelo_pkey PRIMARY KEY (id_vuelo);
 :   ALTER TABLE ONLY public.vuelo DROP CONSTRAINT vuelo_pkey;
       public            postgres    false    217         �
           2606    16584    avion avion_id_compañia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.avion
    ADD CONSTRAINT "avion_id_compañia_fkey" FOREIGN KEY ("id_compañia") REFERENCES public."compañia"("id_compañia");
 I   ALTER TABLE ONLY public.avion DROP CONSTRAINT "avion_id_compañia_fkey";
       public          postgres    false    215    207    2777         �
           2606    16589    avion avion_id_modelo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.avion
    ADD CONSTRAINT avion_id_modelo_fkey FOREIGN KEY (id_modelo) REFERENCES public.modelo(id_modelo);
 D   ALTER TABLE ONLY public.avion DROP CONSTRAINT avion_id_modelo_fkey;
       public          postgres    false    215    2783    213         �
           2606    16558 3   cliente_compañia cliente_compañia_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."cliente_compañia"
    ADD CONSTRAINT "cliente_compañia_id_cliente_fkey" FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 a   ALTER TABLE ONLY public."cliente_compañia" DROP CONSTRAINT "cliente_compañia_id_cliente_fkey";
       public          postgres    false    2773    211    203         �
           2606    16563 5   cliente_compañia cliente_compañia_id_compañia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."cliente_compañia"
    ADD CONSTRAINT "cliente_compañia_id_compañia_fkey" FOREIGN KEY ("id_compañia") REFERENCES public."compañia"("id_compañia");
 c   ALTER TABLE ONLY public."cliente_compañia" DROP CONSTRAINT "cliente_compañia_id_compañia_fkey";
       public          postgres    false    211    207    2777         �
           2606    16620 +   cliente_vuelo cliente_vuelo_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente_vuelo
    ADD CONSTRAINT cliente_vuelo_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 U   ALTER TABLE ONLY public.cliente_vuelo DROP CONSTRAINT cliente_vuelo_id_cliente_fkey;
       public          postgres    false    203    219    2773         �
           2606    16625 )   cliente_vuelo cliente_vuelo_id_vuelo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente_vuelo
    ADD CONSTRAINT cliente_vuelo_id_vuelo_fkey FOREIGN KEY (id_vuelo) REFERENCES public.vuelo(id_vuelo);
 S   ALTER TABLE ONLY public.cliente_vuelo DROP CONSTRAINT cliente_vuelo_id_vuelo_fkey;
       public          postgres    false    217    2787    219         �
           2606    16643 $   emp_vuelo emp_vuelo_id_empleado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.emp_vuelo
    ADD CONSTRAINT emp_vuelo_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado);
 N   ALTER TABLE ONLY public.emp_vuelo DROP CONSTRAINT emp_vuelo_id_empleado_fkey;
       public          postgres    false    2779    221    209         �
           2606    16638 !   emp_vuelo emp_vuelo_id_vuelo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.emp_vuelo
    ADD CONSTRAINT emp_vuelo_id_vuelo_fkey FOREIGN KEY (id_vuelo) REFERENCES public.vuelo(id_vuelo);
 K   ALTER TABLE ONLY public.emp_vuelo DROP CONSTRAINT emp_vuelo_id_vuelo_fkey;
       public          postgres    false    217    2787    221         �
           2606    16545 #   empleado empleado_id_compañia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT "empleado_id_compañia_fkey" FOREIGN KEY ("id_compañia") REFERENCES public."compañia"("id_compañia");
 O   ALTER TABLE ONLY public.empleado DROP CONSTRAINT "empleado_id_compañia_fkey";
       public          postgres    false    209    207    2777         �
           2606    16540     empleado empleado_id_sueldo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_id_sueldo_fkey FOREIGN KEY (id_sueldo) REFERENCES public.sueldo(id_sueldo);
 J   ALTER TABLE ONLY public.empleado DROP CONSTRAINT empleado_id_sueldo_fkey;
       public          postgres    false    2775    209    205         �
           2606    16677    pasaje pasaje_id_costo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pasaje
    ADD CONSTRAINT pasaje_id_costo_fkey FOREIGN KEY (id_costo) REFERENCES public.costo(id_costo);
 E   ALTER TABLE ONLY public.pasaje DROP CONSTRAINT pasaje_id_costo_fkey;
       public          postgres    false    227    2795    225         �
           2606    16682    pasaje pasaje_id_seccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pasaje
    ADD CONSTRAINT pasaje_id_seccion_fkey FOREIGN KEY (id_seccion) REFERENCES public.seccion(id_seccion);
 G   ALTER TABLE ONLY public.pasaje DROP CONSTRAINT pasaje_id_seccion_fkey;
       public          postgres    false    2793    223    227         �
           2606    16672    pasaje pasaje_id_vuelo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pasaje
    ADD CONSTRAINT pasaje_id_vuelo_fkey FOREIGN KEY (id_vuelo) REFERENCES public.vuelo(id_vuelo);
 E   ALTER TABLE ONLY public.pasaje DROP CONSTRAINT pasaje_id_vuelo_fkey;
       public          postgres    false    2787    227    217         �
           2606    16607    vuelo vuelo_id_avion_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT vuelo_id_avion_fkey FOREIGN KEY (id_avion) REFERENCES public.avion(id_avion);
 C   ALTER TABLE ONLY public.vuelo DROP CONSTRAINT vuelo_id_avion_fkey;
       public          postgres    false    2785    215    217         �
           2606    16602    vuelo vuelo_id_compañia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT "vuelo_id_compañia_fkey" FOREIGN KEY ("id_compañia") REFERENCES public."compañia"("id_compañia");
 I   ALTER TABLE ONLY public.vuelo DROP CONSTRAINT "vuelo_id_compañia_fkey";
       public          postgres    false    2777    207    217                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  2952.dat                                                                                            0000600 0004000 0002000 00000032452 14605045136 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	60	8	804
2	28	57	709
3	27	51	655
4	49	91	29
5	1	85	458
6	8	60	31
7	42	79	789
8	36	9	277
9	34	14	86
10	58	7	128
11	65	67	900
12	65	33	18
13	26	44	905
14	8	29	616
15	2	64	371
16	4	77	325
17	1	83	722
18	100	76	597
19	96	25	8
20	61	61	410
21	83	92	185
22	12	81	400
23	79	87	559
24	80	46	743
25	19	55	397
26	7	97	168
27	96	8	327
28	63	39	859
29	76	87	616
30	43	6	906
31	73	40	998
32	34	1	200
33	64	47	649
34	40	88	789
35	84	76	763
36	50	43	426
37	18	74	176
38	5	44	855
39	33	53	109
40	73	64	204
41	6	87	719
42	33	82	118
43	14	32	826
44	3	59	539
45	47	73	377
46	60	34	994
47	14	78	164
48	85	89	835
49	71	13	985
50	67	56	517
51	12	93	84
52	48	27	13
53	25	57	654
54	51	62	430
55	54	19	349
56	40	96	393
57	81	38	287
58	45	3	708
59	60	42	65
60	28	90	257
61	6	42	449
62	37	80	264
63	95	4	993
64	57	60	955
65	88	56	969
66	18	47	414
67	15	30	630
68	62	40	140
69	78	84	23
70	97	69	393
71	46	89	181
72	91	87	183
73	62	51	36
74	75	24	225
75	96	57	227
76	69	85	682
77	62	100	361
78	71	36	802
79	74	11	418
80	46	51	412
81	49	37	771
82	42	13	478
83	72	98	681
84	69	42	811
85	78	12	116
86	100	52	626
87	3	76	875
88	62	22	700
89	85	27	401
90	18	18	338
91	45	64	207
92	20	7	152
93	100	72	807
94	41	31	470
95	81	29	409
96	17	66	578
97	54	64	663
98	92	43	127
99	14	86	738
100	60	53	117
101	8	62	289
102	76	10	266
103	14	31	140
104	13	94	463
105	14	69	91
106	70	45	614
107	66	6	678
108	20	85	101
109	95	7	408
110	97	86	737
111	76	69	787
112	8	37	888
113	11	88	950
114	84	100	700
115	35	57	273
116	81	25	590
117	12	69	790
118	22	83	803
119	96	78	429
120	73	32	44
121	37	21	822
122	29	81	134
123	12	25	394
124	50	84	665
125	39	28	210
126	72	50	111
127	55	47	862
128	25	76	359
129	54	67	303
130	21	27	34
131	14	29	682
132	18	100	137
133	85	13	753
134	55	30	889
135	42	8	323
136	33	74	657
137	30	89	158
138	19	90	788
139	84	49	958
140	88	83	805
141	46	66	883
142	4	9	417
143	3	58	787
144	45	27	885
145	33	77	478
146	94	12	850
147	4	80	144
148	37	97	287
149	21	54	339
150	19	3	578
151	73	21	867
152	17	84	531
153	61	62	87
154	30	79	739
155	34	5	191
156	56	38	802
157	54	47	738
158	59	96	437
159	39	89	631
160	51	28	600
161	69	22	867
162	71	38	63
163	35	78	937
164	23	92	499
165	42	2	796
166	80	79	911
167	88	60	670
168	58	89	311
169	19	27	458
170	2	13	211
171	30	24	282
172	68	26	132
173	50	42	532
174	67	23	63
175	90	58	297
176	30	22	42
177	96	100	474
178	67	4	156
179	52	96	673
180	26	62	256
181	22	96	542
182	70	50	783
183	100	97	174
184	50	49	757
185	12	50	23
186	70	48	457
187	51	24	120
188	81	81	476
189	72	66	108
190	47	92	275
191	27	4	250
192	97	10	98
193	60	24	311
194	90	96	571
195	99	85	666
196	30	100	614
197	99	73	132
198	72	37	600
199	26	42	27
200	21	67	349
201	83	38	530
202	84	90	704
203	68	93	663
204	16	57	416
205	72	75	894
206	2	88	344
207	30	92	254
208	58	30	164
209	3	79	307
210	50	97	388
211	71	62	191
212	77	39	326
213	72	53	502
214	61	76	495
215	39	98	337
216	37	48	49
217	68	34	255
218	82	83	889
219	1	1	679
220	16	38	214
221	84	6	687
222	30	4	972
223	91	41	106
224	69	98	965
225	21	41	304
226	76	53	570
227	25	60	873
228	57	30	73
229	26	28	693
230	42	13	392
231	25	28	216
232	89	62	960
233	75	88	1
234	41	38	558
235	10	42	871
236	49	33	371
237	57	11	701
238	47	4	240
239	55	75	335
240	35	95	960
241	88	41	465
242	30	17	326
243	89	37	220
244	45	95	924
245	23	41	37
246	45	73	985
247	100	49	260
248	68	77	473
249	69	76	797
250	87	91	850
251	29	42	83
252	90	33	665
253	83	41	992
254	86	95	154
255	4	66	792
256	23	7	642
257	71	27	521
258	5	58	352
259	89	51	133
260	95	61	739
261	16	81	912
262	39	19	972
263	29	95	340
264	61	67	142
265	17	63	208
266	57	7	828
267	81	55	836
268	4	60	671
269	30	97	340
270	90	12	519
271	59	14	689
272	51	46	654
273	32	42	964
274	82	95	315
275	16	2	354
276	11	26	4
277	74	87	274
278	50	21	206
279	96	96	341
280	95	46	609
281	96	65	551
282	62	30	532
283	28	35	126
284	1	19	905
285	48	96	19
286	29	6	69
287	25	12	620
288	53	78	116
289	20	90	847
290	71	41	133
291	36	10	405
292	24	34	801
293	57	23	730
294	58	73	331
295	5	78	410
296	66	99	215
297	80	7	989
298	8	23	987
299	24	71	88
300	44	23	147
301	89	96	432
302	4	88	661
303	33	49	603
304	64	3	155
305	11	46	677
306	96	63	180
307	84	35	736
308	18	65	409
309	33	46	763
310	86	26	844
311	52	28	948
312	70	92	195
313	64	69	948
314	1	51	177
315	23	63	36
316	62	91	322
317	55	80	703
318	98	54	559
319	5	19	570
320	37	41	848
321	87	79	394
322	96	66	75
323	34	29	599
324	50	56	999
325	80	73	808
326	94	56	480
327	64	58	40
328	73	39	109
329	75	23	738
330	31	25	977
331	36	21	914
332	38	6	323
333	4	82	853
334	75	6	663
335	86	68	468
336	37	34	650
337	41	97	664
338	95	82	77
339	27	66	868
340	45	78	891
341	89	48	46
342	61	96	84
343	92	21	371
344	39	13	664
345	17	92	302
346	61	1	681
347	31	1	367
348	3	19	8
349	32	24	17
350	5	38	3
351	51	36	603
352	68	18	139
353	32	88	869
354	6	7	651
355	3	36	445
356	22	60	14
357	8	41	343
358	68	73	203
359	77	49	672
360	7	31	231
361	91	56	507
362	80	92	498
363	82	10	546
364	19	23	538
365	77	20	172
366	99	43	338
367	8	36	260
368	5	94	823
369	67	80	812
370	4	14	227
371	63	15	537
372	12	43	160
373	85	36	220
374	32	97	660
375	12	84	363
376	14	80	374
377	33	70	684
378	8	67	993
379	91	64	842
380	24	8	245
381	2	47	494
382	79	58	73
383	36	43	460
384	39	77	197
385	26	28	617
386	19	6	197
387	88	22	830
388	18	94	561
389	53	54	714
390	7	42	294
391	10	63	47
392	29	79	225
393	87	91	153
394	52	53	118
395	19	13	388
396	17	41	439
397	64	78	537
398	10	34	329
399	63	30	54
400	82	37	397
401	11	67	768
402	90	50	30
403	77	34	852
404	92	41	761
405	54	35	939
406	93	49	975
407	93	49	879
408	9	32	600
409	66	51	320
410	7	15	316
411	40	65	770
412	84	89	971
413	87	32	256
414	87	59	641
415	63	90	751
416	73	35	261
417	55	17	722
418	68	55	567
419	43	25	450
420	31	53	467
421	7	55	276
422	78	55	438
423	14	62	591
424	80	73	473
425	76	91	697
426	16	24	838
427	14	54	795
428	7	83	774
429	90	23	566
430	71	39	463
431	26	60	853
432	95	66	679
433	25	5	349
434	57	16	826
435	54	87	424
436	98	19	989
437	49	20	340
438	77	10	617
439	43	58	311
440	80	18	840
441	51	93	199
442	29	83	84
443	58	100	244
444	31	30	761
445	76	8	997
446	7	64	791
447	77	33	623
448	58	41	641
449	77	98	963
450	48	82	277
451	18	60	647
452	47	67	43
453	42	31	767
454	43	43	388
455	23	56	389
456	4	23	44
457	69	92	486
458	5	51	674
459	1	97	102
460	59	67	527
461	94	93	655
462	18	44	108
463	88	54	165
464	16	61	223
465	20	50	617
466	19	70	555
467	92	26	73
468	50	65	445
469	22	79	436
470	55	93	772
471	86	39	52
472	6	32	217
473	97	14	157
474	34	43	2
475	76	48	394
476	52	62	837
477	69	13	180
478	90	87	81
479	26	72	15
480	6	1	70
481	59	59	513
482	27	39	220
483	95	95	236
484	26	57	403
485	85	97	157
486	90	4	418
487	80	12	250
488	22	16	876
489	27	92	251
490	18	47	592
491	43	73	803
492	13	92	200
493	58	50	890
494	24	33	566
495	13	54	727
496	96	81	992
497	37	48	610
498	57	39	114
499	7	3	579
500	53	32	683
501	34	94	955
502	23	57	332
503	85	57	986
504	99	31	932
505	16	85	314
506	21	13	258
507	64	10	787
508	30	70	174
509	48	78	59
510	4	90	812
511	53	77	372
512	95	80	108
513	99	89	70
514	50	21	82
515	69	60	968
516	26	15	48
517	27	59	313
518	9	83	59
519	62	21	811
520	75	84	604
521	19	55	328
522	62	18	559
523	52	91	377
524	1	34	151
525	47	60	465
526	64	8	349
527	26	93	79
528	12	20	517
529	85	84	620
530	8	82	986
531	64	10	389
532	66	19	894
533	94	83	240
534	6	71	355
535	58	13	524
536	16	10	685
537	16	50	63
538	99	34	354
539	32	4	670
540	56	79	356
541	69	29	595
542	44	31	852
543	40	42	139
544	21	49	287
545	15	16	219
546	60	35	249
547	86	74	825
548	73	43	587
549	7	92	916
550	13	43	428
551	27	85	153
552	94	86	712
553	16	37	592
554	16	70	436
555	99	35	914
556	38	25	731
557	45	31	196
558	71	8	468
559	38	45	92
560	76	28	76
561	51	16	770
562	32	32	487
563	61	66	745
564	84	81	400
565	2	65	374
566	26	57	933
567	3	63	181
568	3	77	296
569	3	59	375
570	72	51	876
571	91	82	508
572	20	11	324
573	30	60	646
574	26	38	133
575	44	48	828
576	37	89	624
577	10	99	922
578	12	77	115
579	7	6	734
580	69	80	450
581	89	67	352
582	80	20	690
583	36	23	317
584	6	9	602
585	65	34	794
586	33	10	711
587	81	3	701
588	66	49	760
589	82	79	122
590	22	23	23
591	23	56	7
592	71	92	788
593	58	44	284
594	74	36	568
595	7	74	474
596	49	65	966
597	72	46	288
598	55	70	716
599	19	93	88
600	12	37	112
601	36	39	626
602	66	46	683
603	38	48	927
604	57	66	263
605	69	31	256
606	41	23	897
607	80	15	151
608	11	33	649
609	96	80	187
610	17	57	486
611	43	94	760
612	93	75	3
613	15	52	698
614	72	81	218
615	25	9	371
616	7	60	985
617	25	21	508
618	9	27	582
619	54	100	574
620	72	52	44
621	77	6	16
622	88	38	180
623	41	48	630
624	27	77	606
625	94	19	649
626	38	7	42
627	17	49	204
628	8	18	600
629	3	96	675
630	50	57	386
631	29	90	542
632	78	47	755
633	14	45	361
634	49	4	635
635	71	41	898
636	60	70	742
637	78	33	899
638	90	54	889
639	62	78	946
640	4	61	566
641	58	91	745
642	77	68	556
643	82	52	479
644	84	75	943
645	9	18	399
646	63	62	874
647	3	68	40
648	58	31	13
649	40	92	428
650	30	51	256
651	11	81	571
652	91	36	964
653	97	52	169
654	18	64	508
655	54	26	705
656	4	19	756
657	22	84	911
658	80	58	121
659	4	5	725
660	7	86	657
661	3	82	238
662	52	41	221
663	43	47	552
664	73	91	657
665	65	58	540
666	26	41	544
667	71	55	11
668	94	68	390
669	15	93	706
670	20	2	45
671	78	99	587
672	8	50	758
673	31	76	209
674	81	100	207
675	68	72	727
676	10	23	331
677	98	2	890
678	55	59	218
679	45	95	889
680	65	57	387
681	86	19	39
682	59	64	954
683	40	49	477
684	95	37	877
685	94	13	367
686	35	28	165
687	100	2	625
688	71	28	828
689	55	10	125
690	46	98	568
691	17	99	211
692	82	25	426
693	52	46	959
694	84	17	563
695	13	94	541
696	14	60	967
697	15	51	339
698	38	99	452
699	53	36	503
700	22	78	16
701	21	93	678
702	56	47	34
703	18	58	83
704	63	2	96
705	33	70	755
706	34	56	646
707	97	100	18
708	32	17	768
709	21	78	558
710	88	61	105
711	39	31	992
712	67	33	497
713	71	29	177
714	36	44	44
715	13	89	852
716	15	33	320
717	56	19	342
718	48	60	287
719	94	16	195
720	78	91	25
721	90	74	398
722	19	45	890
723	11	26	231
724	1	20	172
725	82	55	976
726	37	83	882
727	65	26	93
728	74	13	787
729	75	20	78
730	94	36	670
731	15	55	242
732	27	74	677
733	61	35	454
734	60	36	97
735	43	68	769
736	31	63	820
737	61	51	545
738	49	100	64
739	25	12	725
740	60	85	61
741	54	44	162
742	86	55	3
743	42	59	653
744	34	39	795
745	66	57	6
746	49	63	838
747	40	91	974
748	95	7	746
749	63	83	327
750	44	26	682
751	87	9	432
752	46	31	728
753	76	88	414
754	11	18	584
755	65	40	249
756	10	51	443
757	34	88	230
758	80	64	386
759	45	38	67
760	49	77	784
761	22	62	172
762	95	18	193
763	20	28	522
764	79	76	916
765	100	60	518
766	31	88	358
767	82	84	292
768	27	27	263
769	63	13	983
770	75	41	714
771	33	75	308
772	59	89	203
773	72	95	946
774	83	79	878
775	86	74	890
776	70	41	486
777	46	20	376
778	71	30	932
779	31	35	167
780	97	84	448
781	42	42	479
782	41	83	30
783	88	69	676
784	34	31	803
785	6	97	71
786	73	44	86
787	95	55	312
788	71	52	656
789	84	55	487
790	70	7	89
791	90	21	342
792	39	29	817
793	51	78	436
794	23	36	413
795	45	39	242
796	100	74	101
797	28	69	874
798	18	5	888
799	45	24	738
800	53	98	933
801	96	68	875
802	18	26	655
803	97	53	764
804	4	65	947
805	47	56	928
806	48	34	505
807	79	66	235
808	20	22	390
809	58	10	72
810	17	73	929
811	33	19	963
812	20	1	769
813	48	45	715
814	30	50	236
815	37	55	16
816	1	33	444
817	49	25	936
818	49	18	684
819	4	25	519
820	100	66	575
821	35	48	174
822	2	37	692
823	1	7	29
824	1	93	385
825	17	24	650
826	53	89	652
827	98	51	583
828	48	59	177
829	50	75	837
830	22	81	150
831	91	42	542
832	88	20	853
833	28	31	314
834	12	4	412
835	30	84	749
836	98	27	477
837	8	51	145
838	57	32	26
839	21	98	940
840	45	45	855
841	85	41	183
842	6	76	378
843	84	77	24
844	54	88	176
845	66	85	324
846	64	89	405
847	73	39	42
848	25	16	846
849	20	19	85
850	16	45	723
851	41	85	422
852	90	85	311
853	34	91	644
854	62	53	25
855	16	94	727
856	36	28	95
857	51	85	760
858	75	13	67
859	8	87	868
860	56	29	312
861	1	97	891
862	83	91	125
863	64	95	222
864	20	1	680
865	53	53	29
866	100	58	775
867	74	84	988
868	26	24	233
869	47	3	226
870	86	84	48
871	80	42	228
872	49	52	283
873	33	27	735
874	91	97	894
875	79	22	868
876	25	70	932
877	99	38	699
878	84	70	915
879	7	84	945
880	78	92	113
881	9	63	279
882	27	53	559
883	32	31	605
884	79	45	509
885	47	39	216
886	94	99	512
887	38	13	209
888	56	86	881
889	59	63	735
890	11	15	951
891	47	2	645
892	85	6	144
893	64	11	46
894	10	67	36
895	88	81	4
896	54	82	865
897	95	60	89
898	92	75	570
899	45	19	872
900	13	87	130
901	88	92	268
902	21	53	644
903	74	8	932
904	14	82	534
905	65	7	753
906	38	14	52
907	17	13	361
908	30	32	316
909	48	85	437
910	1	3	759
911	1	48	103
912	51	68	670
913	17	62	220
914	94	15	791
915	67	98	229
916	22	86	349
917	91	35	792
918	83	80	924
919	71	84	346
920	4	17	610
921	50	74	623
922	20	61	819
923	67	6	408
924	74	83	346
925	77	51	650
926	61	31	579
927	49	4	349
928	45	37	205
929	94	26	614
930	37	46	619
931	35	78	474
932	42	29	771
933	66	40	69
934	52	100	660
935	22	53	640
936	52	54	959
937	67	29	517
938	50	7	767
939	74	4	807
940	37	73	238
941	27	97	35
942	50	68	923
943	48	3	680
944	40	52	175
945	62	28	51
946	48	62	273
947	85	67	609
948	36	90	791
949	74	31	438
950	1	53	311
951	90	40	78
952	61	34	278
953	95	16	308
954	77	75	195
955	99	31	810
956	60	95	81
957	76	67	657
958	32	61	719
959	26	72	658
960	53	58	848
961	55	94	59
962	67	5	433
963	60	88	583
964	55	42	747
965	49	54	875
966	54	33	450
967	58	70	80
968	56	17	507
969	54	81	133
970	67	80	849
971	24	90	685
972	41	87	284
973	1	50	663
974	41	83	369
975	5	16	753
976	76	99	103
977	80	92	979
978	21	32	398
979	11	42	798
980	3	49	430
981	1	33	990
982	51	98	907
983	47	100	503
984	49	85	94
985	5	41	340
986	70	63	976
987	96	23	599
988	9	31	250
989	16	37	737
990	7	90	871
991	39	82	330
992	1	59	473
993	91	64	129
994	56	19	649
995	67	7	113
996	5	30	198
997	27	77	506
998	79	45	485
999	50	56	904
1000	79	27	589
\.


                                                                                                                                                                                                                      2940.dat                                                                                            0000600 0004000 0002000 00000052417 14605045136 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Gregory	Salvadoreño
2	Jasmine	Venezolano
3	Wendy	Canadiense
4	Richard	Cubano
5	Thomas	Panameño
6	Jessica	Boliviano
7	Marcus	Mexicano
8	Susan	Mexicano
9	Paul	Boliviano
10	James	Nicaragüense
11	Hannah	Dominicano
12	Amy	Colombiano
13	Daniel	Uruguayo
14	Michael	Salvadoreño
15	Patrick	Paraguayo
16	Barbara	Costarricense
17	Danielle	Argentino
18	Jesse	Colombiano
19	Jason	Venezolano
20	Dustin	Costarricense
21	Louis	Ecuatoriano
22	Frances	Hondureño
23	Brent	Venezolano
24	Sonya	Guatemalteco
25	Dale	Uruguayo
26	Nicole	Haitiano
27	Kevin	Boliviano
28	Carrie	Brasileño
29	Shawn	Costarricense
30	Vanessa	Uruguayo
31	Ann	Argentino
32	Carolyn	Paraguayo
33	Suzanne	Paraguayo
34	Darius	Uruguayo
35	Grant	Hondureño
36	Katie	Costarricense
37	Diane	Colombiano
38	Michele	Hondureño
39	Travis	Paraguayo
40	Tara	Chileno
41	Ashley	Canadiense
42	Thomas	Hondureño
43	Warren	Mexicano
44	Jeffrey	Mexicano
45	Heather	Ecuatoriano
46	Brittany	Peruano
47	Spencer	Costarricense
48	Vanessa	Guatemalteco
49	Hailey	Cubano
50	Joshua	Peruano
51	Glenn	Chileno
52	David	Paraguayo
53	Cynthia	Haitiano
54	Mandy	Estadounidense
55	Robert	Costarricense
56	Edward	Estadounidense
57	Kristopher	Brasileño
58	Jason	Mexicano
59	Logan	Salvadoreño
60	Daniel	Uruguayo
61	Christina	Dominicano
62	Ashley	Cubano
63	Wendy	Haitiano
64	Daniel	Mexicano
65	Christina	Brasileño
66	Janet	Peruano
67	Robert	Venezolano
68	Laura	Guatemalteco
69	Justin	Colombiano
70	Jacqueline	Nicaragüense
71	Lisa	Paraguayo
72	Sherri	Mexicano
73	Marcus	Estadounidense
74	Michael	Dominicano
75	Jason	Ecuatoriano
76	Karina	Nicaragüense
77	Henry	Mexicano
78	Jared	Guatemalteco
79	Tiffany	Brasileño
80	Timothy	Guatemalteco
81	Raymond	Dominicano
82	Sarah	Panameño
83	Michele	Argentino
84	Jennifer	Dominicano
85	Mark	Venezolano
86	Robert	Salvadoreño
87	Julie	Salvadoreño
88	Jorge	Dominicano
89	Tyler	Chileno
90	Karen	Guatemalteco
91	Justin	Estadounidense
92	Stephanie	Estadounidense
93	Patrick	Guatemalteco
94	Amy	Nicaragüense
95	Amanda	Haitiano
96	Bryan	Costarricense
97	Ashley	Peruano
98	Emily	Cubano
99	April	Paraguayo
100	Lisa	Salvadoreño
101	Jennifer	Salvadoreño
102	Jay	Argentino
103	Lauren	Dominicano
104	Madison	Ecuatoriano
105	Gregory	Cubano
106	Patrick	Venezolano
107	Tiffany	Nicaragüense
108	Michael	Hondureño
109	Monica	Brasileño
110	Susan	Canadiense
111	Matthew	Nicaragüense
112	Yesenia	Paraguayo
113	Rodney	Nicaragüense
114	Eric	Mexicano
115	Dana	Dominicano
116	Melissa	Uruguayo
117	Anna	Boliviano
118	Tim	Costarricense
119	Monica	Mexicano
120	Jose	Salvadoreño
121	Shelley	Paraguayo
122	Charles	Argentino
123	Kevin	Estadounidense
124	Janet	Dominicano
125	Kristen	Brasileño
126	Colin	Boliviano
127	Pamela	Salvadoreño
128	Brittany	Dominicano
129	William	Salvadoreño
130	James	Nicaragüense
131	Catherine	Mexicano
132	Kimberly	Venezolano
133	Melanie	Costarricense
134	Bradley	Peruano
135	Robert	Haitiano
136	Michael	Peruano
137	Ashley	Paraguayo
138	Philip	Canadiense
139	Steve	Paraguayo
140	Tiffany	Guatemalteco
141	Ricardo	Venezolano
142	Zachary	Peruano
143	Jesse	Nicaragüense
144	Amanda	Mexicano
145	Cody	Estadounidense
146	Christopher	Canadiense
147	Cheryl	Canadiense
148	Tracy	Panameño
149	Matthew	Uruguayo
150	Justin	Chileno
151	Randy	Ecuatoriano
152	Mark	Dominicano
153	Melissa	Cubano
154	Melissa	Salvadoreño
155	Amber	Venezolano
156	Timothy	Colombiano
157	Lori	Brasileño
158	Stephanie	Hondureño
159	Susan	Peruano
160	Susan	Cubano
161	Kristi	Haitiano
162	Christina	Ecuatoriano
163	Loretta	Nicaragüense
164	Emily	Nicaragüense
165	Tiffany	Haitiano
166	Alicia	Haitiano
167	Stephanie	Canadiense
168	Anita	Argentino
169	Jodi	Argentino
170	Victoria	Salvadoreño
171	Benjamin	Argentino
172	Andrea	Chileno
173	Dana	Costarricense
174	Lisa	Estadounidense
175	John	Dominicano
176	Diana	Dominicano
177	Kimberly	Mexicano
178	Kyle	Dominicano
179	Yolanda	Uruguayo
180	Debra	Guatemalteco
181	Laura	Argentino
182	Lindsay	Dominicano
183	Jeanne	Canadiense
184	Lisa	Brasileño
185	Natasha	Peruano
186	Joshua	Brasileño
187	Tyler	Costarricense
188	Christopher	Estadounidense
189	Christina	Brasileño
190	Mindy	Chileno
191	Tamara	Haitiano
192	Courtney	Canadiense
193	Kelly	Hondureño
194	Steven	Haitiano
195	Kayla	Nicaragüense
196	Anita	Paraguayo
197	Jeffrey	Mexicano
198	Andre	Uruguayo
199	Nicole	Colombiano
200	Philip	Guatemalteco
201	Pamela	Hondureño
202	Jennifer	Argentino
203	Tammy	Costarricense
204	Candace	Paraguayo
205	Justin	Uruguayo
206	Stacey	Venezolano
207	Alicia	Ecuatoriano
208	Bobby	Brasileño
209	Jason	Mexicano
210	Karen	Hondureño
211	John	Haitiano
212	Dylan	Colombiano
213	Edward	Nicaragüense
214	David	Cubano
215	Julia	Mexicano
216	Rachel	Brasileño
217	Matthew	Guatemalteco
218	Billy	Dominicano
219	Robert	Chileno
220	Jennifer	Panameño
221	Sally	Salvadoreño
222	Susan	Dominicano
223	Hannah	Nicaragüense
224	Brittney	Paraguayo
225	Steven	Boliviano
226	Elizabeth	Colombiano
227	Ryan	Boliviano
228	Jessica	Paraguayo
229	Alexander	Estadounidense
230	Christopher	Salvadoreño
231	Kristen	Uruguayo
232	Linda	Panameño
233	Zachary	Mexicano
234	Madison	Hondureño
235	Lisa	Chileno
236	Susan	Colombiano
237	Joshua	Dominicano
238	Angela	Panameño
239	Stacy	Canadiense
240	Monica	Dominicano
241	Joann	Mexicano
242	Thomas	Argentino
243	Albert	Mexicano
244	Cory	Ecuatoriano
245	William	Argentino
246	Briana	Brasileño
247	Gregory	Argentino
248	Sean	Uruguayo
249	Colin	Costarricense
250	David	Brasileño
251	Meghan	Salvadoreño
252	Tristan	Argentino
253	Jasmine	Costarricense
254	Samantha	Paraguayo
255	Kyle	Guatemalteco
256	Todd	Estadounidense
257	Lori	Estadounidense
258	Eric	Salvadoreño
259	Joshua	Ecuatoriano
260	Marissa	Uruguayo
261	Eric	Chileno
262	Justin	Colombiano
263	Ashley	Brasileño
264	Mary	Haitiano
265	Sheri	Guatemalteco
266	Dawn	Panameño
267	Michael	Argentino
268	Kelly	Brasileño
269	Jack	Costarricense
270	Brian	Colombiano
271	Donna	Salvadoreño
272	Bethany	Paraguayo
273	Nicholas	Ecuatoriano
274	Mary	Boliviano
275	Keith	Canadiense
276	Kevin	Canadiense
277	Nicole	Venezolano
278	Sean	Canadiense
279	Charles	Venezolano
280	Erika	Nicaragüense
281	Cindy	Guatemalteco
282	Michael	Colombiano
283	Bruce	Boliviano
284	Evelyn	Mexicano
285	Douglas	Boliviano
286	Mary	Hondureño
287	Mary	Cubano
288	Brian	Colombiano
289	Jessica	Peruano
290	Austin	Paraguayo
291	Brenda	Brasileño
292	Edward	Uruguayo
293	Leah	Costarricense
294	Sarah	Paraguayo
295	Chris	Hondureño
296	Gregory	Argentino
297	Stephanie	Uruguayo
298	Nicholas	Estadounidense
299	Christine	Peruano
300	Patricia	Nicaragüense
301	Cameron	Haitiano
302	Ashley	Costarricense
303	James	Brasileño
304	Michael	Estadounidense
305	William	Peruano
306	Linda	Panameño
307	Tanya	Hondureño
308	Michele	Canadiense
309	Robert	Guatemalteco
310	Michelle	Costarricense
311	Justin	Ecuatoriano
312	Kristin	Salvadoreño
313	Jeremy	Costarricense
314	Tamara	Argentino
315	Cindy	Guatemalteco
316	Joseph	Peruano
317	Tracy	Guatemalteco
318	Andrew	Mexicano
319	Morgan	Nicaragüense
320	Kara	Ecuatoriano
321	John	Salvadoreño
322	Dawn	Dominicano
323	Jennifer	Argentino
324	Lucas	Hondureño
325	Michael	Peruano
326	Katrina	Paraguayo
327	Paula	Estadounidense
328	Kristen	Cubano
329	Deanna	Dominicano
330	James	Chileno
331	Charles	Nicaragüense
332	Robert	Uruguayo
333	James	Hondureño
334	Daniel	Argentino
335	Heather	Cubano
336	Karen	Brasileño
337	Sandy	Venezolano
338	Richard	Hondureño
339	Claudia	Haitiano
340	Alyssa	Haitiano
341	Debra	Nicaragüense
342	Kristina	Colombiano
343	Brian	Uruguayo
344	Lauren	Paraguayo
345	Ariel	Peruano
346	John	Dominicano
347	Benjamin	Panameño
348	Luke	Colombiano
349	James	Boliviano
350	Gary	Ecuatoriano
351	Maria	Canadiense
352	Amanda	Brasileño
353	Nicole	Peruano
354	Matthew	Argentino
355	Nicholas	Estadounidense
356	Caroline	Venezolano
357	Hannah	Estadounidense
358	Alan	Costarricense
359	Alexander	Haitiano
360	Lori	Panameño
361	Jacqueline	Mexicano
362	Terri	Guatemalteco
363	Margaret	Uruguayo
364	Erin	Costarricense
365	Jared	Estadounidense
366	Michelle	Panameño
367	Brittany	Venezolano
368	Tracy	Cubano
369	Patricia	Boliviano
370	Ana	Peruano
371	Michele	Boliviano
372	Amber	Dominicano
373	Kristine	Argentino
374	Kristen	Canadiense
375	David	Boliviano
376	Matthew	Boliviano
377	Ruth	Cubano
378	Nicolas	Costarricense
379	Michael	Guatemalteco
380	Leonard	Peruano
381	Robert	Paraguayo
382	Norma	Hondureño
383	Paul	Ecuatoriano
384	Matthew	Cubano
385	Dawn	Dominicano
386	Renee	Salvadoreño
387	James	Boliviano
388	Paula	Haitiano
389	Gina	Cubano
390	Robin	Chileno
391	James	Ecuatoriano
392	Nancy	Panameño
393	Monica	Costarricense
394	Penny	Costarricense
395	Gregory	Costarricense
396	Brett	Panameño
397	Cindy	Chileno
398	Amanda	Salvadoreño
399	Julie	Salvadoreño
400	Todd	Paraguayo
401	Matthew	Haitiano
402	Lauren	Hondureño
403	Jenna	Salvadoreño
404	Willie	Brasileño
405	Raymond	Nicaragüense
406	Sean	Hondureño
407	Philip	Salvadoreño
408	Erika	Canadiense
409	Kristen	Panameño
410	Joseph	Dominicano
411	Clinton	Ecuatoriano
412	Monica	Paraguayo
413	Tracy	Venezolano
414	Robin	Canadiense
415	Meghan	Costarricense
416	Veronica	Ecuatoriano
417	James	Mexicano
418	Benjamin	Salvadoreño
419	Erica	Chileno
420	Christine	Uruguayo
421	Travis	Argentino
422	Veronica	Ecuatoriano
423	Angela	Colombiano
424	Scott	Venezolano
425	Angela	Colombiano
426	Alexander	Boliviano
427	Raymond	Uruguayo
428	Stephen	Hondureño
429	Tyler	Guatemalteco
430	Joseph	Nicaragüense
431	Richard	Mexicano
432	Kenneth	Argentino
433	William	Venezolano
434	Michael	Nicaragüense
435	Kelly	Hondureño
436	Tracy	Boliviano
437	Eric	Venezolano
438	Roy	Cubano
439	Benjamin	Canadiense
440	Alexandra	Guatemalteco
441	Erica	Venezolano
442	Mark	Estadounidense
443	Olivia	Mexicano
444	Amanda	Salvadoreño
445	Damon	Argentino
446	Samantha	Panameño
447	Stephen	Chileno
448	Michael	Mexicano
449	Eric	Hondureño
450	Melanie	Brasileño
451	Jason	Panameño
452	Kevin	Hondureño
453	Catherine	Peruano
454	Sandra	Mexicano
455	Cheryl	Salvadoreño
456	Alexandra	Colombiano
457	Dustin	Haitiano
458	Kathleen	Dominicano
459	Brandon	Ecuatoriano
460	Christopher	Panameño
461	John	Brasileño
462	Sherry	Argentino
463	Kim	Boliviano
464	Suzanne	Colombiano
465	Dawn	Chileno
466	Michael	Cubano
467	Courtney	Boliviano
468	Tanya	Costarricense
469	Joe	Haitiano
470	James	Uruguayo
471	Kenneth	Hondureño
472	Michael	Nicaragüense
473	Diana	Uruguayo
474	Christopher	Mexicano
475	Aaron	Peruano
476	Jason	Mexicano
477	Crystal	Mexicano
478	Angela	Ecuatoriano
479	Ronnie	Brasileño
480	Lauren	Boliviano
481	Susan	Hondureño
482	Jonathan	Venezolano
483	Randy	Boliviano
484	Joshua	Uruguayo
485	Lisa	Panameño
486	Sean	Ecuatoriano
487	Charles	Nicaragüense
488	Jason	Peruano
489	Tracy	Dominicano
490	Nicholas	Hondureño
491	Diana	Venezolano
492	Vanessa	Hondureño
493	Amanda	Dominicano
494	Diana	Venezolano
495	Michael	Cubano
496	Kimberly	Boliviano
497	Mitchell	Venezolano
498	Mark	Haitiano
499	Allison	Venezolano
500	Parker	Venezolano
501	Zachary	Mexicano
502	Melanie	Cubano
503	Todd	Nicaragüense
504	Roger	Hondureño
505	Jeffrey	Venezolano
506	Ryan	Argentino
507	Kathryn	Estadounidense
508	Sharon	Colombiano
509	William	Panameño
510	Jessica	Venezolano
511	Mario	Estadounidense
512	William	Ecuatoriano
513	Stephen	Paraguayo
514	Rodney	Hondureño
515	Laura	Mexicano
516	Alicia	Salvadoreño
517	Alexander	Salvadoreño
518	Laura	Chileno
519	Juan	Brasileño
520	Kimberly	Haitiano
521	Spencer	Estadounidense
522	Cheryl	Ecuatoriano
523	Justin	Panameño
524	Stephen	Boliviano
525	Christopher	Peruano
526	David	Guatemalteco
527	Gregory	Uruguayo
528	Charles	Canadiense
529	Kimberly	Mexicano
530	Charles	Brasileño
531	Matthew	Ecuatoriano
532	Ashley	Canadiense
533	Kenneth	Nicaragüense
534	Caleb	Estadounidense
535	Phillip	Haitiano
536	Jessica	Boliviano
537	Ashley	Dominicano
538	Christopher	Chileno
539	Louis	Hondureño
540	Gary	Costarricense
541	Anthony	Salvadoreño
542	Kristopher	Ecuatoriano
543	Matthew	Estadounidense
544	Adam	Argentino
545	Joel	Guatemalteco
546	Jerry	Boliviano
547	Christopher	Chileno
548	Stephanie	Argentino
549	Stacey	Colombiano
550	Ronnie	Estadounidense
551	Karen	Mexicano
552	Kerri	Colombiano
553	Robert	Chileno
554	Antonio	Panameño
555	Rebecca	Colombiano
556	Alan	Peruano
557	Lisa	Uruguayo
558	Shannon	Venezolano
559	Todd	Salvadoreño
560	Angela	Paraguayo
561	Alexander	Haitiano
562	Cathy	Guatemalteco
563	Elizabeth	Uruguayo
564	Ethan	Ecuatoriano
565	Darren	Paraguayo
566	Kathy	Ecuatoriano
567	Abigail	Cubano
568	Leslie	Peruano
569	Thomas	Uruguayo
570	Amanda	Colombiano
571	Jonathan	Haitiano
572	Linda	Paraguayo
573	Mary	Canadiense
574	William	Costarricense
575	Robin	Costarricense
576	Michelle	Hondureño
577	Amy	Guatemalteco
578	Allison	Colombiano
579	Brenda	Brasileño
580	Alexa	Cubano
581	Jennifer	Colombiano
582	Antonio	Mexicano
583	Willie	Haitiano
584	Michael	Canadiense
585	Mark	Venezolano
586	Teresa	Chileno
587	Carlos	Panameño
588	Kristen	Costarricense
589	Hannah	Cubano
590	Monica	Hondureño
591	Donna	Chileno
592	Anne	Boliviano
593	Michael	Ecuatoriano
594	Sherry	Paraguayo
595	Casey	Estadounidense
596	Michael	Estadounidense
597	Emily	Ecuatoriano
598	Curtis	Ecuatoriano
599	Tara	Panameño
600	Alicia	Cubano
601	Tara	Canadiense
602	Laura	Panameño
603	Christine	Salvadoreño
604	Jasmine	Boliviano
605	Nancy	Ecuatoriano
606	Howard	Venezolano
607	Billy	Dominicano
608	Jaclyn	Estadounidense
609	Scott	Peruano
610	Melanie	Peruano
611	Lindsey	Peruano
612	Jerry	Mexicano
613	Linda	Hondureño
614	Susan	Peruano
615	Amanda	Uruguayo
616	Michael	Salvadoreño
617	Christine	Boliviano
618	Alexandra	Argentino
619	Jennifer	Chileno
620	Sharon	Hondureño
621	Diana	Colombiano
622	Jillian	Paraguayo
623	Michelle	Paraguayo
624	Elizabeth	Dominicano
625	Megan	Colombiano
626	Andrew	Costarricense
627	Michael	Chileno
628	Cassandra	Colombiano
629	Emily	Venezolano
630	Donald	Guatemalteco
631	Kathleen	Cubano
632	Craig	Mexicano
633	Kathryn	Estadounidense
634	Benjamin	Venezolano
635	Zachary	Estadounidense
636	Ann	Paraguayo
637	Rebecca	Peruano
638	Suzanne	Peruano
639	Michele	Dominicano
640	Heather	Panameño
641	Connie	Argentino
642	Dale	Colombiano
643	Melissa	Salvadoreño
644	Jacqueline	Uruguayo
645	Thomas	Uruguayo
646	Jesse	Cubano
647	Melissa	Paraguayo
648	Christopher	Mexicano
649	Anita	Argentino
650	Jessica	Nicaragüense
651	Emma	Nicaragüense
652	Aaron	Guatemalteco
653	Jerry	Boliviano
654	Vanessa	Haitiano
655	Brian	Salvadoreño
656	David	Nicaragüense
657	Michael	Estadounidense
658	Jamie	Peruano
659	John	Colombiano
660	Maurice	Uruguayo
661	Valerie	Mexicano
662	April	Uruguayo
663	Cindy	Colombiano
664	John	Haitiano
665	Mary	Uruguayo
666	Colleen	Estadounidense
667	Jeffrey	Cubano
668	Stacey	Estadounidense
669	Vincent	Uruguayo
670	Katherine	Salvadoreño
671	Justin	Guatemalteco
672	Jermaine	Canadiense
673	Kevin	Estadounidense
674	Christopher	Uruguayo
675	Lawrence	Salvadoreño
676	Nathaniel	Paraguayo
677	Madeline	Hondureño
678	William	Costarricense
679	Jon	Canadiense
680	Robert	Costarricense
681	Sheila	Ecuatoriano
682	Zachary	Colombiano
683	Timothy	Nicaragüense
684	Jennifer	Panameño
685	Jacob	Salvadoreño
686	William	Guatemalteco
687	Kerry	Salvadoreño
688	Joseph	Haitiano
689	Max	Nicaragüense
690	Vickie	Estadounidense
691	Christina	Hondureño
692	Cameron	Paraguayo
693	Jonathan	Costarricense
694	Katherine	Nicaragüense
695	Amanda	Salvadoreño
696	Stephen	Paraguayo
697	Peter	Venezolano
698	Christopher	Panameño
699	Samuel	Boliviano
700	Kevin	Dominicano
701	Holly	Salvadoreño
702	Tracy	Canadiense
703	Peter	Chileno
704	Pamela	Chileno
705	Hunter	Nicaragüense
706	Ruth	Haitiano
707	Christina	Dominicano
708	Virginia	Argentino
709	Erik	Canadiense
710	Carla	Nicaragüense
711	Larry	Nicaragüense
712	Tammy	Dominicano
713	Jeanette	Venezolano
714	Nicholas	Estadounidense
715	Tony	Paraguayo
716	Melinda	Salvadoreño
717	Jasmin	Boliviano
718	Ryan	Hondureño
719	Robin	Canadiense
720	Jason	Uruguayo
721	Sherri	Peruano
722	Jessica	Costarricense
723	Kelly	Haitiano
724	Angela	Argentino
725	Steve	Boliviano
726	Angel	Venezolano
727	Jason	Guatemalteco
728	Barbara	Nicaragüense
729	Joel	Colombiano
730	Martin	Hondureño
731	Charles	Guatemalteco
732	Adam	Boliviano
733	Michael	Uruguayo
734	Shannon	Mexicano
735	Donna	Nicaragüense
736	Jacqueline	Mexicano
737	Chad	Canadiense
738	Megan	Haitiano
739	Dave	Nicaragüense
740	Anthony	Estadounidense
741	Lisa	Argentino
742	Michael	Canadiense
743	Nathan	Panameño
744	Robert	Boliviano
745	Sydney	Guatemalteco
746	Mark	Uruguayo
747	Vicki	Peruano
748	Megan	Mexicano
749	Brandon	Argentino
750	Robert	Paraguayo
751	Derek	Argentino
752	Madison	Haitiano
753	Scott	Guatemalteco
754	Jessica	Guatemalteco
755	Annette	Paraguayo
756	Justin	Ecuatoriano
757	Kelly	Ecuatoriano
758	Katherine	Cubano
759	Brenda	Guatemalteco
760	Candace	Colombiano
761	Darryl	Salvadoreño
762	Sean	Boliviano
763	James	Uruguayo
764	William	Guatemalteco
765	Bryan	Brasileño
766	Kevin	Boliviano
767	Bradley	Paraguayo
768	Kelsey	Mexicano
769	Nicholas	Paraguayo
770	Todd	Mexicano
771	Justin	Dominicano
772	Darryl	Peruano
773	Robert	Guatemalteco
774	Tyler	Argentino
775	Patrick	Peruano
776	Jennifer	Nicaragüense
777	Lee	Argentino
778	Kim	Cubano
779	Walter	Colombiano
780	David	Ecuatoriano
781	Christopher	Boliviano
782	Justin	Cubano
783	Matthew	Haitiano
784	Rhonda	Venezolano
785	Timothy	Guatemalteco
786	Jenny	Costarricense
787	Jack	Boliviano
788	Alicia	Colombiano
789	Alexander	Ecuatoriano
790	Billy	Estadounidense
791	Benjamin	Boliviano
792	Danny	Uruguayo
793	Melissa	Guatemalteco
794	Martin	Argentino
795	Gregg	Colombiano
796	Randy	Guatemalteco
797	Nicole	Ecuatoriano
798	Allen	Canadiense
799	Sharon	Peruano
800	Michael	Ecuatoriano
801	Gregory	Argentino
802	Frank	Dominicano
803	Clayton	Paraguayo
804	Rachel	Nicaragüense
805	Rebecca	Hondureño
806	Jill	Panameño
807	Steve	Argentino
808	Elizabeth	Hondureño
809	Heather	Cubano
810	Brenda	Nicaragüense
811	Kelly	Salvadoreño
812	Jeffrey	Colombiano
813	David	Canadiense
814	Jamie	Brasileño
815	James	Cubano
816	Richard	Nicaragüense
817	George	Chileno
818	Marie	Brasileño
819	Patrick	Peruano
820	Diamond	Canadiense
821	Kevin	Venezolano
822	Robert	Estadounidense
823	Rhonda	Cubano
824	Timothy	Nicaragüense
825	Scott	Guatemalteco
826	Julia	Chileno
827	Jennifer	Argentino
828	Tiffany	Guatemalteco
829	Melissa	Haitiano
830	Patrick	Boliviano
831	Sarah	Panameño
832	Madison	Hondureño
833	Matthew	Uruguayo
834	Victoria	Dominicano
835	Tiffany	Brasileño
836	Matthew	Argentino
837	Gregory	Colombiano
838	Brian	Dominicano
839	Courtney	Panameño
840	Jennifer	Brasileño
841	Melinda	Cubano
842	Andrew	Costarricense
843	Jeffrey	Salvadoreño
844	Joel	Peruano
845	Stephen	Ecuatoriano
846	Austin	Mexicano
847	Shaun	Nicaragüense
848	Benjamin	Mexicano
849	Robert	Guatemalteco
850	Nicholas	Cubano
851	Jason	Hondureño
852	Amanda	Chileno
853	Andrew	Panameño
854	Troy	Costarricense
855	Trevor	Uruguayo
856	Karen	Dominicano
857	Teresa	Nicaragüense
858	Kevin	Hondureño
859	Abigail	Panameño
860	Heather	Ecuatoriano
861	Kelly	Paraguayo
862	Michael	Brasileño
863	Alex	Paraguayo
864	Tiffany	Ecuatoriano
865	Heather	Nicaragüense
866	Tom	Peruano
867	Jeffrey	Colombiano
868	Christopher	Cubano
869	Ronnie	Mexicano
870	April	Boliviano
871	Keith	Chileno
872	Chad	Cubano
873	Rebecca	Salvadoreño
874	Cheryl	Chileno
875	Michael	Dominicano
876	Audrey	Dominicano
877	Chloe	Cubano
878	Jose	Guatemalteco
879	William	Ecuatoriano
880	Bryan	Venezolano
881	Michael	Uruguayo
882	Jamie	Boliviano
883	Sean	Ecuatoriano
884	Nicholas	Cubano
885	Andrew	Canadiense
886	Tim	Brasileño
887	Kari	Paraguayo
888	Scott	Uruguayo
889	Raymond	Panameño
890	Carol	Mexicano
891	Nancy	Estadounidense
892	Jennifer	Brasileño
893	Eric	Paraguayo
894	Julie	Argentino
895	Michael	Dominicano
896	Charles	Estadounidense
897	Derrick	Peruano
898	Lisa	Cubano
899	Robert	Brasileño
900	Zachary	Venezolano
901	Margaret	Salvadoreño
902	Samantha	Panameño
903	Justin	Panameño
904	Robert	Uruguayo
905	Kyle	Peruano
906	Willie	Boliviano
907	Danielle	Estadounidense
908	James	Argentino
909	Christopher	Nicaragüense
910	Lisa	Chileno
911	Chris	Boliviano
912	Beth	Chileno
913	Teresa	Cubano
914	Angelica	Panameño
915	Jennifer	Cubano
916	Cameron	Brasileño
917	Juan	Nicaragüense
918	Nancy	Peruano
919	Richard	Uruguayo
920	Eric	Colombiano
921	Douglas	Nicaragüense
922	Leslie	Canadiense
923	Johnny	Mexicano
924	Brian	Paraguayo
925	Brian	Argentino
926	Kayla	Venezolano
927	Joy	Boliviano
928	April	Chileno
929	Paul	Brasileño
930	Connie	Haitiano
931	Kimberly	Guatemalteco
932	Megan	Paraguayo
933	Sarah	Brasileño
934	Kristen	Hondureño
935	Kevin	Brasileño
936	Tonya	Cubano
937	Kenneth	Boliviano
938	Teresa	Colombiano
939	Tracy	Hondureño
940	Audrey	Haitiano
941	Danielle	Dominicano
942	Michael	Peruano
943	Danielle	Ecuatoriano
944	Sarah	Nicaragüense
945	Steven	Colombiano
946	Jacob	Chileno
947	Donna	Brasileño
948	Donald	Colombiano
949	Monique	Ecuatoriano
950	Ethan	Hondureño
951	Caleb	Cubano
952	Lisa	Boliviano
953	Sharon	Ecuatoriano
954	Mark	Guatemalteco
955	Kenneth	Salvadoreño
956	Travis	Hondureño
957	Emily	Mexicano
958	Patrick	Venezolano
959	John	Dominicano
960	Alexis	Haitiano
961	Robert	Argentino
962	Benjamin	Canadiense
963	Kimberly	Mexicano
964	Edward	Panameño
965	James	Haitiano
966	Paul	Brasileño
967	Maria	Dominicano
968	Sharon	Costarricense
969	Carolyn	Brasileño
970	Adriana	Paraguayo
971	Cody	Panameño
972	Brandon	Venezolano
973	Michael	Guatemalteco
974	Jessica	Paraguayo
975	Nicholas	Paraguayo
976	Michael	Nicaragüense
977	John	Guatemalteco
978	Andrea	Uruguayo
979	Annette	Peruano
980	Jack	Mexicano
981	Gregory	Hondureño
982	Julia	Ecuatoriano
983	Michelle	Costarricense
984	Jacob	Panameño
985	Brittany	Salvadoreño
986	Sara	Nicaragüense
987	Brian	Costarricense
988	Lisa	Colombiano
989	Christopher	Haitiano
990	Luis	Venezolano
991	Gregory	Ecuatoriano
992	Michelle	Ecuatoriano
993	Eric	Salvadoreño
994	Heather	Peruano
995	Jason	Ecuatoriano
996	Kimberly	Panameño
997	Daniel	Peruano
998	Brooke	Salvadoreño
999	Randy	Panameño
1000	John	Nicaragüense
\.


                                                                                                                                                                                                                                                 2948.dat                                                                                            0000600 0004000 0002000 00000024720 14605045136 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	94	42
2	389	72
3	845	11
4	705	64
5	430	97
6	819	93
7	177	88
8	288	16
9	651	69
10	196	52
11	331	92
12	59	41
13	934	82
14	851	75
15	852	67
16	437	23
17	463	1
18	867	100
19	179	19
20	596	92
21	95	6
22	454	87
23	924	82
24	783	48
25	935	74
26	185	98
27	63	80
28	112	91
29	285	77
30	15	85
31	707	22
32	432	50
33	841	26
34	442	84
35	956	16
36	312	23
37	348	48
38	966	23
39	987	56
40	645	28
41	788	65
42	338	47
43	787	33
44	993	42
45	690	61
46	340	76
47	374	11
48	361	79
49	387	3
50	793	64
51	202	72
52	468	2
53	496	93
54	719	11
55	910	29
56	686	15
57	304	32
58	954	15
59	226	86
60	549	74
61	986	42
62	347	6
63	291	47
64	977	3
65	756	52
66	801	78
67	760	9
68	774	53
69	993	14
70	982	40
71	520	21
72	956	82
73	886	40
74	903	8
75	743	92
76	904	48
77	334	45
78	51	2
79	917	58
80	4	41
81	725	86
82	478	86
83	98	5
84	69	4
85	39	73
86	860	37
87	112	35
88	499	91
89	322	27
90	784	66
91	417	59
92	390	70
93	809	71
94	561	84
95	93	45
96	214	28
97	821	82
98	587	62
99	955	7
100	756	76
101	326	45
102	775	18
103	416	95
104	559	65
105	992	15
106	309	55
107	856	98
108	501	20
109	798	93
110	738	45
111	356	6
112	54	70
113	433	65
114	508	66
115	557	8
116	107	22
117	748	92
118	229	12
119	476	75
120	608	26
121	877	23
122	303	24
123	870	50
124	403	27
125	506	97
126	443	12
127	73	28
128	222	81
129	35	42
130	35	5
131	595	69
132	832	33
133	137	94
134	812	68
135	261	65
136	224	30
137	11	38
138	330	39
139	486	95
140	440	29
141	824	60
142	429	62
143	624	27
144	655	7
145	811	68
146	275	37
147	161	25
148	318	23
149	828	85
150	954	9
151	147	67
152	686	58
153	315	65
154	281	4
155	682	32
156	585	77
157	215	87
158	52	19
159	981	35
160	875	43
161	579	93
162	336	87
163	54	63
164	227	4
165	902	52
166	21	2
167	920	55
168	793	7
169	644	11
170	365	49
171	234	26
172	440	3
173	299	53
174	232	93
175	546	16
176	15	84
177	603	70
178	71	78
179	138	86
180	46	13
181	134	90
182	694	40
183	795	55
184	71	80
185	904	44
186	277	40
187	536	19
188	401	14
189	763	8
190	434	35
191	184	81
192	142	82
193	746	33
194	811	83
195	877	50
196	943	27
197	498	28
198	3	4
199	188	24
200	594	83
201	681	55
202	741	26
203	466	36
204	689	69
205	693	76
206	242	84
207	839	64
208	530	41
209	388	20
210	520	48
211	714	35
212	991	39
213	944	44
214	682	17
215	935	55
216	693	91
217	843	7
218	422	95
219	854	94
220	995	96
221	557	80
222	986	7
223	731	90
224	281	70
225	486	13
226	509	27
227	773	29
228	493	95
229	18	34
230	295	81
231	84	62
232	292	56
233	101	97
234	422	10
235	848	28
236	120	2
237	592	92
238	7	100
239	987	46
240	183	39
241	43	51
242	587	76
243	239	52
244	608	33
245	170	66
246	839	93
247	433	72
248	373	61
249	515	38
250	362	40
251	740	16
252	605	47
253	248	36
254	670	93
255	28	19
256	239	13
257	568	68
258	434	56
259	333	26
260	313	33
261	122	15
262	424	41
263	123	87
264	267	67
265	340	96
266	125	4
267	155	17
268	345	52
269	494	32
270	412	97
271	757	85
272	289	31
273	151	94
274	815	65
275	185	50
276	524	77
277	930	30
278	914	78
279	655	31
280	260	54
281	127	99
282	460	24
283	744	36
284	667	45
285	501	61
286	97	48
287	649	66
288	626	14
289	779	49
290	660	60
291	537	96
292	776	76
293	218	3
294	255	25
295	920	35
296	541	19
297	426	75
298	748	71
299	608	15
300	754	29
301	895	70
302	473	30
303	87	23
304	674	79
305	345	39
306	309	70
307	537	2
308	975	38
309	114	1
310	125	99
311	506	40
312	145	16
313	795	66
314	394	36
315	689	9
316	416	56
317	219	33
318	293	59
319	679	49
320	459	90
321	404	27
322	868	29
323	52	96
324	899	24
325	689	34
326	455	46
327	435	76
328	484	30
329	963	91
330	473	19
331	741	20
332	482	87
333	946	89
334	230	61
335	617	61
336	962	13
337	832	70
338	355	70
339	389	22
340	682	49
341	895	5
342	96	93
343	531	96
344	576	16
345	107	98
346	901	32
347	79	61
348	399	96
349	746	23
350	626	29
351	429	98
352	741	100
353	344	96
354	608	83
355	617	83
356	213	7
357	247	7
358	49	56
359	309	28
360	935	6
361	975	53
362	201	55
363	493	91
364	1	2
365	757	75
366	973	90
367	845	30
368	59	40
369	747	31
370	766	60
371	956	2
372	701	75
373	648	20
374	111	79
375	948	15
376	430	32
377	737	12
378	46	16
379	358	75
380	945	13
381	430	11
382	73	45
383	32	85
384	38	95
385	257	52
386	263	26
387	361	78
388	643	88
389	964	44
390	984	97
391	441	71
392	499	65
393	685	95
394	800	14
395	877	13
396	84	45
397	325	32
398	195	78
399	142	78
400	526	65
401	562	85
402	939	18
403	532	56
404	43	65
405	982	27
406	133	34
407	231	31
408	838	46
409	623	36
410	818	14
411	126	7
412	523	76
413	28	66
414	197	54
415	803	42
416	490	57
417	727	52
418	361	56
419	62	86
420	126	94
421	425	6
422	163	39
423	464	37
424	210	27
425	249	77
426	885	12
427	4	78
428	436	16
429	247	38
430	286	81
431	343	51
432	243	90
433	380	23
434	540	86
435	42	93
436	536	48
437	27	9
438	495	84
439	944	94
440	414	96
441	147	84
442	264	68
443	951	30
444	974	51
445	649	27
446	898	29
447	869	93
448	698	72
449	480	27
450	427	16
451	372	42
452	459	35
453	701	58
454	743	82
455	445	13
456	676	69
457	587	6
458	937	38
459	34	1
460	510	64
461	838	49
462	143	15
463	616	64
464	935	54
465	712	90
466	592	64
467	541	43
468	985	45
469	489	29
470	367	96
471	271	89
472	614	89
473	917	10
474	530	84
475	386	31
476	325	64
477	106	7
478	448	16
479	121	65
480	315	9
481	689	67
482	811	96
483	890	69
484	371	49
485	720	40
486	799	10
487	397	38
488	411	96
489	671	73
490	946	92
491	968	89
492	803	35
493	633	53
494	436	9
495	725	57
496	872	91
497	616	100
498	946	90
499	583	33
500	186	34
501	551	94
502	848	55
503	685	21
504	909	65
505	637	90
506	633	30
507	368	68
508	312	56
509	933	92
510	694	77
511	276	84
512	744	76
513	311	76
514	385	23
515	11	78
516	609	70
517	902	79
518	253	22
519	637	55
520	354	80
521	378	40
522	478	3
523	82	7
524	290	8
525	500	68
526	718	96
527	955	27
528	229	21
529	139	17
530	792	60
531	209	31
532	375	16
533	154	3
534	879	66
535	542	54
536	672	83
537	690	25
538	597	52
539	652	97
540	94	56
541	223	53
542	60	3
543	554	63
544	56	94
545	667	75
546	513	11
547	721	15
548	110	81
549	534	73
550	587	36
551	719	95
552	960	14
553	953	23
554	122	27
555	409	47
556	163	80
557	686	17
558	777	64
559	436	77
560	253	5
561	265	40
562	772	53
563	291	76
564	727	44
565	990	92
566	702	9
567	951	93
568	650	67
569	307	28
570	306	16
571	559	90
572	522	64
573	769	56
574	248	42
575	960	25
576	538	31
577	379	27
578	764	17
579	886	60
580	832	83
581	603	99
582	453	77
583	803	44
584	884	98
585	366	92
586	101	71
587	300	84
588	526	22
589	26	43
590	9	52
591	925	100
592	188	45
593	498	57
594	855	25
595	76	54
596	178	55
597	675	79
598	559	63
599	412	18
600	961	90
601	575	42
602	177	51
603	828	8
604	889	79
605	429	76
606	586	25
607	481	25
608	105	83
609	317	82
610	820	66
611	831	3
612	297	79
613	696	76
614	104	41
615	418	59
616	427	70
617	454	83
618	721	86
619	282	6
620	289	49
621	548	75
622	769	75
623	14	49
624	19	67
625	552	23
626	585	22
627	326	86
628	926	80
629	710	100
630	668	43
631	449	23
632	880	85
633	43	59
634	401	24
635	7	76
636	740	73
637	679	39
638	50	68
639	504	8
640	375	10
641	809	62
642	303	62
643	422	59
644	836	20
645	778	10
646	448	62
647	109	45
648	944	18
649	966	66
650	341	45
651	270	91
652	376	9
653	995	7
654	667	28
655	215	76
656	168	91
657	975	12
658	630	20
659	951	88
660	148	90
661	106	31
662	900	43
663	703	14
664	869	17
665	358	62
666	448	39
667	59	44
668	554	94
669	450	17
670	621	50
671	595	66
672	488	17
673	292	27
674	549	31
675	146	74
676	257	97
677	60	3
678	908	11
679	434	6
680	365	86
681	949	17
682	737	67
683	709	65
684	362	71
685	821	85
686	717	23
687	590	1
688	326	53
689	680	89
690	534	39
691	208	87
692	567	100
693	98	58
694	434	37
695	402	4
696	318	66
697	115	97
698	314	29
699	60	6
700	585	55
701	349	89
702	450	79
703	925	62
704	219	2
705	38	20
706	778	63
707	576	46
708	254	47
709	461	56
710	209	4
711	685	11
712	520	92
713	954	3
714	781	29
715	729	36
716	364	12
717	39	38
718	858	33
719	305	33
720	324	35
721	376	4
722	636	5
723	260	66
724	776	61
725	266	80
726	105	70
727	537	70
728	306	97
729	317	16
730	274	11
731	673	81
732	897	54
733	295	22
734	463	3
735	149	50
736	362	21
737	799	80
738	239	70
739	809	36
740	58	37
741	915	62
742	981	23
743	624	56
744	855	74
745	24	76
746	898	8
747	323	98
748	428	79
749	382	33
750	775	37
751	790	91
752	281	22
753	979	31
754	812	89
755	272	81
756	424	59
757	250	86
758	302	17
759	353	73
760	835	89
761	410	13
762	231	56
763	165	34
764	832	75
765	268	76
766	774	48
767	608	65
768	795	99
769	852	34
770	751	13
771	501	74
772	316	71
773	905	93
774	715	4
775	98	28
776	122	35
777	160	72
778	942	62
779	651	11
780	1	27
781	536	86
782	863	80
783	429	66
784	844	27
785	513	77
786	786	29
787	914	1
788	166	60
789	693	16
790	666	17
791	292	76
792	432	28
793	626	70
794	969	80
795	6	25
796	947	10
797	79	5
798	608	51
799	854	34
800	471	77
801	737	75
802	280	53
803	214	59
804	996	64
805	680	97
806	111	83
807	802	72
808	716	90
809	258	24
810	372	4
811	446	89
812	220	31
813	151	23
814	70	69
815	359	96
816	809	78
817	103	15
818	567	56
819	45	7
820	134	1
821	520	99
822	923	29
823	605	52
824	388	57
825	213	81
826	774	96
827	63	79
828	717	56
829	766	68
830	90	58
831	109	9
832	233	4
833	368	59
834	369	43
835	671	51
836	678	50
837	692	79
838	562	38
839	230	6
840	225	10
841	951	5
842	906	38
843	238	29
844	465	1
845	187	7
846	581	16
847	708	19
848	430	62
849	85	83
850	196	96
851	908	1
852	466	2
853	586	10
854	808	61
855	14	30
856	802	1
857	215	69
858	229	61
859	561	83
860	674	28
861	585	71
862	992	84
863	884	1
864	117	53
865	337	48
866	113	11
867	266	2
868	234	84
869	966	59
870	786	60
871	3	64
872	860	1
873	445	5
874	817	49
875	832	82
876	94	63
877	918	91
878	84	28
879	513	9
880	674	7
881	745	2
882	946	3
883	415	19
884	544	50
885	881	79
886	329	1
887	34	10
888	504	11
889	274	4
890	312	20
891	416	61
892	806	3
893	870	80
894	616	20
895	682	28
896	531	56
897	795	41
898	66	50
899	690	61
900	203	3
901	457	10
902	865	99
903	289	20
904	987	13
905	754	92
906	981	92
907	75	62
908	644	74
909	830	14
910	694	73
911	176	79
912	459	96
913	40	63
914	920	72
915	337	85
916	76	40
917	509	90
918	669	62
919	762	22
920	183	98
921	905	12
922	932	48
923	330	54
924	853	84
925	806	94
926	697	85
927	706	22
928	505	17
929	94	42
930	988	5
931	243	24
932	896	53
933	382	32
934	240	25
935	546	72
936	725	78
937	469	65
938	488	100
939	735	24
940	127	29
941	51	52
942	754	71
943	564	68
944	155	53
945	346	99
946	359	45
947	731	76
948	502	10
949	109	53
950	596	38
951	939	84
952	392	10
953	668	66
954	490	39
955	809	100
956	641	33
957	902	17
958	49	5
959	151	70
960	870	33
961	438	67
962	29	90
963	240	29
964	820	56
965	687	81
966	361	14
967	722	20
968	786	89
969	148	46
970	665	100
971	188	50
972	645	85
973	350	47
974	357	73
975	631	84
976	218	99
977	788	60
978	86	49
979	197	91
980	135	21
981	273	28
982	771	43
983	416	15
984	940	96
985	879	52
986	134	84
987	814	69
988	462	80
989	255	55
990	45	50
991	196	65
992	811	89
993	433	31
994	331	23
995	163	45
996	580	42
997	203	26
998	184	55
999	599	34
1000	855	18
\.


                                                2956.dat                                                                                            0000600 0004000 0002000 00000026646 14605045136 0014301 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	328	494
2	27	938
3	303	455
4	252	328
5	614	462
6	729	503
7	679	773
8	446	432
9	525	116
10	62	243
11	323	158
12	418	862
13	722	801
14	63	971
15	203	742
16	823	559
17	314	44
18	63	885
19	647	421
20	239	720
21	723	824
22	429	876
23	442	695
24	863	180
25	930	688
26	565	935
27	846	134
28	32	277
29	736	889
30	830	875
31	701	901
32	913	217
33	345	470
34	625	70
35	846	850
36	594	313
37	39	844
38	865	988
39	781	404
40	533	760
41	599	194
42	734	796
43	960	66
44	142	693
45	241	678
46	374	560
47	470	508
48	366	732
49	277	707
50	256	33
51	258	309
52	878	644
53	744	695
54	938	627
55	450	145
56	682	371
57	298	668
58	802	184
59	454	451
60	216	883
61	991	20
62	859	393
63	733	929
64	146	613
65	796	337
66	861	605
67	391	832
68	463	858
69	423	665
70	490	331
71	631	962
72	892	927
73	986	121
74	169	277
75	202	912
76	464	431
77	58	719
78	690	597
79	620	359
80	873	5
81	330	107
82	483	644
83	756	783
84	510	840
85	59	690
86	325	972
87	132	825
88	266	851
89	853	126
90	24	796
91	765	497
92	86	360
93	385	708
94	350	918
95	519	490
96	108	722
97	521	393
98	246	870
99	412	278
100	395	761
101	957	639
102	235	674
103	935	310
104	674	908
105	537	167
106	355	86
107	694	17
108	132	963
109	39	741
110	838	405
111	447	577
112	885	214
113	17	643
114	250	789
115	722	495
116	244	132
117	192	234
118	999	912
119	751	542
120	584	675
121	416	109
122	246	302
123	16	602
124	769	164
125	52	579
126	482	667
127	372	99
128	603	822
129	161	23
130	692	225
131	576	151
132	102	886
133	764	816
134	960	306
135	295	448
136	294	93
137	930	187
138	335	399
139	881	278
140	894	40
141	655	406
142	127	181
143	991	719
144	901	159
145	249	655
146	710	188
147	609	865
148	898	57
149	721	736
150	336	1000
151	562	193
152	331	943
153	272	681
154	114	773
155	652	133
156	161	972
157	640	241
158	571	154
159	549	948
160	380	906
161	114	36
162	184	222
163	4	6
164	913	39
165	487	888
166	59	966
167	236	522
168	718	790
169	832	235
170	761	615
171	649	552
172	783	90
173	770	299
174	464	847
175	673	785
176	641	521
177	387	593
178	676	532
179	314	750
180	614	204
181	95	604
182	911	822
183	540	697
184	132	228
185	209	940
186	56	292
187	886	102
188	562	924
189	340	564
190	693	442
191	576	621
192	304	451
193	130	919
194	309	919
195	642	272
196	934	384
197	742	328
198	660	29
199	567	895
200	659	102
201	422	866
202	41	951
203	940	635
204	687	933
205	274	67
206	89	486
207	483	790
208	400	16
209	836	618
210	900	763
211	566	500
212	589	659
213	338	697
214	437	934
215	938	476
216	248	542
217	584	710
218	265	720
219	63	519
220	898	206
221	635	83
222	177	811
223	666	944
224	479	473
225	822	898
226	61	528
227	730	271
228	884	141
229	845	975
230	804	660
231	735	737
232	215	580
233	934	576
234	809	390
235	642	35
236	894	415
237	45	86
238	652	759
239	533	10
240	830	587
241	459	631
242	997	510
243	750	250
244	450	727
245	727	360
246	731	22
247	867	954
248	861	977
249	560	465
250	733	469
251	448	261
252	388	156
253	448	198
254	169	797
255	307	406
256	84	75
257	777	937
258	554	526
259	822	228
260	575	582
261	610	824
262	92	439
263	350	623
264	452	585
265	560	286
266	768	320
267	215	776
268	206	160
269	750	318
270	356	12
271	245	998
272	360	933
273	464	926
274	542	957
275	561	204
276	756	252
277	340	149
278	571	891
279	167	7
280	452	140
281	67	823
282	878	568
283	119	246
284	910	574
285	634	578
286	844	84
287	898	967
288	465	795
289	274	176
290	291	967
291	287	122
292	119	407
293	895	991
294	767	625
295	466	8
296	675	356
297	487	291
298	879	562
299	892	363
300	434	100
301	403	663
302	242	55
303	894	391
304	785	734
305	890	779
306	526	797
307	205	283
308	631	985
309	962	666
310	253	680
311	474	460
312	27	484
313	57	915
314	990	970
315	987	487
316	71	246
317	362	237
318	416	570
319	251	565
320	258	496
321	889	92
322	448	663
323	430	588
324	542	310
325	891	939
326	635	975
327	796	192
328	233	602
329	419	960
330	498	587
331	436	762
332	158	559
333	424	265
334	716	579
335	436	123
336	939	708
337	554	457
338	58	629
339	889	713
340	505	275
341	264	163
342	103	787
343	48	961
344	30	916
345	390	374
346	306	123
347	143	594
348	986	741
349	997	9
350	767	53
351	619	929
352	145	564
353	1000	262
354	824	787
355	131	105
356	726	869
357	322	190
358	145	658
359	508	804
360	328	264
361	909	11
362	967	176
363	794	743
364	134	6
365	911	164
366	719	661
367	152	330
368	227	2
369	275	805
370	90	715
371	635	376
372	876	572
373	955	122
374	904	791
375	836	477
376	302	82
377	308	87
378	651	686
379	586	33
380	760	745
381	601	103
382	158	375
383	478	666
384	519	933
385	112	699
386	413	56
387	668	877
388	463	58
389	896	762
390	481	529
391	304	855
392	597	190
393	791	769
394	916	868
395	895	585
396	227	725
397	315	536
398	544	829
399	130	178
400	964	32
401	603	8
402	219	160
403	888	40
404	495	782
405	917	758
406	150	576
407	217	50
408	571	658
409	440	765
410	286	811
411	767	61
412	682	210
413	567	765
414	713	706
415	403	255
416	454	660
417	344	752
418	648	470
419	884	54
420	865	315
421	146	249
422	407	717
423	648	937
424	394	284
425	287	485
426	254	605
427	775	373
428	152	222
429	754	140
430	624	89
431	245	516
432	122	903
433	10	7
434	943	759
435	206	105
436	353	798
437	752	29
438	138	985
439	627	205
440	196	282
441	79	388
442	174	895
443	414	212
444	455	600
445	731	593
446	828	268
447	313	384
448	835	178
449	115	828
450	823	795
451	862	751
452	403	367
453	131	256
454	542	48
455	383	694
456	181	287
457	23	467
458	690	981
459	980	702
460	205	745
461	528	526
462	429	168
463	787	509
464	310	825
465	519	891
466	245	95
467	675	714
468	567	295
469	866	195
470	487	246
471	555	165
472	88	551
473	981	676
474	151	35
475	153	163
476	159	646
477	121	661
478	510	120
479	359	783
480	715	600
481	283	322
482	953	244
483	822	578
484	952	16
485	479	659
486	766	277
487	615	639
488	659	645
489	142	843
490	811	565
491	528	582
492	692	986
493	419	304
494	215	498
495	737	190
496	688	444
497	160	608
498	782	163
499	623	859
500	116	781
501	907	679
502	783	792
503	766	807
504	515	791
505	468	182
506	464	47
507	942	576
508	794	382
509	333	126
510	612	49
511	311	854
512	59	152
513	210	700
514	85	673
515	111	39
516	330	672
517	88	720
518	496	837
519	987	108
520	284	191
521	80	804
522	765	58
523	272	547
524	975	687
525	951	479
526	37	456
527	924	546
528	428	92
529	839	492
530	132	502
531	716	301
532	148	73
533	742	611
534	1000	278
535	127	932
536	837	443
537	663	174
538	34	266
539	183	408
540	769	609
541	286	443
542	813	825
543	405	191
544	722	114
545	423	54
546	250	398
547	623	943
548	863	102
549	852	442
550	494	305
551	193	784
552	461	259
553	897	954
554	992	939
555	376	351
556	906	542
557	174	587
558	932	410
559	170	959
560	527	719
561	980	37
562	186	931
563	875	857
564	667	996
565	535	665
566	989	514
567	733	629
568	971	313
569	961	284
570	357	495
571	420	485
572	744	10
573	462	214
574	758	205
575	634	431
576	956	921
577	793	325
578	909	8
579	538	65
580	971	368
581	59	818
582	505	343
583	886	990
584	304	762
585	501	486
586	814	506
587	984	468
588	591	140
589	161	959
590	990	395
591	33	620
592	211	299
593	998	80
594	92	843
595	45	566
596	508	424
597	170	468
598	847	454
599	47	26
600	906	783
601	795	349
602	16	458
603	752	248
604	57	826
605	545	119
606	292	356
607	916	191
608	696	9
609	246	481
610	480	845
611	563	284
612	694	344
613	529	319
614	65	705
615	243	636
616	114	389
617	683	473
618	973	894
619	163	763
620	213	2
621	462	865
622	730	395
623	101	651
624	292	547
625	860	988
626	660	398
627	89	866
628	870	689
629	653	470
630	288	75
631	207	429
632	913	529
633	977	420
634	353	788
635	497	983
636	957	560
637	931	25
638	108	906
639	194	590
640	486	2
641	715	232
642	149	657
643	144	411
644	726	818
645	742	644
646	230	380
647	83	140
648	624	792
649	550	593
650	944	692
651	688	463
652	895	527
653	136	270
654	768	899
655	117	608
656	287	834
657	746	43
658	25	248
659	643	294
660	217	658
661	151	126
662	7	410
663	88	920
664	169	958
665	472	881
666	568	167
667	398	210
668	601	691
669	985	370
670	718	852
671	783	196
672	443	942
673	982	255
674	380	156
675	592	992
676	547	53
677	593	249
678	693	195
679	686	142
680	701	777
681	80	183
682	32	317
683	233	654
684	745	25
685	652	74
686	622	321
687	599	13
688	223	339
689	549	962
690	512	673
691	395	114
692	394	638
693	767	680
694	51	21
695	428	210
696	957	238
697	402	989
698	199	319
699	709	315
700	892	857
701	964	436
702	796	222
703	575	858
704	633	962
705	522	994
706	922	357
707	997	106
708	713	749
709	999	866
710	290	427
711	601	782
712	754	992
713	105	71
714	707	360
715	574	985
716	444	341
717	143	780
718	789	873
719	703	69
720	577	997
721	800	423
722	776	533
723	399	600
724	849	966
725	165	668
726	179	262
727	285	646
728	651	331
729	835	162
730	34	165
731	764	557
732	580	750
733	666	348
734	556	883
735	688	421
736	134	114
737	465	244
738	127	892
739	856	7
740	508	949
741	168	777
742	13	894
743	703	542
744	374	76
745	253	709
746	329	551
747	996	149
748	184	809
749	881	329
750	593	470
751	91	165
752	180	13
753	408	437
754	586	847
755	418	326
756	968	673
757	197	720
758	610	181
759	401	264
760	46	840
761	215	900
762	193	538
763	649	636
764	946	394
765	427	272
766	480	475
767	583	597
768	583	440
769	50	426
770	238	879
771	532	327
772	57	559
773	53	856
774	570	214
775	127	62
776	146	785
777	153	503
778	30	596
779	809	545
780	294	644
781	238	443
782	300	622
783	171	958
784	950	380
785	430	387
786	1	237
787	567	590
788	159	595
789	940	265
790	894	447
791	966	378
792	376	203
793	172	226
794	603	616
795	523	267
796	464	348
797	6	981
798	512	376
799	578	587
800	35	672
801	828	635
802	633	356
803	770	251
804	272	49
805	205	543
806	14	827
807	651	314
808	119	471
809	267	154
810	264	271
811	679	97
812	643	769
813	839	958
814	542	246
815	349	92
816	252	265
817	886	635
818	282	661
819	453	102
820	332	416
821	873	854
822	924	151
823	906	814
824	371	553
825	835	210
826	145	419
827	454	925
828	137	715
829	773	647
830	262	348
831	722	312
832	246	335
833	631	237
834	173	907
835	608	581
836	511	273
837	170	256
838	670	499
839	941	364
840	412	66
841	980	667
842	431	800
843	333	683
844	396	434
845	237	226
846	639	388
847	794	673
848	812	210
849	347	731
850	677	770
851	831	961
852	120	16
853	996	209
854	378	941
855	396	676
856	643	588
857	443	63
858	472	935
859	484	419
860	309	777
861	845	69
862	922	52
863	618	532
864	518	3
865	744	753
866	776	663
867	121	220
868	545	370
869	69	496
870	866	394
871	531	101
872	727	876
873	2	539
874	329	211
875	814	110
876	817	170
877	572	740
878	271	796
879	334	988
880	474	49
881	832	572
882	773	121
883	377	191
884	88	972
885	500	709
886	937	310
887	475	538
888	602	753
889	500	326
890	736	477
891	34	980
892	755	766
893	977	505
894	871	843
895	957	901
896	262	651
897	221	706
898	887	988
899	419	493
900	708	686
901	63	943
902	596	305
903	687	268
904	592	301
905	145	45
906	237	759
907	924	205
908	867	191
909	481	158
910	125	210
911	349	714
912	354	697
913	10	925
914	937	198
915	255	256
916	637	785
917	135	24
918	252	758
919	493	6
920	645	966
921	392	95
922	659	519
923	217	3
924	776	711
925	720	261
926	890	391
927	820	890
928	778	380
929	150	577
930	922	576
931	218	145
932	705	35
933	376	577
934	253	972
935	440	918
936	116	186
937	729	686
938	12	427
939	392	733
940	433	368
941	259	709
942	111	622
943	274	397
944	525	692
945	541	647
946	589	312
947	849	877
948	297	211
949	934	223
950	941	733
951	694	400
952	174	352
953	505	593
954	665	633
955	220	139
956	56	362
957	727	882
958	786	117
959	450	630
960	171	559
961	986	420
962	684	24
963	606	299
964	922	382
965	855	808
966	11	998
967	74	89
968	123	209
969	163	69
970	557	51
971	29	142
972	476	312
973	863	296
974	985	63
975	637	180
976	688	242
977	45	887
978	498	366
979	557	271
980	940	949
981	265	736
982	959	142
983	435	621
984	290	82
985	208	584
986	914	619
987	8	640
988	98	278
989	291	888
990	676	194
991	978	143
992	872	385
993	989	401
994	942	519
995	828	752
996	471	703
997	774	785
998	431	145
999	470	827
1000	929	480
\.


                                                                                          2944.dat                                                                                            0000600 0004000 0002000 00000004045 14605045136 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Mason, Joseph and Chavez
2	Manning PLC
3	Fernandez, Williamson and Lee
4	Evans-Hunt
5	Wheeler, Avery and Daniel
6	Sanchez and Sons
7	Martinez, Ellis and Yoder
8	Houston, Harris and Lewis
9	Wilson-Vargas
10	Stein PLC
11	Santiago, Nguyen and Snyder
12	Salazar, Yates and Mcmillan
13	Thompson-Greene
14	Petersen-White
15	Oliver and Sons
16	Daniel, Mitchell and Burns
17	Hines-Miller
18	Smith PLC
19	Maldonado-Perez
20	Best-Rivera
21	Chambers, Smith and Mccullough
22	Brooks, Shaw and Reed
23	Garcia LLC
24	Harris, Johnson and Johnson
25	Horton Ltd
26	Torres-Simmons
27	Smith-Miller
28	Odonnell, Giles and Olson
29	Chambers-Marsh
30	Lane, Villarreal and Shepherd
31	Lowery, Fowler and Blackwell
32	Fuller, Black and Morse
33	Alexander, Bradford and Johnson
34	Romero Inc
35	Jacobson-Manning
36	Castro-Collins
37	Lewis, Jordan and Montes
38	Stewart Group
39	Hinton, Macdonald and Singh
40	Lopez-Lamb
41	Elliott-Phillips
42	Ryan PLC
43	Mccullough, Hughes and Cantu
44	Pierce Ltd
45	Larson LLC
46	Hughes-Tran
47	Ray Group
48	Brown-Ryan
49	Smith-Dawson
50	Russell-Miller
51	Delacruz-Snyder
52	Chung LLC
53	Robinson, Ramirez and Williams
54	Hughes and Sons
55	Moore-Anderson
56	Jarvis, Lynch and Watts
57	Guerra PLC
58	Wolf, Johnston and Nelson
59	Ryan, Ross and Benton
60	Boyer-Mendoza
61	Reid, Jones and Davis
62	Hall Ltd
63	Johnson and Sons
64	Montgomery, Green and Graham
65	Carroll-Ellis
66	Martinez-Bell
67	Pratt, Gomez and Ross
68	Jones and Sons
69	Glass, Melendez and Wheeler
70	Hinton-Warner
71	Hernandez-Stokes
72	Kelly, Keller and Gibson
73	Martin PLC
74	Summers, Burns and Harvey
75	Bray-Sanchez
76	Warner, Hill and Cruz
77	Martin Ltd
78	Parker Inc
79	Walker and Sons
80	Morrison Ltd
81	Boone, Wallace and Taylor
82	Cook Inc
83	Kirby Ltd
84	Brooks and Sons
85	Martin Ltd
86	Crawford-Smith
87	Johnson-Rios
88	Evans LLC
89	Terry Ltd
90	Mooney, Williams and Joseph
91	Liu, Webster and Perez
92	Mcmillan-Pearson
93	Ross-Johnson
94	Wilkinson-Marshall
95	Cooper-Stewart
96	Summers-Arnold
97	Rios-Fox
98	Clarke, Page and Baker
99	Novak, Schroeder and Jones
100	Duke, Smith and Yang
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2962.dat                                                                                            0000600 0004000 0002000 00000025222 14605045136 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	853687
2	161904
3	638842
4	857828
5	869873
6	202865
7	900237
8	134204
9	465035
10	671001
11	676278
12	115719
13	390077
14	476479
15	659374
16	293707
17	293578
18	360533
19	549835
20	311098
21	267632
22	211125
23	734130
24	287074
25	934719
26	774879
27	709943
28	402964
29	442035
30	756220
31	976192
32	703958
33	883238
34	172175
35	156508
36	581435
37	444685
38	891976
39	879257
40	144880
41	749368
42	221642
43	371562
44	957208
45	862539
46	181966
47	193863
48	532806
49	690644
50	955182
51	630329
52	809490
53	438591
54	403811
55	859654
56	808774
57	603378
58	823705
59	745389
60	683391
61	616677
62	535560
63	467510
64	436328
65	264178
66	727617
67	557379
68	968609
69	686956
70	464865
71	994199
72	155289
73	447284
74	514628
75	828780
76	654054
77	928071
78	300056
79	241661
80	194111
81	967635
82	500270
83	251870
84	323124
85	804061
86	821577
87	935293
88	750065
89	196689
90	513568
91	877568
92	792673
93	583914
94	796098
95	264294
96	641603
97	983628
98	228400
99	753908
100	954140
101	909370
102	430740
103	867250
104	627681
105	811225
106	408085
107	703875
108	149596
109	392473
110	703909
111	824926
112	217998
113	935361
114	865737
115	551687
116	709813
117	618017
118	616945
119	637789
120	403956
121	679228
122	416432
123	604945
124	273379
125	535799
126	334430
127	420678
128	865736
129	886702
130	163742
131	489076
132	972242
133	883947
134	329588
135	875951
136	145857
137	581674
138	717314
139	183674
140	833833
141	854290
142	166763
143	263143
144	929623
145	861118
146	964675
147	993189
148	293546
149	134078
150	546978
151	264489
152	778596
153	236651
154	207545
155	448673
156	199765
157	689964
158	929111
159	334550
160	946488
161	859719
162	932767
163	229881
164	523628
165	859265
166	950442
167	752917
168	622446
169	721533
170	907367
171	497018
172	999923
173	122045
174	876233
175	253441
176	371200
177	849412
178	596643
179	910450
180	183605
181	322908
182	328141
183	281948
184	944000
185	213443
186	154622
187	598040
188	770159
189	716215
190	957240
191	974677
192	463956
193	545925
194	788364
195	298788
196	490709
197	372452
198	869250
199	519606
200	606048
201	257115
202	790321
203	860195
204	537077
205	674099
206	902049
207	701552
208	161286
209	132418
210	149839
211	763465
212	377850
213	544550
214	567711
215	764664
216	172267
217	707303
218	683216
219	829888
220	711153
221	736631
222	141357
223	739126
224	816960
225	555145
226	408703
227	189702
228	816130
229	956886
230	859659
231	630967
232	614041
233	403559
234	727474
235	191158
236	918036
237	894845
238	842499
239	555910
240	554401
241	100569
242	828745
243	484086
244	273607
245	908568
246	402297
247	617768
248	293102
249	604496
250	482951
251	891019
252	957274
253	130506
254	259890
255	940816
256	453522
257	989125
258	812046
259	652335
260	713423
261	823638
262	752466
263	979189
264	443035
265	708469
266	147445
267	639412
268	871048
269	756589
270	244795
271	262930
272	586586
273	965454
274	835054
275	414682
276	320184
277	888962
278	507824
279	453484
280	615767
281	950940
282	872193
283	943450
284	866285
285	565421
286	502793
287	318070
288	656548
289	703324
290	921388
291	452475
292	489249
293	556143
294	117375
295	491376
296	187628
297	608874
298	318693
299	911215
300	966814
301	318026
302	824284
303	793067
304	108096
305	536512
306	886335
307	793348
308	119313
309	714312
310	406018
311	753527
312	497449
313	112062
314	646154
315	335088
316	901927
317	592188
318	838844
319	146914
320	760288
321	719126
322	451966
323	655423
324	928537
325	945038
326	439471
327	243718
328	543548
329	684441
330	745840
331	364668
332	215419
333	525612
334	511794
335	492128
336	655720
337	398168
338	388445
339	764234
340	777176
341	778348
342	633672
343	764735
344	510384
345	821034
346	616197
347	853908
348	975347
349	398810
350	652416
351	698389
352	604959
353	638309
354	421174
355	427124
356	951945
357	565427
358	440930
359	916896
360	930626
361	287359
362	382213
363	193670
364	748869
365	892046
366	201363
367	546829
368	417823
369	613921
370	314304
371	905250
372	899238
373	143512
374	219429
375	990320
376	495394
377	254556
378	623714
379	778278
380	449926
381	141106
382	408157
383	544517
384	383017
385	981854
386	985397
387	421671
388	745622
389	679938
390	896517
391	713670
392	961052
393	373566
394	280848
395	612008
396	904362
397	599417
398	414837
399	367591
400	681655
401	491733
402	251607
403	695403
404	851432
405	721488
406	184738
407	571839
408	813126
409	488628
410	469707
411	499860
412	273466
413	564308
414	477628
415	686159
416	368477
417	371727
418	250258
419	324215
420	349045
421	899756
422	315990
423	273735
424	571571
425	900921
426	388165
427	578736
428	683440
429	879759
430	596374
431	745413
432	681107
433	221337
434	461983
435	441428
436	107852
437	683959
438	703259
439	974744
440	470824
441	249356
442	337283
443	468635
444	396274
445	729656
446	692558
447	344532
448	451421
449	365450
450	606934
451	961461
452	602714
453	347561
454	227617
455	209541
456	347045
457	781630
458	763882
459	196523
460	644046
461	297179
462	515986
463	975796
464	193726
465	162341
466	926948
467	628751
468	796126
469	614632
470	657465
471	204854
472	907189
473	457313
474	892335
475	785012
476	812780
477	528880
478	273717
479	238522
480	900751
481	606785
482	358171
483	189096
484	638722
485	907287
486	133494
487	438172
488	838124
489	885670
490	633204
491	428986
492	948586
493	581601
494	202100
495	224637
496	307694
497	494979
498	565593
499	267755
500	309553
501	796645
502	423239
503	663776
504	219249
505	132491
506	316825
507	929502
508	188806
509	528465
510	230645
511	581920
512	778821
513	899765
514	798177
515	980260
516	488844
517	495542
518	242838
519	250091
520	140829
521	183010
522	804766
523	971645
524	279492
525	444517
526	466632
527	380194
528	288936
529	736144
530	293872
531	928183
532	859390
533	599904
534	104066
535	668526
536	111782
537	644806
538	990427
539	322387
540	681139
541	952118
542	114329
543	577352
544	716027
545	674643
546	897030
547	797979
548	319490
549	607830
550	357485
551	584631
552	357775
553	997104
554	702429
555	417703
556	615552
557	855964
558	256230
559	460302
560	949258
561	926184
562	451261
563	824740
564	544418
565	648597
566	549434
567	582944
568	625987
569	716671
570	507672
571	502229
572	377891
573	618113
574	543324
575	219293
576	524852
577	571123
578	712900
579	590053
580	791390
581	255620
582	150911
583	397267
584	722915
585	727785
586	780227
587	224871
588	779725
589	210581
590	410334
591	767838
592	975705
593	818929
594	142837
595	263195
596	267898
597	360176
598	838964
599	670142
600	518206
601	622474
602	525086
603	367890
604	728117
605	394137
606	792675
607	492471
608	941426
609	144794
610	167388
611	100229
612	936777
613	214995
614	564994
615	534155
616	749378
617	240563
618	755808
619	193146
620	920974
621	529408
622	355229
623	969339
624	922029
625	410308
626	541771
627	927042
628	674145
629	588646
630	938020
631	542580
632	687675
633	830591
634	455079
635	728732
636	131237
637	962174
638	511559
639	745915
640	727227
641	654988
642	776111
643	627300
644	909708
645	714109
646	671301
647	467355
648	456956
649	709999
650	278065
651	386801
652	532434
653	979556
654	452949
655	231126
656	453830
657	274923
658	885828
659	853127
660	349213
661	599375
662	226278
663	314855
664	304493
665	970194
666	207449
667	976708
668	699657
669	396778
670	835077
671	943233
672	774690
673	637958
674	903880
675	258446
676	485853
677	175913
678	370282
679	283307
680	641345
681	187842
682	545505
683	866591
684	556342
685	357016
686	497711
687	880334
688	769579
689	813911
690	424596
691	619973
692	602917
693	516218
694	251767
695	217339
696	783350
697	685474
698	645854
699	809482
700	801528
701	119064
702	558466
703	737509
704	145211
705	133508
706	789143
707	689884
708	562154
709	302873
710	315824
711	222122
712	306314
713	339435
714	463257
715	368474
716	871239
717	593911
718	756360
719	929237
720	216702
721	783325
722	854935
723	677806
724	520611
725	773070
726	538686
727	462403
728	473810
729	886767
730	232967
731	910911
732	434043
733	602292
734	724961
735	738387
736	340763
737	917815
738	588767
739	442656
740	883253
741	806048
742	658246
743	382568
744	408512
745	325619
746	455095
747	227090
748	879741
749	540710
750	120020
751	968288
752	678436
753	653965
754	421104
755	401560
756	253753
757	470068
758	954700
759	819736
760	278068
761	518593
762	593450
763	345338
764	146484
765	893698
766	189424
767	322673
768	558091
769	325876
770	851653
771	728820
772	140558
773	786213
774	443520
775	500578
776	701474
777	151840
778	432087
779	373188
780	161147
781	829625
782	754906
783	587562
784	168686
785	178480
786	381240
787	312983
788	672253
789	676829
790	659826
791	427905
792	318737
793	565314
794	789523
795	438682
796	323915
797	947850
798	483280
799	427202
800	425798
801	103146
802	457444
803	733503
804	520169
805	268514
806	656209
807	263717
808	876700
809	808449
810	203803
811	448524
812	410892
813	646543
814	539856
815	135793
816	868346
817	597492
818	722114
819	621937
820	414477
821	533279
822	466802
823	172988
824	621518
825	227888
826	433681
827	643249
828	847747
829	180320
830	391849
831	525315
832	678373
833	415968
834	924756
835	114328
836	424806
837	704429
838	262169
839	674254
840	455945
841	248634
842	702187
843	198493
844	430360
845	827349
846	425747
847	150128
848	430217
849	539784
850	262486
851	519357
852	638143
853	840774
854	149247
855	457308
856	980253
857	692161
858	826765
859	582623
860	529357
861	168208
862	662110
863	405669
864	808347
865	734540
866	155844
867	913370
868	709757
869	286785
870	632067
871	940315
872	318345
873	516160
874	821428
875	518945
876	580631
877	439324
878	587003
879	697063
880	686720
881	755754
882	735707
883	747974
884	342441
885	492297
886	509832
887	660034
888	765280
889	211741
890	803499
891	791109
892	213346
893	606192
894	512216
895	758761
896	736940
897	825438
898	878084
899	674986
900	981867
901	932927
902	935282
903	637285
904	125701
905	901541
906	799087
907	336798
908	781853
909	110709
910	459705
911	525585
912	653686
913	112826
914	813534
915	724279
916	855489
917	920278
918	346820
919	433488
920	859077
921	631941
922	936811
923	241433
924	115228
925	820753
926	275028
927	166327
928	944396
929	912770
930	539129
931	208184
932	323773
933	282945
934	539205
935	100865
936	624701
937	620144
938	223089
939	267524
940	144507
941	814490
942	153198
943	179915
944	705760
945	159576
946	697528
947	798803
948	912121
949	645514
950	568078
951	703419
952	203801
953	776248
954	214901
955	763840
956	112071
957	705428
958	340269
959	408032
960	545312
961	278787
962	712271
963	255269
964	466326
965	781189
966	604721
967	837044
968	246246
969	992505
970	266799
971	146341
972	594470
973	319638
974	694221
975	606836
976	198587
977	253482
978	987960
979	433526
980	968618
981	876988
982	411711
983	599355
984	450226
985	282075
986	438878
987	598679
988	294575
989	300612
990	911350
991	361230
992	158036
993	875699
994	212144
995	451947
996	980672
997	138305
998	637532
999	820674
1000	800637
\.


                                                                                                                                                                                                                                                                                                                                                                              2958.dat                                                                                            0000600 0004000 0002000 00000026657 14605045136 0014305 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	80	130
2	266	760
3	528	733
4	701	846
5	231	873
6	744	971
7	967	72
8	330	914
9	658	822
10	136	520
11	927	296
12	286	256
13	195	878
14	791	123
15	349	546
16	303	30
17	152	934
18	336	505
19	938	420
20	163	192
21	791	337
22	623	979
23	431	912
24	384	259
25	178	551
26	522	304
27	821	795
28	708	91
29	668	782
30	130	724
31	605	115
32	647	118
33	492	587
34	472	284
35	788	993
36	337	677
37	697	25
38	138	616
39	81	480
40	682	448
41	462	288
42	536	674
43	175	256
44	491	453
45	981	271
46	681	585
47	739	631
48	607	16
49	708	172
50	632	702
51	822	309
52	370	867
53	180	178
54	564	527
55	344	545
56	262	123
57	341	368
58	500	218
59	857	795
60	499	453
61	519	887
62	666	714
63	262	680
64	553	241
65	988	543
66	978	561
67	270	974
68	633	910
69	449	413
70	851	569
71	744	623
72	752	9
73	835	4
74	612	546
75	599	203
76	220	636
77	863	306
78	735	186
79	158	456
80	403	21
81	109	800
82	57	236
83	926	231
84	814	994
85	575	2
86	982	147
87	100	169
88	814	216
89	34	933
90	958	1000
91	662	848
92	258	880
93	363	291
94	786	698
95	27	930
96	765	359
97	541	909
98	929	311
99	142	376
100	1000	355
101	562	356
102	75	845
103	931	494
104	433	510
105	496	986
106	984	38
107	56	325
108	459	354
109	580	129
110	853	282
111	605	146
112	230	199
113	734	980
114	556	248
115	966	136
116	142	818
117	921	99
118	576	257
119	420	262
120	145	735
121	535	869
122	549	339
123	616	46
124	295	976
125	90	550
126	680	586
127	256	155
128	21	163
129	463	683
130	974	57
131	195	252
132	934	854
133	605	970
134	424	307
135	870	490
136	761	546
137	794	157
138	112	276
139	815	821
140	941	934
141	11	862
142	984	721
143	241	671
144	503	976
145	739	436
146	850	228
147	520	7
148	301	170
149	416	394
150	281	739
151	474	481
152	379	938
153	401	665
154	592	833
155	91	208
156	35	442
157	970	671
158	151	323
159	170	845
160	565	956
161	899	330
162	101	184
163	808	554
164	679	853
165	363	20
166	144	555
167	308	102
168	752	676
169	338	532
170	147	220
171	117	34
172	366	944
173	911	943
174	509	657
175	966	370
176	188	697
177	419	488
178	266	69
179	475	220
180	100	727
181	36	47
182	549	947
183	487	610
184	26	522
185	721	436
186	849	111
187	659	178
188	920	14
189	338	322
190	771	306
191	100	835
192	255	529
193	712	557
194	617	912
195	812	880
196	335	725
197	460	46
198	685	9
199	895	476
200	505	131
201	676	75
202	172	714
203	289	496
204	797	282
205	26	484
206	597	320
207	375	644
208	150	561
209	682	745
210	358	248
211	575	658
212	399	966
213	952	88
214	444	412
215	468	740
216	541	141
217	860	312
218	206	331
219	206	736
220	866	451
221	638	860
222	855	455
223	617	871
224	615	262
225	757	895
226	243	679
227	783	287
228	485	998
229	109	820
230	297	994
231	100	724
232	187	929
233	112	226
234	581	771
235	224	914
236	160	433
237	192	190
238	920	640
239	984	782
240	621	919
241	87	923
242	89	809
243	496	368
244	31	609
245	156	870
246	183	159
247	578	422
248	351	573
249	804	992
250	623	909
251	161	331
252	710	179
253	173	996
254	522	415
255	627	282
256	966	736
257	455	493
258	307	200
259	298	706
260	810	946
261	954	101
262	189	457
263	86	856
264	138	443
265	84	380
266	695	385
267	22	386
268	70	343
269	703	777
270	223	277
271	891	786
272	900	448
273	230	419
274	610	599
275	777	182
276	822	536
277	653	793
278	422	866
279	560	155
280	413	867
281	236	656
282	331	507
283	220	642
284	71	944
285	541	350
286	509	341
287	154	962
288	168	39
289	772	220
290	35	528
291	523	361
292	640	357
293	764	395
294	168	648
295	835	71
296	948	531
297	35	32
298	950	703
299	89	761
300	354	488
301	671	32
302	62	727
303	189	845
304	520	833
305	862	215
306	618	254
307	540	417
308	843	442
309	884	347
310	624	686
311	558	345
312	29	622
313	863	954
314	399	653
315	165	889
316	573	815
317	304	458
318	529	167
319	48	408
320	397	39
321	231	271
322	857	973
323	63	320
324	227	513
325	118	862
326	634	867
327	619	327
328	851	339
329	495	625
330	735	211
331	9	167
332	814	723
333	37	88
334	548	176
335	76	362
336	148	201
337	842	662
338	219	727
339	200	963
340	933	571
341	170	599
342	977	67
343	320	163
344	309	939
345	802	588
346	630	500
347	758	352
348	576	422
349	874	502
350	933	960
351	7	247
352	281	825
353	806	2
354	972	753
355	638	759
356	650	750
357	509	484
358	658	180
359	583	884
360	283	867
361	221	476
362	602	850
363	804	362
364	306	786
365	813	940
366	892	357
367	949	934
368	289	321
369	980	712
370	796	307
371	209	78
372	267	834
373	171	784
374	143	195
375	62	342
376	212	622
377	857	837
378	825	340
379	28	592
380	205	546
381	416	699
382	69	967
383	824	321
384	638	674
385	825	581
386	62	58
387	380	756
388	716	767
389	416	40
390	615	602
391	792	699
392	56	502
393	995	813
394	422	957
395	196	650
396	269	872
397	731	183
398	46	77
399	581	232
400	729	195
401	944	249
402	599	941
403	969	221
404	83	389
405	390	498
406	162	725
407	499	710
408	683	616
409	303	9
410	538	999
411	879	331
412	711	990
413	120	484
414	673	248
415	392	944
416	629	865
417	719	442
418	455	656
419	620	66
420	40	720
421	353	538
422	322	276
423	548	979
424	680	800
425	658	322
426	863	684
427	614	791
428	960	326
429	689	368
430	916	880
431	811	273
432	104	412
433	323	707
434	35	978
435	462	672
436	523	256
437	88	277
438	318	733
439	902	296
440	864	858
441	709	187
442	364	129
443	659	920
444	161	309
445	768	460
446	567	105
447	883	948
448	600	537
449	686	750
450	501	390
451	777	622
452	762	573
453	377	252
454	791	6
455	712	47
456	531	355
457	926	435
458	261	712
459	866	667
460	761	773
461	13	877
462	13	429
463	573	345
464	810	551
465	616	178
466	7	698
467	566	358
468	957	786
469	78	243
470	46	517
471	572	323
472	603	208
473	399	521
474	736	495
475	937	90
476	72	735
477	40	68
478	954	699
479	186	716
480	327	470
481	382	479
482	636	172
483	114	5
484	215	311
485	947	524
486	274	67
487	527	153
488	411	302
489	713	398
490	314	582
491	28	61
492	716	982
493	734	625
494	295	120
495	276	962
496	743	774
497	528	119
498	510	394
499	47	897
500	903	481
501	112	834
502	472	707
503	875	337
504	212	124
505	871	427
506	800	66
507	22	675
508	766	647
509	101	555
510	840	423
511	523	544
512	591	512
513	843	203
514	764	59
515	770	949
516	664	470
517	455	24
518	653	119
519	170	735
520	173	238
521	529	310
522	21	409
523	193	151
524	299	996
525	242	939
526	539	868
527	426	206
528	177	186
529	332	758
530	490	122
531	48	765
532	713	720
533	901	390
534	229	204
535	333	868
536	328	781
537	9	66
538	578	868
539	149	327
540	243	555
541	294	431
542	615	54
543	933	143
544	85	793
545	519	509
546	783	767
547	113	942
548	422	2
549	602	640
550	352	783
551	358	97
552	433	18
553	253	485
554	483	45
555	676	824
556	125	152
557	705	119
558	953	224
559	99	793
560	427	116
561	185	367
562	250	831
563	849	689
564	745	95
565	425	116
566	154	205
567	185	203
568	895	590
569	174	417
570	231	300
571	955	151
572	396	386
573	129	608
574	127	560
575	881	783
576	511	456
577	518	936
578	543	821
579	979	297
580	164	338
581	986	631
582	865	431
583	666	947
584	244	790
585	662	252
586	494	856
587	738	483
588	727	400
589	580	51
590	941	334
591	544	839
592	766	18
593	129	120
594	624	907
595	264	162
596	211	957
597	658	591
598	634	615
599	115	942
600	161	963
601	973	401
602	985	218
603	727	308
604	666	119
605	793	693
606	482	986
607	855	364
608	589	851
609	490	907
610	645	345
611	794	902
612	308	454
613	747	764
614	173	82
615	217	842
616	784	776
617	983	243
618	231	314
619	2	327
620	887	22
621	168	505
622	166	931
623	342	317
624	939	217
625	85	218
626	497	20
627	518	455
628	92	288
629	363	510
630	268	485
631	91	627
632	391	236
633	533	914
634	803	329
635	91	194
636	636	195
637	764	988
638	932	381
639	814	279
640	146	267
641	201	773
642	410	353
643	211	683
644	934	110
645	516	530
646	974	359
647	937	447
648	909	126
649	511	556
650	247	849
651	866	202
652	279	846
653	86	982
654	993	780
655	133	182
656	106	901
657	784	843
658	333	173
659	319	446
660	911	874
661	941	670
662	999	432
663	976	128
664	316	927
665	224	673
666	131	57
667	460	545
668	232	619
669	361	149
670	221	400
671	422	789
672	124	40
673	862	351
674	817	230
675	472	854
676	169	523
677	792	374
678	462	973
679	209	364
680	326	193
681	462	626
682	895	713
683	181	621
684	605	512
685	889	161
686	97	14
687	776	599
688	990	178
689	993	732
690	989	169
691	600	581
692	564	644
693	591	389
694	411	121
695	342	718
696	419	769
697	516	59
698	746	435
699	256	494
700	784	729
701	710	478
702	714	740
703	332	177
704	474	520
705	188	67
706	586	721
707	264	92
708	917	390
709	646	406
710	295	573
711	306	669
712	442	651
713	499	692
714	240	175
715	570	990
716	441	448
717	488	176
718	990	984
719	694	51
720	341	474
721	220	373
722	8	929
723	28	867
724	675	696
725	647	117
726	915	980
727	992	170
728	224	758
729	184	710
730	592	337
731	706	256
732	781	792
733	183	6
734	901	892
735	905	210
736	431	566
737	310	454
738	120	890
739	24	444
740	133	565
741	704	954
742	11	908
743	949	535
744	967	455
745	352	4
746	781	316
747	778	951
748	579	830
749	361	14
750	521	616
751	118	125
752	74	249
753	796	904
754	728	829
755	431	797
756	272	353
757	55	116
758	341	511
759	41	810
760	635	41
761	171	165
762	645	314
763	327	142
764	637	784
765	68	929
766	492	834
767	579	63
768	990	729
769	350	802
770	756	825
771	153	874
772	257	252
773	535	209
774	149	199
775	302	953
776	608	767
777	589	690
778	378	187
779	579	411
780	717	693
781	170	777
782	610	45
783	279	675
784	445	743
785	148	893
786	460	973
787	198	253
788	376	339
789	118	709
790	893	532
791	830	874
792	316	726
793	338	851
794	132	38
795	357	745
796	149	821
797	592	408
798	408	617
799	248	111
800	407	670
801	153	702
802	826	751
803	550	900
804	927	802
805	859	21
806	353	217
807	591	645
808	516	227
809	168	826
810	900	916
811	36	224
812	227	861
813	229	264
814	535	732
815	702	479
816	71	261
817	639	456
818	905	85
819	622	939
820	522	546
821	562	697
822	515	442
823	936	497
824	442	696
825	647	454
826	264	980
827	643	790
828	205	478
829	366	714
830	576	278
831	882	123
832	908	168
833	957	969
834	898	932
835	506	961
836	959	612
837	479	758
838	260	900
839	237	550
840	869	406
841	783	95
842	318	67
843	575	972
844	781	897
845	722	692
846	616	665
847	573	927
848	909	988
849	365	926
850	327	588
851	644	756
852	267	707
853	746	822
854	986	711
855	515	548
856	512	484
857	348	582
858	779	445
859	65	703
860	866	619
861	614	256
862	769	351
863	278	244
864	471	876
865	504	210
866	290	66
867	326	950
868	889	374
869	538	735
870	425	723
871	185	684
872	537	884
873	880	804
874	777	615
875	714	519
876	606	36
877	463	554
878	621	833
879	589	945
880	354	997
881	714	922
882	896	701
883	915	900
884	416	332
885	896	634
886	648	892
887	662	688
888	756	924
889	911	603
890	348	288
891	347	123
892	497	741
893	394	801
894	493	320
895	926	225
896	850	69
897	2	452
898	203	869
899	801	36
900	798	337
901	861	951
902	192	340
903	809	914
904	525	208
905	642	55
906	469	684
907	658	915
908	175	449
909	124	721
910	506	412
911	59	248
912	592	33
913	638	983
914	128	258
915	614	200
916	9	624
917	197	58
918	25	432
919	486	46
920	678	971
921	281	910
922	15	696
923	849	814
924	593	494
925	49	383
926	748	377
927	745	88
928	718	546
929	62	81
930	327	954
931	57	207
932	822	731
933	25	66
934	449	654
935	734	598
936	242	682
937	347	341
938	879	737
939	706	332
940	716	539
941	847	541
942	429	758
943	539	558
944	634	604
945	473	750
946	964	992
947	424	286
948	916	745
949	466	219
950	620	560
951	474	447
952	648	467
953	533	850
954	515	895
955	471	770
956	232	275
957	400	586
958	937	375
959	417	869
960	988	997
961	673	116
962	670	192
963	574	962
964	6	486
965	266	563
966	343	628
967	752	676
968	820	12
969	233	13
970	181	299
971	789	990
972	52	572
973	780	244
974	604	678
975	647	559
976	66	930
977	948	502
978	466	497
979	566	67
980	330	546
981	343	495
982	454	371
983	821	719
984	768	586
985	298	70
986	160	724
987	155	159
988	518	381
989	711	747
990	44	272
991	349	942
992	29	553
993	318	879
994	57	592
995	820	321
996	936	613
997	581	792
998	260	576
999	468	128
1000	191	163
\.


                                                                                 2946.dat                                                                                            0000600 0004000 0002000 00000063716 14605045136 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Rebecca	Ingeniero	21	44
2	Catherine	Piloto	80	72
3	Denise	Ingeniero	29	49
4	Erica	Administrativo	68	100
5	John	Tecnico	91	81
6	Melinda	Mecanico	31	22
7	Matthew	Ingeniero	23	93
8	Lacey	Tecnico	7	97
9	Denise	Tripulante	60	64
10	Jacqueline	Administrativo	60	8
11	Amanda	Tecnico	60	47
12	Jerry	Administrativo	30	82
13	Bryan	Azafata	47	78
14	Ronald	Mecanico	69	99
15	Melinda	Piloto	55	60
16	Brian	Azafata	26	81
17	Joshua	Azafata	11	41
18	Samuel	Administrativo	33	48
19	Tina	Administrativo	85	38
20	Robin	Administrativo	5	84
21	Richard	Piloto	49	1
22	Chris	Azafata	87	95
23	Larry	Tecnico	85	58
24	Nicholas	Ingeniero	31	52
25	Alan	Mecanico	82	100
26	John	Mecanico	84	66
27	Joshua	Azafata	86	78
28	Linda	Azafata	81	68
29	Tanya	Tecnico	29	44
30	Mark	Administrativo	97	40
31	Tracy	Ingeniero	70	72
32	Kevin	Administrativo	73	61
33	Laura	Azafata	28	85
34	Kimberly	Tripulante	91	7
35	Blake	Azafata	90	80
36	Steve	Ingeniero	16	91
37	Ruth	Administrativo	66	55
38	Kathryn	Tecnico	56	6
39	Julie	Piloto	51	17
40	Bryan	Tripulante	46	96
41	Christina	Mecanico	25	4
42	April	Piloto	29	75
43	Gary	Ingeniero	84	16
44	Amanda	Ingeniero	89	22
45	Jose	Ingeniero	47	81
46	Curtis	Administrativo	1	70
47	Tabitha	Tripulante	18	51
48	Johnny	Azafata	54	46
49	Courtney	Mecanico	82	6
50	Andrew	Piloto	84	96
51	Kyle	Mecanico	28	54
52	Heather	Tripulante	67	76
53	Natalie	Tecnico	81	60
54	Heather	Piloto	21	81
55	Carmen	Azafata	48	96
56	Charles	Ingeniero	98	90
57	Charles	Azafata	74	60
58	Michael	Tecnico	100	34
59	Bryan	Piloto	85	61
60	Melissa	Tripulante	75	23
61	Dana	Administrativo	66	47
62	Brandy	Ingeniero	70	75
63	Deborah	Administrativo	50	56
64	Judy	Mecanico	41	75
65	Jennifer	Piloto	63	17
66	Craig	Azafata	96	78
67	Anthony	Ingeniero	12	20
68	Travis	Tecnico	37	51
69	Andrea	Tripulante	77	65
70	Michael	Ingeniero	63	72
71	Janet	Administrativo	9	23
72	Shannon	Ingeniero	40	9
73	Ryan	Mecanico	70	13
74	Tara	Administrativo	40	41
75	Sarah	Tecnico	37	16
76	Katherine	Ingeniero	58	37
77	Lisa	Piloto	35	68
78	Jessica	Piloto	47	93
79	Mary	Azafata	61	17
80	Holly	Administrativo	23	64
81	Lindsay	Administrativo	84	94
82	Cody	Piloto	20	30
83	Jimmy	Tecnico	81	50
84	Seth	Tripulante	7	90
85	Samantha	Piloto	77	21
86	Patricia	Tripulante	89	62
87	Patricia	Piloto	21	44
88	Kenneth	Ingeniero	51	81
89	Tiffany	Administrativo	73	51
90	Andrea	Azafata	34	28
91	Marissa	Piloto	90	81
92	Trevor	Azafata	7	33
93	Pamela	Tecnico	85	91
94	Ashley	Ingeniero	49	11
95	Jason	Azafata	50	47
96	Sandy	Piloto	65	99
97	Kim	Tripulante	81	10
98	Melissa	Tripulante	88	23
99	Daniel	Mecanico	39	81
100	Tiffany	Ingeniero	86	31
101	Andrew	Piloto	38	11
102	Jacob	Piloto	37	34
103	David	Mecanico	62	39
104	Karen	Administrativo	80	19
105	Dominique	Administrativo	33	98
106	Tyler	Tripulante	38	76
107	Bruce	Tripulante	27	10
108	Patricia	Ingeniero	100	78
109	Terri	Piloto	85	23
110	Kaitlyn	Ingeniero	60	39
111	Yvette	Mecanico	12	57
112	Gabriel	Tecnico	30	19
113	Carl	Piloto	21	37
114	Paul	Tripulante	75	39
115	Steven	Tripulante	73	48
116	Amanda	Ingeniero	52	11
117	Elizabeth	Mecanico	96	91
118	Kenneth	Ingeniero	28	92
119	Cassie	Tripulante	70	7
120	Maria	Mecanico	27	22
121	Tiffany	Ingeniero	79	66
122	John	Tripulante	9	100
123	Joseph	Mecanico	13	16
124	Alec	Piloto	2	47
125	Gabrielle	Ingeniero	95	18
126	Benjamin	Mecanico	41	77
127	James	Administrativo	70	52
128	Kathryn	Ingeniero	90	96
129	Derek	Tripulante	72	17
130	Kelli	Mecanico	22	4
131	Ashley	Mecanico	88	72
132	Rachael	Tripulante	19	44
133	William	Tripulante	69	18
134	Alice	Azafata	63	55
135	Devin	Tripulante	81	54
136	Pamela	Azafata	77	64
137	Kevin	Piloto	1	17
138	Pamela	Ingeniero	66	33
139	Donna	Tecnico	23	25
140	Rebecca	Azafata	4	78
141	Matthew	Tecnico	36	78
142	Frederick	Mecanico	35	29
143	David	Mecanico	44	88
144	Cindy	Ingeniero	85	88
145	Janice	Tecnico	100	43
146	Dawn	Piloto	82	15
147	James	Mecanico	26	99
148	Robert	Administrativo	42	92
149	Andrew	Azafata	15	37
150	Nicole	Mecanico	31	85
151	Denise	Piloto	16	15
152	Adam	Azafata	96	99
153	Angela	Azafata	37	13
154	Katelyn	Administrativo	84	8
155	Melanie	Ingeniero	6	13
156	Nicole	Azafata	9	77
157	Tamara	Ingeniero	41	28
158	Ronald	Ingeniero	72	38
159	Paige	Tecnico	55	10
160	Kyle	Administrativo	93	80
161	Kristin	Tecnico	28	64
162	Natasha	Administrativo	59	8
163	Emily	Tecnico	42	39
164	Claire	Tripulante	2	39
165	Jack	Tecnico	57	1
166	Kelli	Administrativo	1	46
167	Eric	Ingeniero	52	17
168	Barbara	Ingeniero	83	55
169	Adam	Ingeniero	14	87
170	Christina	Azafata	2	75
171	Melissa	Ingeniero	72	10
172	Krista	Tecnico	16	100
173	Tracy	Ingeniero	4	94
174	Teresa	Tripulante	27	74
175	Shelby	Mecanico	27	66
176	Vanessa	Piloto	37	97
177	Candice	Tecnico	32	41
178	Monica	Mecanico	20	27
179	Steven	Administrativo	43	9
180	Stephanie	Tripulante	79	20
181	Joseph	Piloto	52	53
182	Daniel	Piloto	61	75
183	Cameron	Mecanico	13	1
184	Shelby	Tripulante	9	88
185	John	Ingeniero	74	86
186	Wayne	Azafata	14	25
187	Sarah	Administrativo	32	63
188	Jeremy	Mecanico	50	65
189	Kirsten	Administrativo	77	27
190	Sarah	Azafata	55	31
191	Charles	Mecanico	84	86
192	Nicole	Azafata	55	80
193	Joseph	Administrativo	35	31
194	Benjamin	Tripulante	10	62
195	Caitlin	Piloto	97	24
196	Sean	Piloto	30	34
197	Margaret	Ingeniero	25	56
198	Kenneth	Administrativo	60	37
199	Megan	Administrativo	47	4
200	Charles	Piloto	1	67
201	Michael	Tripulante	98	52
202	Gabrielle	Tripulante	13	20
203	Sarah	Tecnico	53	35
204	Gary	Administrativo	86	84
205	Nicole	Piloto	51	24
206	Jonathan	Tripulante	68	66
207	Nicholas	Ingeniero	90	55
208	Eric	Tripulante	64	39
209	Jonathan	Ingeniero	86	38
210	Robert	Piloto	66	74
211	Miranda	Administrativo	62	13
212	Candace	Ingeniero	14	84
213	Samantha	Administrativo	23	71
214	Samantha	Tecnico	39	54
215	Ashley	Ingeniero	87	60
216	Jonathan	Mecanico	75	67
217	Nancy	Azafata	75	23
218	John	Ingeniero	44	7
219	Jessica	Azafata	26	38
220	Mary	Piloto	44	94
221	Wayne	Administrativo	89	68
222	Mikayla	Tecnico	18	12
223	John	Administrativo	98	56
224	Andrew	Administrativo	72	11
225	Douglas	Piloto	13	67
226	Dustin	Tecnico	51	5
227	Chelsea	Administrativo	92	65
228	Olivia	Piloto	2	92
229	Lisa	Azafata	52	31
230	Jessica	Mecanico	77	98
231	Andrew	Administrativo	90	37
232	Teresa	Azafata	56	48
233	Jonathan	Administrativo	80	58
234	Ryan	Tecnico	32	43
235	John	Tecnico	66	100
236	Diana	Azafata	47	46
237	Danielle	Mecanico	34	37
238	Melissa	Azafata	69	97
239	Timothy	Tripulante	53	81
240	Blake	Tripulante	83	64
241	Julie	Ingeniero	15	83
242	Kayla	Administrativo	97	54
243	John	Mecanico	66	31
244	William	Tecnico	10	88
245	Suzanne	Tripulante	54	67
246	Traci	Mecanico	79	72
247	Sarah	Piloto	82	72
248	Kimberly	Mecanico	52	14
249	Kim	Administrativo	94	67
250	Joshua	Tripulante	64	26
251	Maurice	Ingeniero	89	36
252	Kenneth	Azafata	48	21
253	Ronnie	Tecnico	73	24
254	Gary	Ingeniero	63	36
255	Brittany	Ingeniero	16	30
256	Sonya	Piloto	52	78
257	Sarah	Ingeniero	50	76
258	Julie	Mecanico	93	35
259	Erica	Administrativo	73	88
260	Cory	Piloto	33	35
261	Alejandra	Tripulante	72	5
262	Samantha	Mecanico	43	42
263	Susan	Tripulante	68	47
264	Marvin	Administrativo	64	83
265	Danielle	Tripulante	21	38
266	Richard	Azafata	45	24
267	Amy	Piloto	92	53
268	Kristen	Piloto	20	13
269	Megan	Azafata	52	63
270	Sarah	Tripulante	33	47
271	Diane	Tripulante	83	18
272	Jennifer	Ingeniero	52	11
273	Wendy	Piloto	85	88
274	Laurie	Piloto	25	67
275	Melinda	Tripulante	55	13
276	Mary	Mecanico	80	84
277	Regina	Azafata	5	9
278	Christopher	Tripulante	11	39
279	Natalie	Tecnico	80	2
280	Carmen	Tecnico	94	33
281	Shannon	Tecnico	82	31
282	Sandra	Azafata	5	29
283	Jerry	Administrativo	99	53
284	Matthew	Piloto	45	45
285	Joshua	Tripulante	94	6
286	Audrey	Piloto	95	92
287	Brian	Tecnico	15	85
288	Stephen	Tripulante	2	64
289	Matthew	Tripulante	15	84
290	Erik	Administrativo	90	81
291	Tammy	Tecnico	62	36
292	Luke	Piloto	84	65
293	Timothy	Ingeniero	62	4
294	Becky	Mecanico	43	90
295	Kayla	Tripulante	3	33
296	Tiffany	Tecnico	100	68
297	Shirley	Mecanico	75	37
298	Ann	Tecnico	31	20
299	Samuel	Administrativo	85	20
300	Larry	Tecnico	25	18
301	Marissa	Mecanico	86	62
302	Natalie	Tecnico	2	24
303	Kristin	Tripulante	56	42
304	Denise	Mecanico	68	64
305	Richard	Mecanico	12	86
306	Carrie	Mecanico	74	83
307	Timothy	Ingeniero	92	92
308	Taylor	Administrativo	98	54
309	Nancy	Ingeniero	35	64
310	Allison	Tecnico	22	22
311	Jill	Ingeniero	48	50
312	Rebecca	Tecnico	83	65
313	Tony	Administrativo	59	75
314	Latoya	Tecnico	13	14
315	Joseph	Azafata	9	93
316	Jesse	Azafata	66	3
317	Barbara	Azafata	74	71
318	Peter	Administrativo	50	38
319	Duane	Azafata	45	94
320	Jennifer	Ingeniero	48	50
321	Daniel	Administrativo	1	31
322	Jennifer	Piloto	56	67
323	Anne	Tecnico	30	53
324	Jessica	Ingeniero	96	12
325	Jessica	Tripulante	18	43
326	Samantha	Azafata	68	29
327	Matthew	Tripulante	88	15
328	Jennifer	Administrativo	42	76
329	Paula	Azafata	33	16
330	Christopher	Mecanico	84	99
331	Christopher	Azafata	20	67
332	Debra	Administrativo	37	3
333	Christopher	Mecanico	5	17
334	Amber	Ingeniero	76	59
335	Gabriel	Azafata	2	63
336	Hailey	Tripulante	26	45
337	Alexis	Administrativo	28	52
338	Lorraine	Ingeniero	100	31
339	John	Mecanico	88	98
340	John	Administrativo	57	52
341	Kristen	Mecanico	97	54
342	Michael	Ingeniero	31	93
343	Andrea	Piloto	39	70
344	Micheal	Tecnico	98	22
345	Kelly	Administrativo	17	76
346	Kevin	Tripulante	61	46
347	Michele	Administrativo	41	62
348	Melissa	Ingeniero	31	36
349	Angela	Mecanico	17	16
350	Harold	Azafata	55	88
351	Russell	Mecanico	72	51
352	Katie	Tripulante	94	77
353	Jonathan	Ingeniero	37	76
354	Melissa	Piloto	44	70
355	Jennifer	Ingeniero	57	27
356	Kristen	Piloto	26	90
357	Emily	Azafata	82	60
358	Cheryl	Tripulante	21	11
359	Jeffrey	Tripulante	26	85
360	Gabriel	Ingeniero	71	70
361	Michael	Ingeniero	67	57
362	Nathan	Ingeniero	74	70
363	Melissa	Piloto	36	60
364	Micheal	Piloto	98	51
365	Debbie	Tripulante	34	45
366	Samantha	Azafata	64	44
367	Joseph	Azafata	29	86
368	Michael	Administrativo	40	23
369	Stacy	Piloto	86	15
370	Michelle	Administrativo	67	84
371	Caitlin	Administrativo	69	14
372	Justin	Azafata	59	82
373	Cynthia	Tecnico	46	39
374	Michael	Administrativo	93	36
375	Elizabeth	Tecnico	56	22
376	Christopher	Azafata	6	30
377	Nichole	Ingeniero	10	99
378	Justin	Piloto	82	53
379	David	Piloto	6	19
380	Shawn	Tripulante	36	92
381	Jesus	Mecanico	85	92
382	Rebecca	Piloto	60	81
383	Megan	Azafata	89	26
384	Hannah	Tecnico	31	61
385	Crystal	Tecnico	30	2
386	Monique	Ingeniero	67	58
387	Brian	Azafata	98	98
388	Mary	Mecanico	66	58
389	Michael	Administrativo	64	21
390	Connie	Mecanico	24	74
391	Julian	Ingeniero	1	91
392	Marcus	Tecnico	31	60
393	Anthony	Piloto	18	88
394	Jonathan	Administrativo	74	99
395	Amber	Azafata	55	92
396	Joshua	Tecnico	43	86
397	Brett	Piloto	60	2
398	Natalie	Mecanico	81	21
399	Matthew	Tecnico	25	8
400	Erin	Administrativo	50	32
401	Samantha	Tripulante	15	10
402	Diane	Ingeniero	40	66
403	Cheryl	Tripulante	67	85
404	Jennifer	Piloto	57	70
405	Brooke	Ingeniero	20	91
406	Amanda	Tecnico	72	57
407	Sara	Azafata	62	62
408	Sarah	Tecnico	74	63
409	Jeffrey	Tripulante	39	97
410	Monica	Administrativo	92	11
411	Amy	Mecanico	61	94
412	Rebekah	Piloto	86	9
413	Wendy	Tecnico	89	77
414	Margaret	Azafata	64	29
415	Daniel	Tripulante	99	2
416	Shawna	Mecanico	54	20
417	Rachel	Piloto	39	6
418	Danielle	Tripulante	34	19
419	Douglas	Piloto	39	7
420	David	Mecanico	82	90
421	Tina	Administrativo	73	6
422	Travis	Azafata	88	37
423	Kevin	Piloto	44	59
424	Nicole	Tripulante	54	8
425	Donna	Mecanico	28	31
426	Bryan	Administrativo	55	80
427	Cody	Tecnico	82	3
428	Philip	Tecnico	71	71
429	Danielle	Mecanico	37	47
430	Allen	Administrativo	54	53
431	Stephanie	Tecnico	99	48
432	Derek	Tripulante	58	16
433	Taylor	Piloto	61	21
434	Charles	Tecnico	19	45
435	Katherine	Tecnico	25	61
436	John	Ingeniero	59	48
437	Lisa	Administrativo	34	70
438	Miranda	Administrativo	17	71
439	Patrick	Tecnico	74	43
440	Dan	Tripulante	46	6
441	Christopher	Piloto	20	57
442	Alicia	Mecanico	32	3
443	Andrew	Tecnico	22	42
444	Jack	Administrativo	25	100
445	Lindsay	Administrativo	26	6
446	Michele	Tecnico	34	67
447	Caroline	Tripulante	77	2
448	Kathleen	Ingeniero	93	91
449	Joseph	Tripulante	12	40
450	Lauren	Ingeniero	71	67
451	Samuel	Tecnico	4	97
452	Kayla	Piloto	57	84
453	Annette	Azafata	24	19
454	James	Mecanico	86	32
455	Brandon	Piloto	58	91
456	Cody	Ingeniero	50	31
457	Brooke	Tecnico	87	88
458	Sarah	Tecnico	7	78
459	Gina	Administrativo	16	34
460	Brianna	Piloto	79	19
461	Donald	Piloto	33	72
462	Jeremy	Administrativo	73	89
463	Douglas	Ingeniero	43	11
464	Katelyn	Piloto	76	11
465	Theresa	Azafata	8	50
466	April	Azafata	86	69
467	Melissa	Administrativo	54	64
468	Emily	Tecnico	22	3
469	Brian	Ingeniero	97	8
470	Gordon	Tripulante	20	88
471	David	Tripulante	92	6
472	Sean	Piloto	24	8
473	Juan	Administrativo	29	89
474	Cheryl	Administrativo	4	35
475	Danny	Ingeniero	26	82
476	Nicholas	Administrativo	32	86
477	Jessica	Piloto	9	18
478	Samantha	Administrativo	40	87
479	Christina	Ingeniero	39	56
480	Meagan	Piloto	96	67
481	Lisa	Azafata	26	89
482	Holly	Tecnico	81	89
483	Curtis	Mecanico	25	13
484	Emily	Piloto	37	47
485	Mary	Piloto	58	21
486	Brandon	Mecanico	48	39
487	Mary	Azafata	51	25
488	Brooke	Tecnico	79	4
489	Nicholas	Tripulante	22	54
490	Michael	Ingeniero	62	35
491	Dean	Administrativo	64	89
492	Andrew	Tecnico	34	1
493	Edward	Ingeniero	59	16
494	Jessica	Tripulante	90	18
495	Rhonda	Administrativo	79	72
496	Amy	Azafata	4	32
497	Michael	Piloto	81	24
498	Elizabeth	Tecnico	83	72
499	Janet	Tecnico	66	90
500	Brian	Ingeniero	39	33
501	Michael	Ingeniero	19	29
502	Ann	Ingeniero	14	26
503	Anna	Tecnico	91	24
504	April	Tecnico	18	23
505	Jessica	Azafata	97	49
506	Jennifer	Tecnico	9	55
507	Kathy	Tripulante	27	77
508	Andrew	Azafata	56	38
509	Dylan	Azafata	82	24
510	Jonathan	Administrativo	75	81
511	Jacob	Ingeniero	22	78
512	Scott	Administrativo	2	84
513	Jasmine	Mecanico	58	40
514	Larry	Ingeniero	40	56
515	Justin	Tripulante	55	38
516	Steven	Ingeniero	20	66
517	Kathleen	Mecanico	27	19
518	Brian	Tecnico	44	71
519	Katherine	Administrativo	15	33
520	Eric	Administrativo	11	26
521	Joshua	Azafata	1	40
522	Aaron	Azafata	33	91
523	Savannah	Administrativo	44	25
524	Krista	Mecanico	33	78
525	April	Tripulante	91	14
526	Sara	Administrativo	100	95
527	Richard	Ingeniero	48	10
528	Melissa	Piloto	62	47
529	Peter	Piloto	59	89
530	Brooke	Mecanico	55	53
531	David	Ingeniero	32	22
532	Hunter	Mecanico	19	55
533	Caroline	Ingeniero	22	59
534	Dawn	Mecanico	53	69
535	David	Azafata	81	54
536	Hannah	Piloto	27	11
537	Amanda	Ingeniero	34	34
538	Lisa	Tripulante	89	78
539	Jennifer	Ingeniero	40	58
540	Kelly	Azafata	38	27
541	Laura	Tecnico	63	16
542	Kayla	Piloto	3	99
543	Dennis	Administrativo	28	54
544	Lynn	Piloto	45	19
545	Angela	Azafata	54	7
546	Brett	Piloto	7	43
547	Brian	Mecanico	51	79
548	Gabriel	Tecnico	48	61
549	Jonathan	Azafata	16	80
550	Robert	Mecanico	77	91
551	David	Administrativo	94	70
552	Sharon	Mecanico	85	93
553	Donald	Tecnico	17	13
554	Sara	Tecnico	77	11
555	Alexis	Mecanico	3	53
556	Johnny	Piloto	48	45
557	Miguel	Tecnico	78	44
558	David	Mecanico	44	100
559	Tanya	Azafata	47	37
560	Julie	Tecnico	11	89
561	Matthew	Mecanico	2	8
562	Jocelyn	Mecanico	24	83
563	Danielle	Administrativo	79	42
564	Lawrence	Azafata	74	70
565	Paul	Azafata	19	81
566	Kristina	Ingeniero	6	58
567	Mary	Administrativo	17	8
568	Jesus	Ingeniero	93	22
569	Michael	Piloto	3	16
570	Jennifer	Azafata	30	82
571	Michael	Mecanico	81	86
572	Ashley	Tecnico	31	69
573	Michael	Ingeniero	56	10
574	Thomas	Piloto	24	21
575	Angela	Tecnico	52	91
576	Susan	Piloto	94	94
577	Justin	Tripulante	23	81
578	Katrina	Ingeniero	62	85
579	Michael	Ingeniero	34	63
580	Glenn	Piloto	64	30
581	Janice	Administrativo	23	34
582	Isabella	Azafata	91	48
583	Raven	Piloto	92	96
584	Oscar	Piloto	53	27
585	Lisa	Mecanico	9	73
586	Hannah	Piloto	88	81
587	Juan	Mecanico	4	93
588	Rebecca	Piloto	37	100
589	Nicholas	Mecanico	72	23
590	Derrick	Tripulante	94	49
591	Shane	Piloto	41	6
592	Kristine	Ingeniero	64	78
593	Lisa	Piloto	65	62
594	Raven	Azafata	89	49
595	Jessica	Mecanico	69	53
596	Eric	Tripulante	39	78
597	Christy	Tecnico	20	33
598	Daniel	Azafata	27	98
599	Ronald	Administrativo	86	24
600	Christina	Ingeniero	53	5
601	William	Tripulante	83	60
602	Anne	Tecnico	27	9
603	Keith	Mecanico	69	1
604	Aaron	Piloto	36	33
605	Ernest	Ingeniero	4	19
606	Mark	Administrativo	92	87
607	Sarah	Ingeniero	53	8
608	Roy	Azafata	26	61
609	Jessica	Ingeniero	82	8
610	Bailey	Tecnico	90	79
611	Ryan	Tripulante	46	52
612	Christopher	Ingeniero	56	60
613	Jason	Ingeniero	39	84
614	Michelle	Piloto	16	69
615	David	Tripulante	22	18
616	Katherine	Administrativo	24	57
617	Susan	Piloto	97	92
618	Vanessa	Tripulante	81	66
619	Eric	Piloto	76	2
620	Laurie	Piloto	60	8
621	Luis	Administrativo	65	43
622	Jennifer	Ingeniero	40	42
623	Megan	Piloto	72	9
624	Brandi	Tripulante	50	99
625	Madison	Piloto	36	42
626	Douglas	Ingeniero	90	71
627	Lisa	Ingeniero	54	66
628	Richard	Tecnico	3	85
629	Whitney	Administrativo	20	93
630	Jerome	Tripulante	44	74
631	Michael	Tripulante	87	83
632	Deborah	Administrativo	77	77
633	Dennis	Piloto	68	96
634	Chelsea	Tripulante	9	97
635	John	Tripulante	18	11
636	Katherine	Tecnico	88	69
637	Shannon	Tecnico	22	86
638	Sydney	Tripulante	88	30
639	Lauren	Piloto	7	71
640	Megan	Piloto	74	74
641	Grace	Azafata	16	33
642	Brian	Azafata	40	21
643	Roger	Piloto	47	7
644	Alexander	Piloto	80	10
645	Stephen	Piloto	71	54
646	Michael	Mecanico	88	14
647	Sarah	Ingeniero	51	46
648	Michael	Mecanico	10	85
649	Melissa	Mecanico	59	57
650	Rebecca	Azafata	10	73
651	Megan	Ingeniero	13	2
652	Elizabeth	Administrativo	80	52
653	Jeremy	Administrativo	93	51
654	Jason	Tripulante	16	76
655	Ronald	Azafata	14	98
656	Katherine	Azafata	54	71
657	Sara	Mecanico	92	79
658	Amanda	Azafata	69	21
659	Samantha	Tecnico	6	44
660	Christina	Ingeniero	71	94
661	Sharon	Tecnico	91	53
662	Benjamin	Tripulante	96	5
663	Amanda	Ingeniero	95	44
664	Brittany	Administrativo	99	23
665	Penny	Mecanico	6	2
666	Vincent	Tecnico	89	1
667	Sara	Tecnico	27	78
668	Miranda	Ingeniero	18	60
669	Gregory	Ingeniero	32	60
670	Jennifer	Administrativo	81	46
671	Laura	Piloto	9	12
672	Larry	Mecanico	24	97
673	Christopher	Azafata	17	33
674	Nathan	Piloto	76	2
675	David	Administrativo	71	31
676	Luke	Azafata	66	25
677	Sheena	Tecnico	80	1
678	John	Mecanico	50	9
679	Robert	Administrativo	83	23
680	Logan	Piloto	17	31
681	Brian	Tripulante	14	56
682	Ronald	Azafata	76	10
683	Alexa	Azafata	6	39
684	Melissa	Tecnico	50	54
685	Stephanie	Tripulante	89	2
686	Elizabeth	Administrativo	60	70
687	Edward	Azafata	32	19
688	Sylvia	Ingeniero	62	17
689	Steven	Piloto	3	11
690	Olivia	Administrativo	65	4
691	Julie	Piloto	64	88
692	Kimberly	Tecnico	19	27
693	Antonio	Tripulante	24	96
694	Kelsey	Tecnico	76	30
695	Elizabeth	Tecnico	79	19
696	Alan	Piloto	60	88
697	Danny	Tripulante	42	79
698	Jason	Piloto	64	62
699	Robert	Ingeniero	42	26
700	Natalie	Piloto	61	2
701	Jennifer	Piloto	72	66
702	William	Tecnico	73	39
703	Jessica	Tecnico	15	38
704	Jose	Mecanico	47	41
705	Shannon	Piloto	69	33
706	Lauren	Piloto	28	80
707	Daniel	Azafata	14	4
708	Travis	Ingeniero	26	43
709	Brady	Tecnico	76	20
710	Robert	Tripulante	41	92
711	Angela	Tripulante	74	35
712	David	Administrativo	38	6
713	Amy	Tripulante	50	87
714	Carl	Tripulante	36	31
715	Natalie	Azafata	25	13
716	Brittany	Tripulante	15	28
717	Laura	Administrativo	4	56
718	Daniel	Tripulante	84	49
719	Evelyn	Tecnico	50	75
720	Nicholas	Mecanico	54	43
721	Matthew	Tecnico	56	20
722	Karen	Tecnico	53	10
723	Wendy	Piloto	29	63
724	Craig	Mecanico	15	13
725	Stephen	Piloto	46	67
726	Heather	Mecanico	3	10
727	Angela	Tripulante	58	73
728	James	Tecnico	26	62
729	Sheila	Azafata	66	58
730	Valerie	Administrativo	14	8
731	Lisa	Administrativo	52	31
732	Andrea	Azafata	77	26
733	Kim	Azafata	40	57
734	Sharon	Tripulante	24	21
735	Jacob	Mecanico	85	32
736	Anthony	Azafata	37	26
737	Courtney	Piloto	83	61
738	Steven	Mecanico	92	45
739	Matthew	Mecanico	43	100
740	Amanda	Piloto	86	31
741	Michael	Tripulante	30	56
742	Andrew	Piloto	1	1
743	Jessica	Administrativo	35	79
744	Lori	Administrativo	91	77
745	Ruth	Tecnico	45	100
746	Heidi	Tripulante	57	49
747	Deborah	Piloto	93	3
748	Nathan	Azafata	44	8
749	Jessica	Administrativo	61	73
750	Joann	Azafata	80	1
751	Zachary	Tecnico	6	35
752	Michael	Azafata	21	90
753	Michael	Tecnico	88	73
754	Danielle	Piloto	75	35
755	Kyle	Tecnico	34	61
756	Sherry	Ingeniero	67	48
757	Benjamin	Azafata	12	16
758	Harry	Ingeniero	27	92
759	Kenneth	Administrativo	94	19
760	William	Azafata	84	36
761	Austin	Tripulante	4	21
762	Angela	Tripulante	9	3
763	Frederick	Ingeniero	29	23
764	Jacob	Azafata	14	95
765	Brian	Piloto	11	43
766	Rachel	Tecnico	71	24
767	Jody	Administrativo	39	27
768	Christopher	Administrativo	55	2
769	Chris	Azafata	9	70
770	Michael	Administrativo	80	16
771	Kelly	Administrativo	96	40
772	Olivia	Ingeniero	88	36
773	Samantha	Azafata	51	32
774	Jim	Mecanico	49	30
775	David	Piloto	23	47
776	Eric	Azafata	10	10
777	Christopher	Mecanico	98	97
778	Matthew	Administrativo	56	64
779	Karen	Tripulante	66	14
780	Gary	Ingeniero	63	15
781	George	Tripulante	98	40
782	Brandon	Tripulante	82	22
783	Jessica	Piloto	88	65
784	Brian	Administrativo	51	92
785	Mary	Administrativo	52	24
786	Jennifer	Administrativo	98	92
787	Nicholas	Tecnico	64	85
788	Holly	Azafata	11	29
789	Randy	Administrativo	8	11
790	Megan	Azafata	4	28
791	Emily	Tripulante	78	54
792	Juan	Tripulante	39	51
793	Bruce	Azafata	61	48
794	Jason	Tripulante	11	70
795	Aaron	Tripulante	63	16
796	Logan	Mecanico	45	100
797	Larry	Mecanico	12	77
798	Joseph	Administrativo	51	34
799	Lisa	Azafata	4	12
800	Nicholas	Azafata	41	40
801	Jennifer	Tripulante	21	78
802	Emily	Tripulante	80	57
803	Joshua	Piloto	80	72
804	Angela	Tecnico	30	100
805	Colton	Tripulante	43	44
806	Jennifer	Administrativo	10	82
807	Tyler	Mecanico	34	19
808	Albert	Mecanico	78	23
809	Jessica	Mecanico	96	91
810	Howard	Piloto	11	72
811	Theresa	Azafata	15	4
812	Chris	Mecanico	93	64
813	Michael	Tripulante	79	59
814	Katherine	Piloto	88	85
815	Keith	Administrativo	19	23
816	Anthony	Azafata	59	71
817	James	Mecanico	9	6
818	Joseph	Tripulante	13	43
819	Jennifer	Piloto	96	36
820	Willie	Ingeniero	68	82
821	Tammy	Administrativo	22	29
822	Charles	Mecanico	9	77
823	Jasmine	Administrativo	88	96
824	Kenneth	Piloto	98	78
825	Dominic	Piloto	80	78
826	Jason	Administrativo	54	26
827	Clifford	Administrativo	32	9
828	Michael	Mecanico	1	76
829	Lisa	Administrativo	86	44
830	Joseph	Mecanico	76	100
831	Ian	Tecnico	99	72
832	Dalton	Piloto	27	28
833	Kelly	Tecnico	55	32
834	Dawn	Piloto	41	57
835	David	Azafata	22	36
836	Emily	Piloto	70	54
837	Amanda	Azafata	11	12
838	Brian	Administrativo	3	90
839	Robert	Ingeniero	8	74
840	John	Administrativo	21	33
841	Natasha	Piloto	22	36
842	Sarah	Tripulante	59	40
843	Jeffrey	Azafata	49	75
844	Matthew	Azafata	92	15
845	Vincent	Ingeniero	84	71
846	John	Administrativo	96	16
847	Alicia	Tecnico	33	17
848	Michael	Tripulante	35	24
849	Stacey	Tecnico	21	92
850	Briana	Ingeniero	27	14
851	Amanda	Tripulante	43	46
852	Bruce	Piloto	52	33
853	Joseph	Ingeniero	99	91
854	William	Tripulante	92	81
855	Hayley	Administrativo	61	52
856	Brenda	Tecnico	52	50
857	Maria	Tecnico	55	72
858	Jillian	Ingeniero	37	56
859	Paula	Tecnico	82	12
860	John	Mecanico	28	27
861	Rebecca	Ingeniero	80	59
862	Anita	Azafata	8	79
863	Lisa	Tripulante	62	22
864	Jody	Ingeniero	41	93
865	Kimberly	Mecanico	68	36
866	Diane	Tripulante	62	14
867	Mary	Administrativo	92	99
868	Jordan	Mecanico	96	82
869	Christopher	Mecanico	66	96
870	Christopher	Tecnico	72	48
871	Brenda	Tripulante	38	65
872	Craig	Piloto	100	37
873	Kenneth	Tecnico	27	66
874	James	Administrativo	87	14
875	Denise	Azafata	65	66
876	Heidi	Tripulante	60	46
877	Latoya	Piloto	92	82
878	Matthew	Tecnico	88	94
879	David	Mecanico	27	15
880	Amanda	Ingeniero	59	4
881	Hailey	Administrativo	11	85
882	Pamela	Mecanico	58	2
883	Jonathan	Administrativo	88	67
884	Julie	Piloto	58	53
885	Dean	Ingeniero	11	45
886	Maria	Tecnico	56	38
887	Matthew	Administrativo	61	80
888	Tyler	Mecanico	46	72
889	Michael	Azafata	23	87
890	Katherine	Azafata	94	3
891	Jennifer	Mecanico	97	44
892	James	Tecnico	7	83
893	Lynn	Mecanico	78	10
894	Ashley	Mecanico	47	60
895	Jeffery	Administrativo	64	38
896	Monique	Tecnico	2	16
897	Nathan	Piloto	81	35
898	Jennifer	Mecanico	85	12
899	Ronnie	Administrativo	22	41
900	Denise	Administrativo	36	15
901	Hailey	Piloto	89	89
902	John	Piloto	63	4
903	Thomas	Piloto	48	99
904	Jeffrey	Tecnico	24	21
905	Samuel	Administrativo	37	63
906	Kenneth	Tecnico	57	25
907	Victoria	Tripulante	87	11
908	Rebecca	Tecnico	14	29
909	Angela	Administrativo	47	9
910	Erika	Mecanico	80	32
911	Anthony	Tripulante	70	50
912	Stephen	Tripulante	84	19
913	Robert	Piloto	67	92
914	Angela	Tripulante	13	79
915	Jacob	Azafata	15	60
916	Cynthia	Azafata	87	38
917	George	Ingeniero	52	59
918	Ashlee	Ingeniero	20	90
919	Amanda	Piloto	16	50
920	Kelly	Ingeniero	74	99
921	Gina	Mecanico	20	35
922	Lynn	Tecnico	12	35
923	Sarah	Azafata	65	56
924	Emily	Tecnico	34	51
925	Melissa	Azafata	83	28
926	Julian	Piloto	48	86
927	Kathy	Administrativo	54	22
928	Michael	Ingeniero	13	4
929	Alison	Tripulante	36	58
930	Misty	Administrativo	64	17
931	Cheryl	Tecnico	25	58
932	Samantha	Tecnico	26	36
933	Dustin	Administrativo	54	80
934	Samantha	Azafata	96	72
935	Nicholas	Ingeniero	64	33
936	Angela	Piloto	94	63
937	Destiny	Piloto	17	84
938	Christopher	Ingeniero	78	3
939	Sarah	Piloto	24	95
940	James	Azafata	71	18
941	Sheila	Tripulante	9	77
942	Chad	Piloto	6	2
943	Robert	Administrativo	98	69
944	Michael	Piloto	79	40
945	Colin	Administrativo	19	90
946	Jessica	Ingeniero	28	38
947	Matthew	Azafata	12	60
948	Laura	Tecnico	60	5
949	Anthony	Ingeniero	91	39
950	Donald	Mecanico	79	45
951	Jennifer	Piloto	91	71
952	Sarah	Ingeniero	93	81
953	Elizabeth	Mecanico	75	98
954	Tracy	Administrativo	91	5
955	Kevin	Mecanico	93	64
956	Karen	Administrativo	6	91
957	Amanda	Tripulante	81	77
958	Billy	Tripulante	95	28
959	Matthew	Piloto	56	10
960	Robert	Mecanico	28	81
961	Michael	Mecanico	13	67
962	Michael	Tecnico	42	16
963	Gregory	Piloto	96	83
964	Brandi	Azafata	20	48
965	Cindy	Mecanico	9	56
966	Jason	Tripulante	45	83
967	Dwayne	Mecanico	72	82
968	Steven	Piloto	91	30
969	Kristina	Tecnico	69	47
970	Karen	Mecanico	93	99
971	Johnathan	Mecanico	98	45
972	John	Tripulante	85	38
973	Brian	Ingeniero	56	4
974	Laura	Tecnico	79	10
975	Justin	Tecnico	7	40
976	Melissa	Azafata	74	33
977	David	Tripulante	41	96
978	Vincent	Tripulante	55	26
979	Donna	Mecanico	14	46
980	Robert	Piloto	82	49
981	Angelica	Tecnico	65	66
982	Monica	Administrativo	8	38
983	Christopher	Tripulante	63	83
984	Benjamin	Tripulante	37	14
985	Andrew	Tecnico	96	57
986	Timothy	Tripulante	96	24
987	Jason	Azafata	80	54
988	Meagan	Administrativo	6	30
989	Jesse	Tecnico	73	54
990	Christopher	Ingeniero	3	32
991	Chad	Ingeniero	14	73
992	Bailey	Azafata	38	34
993	Randy	Mecanico	37	18
994	Julie	Piloto	18	22
995	Anthony	Azafata	94	21
996	Todd	Mecanico	83	97
997	Kenneth	Mecanico	48	99
998	Alexandra	Tecnico	9	65
999	Felicia	Ingeniero	100	6
1000	Matthew	Mecanico	55	59
\.


                                                  2950.dat                                                                                            0000600 0004000 0002000 00000051712 14605045136 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Airbus A380
2	Bombardier CRJ200
3	Bombardier CRJ900
4	Airbus A350
5	Embraer E190
6	McDonnell Douglas MD-83
7	Airbus A320
8	Airbus A330
9	McDonnell Douglas MD-95
10	McDonnell Douglas MD-80
11	Airbus A350
12	Bombardier CRJ1000
13	Embraer E195
14	Bombardier CRJ100
15	Embraer E195
16	Bombardier CRJ900
17	McDonnell Douglas MD-11
18	McDonnell Douglas MD-80
19	Boeing 777
20	Airbus A320
21	Bombardier CRJ200
22	McDonnell Douglas MD-90
23	Bombardier CRJ100
24	McDonnell Douglas MD-82
25	Bombardier CRJ900
26	Embraer E195
27	McDonnell Douglas MD-88
28	Bombardier CRJ900
29	Airbus A320
30	Bombardier CRJ100
31	Embraer E170
32	Bombardier CRJ1000
33	McDonnell Douglas MD-95
34	McDonnell Douglas MD-88
35	Embraer E175
36	McDonnell Douglas MD-87
37	Airbus A380
38	McDonnell Douglas MD-80
39	Embraer E170
40	Boeing 747
41	Bombardier CRJ700
42	Airbus A350
43	McDonnell Douglas MD-87
44	Bombardier CRJ200
45	McDonnell Douglas MD-88
46	Airbus A330
47	Airbus A330
48	McDonnell Douglas MD-11
49	McDonnell Douglas MD-83
50	Bombardier CRJ1000
51	Airbus A340
52	Bombardier CRJ200
53	Bombardier CRJ900
54	Airbus A330
55	Embraer E175
56	Airbus A330
57	McDonnell Douglas MD-80
58	McDonnell Douglas MD-87
59	Bombardier CRJ100
60	Embraer E190
61	McDonnell Douglas MD-82
62	McDonnell Douglas MD-87
63	McDonnell Douglas MD-82
64	Embraer E175
65	Bombardier CRJ1000
66	McDonnell Douglas MD-11
67	Boeing 787
68	Embraer E175
69	McDonnell Douglas MD-81
70	Bombardier CRJ100
71	Airbus A330
72	McDonnell Douglas MD-88
73	McDonnell Douglas MD-11
74	Bombardier CRJ200
75	Embraer E190
76	McDonnell Douglas MD-83
77	Bombardier CRJ900
78	McDonnell Douglas MD-82
79	McDonnell Douglas MD-11
80	McDonnell Douglas MD-95
81	Embraer E195
82	McDonnell Douglas MD-80
83	Airbus A330
84	McDonnell Douglas MD-95
85	McDonnell Douglas MD-87
86	McDonnell Douglas MD-83
87	McDonnell Douglas MD-95
88	Boeing 777
89	Boeing 787
90	Bombardier CRJ700
91	Bombardier CRJ900
92	Airbus A320
93	Airbus A350
94	Embraer E190
95	Embraer E175
96	Airbus A330
97	Embraer E175
98	Airbus A380
99	Embraer E170
100	McDonnell Douglas MD-88
101	McDonnell Douglas MD-83
102	Bombardier CRJ700
103	Airbus A320
104	Bombardier CRJ700
105	McDonnell Douglas MD-81
106	McDonnell Douglas MD-82
107	Bombardier CRJ100
108	Airbus A380
109	Airbus A330
110	Bombardier CRJ100
111	Boeing 787
112	Embraer E170
113	McDonnell Douglas MD-90
114	Boeing 787
115	Airbus A330
116	Airbus A340
117	Bombardier CRJ1000
118	Bombardier CRJ200
119	Boeing 787
120	Embraer E195
121	Airbus A320
122	Bombardier CRJ100
123	Airbus A330
124	McDonnell Douglas MD-82
125	Airbus A380
126	McDonnell Douglas MD-83
127	McDonnell Douglas MD-90
128	Airbus A320
129	Embraer E175
130	McDonnell Douglas MD-88
131	Embraer E175
132	Embraer E175
133	Bombardier CRJ100
134	Airbus A330
135	McDonnell Douglas MD-82
136	McDonnell Douglas MD-90
137	McDonnell Douglas MD-11
138	McDonnell Douglas MD-83
139	Airbus A350
140	McDonnell Douglas MD-81
141	Airbus A330
142	McDonnell Douglas MD-88
143	McDonnell Douglas MD-87
144	Bombardier CRJ900
145	Airbus A350
146	Embraer E170
147	Embraer E190
148	Embraer E175
149	McDonnell Douglas MD-82
150	Bombardier CRJ200
151	McDonnell Douglas MD-88
152	Bombardier CRJ700
153	Embraer E170
154	Bombardier CRJ700
155	Boeing 787
156	Boeing 747
157	Bombardier CRJ100
158	McDonnell Douglas MD-80
159	Airbus A320
160	Bombardier CRJ100
161	Bombardier CRJ1000
162	McDonnell Douglas MD-80
163	Embraer E175
164	Bombardier CRJ700
165	Embraer E170
166	Embraer E190
167	McDonnell Douglas MD-83
168	Bombardier CRJ1000
169	McDonnell Douglas MD-90
170	Bombardier CRJ900
171	Airbus A350
172	Airbus A350
173	McDonnell Douglas MD-87
174	McDonnell Douglas MD-90
175	Embraer E195
176	Embraer E170
177	Bombardier CRJ700
178	Airbus A320
179	Airbus A380
180	McDonnell Douglas MD-90
181	McDonnell Douglas MD-82
182	Airbus A330
183	McDonnell Douglas MD-80
184	Airbus A350
185	McDonnell Douglas MD-80
186	Bombardier CRJ100
187	Airbus A340
188	McDonnell Douglas MD-81
189	McDonnell Douglas MD-11
190	McDonnell Douglas MD-81
191	McDonnell Douglas MD-95
192	Bombardier CRJ900
193	Boeing 787
194	Bombardier CRJ100
195	McDonnell Douglas MD-95
196	Airbus A380
197	McDonnell Douglas MD-83
198	McDonnell Douglas MD-83
199	McDonnell Douglas MD-87
200	Embraer E175
201	Embraer E190
202	Boeing 787
203	McDonnell Douglas MD-95
204	Embraer E195
205	Embraer E175
206	Airbus A340
207	Bombardier CRJ1000
208	Bombardier CRJ200
209	McDonnell Douglas MD-83
210	Embraer E195
211	Boeing 787
212	Airbus A350
213	McDonnell Douglas MD-90
214	Boeing 747
215	Airbus A350
216	Bombardier CRJ100
217	McDonnell Douglas MD-88
218	Embraer E195
219	Boeing 777
220	Boeing 747
221	Airbus A320
222	Airbus A330
223	McDonnell Douglas MD-88
224	McDonnell Douglas MD-83
225	Embraer E195
226	McDonnell Douglas MD-81
227	McDonnell Douglas MD-87
228	Airbus A340
229	Bombardier CRJ700
230	Bombardier CRJ700
231	McDonnell Douglas MD-11
232	Bombardier CRJ900
233	Embraer E170
234	Airbus A350
235	Bombardier CRJ700
236	Bombardier CRJ900
237	Embraer E190
238	McDonnell Douglas MD-83
239	Embraer E175
240	Embraer E170
241	Boeing 747
242	McDonnell Douglas MD-88
243	Embraer E190
244	Bombardier CRJ900
245	Embraer E190
246	Bombardier CRJ100
247	Airbus A340
248	McDonnell Douglas MD-80
249	Airbus A320
250	McDonnell Douglas MD-80
251	McDonnell Douglas MD-90
252	Airbus A380
253	Embraer E175
254	McDonnell Douglas MD-81
255	McDonnell Douglas MD-95
256	Bombardier CRJ900
257	Bombardier CRJ1000
258	Airbus A380
259	Embraer E170
260	Airbus A380
261	McDonnell Douglas MD-11
262	Bombardier CRJ200
263	Bombardier CRJ100
264	McDonnell Douglas MD-11
265	McDonnell Douglas MD-82
266	Embraer E190
267	McDonnell Douglas MD-80
268	Bombardier CRJ900
269	Boeing 787
270	McDonnell Douglas MD-81
271	Embraer E195
272	McDonnell Douglas MD-87
273	McDonnell Douglas MD-11
274	McDonnell Douglas MD-83
275	McDonnell Douglas MD-90
276	Embraer E190
277	Embraer E190
278	Airbus A340
279	Airbus A330
280	Airbus A340
281	Bombardier CRJ1000
282	Boeing 777
283	McDonnell Douglas MD-80
284	McDonnell Douglas MD-11
285	McDonnell Douglas MD-88
286	McDonnell Douglas MD-88
287	Airbus A330
288	McDonnell Douglas MD-81
289	Airbus A320
290	Bombardier CRJ100
291	McDonnell Douglas MD-88
292	Bombardier CRJ900
293	Embraer E190
294	Embraer E190
295	Boeing 777
296	Airbus A350
297	Bombardier CRJ700
298	Bombardier CRJ1000
299	McDonnell Douglas MD-82
300	McDonnell Douglas MD-83
301	Bombardier CRJ100
302	Embraer E190
303	McDonnell Douglas MD-82
304	McDonnell Douglas MD-81
305	Embraer E170
306	McDonnell Douglas MD-80
307	Airbus A340
308	Bombardier CRJ700
309	Airbus A340
310	Boeing 777
311	McDonnell Douglas MD-83
312	Boeing 777
313	Bombardier CRJ100
314	Airbus A340
315	McDonnell Douglas MD-80
316	Bombardier CRJ100
317	Bombardier CRJ900
318	Embraer E190
319	Bombardier CRJ1000
320	McDonnell Douglas MD-11
321	McDonnell Douglas MD-80
322	Boeing 747
323	McDonnell Douglas MD-82
324	Bombardier CRJ100
325	Embraer E170
326	Bombardier CRJ1000
327	McDonnell Douglas MD-95
328	Boeing 787
329	Embraer E195
330	Bombardier CRJ100
331	Boeing 747
332	McDonnell Douglas MD-11
333	McDonnell Douglas MD-83
334	Embraer E175
335	McDonnell Douglas MD-82
336	Bombardier CRJ900
337	McDonnell Douglas MD-95
338	Boeing 777
339	Airbus A340
340	Bombardier CRJ200
341	Bombardier CRJ200
342	Bombardier CRJ200
343	McDonnell Douglas MD-87
344	McDonnell Douglas MD-82
345	Boeing 787
346	Embraer E195
347	Bombardier CRJ1000
348	Airbus A320
349	McDonnell Douglas MD-82
350	Boeing 777
351	Airbus A340
352	Bombardier CRJ1000
353	McDonnell Douglas MD-95
354	McDonnell Douglas MD-87
355	Boeing 747
356	Boeing 777
357	Embraer E195
358	Bombardier CRJ1000
359	McDonnell Douglas MD-83
360	Embraer E170
361	Embraer E175
362	McDonnell Douglas MD-81
363	Embraer E175
364	McDonnell Douglas MD-80
365	Bombardier CRJ700
366	Boeing 747
367	Airbus A320
368	McDonnell Douglas MD-88
369	McDonnell Douglas MD-87
370	Embraer E175
371	Embraer E190
372	Boeing 777
373	Embraer E175
374	Bombardier CRJ200
375	McDonnell Douglas MD-87
376	Bombardier CRJ1000
377	Bombardier CRJ200
378	Airbus A330
379	Airbus A350
380	Embraer E195
381	Bombardier CRJ200
382	McDonnell Douglas MD-83
383	McDonnell Douglas MD-95
384	Bombardier CRJ900
385	McDonnell Douglas MD-88
386	Airbus A340
387	Airbus A380
388	Bombardier CRJ100
389	McDonnell Douglas MD-90
390	McDonnell Douglas MD-95
391	McDonnell Douglas MD-83
392	Airbus A330
393	McDonnell Douglas MD-95
394	McDonnell Douglas MD-82
395	Embraer E195
396	Bombardier CRJ1000
397	McDonnell Douglas MD-87
398	Airbus A380
399	Bombardier CRJ1000
400	Airbus A350
401	McDonnell Douglas MD-11
402	Boeing 787
403	McDonnell Douglas MD-87
404	McDonnell Douglas MD-87
405	Bombardier CRJ100
406	Boeing 787
407	Bombardier CRJ700
408	Embraer E190
409	McDonnell Douglas MD-81
410	Airbus A340
411	McDonnell Douglas MD-82
412	Boeing 747
413	McDonnell Douglas MD-11
414	Bombardier CRJ1000
415	Airbus A350
416	Embraer E195
417	McDonnell Douglas MD-11
418	Embraer E195
419	Boeing 777
420	Embraer E170
421	Airbus A380
422	McDonnell Douglas MD-88
423	Bombardier CRJ900
424	McDonnell Douglas MD-80
425	McDonnell Douglas MD-82
426	Embraer E175
427	McDonnell Douglas MD-95
428	Airbus A350
429	McDonnell Douglas MD-90
430	Boeing 747
431	McDonnell Douglas MD-82
432	Bombardier CRJ200
433	Airbus A380
434	McDonnell Douglas MD-82
435	McDonnell Douglas MD-83
436	Embraer E195
437	Airbus A380
438	Airbus A330
439	Embraer E170
440	McDonnell Douglas MD-11
441	McDonnell Douglas MD-11
442	Boeing 747
443	Bombardier CRJ900
444	Airbus A330
445	Bombardier CRJ900
446	McDonnell Douglas MD-88
447	Airbus A350
448	Bombardier CRJ200
449	McDonnell Douglas MD-90
450	McDonnell Douglas MD-90
451	Bombardier CRJ100
452	Bombardier CRJ700
453	Bombardier CRJ1000
454	McDonnell Douglas MD-87
455	Bombardier CRJ1000
456	McDonnell Douglas MD-88
457	McDonnell Douglas MD-81
458	McDonnell Douglas MD-83
459	Embraer E195
460	Boeing 787
461	Bombardier CRJ700
462	Embraer E170
463	Boeing 747
464	McDonnell Douglas MD-82
465	Airbus A340
466	Airbus A330
467	Airbus A320
468	McDonnell Douglas MD-88
469	Bombardier CRJ700
470	McDonnell Douglas MD-95
471	Bombardier CRJ900
472	Bombardier CRJ900
473	McDonnell Douglas MD-88
474	Bombardier CRJ900
475	McDonnell Douglas MD-82
476	Boeing 777
477	McDonnell Douglas MD-88
478	Airbus A340
479	Embraer E170
480	Airbus A380
481	McDonnell Douglas MD-83
482	Airbus A320
483	McDonnell Douglas MD-90
484	Boeing 787
485	McDonnell Douglas MD-80
486	McDonnell Douglas MD-88
487	McDonnell Douglas MD-90
488	Boeing 777
489	Bombardier CRJ900
490	Embraer E195
491	Bombardier CRJ900
492	Embraer E190
493	Bombardier CRJ1000
494	Boeing 787
495	Bombardier CRJ900
496	Airbus A350
497	McDonnell Douglas MD-90
498	McDonnell Douglas MD-83
499	McDonnell Douglas MD-80
500	Embraer E175
501	Bombardier CRJ900
502	Airbus A350
503	Boeing 747
504	Embraer E170
505	Bombardier CRJ200
506	Embraer E190
507	McDonnell Douglas MD-90
508	McDonnell Douglas MD-88
509	McDonnell Douglas MD-88
510	Airbus A350
511	McDonnell Douglas MD-87
512	Boeing 747
513	McDonnell Douglas MD-88
514	Embraer E195
515	Boeing 747
516	Boeing 777
517	Airbus A320
518	Bombardier CRJ100
519	Airbus A320
520	Bombardier CRJ100
521	Bombardier CRJ200
522	Bombardier CRJ900
523	McDonnell Douglas MD-83
524	McDonnell Douglas MD-87
525	McDonnell Douglas MD-95
526	McDonnell Douglas MD-11
527	Boeing 777
528	Embraer E190
529	Airbus A380
530	McDonnell Douglas MD-83
531	Embraer E175
532	McDonnell Douglas MD-83
533	Embraer E175
534	McDonnell Douglas MD-83
535	McDonnell Douglas MD-90
536	McDonnell Douglas MD-95
537	McDonnell Douglas MD-88
538	McDonnell Douglas MD-81
539	McDonnell Douglas MD-80
540	McDonnell Douglas MD-11
541	Airbus A350
542	Bombardier CRJ900
543	Embraer E190
544	Airbus A350
545	McDonnell Douglas MD-95
546	Bombardier CRJ200
547	Embraer E195
548	Airbus A320
549	McDonnell Douglas MD-87
550	McDonnell Douglas MD-87
551	Airbus A350
552	Airbus A320
553	McDonnell Douglas MD-82
554	Bombardier CRJ700
555	McDonnell Douglas MD-87
556	Bombardier CRJ200
557	Airbus A320
558	Airbus A320
559	Bombardier CRJ1000
560	McDonnell Douglas MD-81
561	Embraer E170
562	McDonnell Douglas MD-87
563	Boeing 787
564	Bombardier CRJ200
565	Bombardier CRJ700
566	Embraer E170
567	Bombardier CRJ700
568	Boeing 747
569	Bombardier CRJ200
570	Bombardier CRJ200
571	Airbus A340
572	Airbus A320
573	Embraer E175
574	Embraer E190
575	Embraer E170
576	McDonnell Douglas MD-82
577	McDonnell Douglas MD-11
578	Embraer E175
579	McDonnell Douglas MD-87
580	Bombardier CRJ100
581	McDonnell Douglas MD-87
582	Airbus A380
583	Bombardier CRJ100
584	Embraer E195
585	Airbus A330
586	Boeing 787
587	Airbus A330
588	Bombardier CRJ100
589	Airbus A350
590	McDonnell Douglas MD-95
591	McDonnell Douglas MD-88
592	Boeing 747
593	Airbus A330
594	Boeing 747
595	McDonnell Douglas MD-95
596	Airbus A380
597	Boeing 787
598	Boeing 747
599	McDonnell Douglas MD-90
600	McDonnell Douglas MD-95
601	McDonnell Douglas MD-90
602	Bombardier CRJ1000
603	Embraer E195
604	Boeing 747
605	Airbus A340
606	Airbus A330
607	Embraer E195
608	McDonnell Douglas MD-95
609	McDonnell Douglas MD-90
610	Airbus A320
611	Embraer E190
612	McDonnell Douglas MD-95
613	McDonnell Douglas MD-81
614	Bombardier CRJ700
615	McDonnell Douglas MD-83
616	Boeing 787
617	McDonnell Douglas MD-11
618	Embraer E195
619	McDonnell Douglas MD-83
620	Embraer E175
621	McDonnell Douglas MD-83
622	Bombardier CRJ900
623	Embraer E195
624	Boeing 787
625	McDonnell Douglas MD-90
626	McDonnell Douglas MD-87
627	McDonnell Douglas MD-80
628	Embraer E170
629	McDonnell Douglas MD-11
630	McDonnell Douglas MD-87
631	McDonnell Douglas MD-88
632	McDonnell Douglas MD-81
633	Airbus A350
634	Embraer E170
635	Airbus A350
636	Boeing 787
637	Airbus A380
638	Airbus A380
639	McDonnell Douglas MD-83
640	Embraer E175
641	Bombardier CRJ1000
642	Bombardier CRJ200
643	Embraer E175
644	Boeing 777
645	McDonnell Douglas MD-11
646	McDonnell Douglas MD-90
647	Bombardier CRJ200
648	Embraer E175
649	Airbus A340
650	Boeing 747
651	Airbus A320
652	McDonnell Douglas MD-80
653	Airbus A320
654	McDonnell Douglas MD-11
655	Boeing 787
656	Embraer E175
657	Embraer E190
658	Airbus A330
659	McDonnell Douglas MD-87
660	Bombardier CRJ100
661	Airbus A320
662	Airbus A330
663	Airbus A320
664	Bombardier CRJ200
665	Embraer E190
666	McDonnell Douglas MD-11
667	Boeing 787
668	Airbus A340
669	McDonnell Douglas MD-11
670	McDonnell Douglas MD-80
671	Bombardier CRJ700
672	Airbus A330
673	McDonnell Douglas MD-95
674	Bombardier CRJ200
675	Embraer E195
676	Embraer E170
677	Airbus A320
678	Bombardier CRJ100
679	McDonnell Douglas MD-95
680	Bombardier CRJ200
681	McDonnell Douglas MD-95
682	McDonnell Douglas MD-87
683	Boeing 747
684	McDonnell Douglas MD-83
685	Boeing 747
686	McDonnell Douglas MD-90
687	McDonnell Douglas MD-11
688	Bombardier CRJ100
689	McDonnell Douglas MD-80
690	McDonnell Douglas MD-90
691	Bombardier CRJ1000
692	Airbus A320
693	Bombardier CRJ1000
694	Boeing 787
695	McDonnell Douglas MD-90
696	Airbus A380
697	Airbus A340
698	McDonnell Douglas MD-82
699	McDonnell Douglas MD-95
700	McDonnell Douglas MD-90
701	McDonnell Douglas MD-80
702	McDonnell Douglas MD-90
703	McDonnell Douglas MD-81
704	Bombardier CRJ100
705	McDonnell Douglas MD-80
706	McDonnell Douglas MD-80
707	Airbus A340
708	Airbus A330
709	Bombardier CRJ1000
710	McDonnell Douglas MD-88
711	Bombardier CRJ1000
712	Embraer E190
713	Airbus A330
714	Boeing 787
715	Airbus A340
716	Airbus A320
717	McDonnell Douglas MD-82
718	Boeing 787
719	McDonnell Douglas MD-11
720	Embraer E170
721	Boeing 777
722	Boeing 787
723	Embraer E195
724	McDonnell Douglas MD-88
725	Boeing 747
726	Bombardier CRJ100
727	Airbus A320
728	McDonnell Douglas MD-80
729	McDonnell Douglas MD-87
730	Bombardier CRJ1000
731	McDonnell Douglas MD-95
732	Embraer E175
733	Embraer E190
734	Bombardier CRJ200
735	Bombardier CRJ1000
736	McDonnell Douglas MD-88
737	Bombardier CRJ900
738	Airbus A340
739	Airbus A380
740	McDonnell Douglas MD-87
741	Airbus A340
742	Boeing 747
743	McDonnell Douglas MD-90
744	McDonnell Douglas MD-88
745	Bombardier CRJ200
746	Bombardier CRJ700
747	Boeing 747
748	Embraer E190
749	Bombardier CRJ900
750	McDonnell Douglas MD-80
751	Bombardier CRJ200
752	Boeing 777
753	Bombardier CRJ700
754	McDonnell Douglas MD-87
755	Embraer E195
756	Bombardier CRJ900
757	McDonnell Douglas MD-80
758	Boeing 787
759	Embraer E195
760	Bombardier CRJ700
761	McDonnell Douglas MD-82
762	McDonnell Douglas MD-87
763	Embraer E170
764	Embraer E175
765	Embraer E170
766	Embraer E190
767	Bombardier CRJ1000
768	Boeing 777
769	Boeing 747
770	Boeing 777
771	Airbus A340
772	Bombardier CRJ700
773	McDonnell Douglas MD-82
774	McDonnell Douglas MD-87
775	McDonnell Douglas MD-83
776	Bombardier CRJ700
777	Airbus A320
778	Embraer E190
779	McDonnell Douglas MD-95
780	Bombardier CRJ700
781	Airbus A330
782	Airbus A340
783	Airbus A330
784	Airbus A330
785	McDonnell Douglas MD-87
786	McDonnell Douglas MD-88
787	Airbus A320
788	Boeing 787
789	McDonnell Douglas MD-95
790	Bombardier CRJ700
791	McDonnell Douglas MD-80
792	McDonnell Douglas MD-95
793	Embraer E170
794	Embraer E190
795	Airbus A350
796	Embraer E170
797	Bombardier CRJ700
798	Bombardier CRJ100
799	Embraer E175
800	McDonnell Douglas MD-83
801	McDonnell Douglas MD-87
802	McDonnell Douglas MD-82
803	McDonnell Douglas MD-87
804	Boeing 787
805	Bombardier CRJ200
806	Boeing 747
807	Embraer E175
808	McDonnell Douglas MD-80
809	Bombardier CRJ1000
810	Airbus A350
811	Bombardier CRJ100
812	McDonnell Douglas MD-95
813	McDonnell Douglas MD-83
814	Bombardier CRJ900
815	Boeing 777
816	Airbus A320
817	Bombardier CRJ1000
818	McDonnell Douglas MD-11
819	Boeing 747
820	Embraer E190
821	McDonnell Douglas MD-11
822	Bombardier CRJ1000
823	Embraer E175
824	Bombardier CRJ700
825	Airbus A380
826	McDonnell Douglas MD-83
827	McDonnell Douglas MD-90
828	McDonnell Douglas MD-80
829	Airbus A330
830	Airbus A320
831	Airbus A380
832	Airbus A320
833	Bombardier CRJ1000
834	Airbus A380
835	Bombardier CRJ900
836	Bombardier CRJ1000
837	Embraer E195
838	Airbus A350
839	Bombardier CRJ100
840	McDonnell Douglas MD-88
841	McDonnell Douglas MD-82
842	McDonnell Douglas MD-88
843	Bombardier CRJ200
844	Bombardier CRJ200
845	McDonnell Douglas MD-81
846	Airbus A380
847	McDonnell Douglas MD-11
848	Bombardier CRJ700
849	Airbus A340
850	Bombardier CRJ900
851	Airbus A330
852	Airbus A350
853	McDonnell Douglas MD-87
854	McDonnell Douglas MD-81
855	McDonnell Douglas MD-80
856	McDonnell Douglas MD-88
857	Embraer E195
858	McDonnell Douglas MD-82
859	McDonnell Douglas MD-81
860	McDonnell Douglas MD-87
861	Embraer E175
862	Boeing 777
863	McDonnell Douglas MD-82
864	Airbus A350
865	Embraer E195
866	McDonnell Douglas MD-81
867	Embraer E175
868	Airbus A330
869	McDonnell Douglas MD-95
870	Bombardier CRJ1000
871	McDonnell Douglas MD-80
872	Airbus A350
873	McDonnell Douglas MD-95
874	Bombardier CRJ200
875	Airbus A320
876	Bombardier CRJ700
877	Airbus A350
878	McDonnell Douglas MD-11
879	McDonnell Douglas MD-80
880	Airbus A350
881	McDonnell Douglas MD-80
882	Airbus A340
883	McDonnell Douglas MD-95
884	Embraer E175
885	McDonnell Douglas MD-81
886	Airbus A350
887	Airbus A350
888	McDonnell Douglas MD-81
889	Airbus A350
890	McDonnell Douglas MD-83
891	Embraer E170
892	Airbus A320
893	Bombardier CRJ100
894	Bombardier CRJ1000
895	McDonnell Douglas MD-87
896	Embraer E175
897	Bombardier CRJ100
898	Boeing 777
899	McDonnell Douglas MD-81
900	Embraer E175
901	Embraer E175
902	McDonnell Douglas MD-11
903	McDonnell Douglas MD-95
904	Airbus A340
905	McDonnell Douglas MD-81
906	Airbus A340
907	McDonnell Douglas MD-81
908	Boeing 747
909	Boeing 777
910	Boeing 777
911	McDonnell Douglas MD-11
912	McDonnell Douglas MD-80
913	Airbus A320
914	Bombardier CRJ900
915	Bombardier CRJ700
916	Airbus A350
917	McDonnell Douglas MD-11
918	Bombardier CRJ700
919	McDonnell Douglas MD-83
920	Embraer E175
921	Boeing 747
922	Bombardier CRJ900
923	Boeing 747
924	Airbus A350
925	McDonnell Douglas MD-88
926	Bombardier CRJ1000
927	Embraer E170
928	McDonnell Douglas MD-81
929	Embraer E175
930	Airbus A350
931	Boeing 787
932	Airbus A380
933	McDonnell Douglas MD-95
934	McDonnell Douglas MD-81
935	Airbus A320
936	Airbus A340
937	Boeing 747
938	Bombardier CRJ900
939	Embraer E170
940	Boeing 777
941	McDonnell Douglas MD-95
942	Airbus A350
943	McDonnell Douglas MD-82
944	McDonnell Douglas MD-11
945	Embraer E190
946	Embraer E170
947	Airbus A380
948	McDonnell Douglas MD-81
949	McDonnell Douglas MD-87
950	Boeing 787
951	Boeing 747
952	Airbus A380
953	Embraer E195
954	Bombardier CRJ900
955	Bombardier CRJ900
956	McDonnell Douglas MD-95
957	Bombardier CRJ900
958	McDonnell Douglas MD-81
959	Airbus A330
960	Airbus A320
961	Embraer E195
962	Embraer E175
963	Bombardier CRJ1000
964	McDonnell Douglas MD-83
965	McDonnell Douglas MD-82
966	Airbus A380
967	Bombardier CRJ100
968	Boeing 777
969	Bombardier CRJ1000
970	Bombardier CRJ100
971	McDonnell Douglas MD-11
972	Bombardier CRJ1000
973	Bombardier CRJ900
974	Bombardier CRJ100
975	McDonnell Douglas MD-90
976	Airbus A330
977	Bombardier CRJ100
978	McDonnell Douglas MD-87
979	Airbus A340
980	McDonnell Douglas MD-90
981	Embraer E175
982	McDonnell Douglas MD-88
983	McDonnell Douglas MD-81
984	McDonnell Douglas MD-81
985	McDonnell Douglas MD-90
986	Boeing 787
987	McDonnell Douglas MD-90
988	Bombardier CRJ1000
989	McDonnell Douglas MD-95
990	Boeing 747
991	Airbus A340
992	McDonnell Douglas MD-90
993	McDonnell Douglas MD-83
994	Airbus A320
995	Boeing 747
996	Bombardier CRJ1000
997	McDonnell Douglas MD-82
998	McDonnell Douglas MD-90
999	McDonnell Douglas MD-11
1000	McDonnell Douglas MD-82
\.


                                                      2964.dat                                                                                            0000600 0004000 0002000 00000123404 14605045136 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2023-02-15	Cuba	Ecuador	1000	316	2
2	2023-06-20	Brasil	Republica Dominicana	105	889	2
3	2023-05-25	Cuba	Costa Rica	247	315	3
4	2020-09-13	Argentina	Colombia	542	273	2
5	2023-04-09	Peru	Costa Rica	174	434	3
6	2023-08-12	Estados Unidos	Costa Rica	512	865	3
7	2021-12-09	Venezuela	Brasil	585	636	2
8	2023-11-01	Ecuador	Honduras	253	404	1
9	2020-03-05	Cuba	Paraguay	488	864	2
10	2024-03-18	Republica Dominicana	Nicaragua	662	163	2
11	2022-05-04	Venezuela	Haiti	608	531	3
12	2022-03-05	Uruguay	Costa Rica	84	935	1
13	2021-07-02	Uruguay	Argentina	728	826	3
14	2019-09-25	Costa Rica	Venezuela	184	660	1
15	2024-03-11	Chile	Argentina	571	274	2
16	2023-07-01	Estados Unidos	Paraguay	28	649	1
17	2019-06-30	Mexico	Mexico	723	985	1
18	2019-07-14	Peru	Panama	450	956	2
19	2022-05-03	Argentina	Paraguay	842	189	1
20	2023-11-11	Guatemala	Honduras	939	67	2
21	2021-10-04	Argentina	Paraguay	620	920	3
22	2020-04-01	Venezuela	Ecuador	828	753	3
23	2021-12-16	Cuba	Haiti	644	652	3
24	2021-05-15	Chile	Honduras	433	145	3
25	2019-06-14	Cuba	Chile	431	657	1
26	2022-08-09	Costa Rica	Uruguay	622	675	3
27	2020-01-16	Republica Dominicana	Ecuador	426	615	1
28	2020-01-21	Republica Dominicana	Ecuador	532	731	1
29	2023-12-13	Mexico	Republica Dominicana	839	125	2
30	2022-08-22	Argentina	El Salvador	438	964	2
31	2020-10-12	Brasil	Cuba	405	248	2
32	2020-12-20	Cuba	Colombia	289	402	1
33	2020-11-01	Colombia	Cuba	265	158	2
34	2023-02-12	Colombia	Paraguay	86	39	3
35	2019-09-24	Cuba	Uruguay	465	192	3
36	2020-07-04	Haiti	Mexico	427	990	3
37	2023-02-14	Venezuela	Guatemala	826	190	2
38	2020-05-27	Uruguay	Brasil	590	794	1
39	2022-06-29	Panama	Venezuela	367	154	1
40	2022-10-28	Guatemala	Panama	527	679	1
41	2022-12-02	Venezuela	Colombia	333	243	3
42	2022-03-04	Venezuela	Ecuador	295	522	1
43	2023-04-17	Republica Dominicana	Venezuela	90	733	1
44	2020-12-07	Cuba	Chile	239	776	1
45	2022-11-20	Brasil	Costa Rica	293	985	2
46	2022-04-19	Peru	Cuba	412	357	2
47	2021-03-25	Mexico	Peru	401	141	1
48	2020-02-22	Argentina	Brasil	559	627	2
49	2021-03-28	Venezuela	Venezuela	985	135	2
50	2023-12-29	Republica Dominicana	Mexico	729	399	3
51	2023-12-25	Nicaragua	Colombia	716	735	2
52	2021-01-05	Mexico	Republica Dominicana	819	68	2
53	2019-05-20	Haiti	Republica Dominicana	227	939	1
54	2022-07-23	Chile	Ecuador	333	238	3
55	2023-09-17	Brasil	Republica Dominicana	60	426	3
56	2020-04-01	Argentina	Uruguay	894	430	1
57	2022-10-30	Honduras	Canada	571	571	2
58	2023-03-06	Republica Dominicana	Panama	247	763	3
59	2022-03-03	Canada	El Salvador	773	828	2
60	2020-02-09	Estados Unidos	Republica Dominicana	180	310	3
61	2020-05-15	Venezuela	Guatemala	909	131	3
62	2021-11-25	Paraguay	Panama	522	733	2
63	2019-09-25	Paraguay	Republica Dominicana	739	130	3
64	2023-09-07	Mexico	Mexico	19	790	2
65	2023-07-02	Honduras	Panama	949	884	1
66	2022-12-06	Panama	Mexico	29	517	3
67	2019-08-22	Brasil	Guatemala	32	371	3
68	2023-11-30	Brasil	Bolivia	971	563	1
69	2021-06-05	Chile	Republica Dominicana	869	568	1
70	2020-10-24	El Salvador	Nicaragua	728	276	3
71	2021-05-06	Nicaragua	Colombia	293	760	3
72	2023-05-20	Panama	Canada	105	158	1
73	2023-06-27	Honduras	Cuba	47	880	1
74	2021-04-20	Estados Unidos	Nicaragua	164	936	2
75	2021-02-12	Cuba	Haiti	247	145	1
76	2020-08-01	Guatemala	Bolivia	286	65	2
77	2020-04-10	Canada	Guatemala	470	176	1
78	2019-05-10	Argentina	Ecuador	323	110	2
79	2019-10-07	Haiti	Peru	175	808	1
80	2023-02-10	Paraguay	Brasil	886	540	1
81	2021-05-21	Chile	Mexico	835	958	1
82	2020-08-27	Costa Rica	Uruguay	561	774	3
83	2021-03-26	Estados Unidos	Guatemala	348	202	1
84	2019-10-22	Nicaragua	Uruguay	847	364	1
85	2021-03-26	Ecuador	Nicaragua	963	497	3
86	2019-04-08	Guatemala	Canada	545	511	2
87	2022-02-21	Nicaragua	Republica Dominicana	718	599	2
88	2019-07-02	Paraguay	Argentina	561	486	2
89	2020-02-02	Brasil	Peru	57	255	1
90	2020-02-16	Honduras	Guatemala	497	427	2
91	2021-10-24	El Salvador	Costa Rica	395	444	3
92	2020-06-27	Cuba	Argentina	773	642	2
93	2022-12-05	Venezuela	Nicaragua	351	944	1
94	2022-12-17	Cuba	Mexico	952	754	2
95	2021-01-08	Bolivia	Argentina	842	676	1
96	2019-10-11	Mexico	Brasil	540	399	2
97	2022-02-16	Peru	Panama	622	597	3
98	2022-11-19	Guatemala	Nicaragua	183	381	2
99	2023-04-22	Argentina	Brasil	960	672	2
100	2021-03-16	El Salvador	Brasil	48	804	3
101	2020-02-04	Argentina	Peru	472	477	3
102	2021-11-26	Bolivia	Bolivia	684	332	2
103	2019-07-03	Estados Unidos	Republica Dominicana	898	561	1
104	2022-01-28	Colombia	Venezuela	525	384	1
105	2024-02-27	Panama	Paraguay	975	615	1
106	2020-01-11	Mexico	El Salvador	953	790	1
107	2019-10-15	Guatemala	Paraguay	909	58	3
108	2020-08-07	Brasil	Uruguay	145	918	2
109	2021-04-18	Venezuela	Paraguay	309	739	2
110	2020-06-26	Brasil	El Salvador	539	488	2
111	2019-11-20	Colombia	Panama	754	313	1
112	2023-12-16	Peru	Venezuela	239	949	2
113	2023-12-21	Uruguay	Chile	510	867	3
114	2020-09-12	Republica Dominicana	Haiti	901	994	1
115	2020-08-13	Bolivia	Paraguay	764	725	3
116	2020-03-27	Peru	Cuba	542	714	1
117	2023-09-26	Uruguay	Brasil	95	473	1
118	2023-10-14	Canada	Honduras	991	680	2
119	2021-12-27	Peru	Chile	974	863	2
120	2023-08-31	Panama	Guatemala	820	634	2
121	2023-02-08	Mexico	Argentina	555	641	2
122	2023-03-23	Colombia	Cuba	84	63	1
123	2021-08-03	El Salvador	Honduras	407	191	2
124	2022-03-17	Ecuador	Honduras	534	551	2
125	2022-07-14	Peru	El Salvador	580	368	2
126	2021-11-04	Uruguay	Venezuela	173	560	1
127	2020-10-06	Canada	Haiti	956	400	2
128	2023-12-31	Brasil	Honduras	685	405	3
129	2020-02-18	Brasil	Chile	180	516	3
130	2023-03-24	Republica Dominicana	Bolivia	378	537	3
131	2020-03-16	Guatemala	Guatemala	785	109	1
132	2024-02-17	Cuba	Venezuela	869	807	3
133	2024-04-06	Peru	Bolivia	640	783	2
134	2023-05-02	Mexico	Peru	623	22	2
135	2019-12-05	Paraguay	El Salvador	582	740	2
136	2023-06-18	Costa Rica	Canada	559	879	3
137	2019-05-31	Honduras	Guatemala	127	397	1
138	2023-07-28	Guatemala	Chile	774	738	1
139	2021-06-14	Estados Unidos	Panama	419	159	2
140	2020-05-09	Paraguay	Bolivia	436	46	1
141	2023-04-03	Guatemala	Haiti	650	327	3
142	2019-06-06	Colombia	Estados Unidos	839	90	1
143	2022-06-14	Nicaragua	Bolivia	884	102	2
144	2024-01-12	Canada	Bolivia	914	519	3
145	2021-10-02	Argentina	Uruguay	583	783	2
146	2021-05-24	Costa Rica	Argentina	70	448	2
147	2022-06-15	Chile	Costa Rica	945	429	1
148	2021-05-14	Argentina	Brasil	859	711	1
149	2019-05-19	Republica Dominicana	Haiti	550	990	3
150	2021-03-16	Peru	Brasil	217	109	2
151	2020-01-29	Panama	Bolivia	259	373	2
152	2021-10-13	Colombia	Ecuador	341	702	1
153	2020-03-12	Argentina	Cuba	373	321	1
154	2020-08-29	Costa Rica	Chile	735	776	3
155	2020-06-29	Panama	Cuba	172	578	1
156	2023-06-08	Estados Unidos	Venezuela	114	311	1
157	2019-05-07	Republica Dominicana	El Salvador	872	605	2
158	2020-09-10	Paraguay	Republica Dominicana	177	632	1
159	2022-04-19	Honduras	Chile	352	28	1
160	2021-01-10	Guatemala	Mexico	318	114	2
161	2024-03-06	Mexico	Colombia	862	147	2
162	2021-05-02	Venezuela	Peru	956	156	1
163	2023-08-22	Cuba	Colombia	627	461	2
164	2021-05-05	Ecuador	Ecuador	397	851	2
165	2023-10-28	Colombia	Canada	932	448	1
166	2019-07-09	Canada	Estados Unidos	649	226	1
167	2020-11-04	Honduras	Republica Dominicana	569	345	3
168	2023-05-08	Mexico	Haiti	356	820	2
169	2019-12-26	Peru	Estados Unidos	391	576	2
170	2021-10-04	Honduras	Brasil	676	144	3
171	2019-12-01	Cuba	Haiti	948	56	2
172	2020-05-01	Nicaragua	Honduras	807	156	2
173	2019-12-02	Mexico	Costa Rica	972	117	3
174	2023-05-31	Guatemala	Estados Unidos	810	895	2
175	2022-04-23	Paraguay	Ecuador	63	242	3
176	2019-06-11	Venezuela	Panama	602	846	3
177	2020-01-24	Guatemala	Mexico	397	393	1
178	2020-06-29	Estados Unidos	Bolivia	957	874	2
179	2019-06-05	El Salvador	Republica Dominicana	444	866	1
180	2019-11-04	Honduras	Peru	458	799	1
181	2019-04-20	Colombia	Haiti	751	958	2
182	2021-01-26	Honduras	Guatemala	357	713	3
183	2019-05-17	Canada	El Salvador	581	23	2
184	2021-02-25	Nicaragua	Haiti	646	950	3
185	2021-11-26	Canada	Estados Unidos	861	236	3
186	2023-04-28	Republica Dominicana	Paraguay	162	828	2
187	2020-03-27	Venezuela	Canada	391	343	1
188	2021-02-01	Venezuela	Guatemala	435	432	1
189	2022-10-01	Peru	Colombia	915	486	3
190	2019-12-28	Argentina	Paraguay	1	427	1
191	2023-01-30	Bolivia	Honduras	389	518	3
192	2023-11-15	Peru	Argentina	539	840	1
193	2021-05-08	Bolivia	Estados Unidos	447	629	2
194	2022-06-18	Ecuador	Peru	537	850	1
195	2024-04-06	Cuba	Peru	179	417	3
196	2023-05-10	Republica Dominicana	Bolivia	748	949	2
197	2021-08-14	Mexico	Argentina	98	252	2
198	2023-04-29	Guatemala	Argentina	161	625	2
199	2020-09-29	Brasil	Estados Unidos	924	611	3
200	2022-09-10	Haiti	Chile	156	992	2
201	2021-04-05	Panama	Cuba	183	131	3
202	2019-06-29	Bolivia	Peru	598	747	3
203	2019-08-03	Uruguay	Colombia	722	157	3
204	2021-04-17	Paraguay	Ecuador	848	505	2
205	2021-04-04	Chile	Panama	757	653	3
206	2021-01-20	Republica Dominicana	El Salvador	595	621	3
207	2022-01-08	Nicaragua	Uruguay	1	199	3
208	2020-06-24	Peru	Chile	457	632	1
209	2020-12-24	Ecuador	Paraguay	111	653	3
210	2022-12-15	Cuba	Panama	914	468	3
211	2020-03-28	Costa Rica	Mexico	809	41	2
212	2020-07-11	Uruguay	Ecuador	574	23	2
213	2020-07-11	Venezuela	El Salvador	743	938	3
214	2020-03-31	Republica Dominicana	Peru	317	80	3
215	2020-04-25	Argentina	Venezuela	957	808	1
216	2022-03-23	Venezuela	Venezuela	437	671	2
217	2021-10-21	Argentina	Chile	5	295	3
218	2020-12-31	Haiti	Brasil	122	423	3
219	2024-03-05	El Salvador	Ecuador	643	226	3
220	2022-06-18	Estados Unidos	Guatemala	574	88	2
221	2023-07-11	El Salvador	Cuba	149	619	1
222	2022-03-29	Mexico	Republica Dominicana	316	602	3
223	2022-07-26	Argentina	Paraguay	561	478	2
224	2023-05-21	Uruguay	Haiti	241	813	3
225	2021-05-12	Mexico	Costa Rica	203	276	3
226	2021-08-14	El Salvador	Argentina	557	586	2
227	2019-06-18	Nicaragua	Venezuela	55	490	1
228	2022-04-26	Cuba	Peru	792	534	3
229	2023-09-05	Mexico	Panama	695	702	2
230	2021-12-09	Bolivia	Haiti	346	104	1
231	2021-07-27	Chile	Brasil	61	795	1
232	2023-01-08	Guatemala	Venezuela	759	628	1
233	2019-04-20	Brasil	Chile	497	825	2
234	2024-04-01	Paraguay	Venezuela	699	67	3
235	2021-06-28	Republica Dominicana	Venezuela	816	828	1
236	2022-12-26	Canada	Uruguay	910	506	3
237	2022-12-24	Uruguay	Chile	122	203	1
238	2019-12-20	Canada	Cuba	323	599	3
239	2022-07-10	Argentina	Chile	354	23	1
240	2019-12-01	Guatemala	Costa Rica	134	228	1
241	2023-10-14	Brasil	Bolivia	985	739	2
242	2020-08-28	Cuba	Panama	529	149	2
243	2023-07-29	Mexico	Argentina	745	691	2
244	2024-01-23	Uruguay	Colombia	271	901	3
245	2021-05-31	Colombia	Haiti	709	909	2
246	2020-02-03	Bolivia	Bolivia	797	994	2
247	2023-03-14	Canada	Paraguay	499	58	1
248	2021-01-17	Republica Dominicana	El Salvador	363	852	2
249	2020-12-12	Peru	Bolivia	370	131	1
250	2022-05-15	Guatemala	Brasil	42	210	2
251	2019-09-27	Cuba	Canada	633	918	3
252	2023-09-09	Haiti	Canada	720	216	2
253	2021-08-26	Cuba	Chile	377	544	2
254	2024-02-17	Honduras	Bolivia	250	976	3
255	2020-12-06	Venezuela	Nicaragua	998	201	1
256	2021-06-05	Costa Rica	Ecuador	600	834	3
257	2022-05-03	Venezuela	Canada	207	885	1
258	2021-10-01	El Salvador	Ecuador	369	595	2
259	2020-06-24	Paraguay	Nicaragua	727	305	3
260	2021-07-20	Argentina	Canada	448	508	1
261	2024-03-11	Honduras	Paraguay	563	832	2
262	2022-07-17	Cuba	Paraguay	70	593	1
263	2019-08-10	Ecuador	Venezuela	530	122	3
264	2023-02-20	Colombia	Bolivia	877	591	2
265	2021-06-11	Paraguay	Colombia	6	276	2
266	2021-06-11	Honduras	Brasil	627	251	3
267	2023-07-21	Venezuela	Venezuela	602	255	3
268	2019-08-24	Cuba	Honduras	635	486	1
269	2019-10-18	Colombia	Cuba	756	459	2
270	2020-01-30	Republica Dominicana	Venezuela	63	988	1
271	2021-11-29	Chile	Haiti	649	220	2
272	2020-09-14	Paraguay	Panama	815	825	3
273	2020-10-19	Brasil	Mexico	414	932	2
274	2022-08-19	El Salvador	Argentina	101	406	2
275	2019-08-11	El Salvador	Nicaragua	479	903	3
276	2020-03-03	Costa Rica	Brasil	654	286	2
277	2020-09-18	Venezuela	Haiti	914	518	1
278	2020-01-10	Bolivia	El Salvador	216	882	1
279	2020-01-22	Uruguay	Paraguay	722	440	3
280	2019-06-24	Chile	Estados Unidos	430	529	2
281	2023-07-04	Costa Rica	El Salvador	731	255	3
282	2020-07-11	Venezuela	Venezuela	668	769	2
283	2019-08-27	Venezuela	Mexico	778	969	2
284	2024-01-26	Republica Dominicana	Colombia	311	361	3
285	2020-08-30	Canada	Argentina	43	25	2
286	2021-03-27	Uruguay	Argentina	778	366	2
287	2023-06-02	Republica Dominicana	Argentina	735	156	1
288	2020-08-25	Bolivia	Cuba	562	476	3
289	2023-12-24	Colombia	Colombia	868	214	2
290	2023-06-22	Honduras	Estados Unidos	84	919	1
291	2022-07-07	Honduras	Cuba	939	393	3
292	2020-09-18	Cuba	Venezuela	233	567	2
293	2020-11-20	Paraguay	Venezuela	242	663	3
294	2022-03-26	El Salvador	Peru	811	866	2
295	2023-10-13	Uruguay	Ecuador	359	129	2
296	2020-08-29	Costa Rica	Brasil	938	148	2
297	2020-05-17	Honduras	Panama	477	309	2
298	2020-04-30	Venezuela	Ecuador	29	858	2
299	2023-07-10	Uruguay	Paraguay	920	896	1
300	2021-01-03	Paraguay	Honduras	960	156	2
301	2020-09-10	Honduras	El Salvador	425	952	2
302	2022-07-11	Costa Rica	Bolivia	174	679	2
303	2019-06-07	Brasil	Canada	520	961	2
304	2020-01-08	Panama	Bolivia	412	405	2
305	2021-07-30	Guatemala	Cuba	269	737	2
306	2020-09-14	Estados Unidos	Chile	911	134	2
307	2019-12-15	Republica Dominicana	Panama	463	587	3
308	2022-06-19	Bolivia	Honduras	982	788	3
309	2021-12-05	Estados Unidos	Estados Unidos	420	455	3
310	2024-01-18	Colombia	Canada	456	895	2
311	2020-07-23	Mexico	Argentina	43	427	2
312	2020-09-06	Panama	Paraguay	20	263	2
313	2021-05-28	Guatemala	Ecuador	148	149	1
314	2024-02-01	Cuba	Mexico	636	559	2
315	2024-02-22	Mexico	Cuba	299	346	1
316	2023-03-13	Canada	Estados Unidos	191	85	2
317	2023-12-07	Venezuela	Colombia	556	265	2
318	2022-08-14	Ecuador	Republica Dominicana	745	501	3
319	2024-02-27	Mexico	Bolivia	345	345	1
320	2023-05-08	Venezuela	Mexico	448	799	2
321	2022-10-02	Panama	Canada	532	842	3
322	2020-08-22	Haiti	Mexico	526	639	1
323	2019-06-16	Estados Unidos	Costa Rica	314	296	3
324	2022-10-27	Ecuador	Panama	893	367	3
325	2022-02-06	Peru	Peru	734	135	2
326	2023-10-03	Brasil	Canada	213	214	2
327	2024-01-03	Venezuela	El Salvador	335	433	2
328	2022-11-26	Guatemala	Republica Dominicana	366	531	2
329	2021-02-25	Guatemala	Chile	711	353	3
330	2019-11-14	Bolivia	Costa Rica	477	130	2
331	2020-03-08	Costa Rica	Chile	843	331	1
332	2020-03-25	Panama	Argentina	494	812	2
333	2022-07-13	Honduras	Argentina	583	195	3
334	2021-03-02	Bolivia	Argentina	278	94	2
335	2019-12-01	Guatemala	Paraguay	263	33	1
336	2021-09-26	Cuba	Cuba	750	193	3
337	2020-05-08	Uruguay	Haiti	947	192	1
338	2020-01-16	Nicaragua	Chile	713	198	2
339	2020-06-10	Nicaragua	Cuba	120	931	1
340	2023-02-10	Nicaragua	Argentina	759	570	2
341	2020-10-30	Brasil	Uruguay	561	697	2
342	2022-11-16	Brasil	Mexico	464	716	3
343	2022-07-04	Nicaragua	Estados Unidos	794	719	1
344	2019-10-02	Nicaragua	Paraguay	60	120	2
345	2023-02-08	Bolivia	Uruguay	163	683	1
346	2024-03-24	Haiti	Ecuador	335	551	2
347	2024-02-19	Haiti	Bolivia	467	646	3
348	2020-06-29	Nicaragua	Haiti	697	369	2
349	2021-03-01	Colombia	El Salvador	334	77	3
350	2019-07-02	Costa Rica	Paraguay	393	39	3
351	2019-08-04	Costa Rica	Bolivia	325	548	2
352	2023-05-25	Colombia	Argentina	225	427	2
353	2021-09-23	Argentina	Estados Unidos	331	122	2
354	2020-03-14	Colombia	Peru	265	334	2
355	2020-03-19	El Salvador	Honduras	553	549	2
356	2022-10-11	Cuba	Peru	756	350	2
357	2023-10-08	Uruguay	Bolivia	4	327	1
358	2020-03-21	Uruguay	Haiti	277	500	3
359	2020-02-16	Mexico	Republica Dominicana	271	423	3
360	2020-09-13	El Salvador	Uruguay	587	906	3
361	2019-04-22	Cuba	Haiti	379	746	1
362	2023-06-06	Nicaragua	Colombia	78	940	1
363	2024-02-29	Costa Rica	Cuba	587	775	2
364	2022-07-04	Ecuador	Paraguay	238	889	3
365	2023-12-03	Republica Dominicana	Brasil	118	564	3
366	2022-01-31	Argentina	Brasil	901	361	2
367	2021-10-14	Venezuela	Chile	714	554	2
368	2023-08-04	Republica Dominicana	Canada	783	427	1
369	2020-01-22	Guatemala	Venezuela	739	377	1
370	2020-04-03	Chile	Bolivia	902	869	1
371	2022-11-14	Estados Unidos	Peru	872	66	2
372	2021-03-05	Haiti	Uruguay	724	448	3
373	2024-03-26	Honduras	Paraguay	120	342	2
374	2024-03-17	Nicaragua	Colombia	375	262	1
375	2021-03-07	Paraguay	Venezuela	73	395	2
376	2019-07-31	Nicaragua	Peru	382	94	1
377	2020-04-12	Brasil	Guatemala	963	988	2
378	2021-10-23	Honduras	Republica Dominicana	898	311	2
379	2022-04-16	Republica Dominicana	El Salvador	521	171	1
380	2024-02-03	Panama	Venezuela	498	362	1
381	2020-01-09	Venezuela	Honduras	595	223	3
382	2022-02-27	Nicaragua	Guatemala	225	639	1
383	2021-03-15	Costa Rica	Bolivia	984	574	3
384	2020-01-06	Republica Dominicana	Estados Unidos	490	300	1
385	2020-08-26	Venezuela	El Salvador	832	611	2
386	2021-04-05	Chile	Republica Dominicana	441	913	2
387	2022-04-11	Argentina	Guatemala	164	314	1
388	2019-07-25	Nicaragua	Haiti	661	877	1
389	2024-01-04	Brasil	Honduras	1000	107	2
390	2022-05-31	Ecuador	Honduras	764	440	3
391	2023-05-06	Venezuela	Chile	312	520	2
392	2021-12-10	Cuba	Haiti	105	829	3
393	2019-12-01	Honduras	Nicaragua	816	986	2
394	2021-01-27	Republica Dominicana	Ecuador	383	257	3
395	2020-09-09	Peru	Republica Dominicana	673	354	1
396	2023-01-14	Venezuela	Guatemala	847	371	3
397	2024-02-05	Bolivia	Honduras	809	210	3
398	2023-12-13	Guatemala	Estados Unidos	454	412	1
399	2020-10-05	Peru	Ecuador	199	636	1
400	2022-03-30	Nicaragua	Nicaragua	974	629	3
401	2022-06-16	Bolivia	Panama	55	546	3
402	2023-03-31	Ecuador	Cuba	261	313	1
403	2021-06-19	Guatemala	Colombia	817	116	3
404	2021-12-25	Colombia	Honduras	750	452	1
405	2022-06-01	Colombia	Uruguay	410	344	3
406	2023-11-13	Colombia	Panama	995	680	3
407	2019-05-06	Costa Rica	Peru	900	99	3
408	2021-02-14	Venezuela	Argentina	132	344	1
409	2021-07-20	Panama	Venezuela	11	123	1
410	2019-07-09	Paraguay	Colombia	396	452	2
411	2022-06-22	Guatemala	Argentina	365	844	1
412	2021-10-04	Chile	Venezuela	562	43	3
413	2021-06-12	Paraguay	Honduras	99	53	2
414	2023-11-19	Haiti	Mexico	816	756	2
415	2020-09-22	Panama	Colombia	38	647	2
416	2021-09-21	Uruguay	Paraguay	964	485	2
417	2022-02-25	Mexico	Nicaragua	940	413	1
418	2023-06-10	Venezuela	Colombia	974	138	2
419	2023-08-24	Argentina	Bolivia	326	92	3
420	2024-03-28	Costa Rica	Bolivia	136	843	1
421	2020-06-02	Estados Unidos	Panama	591	351	2
422	2023-07-31	Chile	Panama	35	490	1
423	2021-10-25	El Salvador	Colombia	230	240	1
424	2019-12-14	Uruguay	Estados Unidos	784	992	3
425	2022-01-30	Ecuador	Honduras	18	386	3
426	2020-08-19	Nicaragua	Colombia	848	766	3
427	2023-01-27	Argentina	Panama	265	272	1
428	2022-11-20	Guatemala	Nicaragua	893	162	2
429	2021-05-01	Mexico	Estados Unidos	624	899	3
430	2021-12-30	Argentina	Brasil	743	247	1
431	2023-12-19	Argentina	Chile	602	424	2
432	2023-05-21	Uruguay	Guatemala	904	13	3
433	2019-09-16	Guatemala	Brasil	870	418	2
434	2020-11-01	Brasil	Brasil	125	201	1
435	2022-07-06	Cuba	El Salvador	838	62	1
436	2023-08-25	Ecuador	Republica Dominicana	716	310	1
437	2021-10-12	Estados Unidos	Estados Unidos	258	365	3
438	2024-03-25	Costa Rica	Estados Unidos	111	633	1
439	2022-02-19	Nicaragua	Ecuador	217	789	3
440	2020-06-07	Guatemala	Guatemala	943	823	2
441	2022-05-14	Ecuador	Republica Dominicana	766	166	1
442	2023-03-15	Cuba	Honduras	517	400	2
443	2022-08-07	Honduras	Colombia	36	213	1
444	2021-12-11	El Salvador	Colombia	255	374	2
445	2021-01-15	Canada	Brasil	311	455	2
446	2020-05-27	Canada	Guatemala	742	757	2
447	2023-05-26	Bolivia	Haiti	767	239	1
448	2021-08-04	Haiti	Panama	960	775	1
449	2019-09-18	Cuba	Canada	3	111	3
450	2023-04-17	Canada	Argentina	487	510	1
451	2022-12-25	Haiti	Haiti	85	243	1
452	2021-03-03	Uruguay	Honduras	895	152	3
453	2022-10-15	Panama	Ecuador	822	570	2
454	2023-05-31	Brasil	El Salvador	576	833	3
455	2019-08-26	Canada	Paraguay	653	317	3
456	2022-12-28	Argentina	Ecuador	260	409	2
457	2023-11-23	Honduras	Argentina	606	388	2
458	2023-09-23	Canada	Republica Dominicana	40	535	3
459	2024-02-08	Haiti	Argentina	353	543	1
460	2024-02-08	El Salvador	Republica Dominicana	944	581	3
461	2022-02-03	Uruguay	Brasil	831	504	1
462	2020-09-12	El Salvador	Mexico	909	358	2
463	2019-10-25	Guatemala	Bolivia	910	684	1
464	2020-08-05	Chile	Ecuador	794	407	3
465	2022-03-05	Nicaragua	Peru	63	408	1
466	2020-04-17	Nicaragua	Panama	555	656	1
467	2023-09-10	Ecuador	Nicaragua	137	476	1
468	2024-02-14	Costa Rica	Republica Dominicana	526	540	2
469	2022-12-27	Brasil	Costa Rica	729	960	2
470	2024-02-24	Mexico	Paraguay	154	939	2
471	2019-11-09	Peru	Peru	795	806	2
472	2020-07-16	Peru	Argentina	382	612	3
473	2020-07-16	Peru	Estados Unidos	417	637	2
474	2021-04-01	Paraguay	Republica Dominicana	710	190	1
475	2024-03-01	Colombia	Brasil	916	306	3
476	2021-08-31	Mexico	Peru	117	856	2
477	2023-07-27	Peru	El Salvador	653	501	3
478	2021-05-10	Chile	Peru	484	692	1
479	2023-01-23	Colombia	Costa Rica	6	617	3
480	2021-04-04	Panama	Peru	729	552	2
481	2020-12-11	Republica Dominicana	Guatemala	626	932	2
482	2020-05-18	Colombia	Uruguay	344	637	2
483	2021-01-03	Bolivia	Guatemala	33	601	3
484	2023-03-07	Mexico	Ecuador	453	34	2
485	2020-04-02	Paraguay	Nicaragua	965	48	1
486	2023-12-21	Ecuador	Nicaragua	252	37	2
487	2021-03-24	Brasil	Paraguay	789	243	1
488	2023-03-07	Paraguay	Bolivia	25	483	1
489	2019-06-01	Bolivia	Argentina	750	76	2
490	2021-02-04	Haiti	Republica Dominicana	217	697	2
491	2021-03-24	Peru	Cuba	170	567	3
492	2021-10-13	Nicaragua	El Salvador	972	554	3
493	2021-07-02	Panama	Peru	384	182	1
494	2019-10-09	Bolivia	Peru	474	159	3
495	2019-08-13	Argentina	Honduras	767	164	1
496	2020-12-26	Honduras	Haiti	821	627	3
497	2021-08-16	Nicaragua	Chile	554	502	1
498	2021-01-17	Mexico	Guatemala	844	676	1
499	2020-02-02	Ecuador	Bolivia	226	237	1
500	2020-06-11	Estados Unidos	Republica Dominicana	612	374	2
501	2020-06-21	Estados Unidos	Ecuador	531	481	2
502	2023-06-19	Cuba	Honduras	547	482	1
503	2019-10-14	Peru	Panama	505	662	2
504	2021-11-17	Haiti	Mexico	201	843	2
505	2020-08-30	Uruguay	Panama	546	773	2
506	2019-06-26	Colombia	Cuba	561	608	1
507	2023-05-06	El Salvador	Paraguay	708	499	1
508	2022-05-08	Estados Unidos	El Salvador	567	819	2
509	2022-02-01	Honduras	Republica Dominicana	190	976	1
510	2019-12-17	Republica Dominicana	Peru	974	620	2
511	2020-11-26	Paraguay	Argentina	940	105	3
512	2019-10-25	Estados Unidos	Mexico	925	908	2
513	2020-10-10	Argentina	Haiti	524	190	1
514	2022-12-12	Nicaragua	Canada	699	271	3
515	2023-02-06	Ecuador	Canada	821	395	1
516	2023-10-21	Paraguay	Costa Rica	663	809	2
517	2020-09-20	Haiti	Bolivia	656	680	1
518	2020-05-26	Paraguay	Peru	363	960	2
519	2020-03-13	Haiti	Colombia	560	542	3
520	2023-04-18	Panama	El Salvador	697	500	2
521	2023-05-07	Venezuela	Chile	946	119	1
522	2022-03-06	Ecuador	Estados Unidos	814	529	2
523	2021-12-19	Estados Unidos	Peru	545	810	2
524	2022-03-01	Uruguay	Peru	622	813	2
525	2023-06-07	Mexico	Colombia	857	790	2
526	2024-01-21	Peru	Argentina	619	17	3
527	2021-07-05	Guatemala	Chile	384	934	3
528	2019-12-08	Costa Rica	Ecuador	842	566	3
529	2020-07-03	Venezuela	Venezuela	186	669	3
530	2020-04-27	Ecuador	El Salvador	20	414	1
531	2024-02-05	Honduras	Costa Rica	273	352	2
532	2021-04-18	Panama	Nicaragua	200	12	2
533	2021-01-16	Canada	Paraguay	443	971	1
534	2023-10-25	El Salvador	Peru	472	253	2
535	2022-03-11	El Salvador	Peru	696	858	3
536	2019-08-12	Guatemala	Panama	140	974	2
537	2019-08-31	Mexico	Guatemala	622	787	1
538	2023-09-09	Bolivia	Nicaragua	767	539	2
539	2021-02-10	Peru	Argentina	514	365	3
540	2019-04-17	Costa Rica	Ecuador	280	635	1
541	2022-08-07	Mexico	Bolivia	830	147	1
542	2023-05-28	El Salvador	Nicaragua	983	592	2
543	2020-02-29	Republica Dominicana	Guatemala	170	122	1
544	2021-12-17	Canada	Estados Unidos	655	591	3
545	2022-07-10	Haiti	Ecuador	59	602	2
546	2023-05-13	El Salvador	Mexico	166	367	2
547	2022-04-05	Colombia	Paraguay	823	131	1
548	2023-08-09	Costa Rica	Argentina	213	320	1
549	2022-01-01	Honduras	Ecuador	148	565	2
550	2020-08-26	Venezuela	Haiti	70	491	1
551	2020-06-13	Uruguay	Ecuador	142	333	3
552	2023-05-23	Cuba	Paraguay	160	574	2
553	2023-09-24	Bolivia	Ecuador	1000	802	2
554	2024-01-20	Ecuador	Venezuela	812	854	1
555	2024-04-04	Haiti	Venezuela	466	384	3
556	2021-09-16	Brasil	Argentina	530	242	2
557	2020-04-15	Uruguay	Republica Dominicana	934	315	3
558	2023-05-12	Honduras	Guatemala	186	582	1
559	2023-05-23	Mexico	Venezuela	153	542	1
560	2020-01-31	Panama	Estados Unidos	710	609	3
561	2022-10-22	Argentina	Panama	925	276	2
562	2022-04-15	Venezuela	Paraguay	169	753	3
563	2022-08-07	Colombia	Venezuela	252	823	2
564	2020-05-29	Bolivia	Nicaragua	281	952	2
565	2022-11-01	Honduras	Cuba	303	558	1
566	2022-01-08	Uruguay	Brasil	149	759	1
567	2022-08-07	Cuba	Venezuela	473	382	3
568	2022-02-25	Colombia	Paraguay	576	996	1
569	2020-01-30	Chile	Ecuador	476	185	1
570	2021-03-09	Colombia	Ecuador	88	10	3
571	2021-09-16	Paraguay	Republica Dominicana	697	277	1
572	2020-01-19	Peru	Nicaragua	46	783	3
573	2022-03-12	Ecuador	Uruguay	310	234	3
574	2023-03-02	Honduras	Estados Unidos	631	983	1
575	2023-08-16	Canada	Mexico	507	627	2
576	2019-08-22	Haiti	Bolivia	862	86	1
577	2019-12-22	Nicaragua	Cuba	397	313	2
578	2022-12-13	Cuba	Venezuela	936	938	1
579	2024-03-21	Guatemala	Haiti	952	698	2
580	2022-05-28	Peru	Panama	263	208	3
581	2023-01-03	Peru	Republica Dominicana	670	730	1
582	2023-12-26	Haiti	El Salvador	312	108	3
583	2021-08-10	Bolivia	Haiti	85	913	3
584	2023-08-12	Venezuela	Colombia	654	695	2
585	2019-07-14	Cuba	Ecuador	31	488	1
586	2022-01-21	El Salvador	Guatemala	449	799	3
587	2020-06-12	Honduras	Haiti	581	564	1
588	2019-12-31	Paraguay	Guatemala	452	898	2
589	2021-11-09	Canada	Peru	961	780	3
590	2023-11-08	Brasil	Nicaragua	926	85	2
591	2020-03-27	Ecuador	Bolivia	85	495	3
592	2022-11-03	El Salvador	Costa Rica	717	437	1
593	2019-11-12	Colombia	Paraguay	229	91	1
594	2022-07-05	El Salvador	Chile	943	131	2
595	2020-04-09	Nicaragua	Colombia	943	759	2
596	2020-11-26	Peru	Nicaragua	924	359	2
597	2022-04-03	Peru	Estados Unidos	72	199	3
598	2024-01-23	El Salvador	Brasil	909	687	1
599	2022-08-20	Canada	Chile	887	720	2
600	2019-06-24	Nicaragua	Costa Rica	341	260	2
601	2022-06-03	Argentina	Venezuela	172	675	1
602	2019-07-01	Colombia	El Salvador	202	291	1
603	2019-11-29	Brasil	Argentina	776	441	2
604	2023-09-23	Honduras	Chile	200	262	2
605	2023-10-09	Cuba	Argentina	840	638	1
606	2019-06-29	Uruguay	El Salvador	209	246	3
607	2021-05-12	Republica Dominicana	Ecuador	121	954	2
608	2019-11-17	Guatemala	Peru	814	606	2
609	2022-07-27	Brasil	Ecuador	484	136	1
610	2023-11-07	Estados Unidos	Cuba	817	499	1
611	2023-06-14	El Salvador	Ecuador	231	516	3
612	2021-12-20	Panama	Venezuela	736	781	3
613	2022-08-17	Republica Dominicana	Uruguay	137	442	2
614	2021-06-26	Costa Rica	Argentina	662	53	1
615	2022-06-21	Ecuador	Colombia	59	310	1
616	2021-01-23	Nicaragua	Estados Unidos	790	188	2
617	2021-01-07	Bolivia	Mexico	74	459	1
618	2024-01-02	Guatemala	Canada	168	17	3
619	2021-07-20	Chile	Brasil	135	633	3
620	2024-01-01	Canada	Paraguay	989	21	3
621	2021-10-09	Venezuela	Uruguay	101	593	2
622	2019-04-10	Uruguay	Mexico	122	925	2
623	2021-11-21	Nicaragua	Haiti	130	375	1
624	2021-03-18	Paraguay	Estados Unidos	919	481	1
625	2022-04-15	Costa Rica	Bolivia	553	180	3
626	2023-10-24	Bolivia	Mexico	588	59	1
627	2023-12-13	Venezuela	Guatemala	837	335	1
628	2023-12-19	Estados Unidos	El Salvador	931	353	2
629	2023-12-04	Colombia	Paraguay	878	552	2
630	2021-12-12	Haiti	El Salvador	878	3	1
631	2022-04-21	Colombia	Venezuela	854	165	1
632	2020-11-08	Venezuela	Colombia	423	373	3
633	2021-03-20	Haiti	Cuba	592	110	3
634	2021-12-21	Colombia	Brasil	550	879	1
635	2020-11-08	Argentina	Brasil	222	63	2
636	2022-12-09	Guatemala	Bolivia	400	457	1
637	2023-08-30	Argentina	Costa Rica	700	953	2
638	2019-12-12	Argentina	Argentina	858	601	2
639	2024-02-22	Costa Rica	Canada	670	583	3
640	2022-09-02	Paraguay	Brasil	253	492	1
641	2020-08-03	Bolivia	Ecuador	396	74	1
642	2023-11-09	Haiti	Estados Unidos	384	347	3
643	2019-07-11	Mexico	Ecuador	985	389	3
644	2019-07-17	Nicaragua	Republica Dominicana	556	758	2
645	2019-10-19	Mexico	Paraguay	217	293	1
646	2021-09-30	Bolivia	Panama	471	858	2
647	2023-04-16	Bolivia	Cuba	406	72	3
648	2020-11-10	Colombia	Colombia	509	909	2
649	2022-08-24	Paraguay	Estados Unidos	929	785	3
650	2022-01-18	El Salvador	El Salvador	373	740	2
651	2023-11-27	Haiti	Ecuador	773	877	2
652	2023-08-02	Argentina	Venezuela	308	827	1
653	2020-09-05	Ecuador	Mexico	437	270	1
654	2021-06-17	Honduras	Estados Unidos	14	620	3
655	2022-12-07	Haiti	Brasil	303	566	1
656	2023-07-29	El Salvador	Canada	202	522	2
657	2023-10-31	Bolivia	Nicaragua	664	453	2
658	2023-09-13	Venezuela	Nicaragua	770	953	1
659	2023-12-10	Paraguay	Argentina	299	550	3
660	2023-07-04	Venezuela	Peru	155	378	1
661	2024-01-03	Bolivia	Peru	95	678	2
662	2021-10-04	Panama	Panama	174	197	3
663	2022-12-05	Costa Rica	Nicaragua	411	106	1
664	2020-10-01	El Salvador	Mexico	684	618	3
665	2020-07-28	Nicaragua	Venezuela	97	310	3
666	2022-09-03	Costa Rica	Paraguay	821	606	1
667	2020-11-17	Argentina	Uruguay	9	263	1
668	2020-08-17	Haiti	Venezuela	130	354	2
669	2022-01-05	Nicaragua	Venezuela	194	691	3
670	2022-12-28	Venezuela	Costa Rica	359	46	2
671	2021-06-06	El Salvador	Bolivia	432	739	3
672	2023-01-17	Mexico	Guatemala	296	690	3
673	2022-10-25	Haiti	Honduras	875	752	3
674	2021-08-27	El Salvador	Peru	235	695	2
675	2020-12-08	Republica Dominicana	Uruguay	898	473	3
676	2021-06-26	Canada	Brasil	908	715	3
677	2023-05-30	Republica Dominicana	Costa Rica	45	222	1
678	2022-10-17	Argentina	Uruguay	112	841	1
679	2023-09-16	Costa Rica	El Salvador	784	653	1
680	2020-07-28	Bolivia	El Salvador	629	272	3
681	2020-02-18	Paraguay	Panama	990	45	1
682	2020-07-05	Uruguay	Panama	993	911	1
683	2020-11-10	Honduras	Colombia	779	599	2
684	2019-04-08	Ecuador	Canada	295	220	3
685	2023-07-20	Peru	Uruguay	529	855	1
686	2019-07-07	Peru	Uruguay	662	113	1
687	2023-03-26	Peru	El Salvador	599	169	3
688	2022-12-31	Honduras	Mexico	247	409	3
689	2022-06-12	El Salvador	Nicaragua	722	8	3
690	2020-04-27	Cuba	Bolivia	994	393	2
691	2023-02-04	Cuba	Costa Rica	529	153	1
692	2021-11-08	Ecuador	Bolivia	42	233	2
693	2022-12-24	Venezuela	Ecuador	95	216	2
694	2019-09-11	Brasil	Venezuela	504	438	2
695	2020-07-23	Venezuela	El Salvador	707	486	1
696	2019-08-01	Brasil	Argentina	921	389	3
697	2020-07-19	Brasil	Panama	787	407	2
698	2020-07-09	Guatemala	Colombia	281	610	3
699	2020-01-15	Argentina	Argentina	806	946	2
700	2022-10-22	Republica Dominicana	Cuba	903	318	2
701	2019-06-21	Ecuador	Republica Dominicana	438	827	2
702	2023-09-25	Mexico	Cuba	105	599	3
703	2024-03-29	Cuba	El Salvador	14	474	2
704	2021-07-19	Uruguay	Nicaragua	557	810	2
705	2024-01-25	Canada	Peru	522	760	3
706	2021-12-17	Ecuador	Paraguay	927	847	2
707	2022-05-29	Cuba	Uruguay	222	903	2
708	2023-04-23	Brasil	Honduras	589	127	1
709	2022-01-18	Peru	Panama	721	181	3
710	2022-11-16	Venezuela	Argentina	389	103	2
711	2019-12-16	Paraguay	Guatemala	12	957	1
712	2020-04-29	Bolivia	Mexico	478	235	2
713	2022-03-17	Mexico	Canada	198	442	2
714	2019-05-10	El Salvador	Honduras	989	195	2
715	2024-02-09	Venezuela	Argentina	81	674	1
716	2019-12-21	Peru	Honduras	114	884	3
717	2021-01-11	Panama	Haiti	920	849	1
718	2021-03-18	Estados Unidos	Venezuela	258	856	3
719	2023-01-24	Costa Rica	El Salvador	605	571	2
720	2020-07-12	Costa Rica	Mexico	787	602	2
721	2019-05-04	Paraguay	Canada	522	9	2
722	2021-09-30	Costa Rica	Bolivia	98	824	1
723	2022-04-12	Venezuela	Peru	481	234	2
724	2019-06-14	Bolivia	Costa Rica	176	707	1
725	2021-05-22	Paraguay	Bolivia	516	905	2
726	2023-03-04	Guatemala	Republica Dominicana	908	510	2
727	2019-09-01	Honduras	Estados Unidos	380	776	1
728	2020-03-18	Paraguay	Chile	310	760	3
729	2022-09-16	Haiti	Honduras	126	263	2
730	2022-12-10	Bolivia	Ecuador	325	591	1
731	2020-04-05	Chile	Bolivia	961	451	3
732	2024-03-09	Argentina	Brasil	593	210	3
733	2021-10-07	Honduras	Estados Unidos	819	785	2
734	2021-07-23	Estados Unidos	Guatemala	517	80	3
735	2020-06-07	Nicaragua	Panama	579	380	2
736	2020-04-18	Uruguay	Honduras	733	974	1
737	2023-04-21	Argentina	Costa Rica	116	46	3
738	2020-05-02	Peru	Venezuela	156	944	1
739	2023-02-02	Guatemala	Republica Dominicana	122	664	2
740	2023-07-09	Republica Dominicana	Republica Dominicana	840	659	3
741	2020-12-07	Guatemala	Estados Unidos	468	66	3
742	2022-01-01	Chile	Panama	602	922	2
743	2023-08-24	Republica Dominicana	Estados Unidos	887	572	3
744	2021-02-11	Cuba	Ecuador	850	352	1
745	2020-06-11	Mexico	Uruguay	361	89	2
746	2021-01-28	Panama	Ecuador	53	359	3
747	2021-02-16	Venezuela	Panama	687	912	3
748	2023-11-13	El Salvador	Uruguay	964	208	1
749	2023-09-30	Guatemala	Argentina	52	199	3
750	2022-09-21	Argentina	Ecuador	311	453	3
751	2022-08-29	Colombia	Estados Unidos	570	683	3
752	2021-07-15	Cuba	Ecuador	861	497	3
753	2020-12-15	Paraguay	Venezuela	316	989	2
754	2022-01-19	Brasil	Estados Unidos	348	393	2
755	2022-02-26	Chile	Canada	329	163	2
756	2020-08-19	Uruguay	Guatemala	58	20	3
757	2022-02-15	Argentina	Nicaragua	676	527	1
758	2021-05-13	Paraguay	Bolivia	709	185	2
759	2022-03-11	Guatemala	Ecuador	330	145	2
760	2024-01-07	Peru	Cuba	548	90	1
761	2024-03-16	Haiti	Argentina	685	197	1
762	2020-10-26	Argentina	Uruguay	104	806	2
763	2021-04-23	Chile	Canada	983	5	1
764	2022-03-26	Panama	Republica Dominicana	652	523	2
765	2021-05-31	Cuba	Republica Dominicana	768	150	3
766	2022-04-10	Peru	Argentina	812	632	2
767	2021-04-04	Canada	Canada	578	276	3
768	2023-03-14	Peru	Nicaragua	321	499	1
769	2023-12-24	Costa Rica	Republica Dominicana	131	377	3
770	2020-09-08	Ecuador	Ecuador	12	233	2
771	2022-08-10	El Salvador	Venezuela	881	980	2
772	2022-08-01	Nicaragua	Republica Dominicana	848	12	3
773	2023-09-15	Ecuador	Canada	761	351	3
774	2019-09-10	Canada	Panama	290	625	1
775	2020-06-29	Guatemala	Honduras	115	145	2
776	2019-12-14	Peru	Haiti	650	498	2
777	2021-10-08	Peru	Republica Dominicana	406	551	3
778	2019-08-06	Panama	Republica Dominicana	674	441	3
779	2019-09-08	Colombia	Ecuador	929	893	2
780	2020-04-17	Cuba	Bolivia	130	154	3
781	2020-02-08	Uruguay	Argentina	248	663	1
782	2021-07-26	Venezuela	Ecuador	987	909	2
783	2019-10-26	Peru	Chile	24	583	3
784	2022-06-05	Uruguay	Panama	751	161	1
785	2020-01-06	Haiti	Venezuela	176	105	2
786	2024-04-02	Chile	El Salvador	436	545	1
787	2022-03-17	Venezuela	Estados Unidos	93	256	2
788	2021-01-11	Venezuela	Paraguay	438	617	2
789	2022-02-10	Republica Dominicana	Colombia	562	62	1
790	2021-04-18	Mexico	Nicaragua	38	153	2
791	2021-03-09	Bolivia	Honduras	840	30	1
792	2022-09-25	El Salvador	Honduras	109	266	1
793	2019-07-18	Paraguay	Ecuador	371	925	2
794	2023-02-24	Chile	Cuba	857	719	1
795	2019-06-05	Peru	El Salvador	803	231	1
796	2019-09-23	Ecuador	Uruguay	746	443	3
797	2021-01-26	Nicaragua	Haiti	711	506	1
798	2023-07-01	Panama	Nicaragua	824	179	1
799	2023-06-17	Paraguay	Honduras	753	505	1
800	2020-11-08	Peru	Costa Rica	627	203	1
801	2022-10-31	Colombia	Uruguay	466	739	2
802	2022-07-20	Haiti	Nicaragua	415	802	2
803	2019-11-12	Panama	Brasil	572	966	2
804	2023-06-30	Cuba	El Salvador	151	858	1
805	2021-12-24	Mexico	Chile	43	331	3
806	2023-10-23	Argentina	Ecuador	945	291	3
807	2020-03-02	Argentina	Chile	723	169	2
808	2023-06-01	Chile	Panama	151	61	1
809	2020-05-16	El Salvador	Panama	483	761	2
810	2020-04-10	Cuba	Guatemala	250	685	2
811	2020-09-06	Paraguay	Uruguay	894	118	3
812	2023-12-03	Estados Unidos	Cuba	890	446	1
813	2021-03-16	Colombia	Nicaragua	898	848	1
814	2023-10-28	Peru	Nicaragua	569	805	3
815	2019-12-16	Cuba	Estados Unidos	943	617	2
816	2020-03-08	Venezuela	Nicaragua	468	10	3
817	2023-05-01	Ecuador	Nicaragua	171	378	1
818	2019-09-08	Uruguay	Guatemala	80	696	2
819	2021-09-29	Costa Rica	Argentina	836	89	1
820	2022-05-13	Brasil	Guatemala	80	159	2
821	2022-02-23	Mexico	Honduras	805	979	1
822	2021-12-17	Canada	Panama	229	718	3
823	2021-05-05	Estados Unidos	Panama	409	7	3
824	2020-08-09	Colombia	Argentina	260	205	1
825	2020-10-02	Guatemala	Honduras	519	258	3
826	2022-09-15	Colombia	Bolivia	62	713	2
827	2021-01-06	Cuba	Estados Unidos	11	790	3
828	2020-05-23	Mexico	Chile	480	329	2
829	2021-07-16	Venezuela	Costa Rica	239	894	2
830	2023-10-28	Estados Unidos	Mexico	589	681	3
831	2023-08-18	Guatemala	Mexico	972	500	3
832	2024-02-18	Uruguay	Paraguay	463	895	3
833	2020-12-24	Uruguay	Estados Unidos	616	108	3
834	2020-02-28	Uruguay	Honduras	94	369	3
835	2023-12-10	Colombia	Peru	630	972	1
836	2022-02-19	Mexico	Guatemala	662	885	2
837	2022-01-26	Panama	Costa Rica	800	368	1
838	2020-02-07	Guatemala	Argentina	352	18	1
839	2019-08-05	Nicaragua	Uruguay	780	969	3
840	2022-10-22	Brasil	Republica Dominicana	640	889	2
841	2020-02-11	Costa Rica	Canada	176	638	1
842	2020-12-09	Cuba	Republica Dominicana	259	597	3
843	2024-02-14	Argentina	Costa Rica	432	616	3
844	2020-02-26	Paraguay	Chile	861	294	3
845	2020-03-29	Estados Unidos	Costa Rica	441	864	3
846	2021-02-11	Honduras	Chile	46	844	1
847	2020-01-08	Guatemala	Estados Unidos	648	443	1
848	2022-09-14	Costa Rica	Honduras	737	935	2
849	2020-04-13	Colombia	Colombia	651	411	3
850	2020-07-15	Ecuador	El Salvador	268	760	1
851	2022-09-13	Estados Unidos	Mexico	327	797	3
852	2022-04-07	Cuba	Costa Rica	856	986	2
853	2021-08-11	Panama	Republica Dominicana	440	922	1
854	2022-09-07	Brasil	Mexico	42	506	3
855	2019-05-21	Bolivia	Mexico	835	791	3
856	2019-07-30	Chile	Honduras	334	925	3
857	2021-03-23	Mexico	Brasil	443	268	3
858	2023-11-17	Ecuador	Haiti	800	731	3
859	2020-05-13	Republica Dominicana	Colombia	826	481	1
860	2020-01-18	El Salvador	Costa Rica	919	389	2
861	2020-12-14	Brasil	El Salvador	615	796	2
862	2023-02-27	Colombia	Costa Rica	541	202	1
863	2023-02-28	Ecuador	Uruguay	489	799	3
864	2021-02-12	Argentina	Brasil	607	833	2
865	2020-04-14	Cuba	Venezuela	197	823	2
866	2022-09-24	Guatemala	Guatemala	771	223	2
867	2023-10-05	Paraguay	Haiti	510	113	2
868	2022-10-11	Mexico	Canada	166	831	3
869	2024-01-09	Brasil	Uruguay	824	126	2
870	2022-07-16	Republica Dominicana	Ecuador	764	699	1
871	2024-03-21	Guatemala	Cuba	14	788	1
872	2022-08-19	Chile	Chile	741	680	2
873	2023-12-06	Haiti	Bolivia	56	227	1
874	2020-02-28	Nicaragua	Ecuador	678	770	2
875	2020-10-31	Nicaragua	Estados Unidos	334	549	3
876	2019-10-19	Cuba	Uruguay	988	743	2
877	2022-09-29	Guatemala	El Salvador	295	415	1
878	2021-06-14	Brasil	Republica Dominicana	703	484	1
879	2023-06-08	Uruguay	Uruguay	189	752	2
880	2022-09-15	Chile	Estados Unidos	732	621	3
881	2019-09-24	Nicaragua	Haiti	114	706	3
882	2021-11-20	Guatemala	Nicaragua	182	396	2
883	2022-10-16	Chile	Mexico	924	549	1
884	2022-10-21	Ecuador	Guatemala	744	665	3
885	2019-05-09	Mexico	Colombia	139	97	3
886	2022-01-18	Peru	Argentina	534	28	3
887	2023-10-28	Colombia	Paraguay	942	186	1
888	2022-06-25	Costa Rica	Estados Unidos	359	179	3
889	2024-01-11	Brasil	Costa Rica	719	955	1
890	2022-01-06	Colombia	Mexico	173	353	3
891	2023-06-24	Uruguay	Republica Dominicana	28	7	1
892	2020-08-03	Ecuador	Bolivia	763	666	3
893	2023-09-14	Uruguay	Mexico	349	171	2
894	2024-02-15	Peru	Canada	990	818	1
895	2021-08-29	Uruguay	Panama	635	450	2
896	2022-06-29	Honduras	Brasil	598	20	2
897	2024-01-25	Nicaragua	Argentina	694	486	2
898	2023-12-02	Haiti	Brasil	623	201	2
899	2023-02-21	Costa Rica	Estados Unidos	599	987	1
900	2023-10-14	Guatemala	El Salvador	327	930	1
901	2021-03-19	Haiti	Honduras	656	823	2
902	2023-06-29	Nicaragua	Panama	535	934	1
903	2022-03-29	El Salvador	Peru	258	296	2
904	2021-07-05	El Salvador	Ecuador	451	747	2
905	2022-06-21	Mexico	Mexico	566	22	1
906	2020-08-06	Brasil	Guatemala	130	148	1
907	2019-05-28	Brasil	Bolivia	963	105	1
908	2020-12-04	Uruguay	Argentina	78	989	3
909	2023-07-31	Colombia	Costa Rica	60	882	3
910	2022-06-19	Costa Rica	Haiti	381	897	2
911	2021-06-25	Brasil	Argentina	251	526	1
912	2023-12-16	Paraguay	Chile	805	775	2
913	2022-08-21	Brasil	Costa Rica	593	48	3
914	2019-10-01	Canada	Canada	403	125	1
915	2021-05-24	Bolivia	Brasil	984	158	2
916	2019-06-25	Uruguay	Estados Unidos	122	348	2
917	2022-01-04	Panama	Guatemala	43	717	2
918	2021-07-20	Guatemala	Colombia	523	597	3
919	2019-08-06	El Salvador	Honduras	584	275	3
920	2019-12-22	Panama	Ecuador	815	833	2
921	2021-08-21	Peru	Costa Rica	913	124	1
922	2019-08-02	Estados Unidos	Peru	84	764	2
923	2020-11-08	Republica Dominicana	Cuba	878	281	1
924	2019-08-26	Brasil	Estados Unidos	933	449	1
925	2021-03-16	Colombia	Brasil	176	465	3
926	2023-04-14	Haiti	Peru	809	313	2
927	2024-03-29	Paraguay	Cuba	615	986	3
928	2024-02-08	Haiti	Uruguay	545	586	1
929	2022-04-18	Argentina	El Salvador	236	940	1
930	2022-01-26	Nicaragua	Peru	651	940	1
931	2022-04-30	Haiti	Canada	964	421	2
932	2021-11-21	Guatemala	Paraguay	601	395	1
933	2023-07-27	Colombia	Mexico	79	150	2
934	2022-01-08	Canada	Mexico	145	42	3
935	2021-06-24	Paraguay	Brasil	563	118	1
936	2019-12-21	Canada	Brasil	629	199	1
937	2022-10-13	Chile	Haiti	894	287	3
938	2022-10-30	Chile	Republica Dominicana	273	137	1
939	2021-11-10	Cuba	Brasil	391	371	2
940	2020-10-16	Peru	Argentina	683	236	3
941	2020-09-24	Colombia	Colombia	205	238	1
942	2019-08-31	Brasil	Haiti	191	353	2
943	2020-06-08	Uruguay	Uruguay	32	515	2
944	2024-01-16	Chile	Chile	370	397	1
945	2023-08-29	Ecuador	El Salvador	546	547	3
946	2021-09-01	Brasil	Panama	248	523	1
947	2019-08-28	Ecuador	Paraguay	325	211	2
948	2021-04-01	Brasil	Republica Dominicana	649	239	3
949	2023-10-23	Venezuela	Ecuador	262	271	3
950	2020-11-14	Argentina	Brasil	520	584	2
951	2024-04-07	Canada	Venezuela	1	1	1
952	2024-04-07	Honduras	Costa Rica	1	4	1
953	2024-04-07	Bolivia	Haiti	3	4	1
954	2024-04-07	Estados Unidos	Bolivia	3	2	1
955	2024-04-07	Bolivia	Colombia	1	1	1
956	2024-04-07	Chile	Estados Unidos	3	1	1
957	2024-04-07	Argentina	Mexico	4	3	1
958	2024-04-07	Peru	Canada	4	2	1
959	2024-04-07	Nicaragua	Cuba	3	4	1
960	2024-04-07	Republica Dominicana	Venezuela	1	2	1
961	2024-04-07	Argentina	Colombia	4	2	1
962	2024-04-07	Chile	Honduras	1	4	1
963	2024-04-07	Venezuela	Guatemala	4	2	1
964	2024-04-07	Bolivia	Nicaragua	4	3	1
965	2024-04-07	Argentina	Uruguay	4	4	1
966	2024-04-07	Peru	Honduras	4	1	1
967	2024-04-07	Chile	Paraguay	1	4	1
968	2024-04-07	Canada	El Salvador	3	4	1
969	2024-04-07	Mexico	Peru	2	2	1
970	2024-04-07	Republica Dominicana	Canada	4	1	1
971	2024-04-07	Nicaragua	Nicaragua	1	4	1
972	2024-04-07	Cuba	Colombia	1	2	1
973	2024-04-07	Colombia	Ecuador	4	3	1
974	2024-04-07	Uruguay	Bolivia	4	2	1
975	2024-04-07	Haiti	Bolivia	3	3	1
976	2024-04-07	Mexico	Argentina	3	2	1
977	2024-04-07	Venezuela	Costa Rica	1	2	1
978	2024-04-07	Estados Unidos	Honduras	2	2	1
979	2024-04-07	Paraguay	Argentina	3	4	1
980	2024-04-07	Nicaragua	Chile	4	4	1
981	2024-04-07	Canada	Paraguay	3	1	1
982	2024-04-07	Guatemala	Costa Rica	1	1	1
983	2024-04-07	Honduras	Paraguay	4	1	1
984	2024-04-07	Haiti	Peru	1	3	1
985	2024-04-07	Panama	Venezuela	2	3	1
986	2024-04-07	Venezuela	Nicaragua	4	4	1
987	2024-04-07	Bolivia	Guatemala	2	4	1
988	2024-04-07	Costa Rica	Republica Dominicana	4	2	1
989	2024-04-07	Costa Rica	Cuba	4	2	1
990	2024-04-07	Uruguay	Bolivia	2	2	1
991	2024-04-07	Costa Rica	Nicaragua	2	1	1
992	2024-04-07	El Salvador	Canada	3	4	1
993	2024-04-07	Costa Rica	Cuba	2	3	1
994	2024-04-07	Ecuador	Mexico	4	3	1
995	2024-04-07	Ecuador	Estados Unidos	3	1	1
996	2024-04-07	Bolivia	El Salvador	2	3	1
997	2024-04-07	Haiti	Colombia	2	1	1
998	2024-04-07	Brasil	Nicaragua	2	1	1
999	2024-04-07	Brasil	Peru	3	4	1
1000	2024-04-07	Argentina	Haiti	2	4	1
\.


                                                                                                                                                                                                                                                            2960.dat                                                                                            0000600 0004000 0002000 00000000067 14605045136 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Primera Clase
2	Clase Ejecutiva
3	Clase Turista
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                         2942.dat                                                                                            0000600 0004000 0002000 00000004061 14605045136 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	519108	2020-11-04
2	854401	2023-07-16
3	542648	2020-04-09
4	830457	2020-07-30
5	896115	2022-02-28
6	529795	2022-09-06
7	800040	2023-01-26
8	969598	2019-09-22
9	936618	2023-08-10
10	759433	2024-01-24
11	906881	2020-05-31
12	697425	2021-12-04
13	936397	2021-04-05
14	868069	2020-02-07
15	967511	2020-06-19
16	543363	2022-06-01
17	856646	2023-02-13
18	634955	2020-12-08
19	628659	2023-02-22
20	601035	2021-08-14
21	970763	2021-11-13
22	815598	2020-04-19
23	833799	2022-07-01
24	504840	2019-07-14
25	702921	2024-01-05
26	972512	2022-05-15
27	855704	2019-10-26
28	554437	2021-05-02
29	725566	2022-09-01
30	869465	2023-01-05
31	608034	2022-01-13
32	521979	2019-12-06
33	656948	2022-09-08
34	852026	2023-02-07
35	922682	2022-08-07
36	526720	2020-08-23
37	502096	2020-04-18
38	532766	2023-12-17
39	859385	2022-01-22
40	998923	2020-05-26
41	879978	2022-12-07
42	897497	2023-07-20
43	854415	2022-08-08
44	547561	2019-11-20
45	596333	2023-09-26
46	696691	2023-07-02
47	843905	2020-08-05
48	502441	2020-08-24
49	980686	2021-10-25
50	831293	2020-02-16
51	672526	2024-02-23
52	997935	2019-11-17
53	931783	2021-10-27
54	969668	2024-03-12
55	990116	2021-11-20
56	826703	2024-02-16
57	647639	2024-03-30
58	935946	2022-03-10
59	785170	2020-02-05
60	851877	2020-06-26
61	513822	2021-01-05
62	925309	2022-09-29
63	666441	2021-01-18
64	928826	2023-03-09
65	916146	2019-10-03
66	836089	2020-01-20
67	507467	2019-08-10
68	550051	2021-06-12
69	848324	2023-04-09
70	812543	2021-08-05
71	501201	2019-07-21
72	718876	2021-08-28
73	561649	2021-06-02
74	756987	2022-03-22
75	959467	2021-05-14
76	647005	2024-03-05
77	770625	2020-08-24
78	902371	2023-03-15
79	984004	2019-06-23
80	660894	2020-06-02
81	581295	2022-07-01
82	830497	2021-03-16
83	838817	2020-02-09
84	866581	2022-02-19
85	549046	2021-04-25
86	526266	2021-01-30
87	856198	2021-09-10
88	884983	2020-01-29
89	679268	2019-11-11
90	592059	2022-02-21
91	648431	2020-04-15
92	718540	2023-01-24
93	965078	2024-04-06
94	898292	2024-03-19
95	989300	2019-10-28
96	982265	2020-09-13
97	713017	2021-01-04
98	927855	2021-09-16
99	577349	2021-07-28
100	602308	2021-05-29
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                               2954.dat                                                                                            0000600 0004000 0002000 00000024737 14605045136 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	45	250
2	98	767
3	26	929
4	9	249
5	51	969
6	34	516
7	81	863
8	84	405
9	72	286
10	49	847
11	87	355
12	47	52
13	60	412
14	81	349
15	75	946
16	91	150
17	55	160
18	89	981
19	23	312
20	44	183
21	32	708
22	30	407
23	5	839
24	87	677
25	30	145
26	57	647
27	30	896
28	63	967
29	19	397
30	80	397
31	76	917
32	96	94
33	36	389
34	37	995
35	24	307
36	22	586
37	19	249
38	65	178
39	76	200
40	11	782
41	7	588
42	43	813
43	53	52
44	12	887
45	1	977
46	92	268
47	74	842
48	42	57
49	78	212
50	74	819
51	77	335
52	30	176
53	83	597
54	81	800
55	17	349
56	49	552
57	72	161
58	28	765
59	72	62
60	36	86
61	30	386
62	27	787
63	6	705
64	78	167
65	47	179
66	6	701
67	79	305
68	10	529
69	55	983
70	66	519
71	56	255
72	84	186
73	67	739
74	7	449
75	63	170
76	24	598
77	4	762
78	97	112
79	86	158
80	51	75
81	10	476
82	3	655
83	78	402
84	95	364
85	66	173
86	52	568
87	25	863
88	34	474
89	78	595
90	7	336
91	67	408
92	76	236
93	66	902
94	50	900
95	45	396
96	4	550
97	46	596
98	40	368
99	76	456
100	53	370
101	6	673
102	80	327
103	28	990
104	64	761
105	90	742
106	45	508
107	19	342
108	73	27
109	5	534
110	52	940
111	78	131
112	74	117
113	23	964
114	72	212
115	62	490
116	50	26
117	22	144
118	65	325
119	10	913
120	88	23
121	60	216
122	52	446
123	90	563
124	53	423
125	98	527
126	17	773
127	26	516
128	71	858
129	94	605
130	55	503
131	45	19
132	83	87
133	92	101
134	41	378
135	39	270
136	95	611
137	66	363
138	7	521
139	15	724
140	19	170
141	34	75
142	62	854
143	63	889
144	5	51
145	87	295
146	8	340
147	43	949
148	1	579
149	76	832
150	49	649
151	2	958
152	96	161
153	77	249
154	39	886
155	75	354
156	14	720
157	40	925
158	82	897
159	30	392
160	53	238
161	37	396
162	23	398
163	30	973
164	44	477
165	82	253
166	99	585
167	18	812
168	79	93
169	66	666
170	69	929
171	88	575
172	11	472
173	90	906
174	41	725
175	73	661
176	6	223
177	65	880
178	65	356
179	49	932
180	58	559
181	86	896
182	2	507
183	20	201
184	78	339
185	28	379
186	32	583
187	86	732
188	52	940
189	26	199
190	44	45
191	58	722
192	66	44
193	82	75
194	3	170
195	4	279
196	25	331
197	62	688
198	59	935
199	80	483
200	80	543
201	28	721
202	78	890
203	21	270
204	59	545
205	5	413
206	9	729
207	17	343
208	99	888
209	20	998
210	83	756
211	38	120
212	76	513
213	86	871
214	90	695
215	53	947
216	20	78
217	81	527
218	30	987
219	40	135
220	49	432
221	3	429
222	17	179
223	59	46
224	8	658
225	6	783
226	30	663
227	96	306
228	14	684
229	14	465
230	1	528
231	63	771
232	10	377
233	34	753
234	60	434
235	46	838
236	80	985
237	61	322
238	45	697
239	95	561
240	91	915
241	91	488
242	22	900
243	40	751
244	2	809
245	76	81
246	18	918
247	75	249
248	33	121
249	73	747
250	49	331
251	18	681
252	7	378
253	64	581
254	4	133
255	87	611
256	42	461
257	86	455
258	77	460
259	58	480
260	65	174
261	32	710
262	92	917
263	14	840
264	69	924
265	78	349
266	78	591
267	7	550
268	48	695
269	37	768
270	24	706
271	46	835
272	39	998
273	4	749
274	32	470
275	58	614
276	22	959
277	27	717
278	16	536
279	10	599
280	48	336
281	50	146
282	74	742
283	64	954
284	41	532
285	9	90
286	28	712
287	28	573
288	20	307
289	33	915
290	86	701
291	28	529
292	5	578
293	28	830
294	50	30
295	56	727
296	72	971
297	36	553
298	79	273
299	64	361
300	48	698
301	91	161
302	98	284
303	43	676
304	98	938
305	20	984
306	1	194
307	77	233
308	89	358
309	98	420
310	24	359
311	37	349
312	57	601
313	21	736
314	40	416
315	32	480
316	99	499
317	89	870
318	64	318
319	48	191
320	95	329
321	33	259
322	89	937
323	95	753
324	60	471
325	32	724
326	27	90
327	41	518
328	57	274
329	82	110
330	33	880
331	25	482
332	78	242
333	37	642
334	88	43
335	33	517
336	98	390
337	65	604
338	100	823
339	80	476
340	17	116
341	31	211
342	17	749
343	92	678
344	38	730
345	60	433
346	51	787
347	65	898
348	57	3
349	91	384
350	69	892
351	82	975
352	18	471
353	72	988
354	75	65
355	36	833
356	76	629
357	75	397
358	22	732
359	97	114
360	50	480
361	4	210
362	83	261
363	64	264
364	14	107
365	31	521
366	33	268
367	85	722
368	21	318
369	95	839
370	5	896
371	61	406
372	82	701
373	51	559
374	23	112
375	39	996
376	24	870
377	49	502
378	51	416
379	65	270
380	93	808
381	90	444
382	46	837
383	3	112
384	38	376
385	16	412
386	4	747
387	5	731
388	4	773
389	73	436
390	47	723
391	64	686
392	95	562
393	68	809
394	35	815
395	63	168
396	78	241
397	52	341
398	93	670
399	91	835
400	99	382
401	22	955
402	71	898
403	46	128
404	26	25
405	17	515
406	96	804
407	27	528
408	53	173
409	20	1
410	54	234
411	47	909
412	43	359
413	92	468
414	3	482
415	23	572
416	26	818
417	72	541
418	40	25
419	20	664
420	70	558
421	61	322
422	55	123
423	86	813
424	89	401
425	27	565
426	63	688
427	71	715
428	27	695
429	64	514
430	26	290
431	53	645
432	63	160
433	68	875
434	63	109
435	9	963
436	1	96
437	70	13
438	55	56
439	17	59
440	27	975
441	54	864
442	39	848
443	72	530
444	49	341
445	43	36
446	73	192
447	11	180
448	44	248
449	40	50
450	52	736
451	74	727
452	28	309
453	30	551
454	14	138
455	28	580
456	98	115
457	58	464
458	8	191
459	84	254
460	74	316
461	22	352
462	42	197
463	96	390
464	69	38
465	78	759
466	100	148
467	89	716
468	74	695
469	35	41
470	94	827
471	40	658
472	30	720
473	94	788
474	93	484
475	66	62
476	33	557
477	89	587
478	75	15
479	95	124
480	30	238
481	39	169
482	54	158
483	90	656
484	47	945
485	36	263
486	30	850
487	19	501
488	7	848
489	20	774
490	94	553
491	75	260
492	27	198
493	71	128
494	77	974
495	29	130
496	59	380
497	31	188
498	3	912
499	63	471
500	91	456
501	42	831
502	56	332
503	47	955
504	92	962
505	34	999
506	78	165
507	68	374
508	50	747
509	3	156
510	45	49
511	39	85
512	30	84
513	67	219
514	13	24
515	64	651
516	25	201
517	54	132
518	64	284
519	42	609
520	31	131
521	91	92
522	1	119
523	35	556
524	70	253
525	69	25
526	82	375
527	58	339
528	49	519
529	29	708
530	21	635
531	36	662
532	17	618
533	76	590
534	97	850
535	73	638
536	97	257
537	27	847
538	61	494
539	91	452
540	87	136
541	40	631
542	51	122
543	42	871
544	22	544
545	13	641
546	78	267
547	17	894
548	2	502
549	58	588
550	68	737
551	97	128
552	1	939
553	54	418
554	80	394
555	30	197
556	3	154
557	41	925
558	98	657
559	33	25
560	84	259
561	30	876
562	84	44
563	18	357
564	43	539
565	43	211
566	50	478
567	76	473
568	55	860
569	60	203
570	97	955
571	18	154
572	46	828
573	55	983
574	40	475
575	89	207
576	46	631
577	9	321
578	90	785
579	14	657
580	63	638
581	56	894
582	99	612
583	91	761
584	90	241
585	52	25
586	19	740
587	79	864
588	42	640
589	55	407
590	96	825
591	29	700
592	89	334
593	51	208
594	50	933
595	67	457
596	46	144
597	52	409
598	11	531
599	45	473
600	44	57
601	57	869
602	5	741
603	21	333
604	90	618
605	72	534
606	11	454
607	87	118
608	21	408
609	51	327
610	67	870
611	69	704
612	65	137
613	45	474
614	8	284
615	21	413
616	52	421
617	98	626
618	2	72
619	49	763
620	63	554
621	23	142
622	43	862
623	15	718
624	42	738
625	64	974
626	54	206
627	54	435
628	86	504
629	97	579
630	56	521
631	3	943
632	13	540
633	100	911
634	54	335
635	79	482
636	73	567
637	54	550
638	76	164
639	34	466
640	49	118
641	19	519
642	39	799
643	60	471
644	53	851
645	56	303
646	8	742
647	8	334
648	57	955
649	40	664
650	89	795
651	61	905
652	32	403
653	3	183
654	99	683
655	56	84
656	97	87
657	31	1000
658	86	696
659	8	198
660	100	74
661	90	292
662	42	809
663	87	844
664	80	182
665	67	743
666	37	684
667	58	688
668	3	954
669	3	444
670	37	426
671	68	214
672	19	68
673	73	891
674	32	425
675	43	312
676	85	507
677	76	20
678	64	83
679	80	970
680	93	713
681	54	770
682	19	954
683	100	919
684	45	37
685	70	191
686	77	353
687	21	128
688	52	882
689	66	428
690	50	873
691	4	988
692	69	820
693	52	785
694	100	14
695	83	682
696	80	361
697	47	332
698	13	67
699	66	131
700	87	411
701	84	741
702	53	367
703	3	794
704	73	139
705	17	308
706	39	360
707	44	126
708	30	9
709	6	752
710	57	751
711	1	800
712	77	281
713	80	834
714	73	180
715	84	126
716	79	945
717	58	711
718	66	462
719	33	596
720	90	73
721	98	301
722	84	609
723	47	651
724	33	402
725	66	284
726	37	553
727	6	289
728	92	234
729	48	87
730	21	263
731	17	699
732	73	60
733	45	140
734	56	315
735	32	286
736	30	264
737	89	153
738	16	353
739	41	577
740	43	76
741	77	718
742	8	988
743	40	954
744	91	611
745	38	864
746	72	301
747	5	308
748	43	60
749	93	753
750	67	913
751	78	229
752	93	32
753	83	109
754	57	750
755	27	522
756	27	434
757	34	712
758	9	328
759	69	506
760	86	937
761	41	468
762	77	128
763	11	129
764	82	673
765	43	709
766	30	167
767	63	781
768	23	405
769	98	395
770	100	185
771	25	228
772	20	586
773	39	229
774	100	88
775	35	951
776	33	857
777	27	424
778	40	59
779	8	972
780	42	626
781	69	403
782	60	58
783	10	606
784	18	495
785	54	677
786	20	676
787	10	178
788	66	532
789	100	435
790	96	105
791	12	636
792	80	2
793	80	189
794	73	146
795	54	435
796	1	371
797	97	759
798	81	178
799	73	453
800	75	685
801	38	740
802	31	750
803	18	37
804	84	546
805	58	602
806	56	491
807	92	747
808	29	135
809	50	584
810	68	287
811	6	923
812	59	456
813	20	706
814	73	504
815	9	166
816	97	617
817	47	9
818	66	757
819	57	439
820	67	922
821	75	637
822	35	869
823	50	139
824	18	916
825	62	125
826	45	868
827	100	329
828	56	468
829	47	71
830	58	949
831	42	542
832	56	712
833	14	547
834	67	932
835	64	117
836	78	243
837	64	608
838	15	97
839	41	536
840	22	653
841	26	595
842	15	83
843	30	877
844	51	321
845	78	102
846	40	481
847	16	332
848	67	662
849	31	230
850	39	34
851	79	599
852	10	363
853	34	951
854	88	122
855	78	684
856	18	123
857	29	568
858	44	183
859	2	4
860	57	809
861	1	666
862	17	773
863	13	698
864	72	638
865	57	62
866	91	315
867	46	662
868	42	312
869	77	236
870	64	274
871	36	257
872	15	779
873	3	441
874	51	366
875	14	247
876	32	177
877	53	184
878	51	472
879	70	626
880	45	51
881	21	749
882	31	941
883	88	225
884	25	995
885	38	381
886	93	495
887	8	46
888	50	200
889	24	604
890	8	625
891	52	491
892	27	312
893	36	479
894	31	949
895	55	171
896	100	60
897	94	46
898	95	771
899	31	569
900	12	28
901	22	770
902	58	898
903	76	929
904	67	869
905	68	92
906	34	177
907	19	863
908	84	723
909	34	509
910	99	974
911	64	721
912	7	244
913	97	496
914	5	818
915	10	436
916	50	447
917	3	711
918	1	50
919	1	945
920	27	89
921	52	859
922	85	342
923	22	61
924	50	103
925	47	874
926	12	737
927	47	377
928	11	608
929	85	472
930	3	225
931	21	788
932	15	569
933	76	610
934	82	904
935	96	434
936	16	361
937	31	374
938	96	904
939	54	784
940	87	155
941	53	285
942	100	659
943	39	551
944	25	964
945	27	510
946	11	259
947	91	769
948	82	455
949	6	94
950	92	423
951	36	652
952	12	508
953	38	654
954	18	663
955	3	824
956	94	597
957	51	818
958	45	401
959	86	240
960	63	196
961	2	478
962	2	77
963	26	424
964	94	303
965	54	39
966	56	54
967	23	455
968	84	988
969	18	370
970	56	170
971	79	267
972	91	536
973	64	183
974	65	270
975	48	276
976	57	364
977	42	182
978	4	444
979	96	818
980	82	499
981	19	643
982	50	893
983	71	473
984	28	746
985	54	994
986	63	729
987	80	96
988	38	509
989	62	726
990	20	583
991	52	155
992	35	537
993	46	201
994	21	422
995	37	912
996	99	190
997	38	731
998	57	280
999	69	728
1000	4	381
\.


                                 restore.sql                                                                                         0000600 0004000 0002000 00000061712 14605045136 0015377 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.18
-- Dumped by pg_dump version 12.18

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

DROP DATABASE control1;
--
-- Name: control1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE control1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Chile.1252' LC_CTYPE = 'Spanish_Chile.1252';


ALTER DATABASE control1 OWNER TO postgres;

\connect control1

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
-- Name: avion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.avion (
    id_avion integer NOT NULL,
    vuelos_avion integer,
    "id_compañia" integer,
    id_modelo integer
);


ALTER TABLE public.avion OWNER TO postgres;

--
-- Name: avion_id_avion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.avion_id_avion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.avion_id_avion_seq OWNER TO postgres;

--
-- Name: avion_id_avion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.avion_id_avion_seq OWNED BY public.avion.id_avion;


--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre_cliente character varying(200),
    nacionalidad_cliente character varying(200)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: cliente_compañia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."cliente_compañia" (
    "id_cliente_compañia" integer NOT NULL,
    id_cliente integer,
    "id_compañia" integer
);


ALTER TABLE public."cliente_compañia" OWNER TO postgres;

--
-- Name: cliente_compañia_id_cliente_compañia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."cliente_compañia_id_cliente_compañia_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."cliente_compañia_id_cliente_compañia_seq" OWNER TO postgres;

--
-- Name: cliente_compañia_id_cliente_compañia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."cliente_compañia_id_cliente_compañia_seq" OWNED BY public."cliente_compañia"."id_cliente_compañia";


--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_id_cliente_seq OWNER TO postgres;

--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;


--
-- Name: cliente_vuelo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente_vuelo (
    id_cliente_vuelo integer NOT NULL,
    id_cliente integer,
    id_vuelo integer
);


ALTER TABLE public.cliente_vuelo OWNER TO postgres;

--
-- Name: cliente_vuelo_id_cliente_vuelo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_vuelo_id_cliente_vuelo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_vuelo_id_cliente_vuelo_seq OWNER TO postgres;

--
-- Name: cliente_vuelo_id_cliente_vuelo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_vuelo_id_cliente_vuelo_seq OWNED BY public.cliente_vuelo.id_cliente_vuelo;


--
-- Name: compañia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."compañia" (
    "id_compañia" integer NOT NULL,
    "nombre_compañia" character varying(200)
);


ALTER TABLE public."compañia" OWNER TO postgres;

--
-- Name: compañia_id_compañia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."compañia_id_compañia_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."compañia_id_compañia_seq" OWNER TO postgres;

--
-- Name: compañia_id_compañia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."compañia_id_compañia_seq" OWNED BY public."compañia"."id_compañia";


--
-- Name: costo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.costo (
    id_costo integer NOT NULL,
    valor_costo integer
);


ALTER TABLE public.costo OWNER TO postgres;

--
-- Name: costo_id_costo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.costo_id_costo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.costo_id_costo_seq OWNER TO postgres;

--
-- Name: costo_id_costo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.costo_id_costo_seq OWNED BY public.costo.id_costo;


--
-- Name: emp_vuelo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.emp_vuelo (
    id_emp_vuelo integer NOT NULL,
    id_vuelo integer,
    id_empleado integer
);


ALTER TABLE public.emp_vuelo OWNER TO postgres;

--
-- Name: emp_vuelo_id_emp_vuelo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.emp_vuelo_id_emp_vuelo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.emp_vuelo_id_emp_vuelo_seq OWNER TO postgres;

--
-- Name: emp_vuelo_id_emp_vuelo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.emp_vuelo_id_emp_vuelo_seq OWNED BY public.emp_vuelo.id_emp_vuelo;


--
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleado (
    id_empleado integer NOT NULL,
    nombre_empleado character varying(200),
    cargo_empleado character varying(200),
    id_sueldo integer,
    "id_compañia" integer
);


ALTER TABLE public.empleado OWNER TO postgres;

--
-- Name: empleado_id_empleado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empleado_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empleado_id_empleado_seq OWNER TO postgres;

--
-- Name: empleado_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empleado_id_empleado_seq OWNED BY public.empleado.id_empleado;


--
-- Name: modelo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.modelo (
    id_modelo integer NOT NULL,
    nombre_modelo character varying(200)
);


ALTER TABLE public.modelo OWNER TO postgres;

--
-- Name: modelo_id_modelo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.modelo_id_modelo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.modelo_id_modelo_seq OWNER TO postgres;

--
-- Name: modelo_id_modelo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.modelo_id_modelo_seq OWNED BY public.modelo.id_modelo;


--
-- Name: pasaje; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pasaje (
    id_pasaje integer NOT NULL,
    fecha_pasaje date,
    origen_pasaje character varying(200),
    destino_pasaje character varying(200),
    id_vuelo integer,
    id_costo integer,
    id_seccion integer
);


ALTER TABLE public.pasaje OWNER TO postgres;

--
-- Name: pasaje_id_pasaje_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pasaje_id_pasaje_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pasaje_id_pasaje_seq OWNER TO postgres;

--
-- Name: pasaje_id_pasaje_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pasaje_id_pasaje_seq OWNED BY public.pasaje.id_pasaje;


--
-- Name: seccion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seccion (
    id_seccion integer NOT NULL,
    nombre_seccion character varying(200)
);


ALTER TABLE public.seccion OWNER TO postgres;

--
-- Name: seccion_id_seccion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seccion_id_seccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seccion_id_seccion_seq OWNER TO postgres;

--
-- Name: seccion_id_seccion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.seccion_id_seccion_seq OWNED BY public.seccion.id_seccion;


--
-- Name: sueldo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sueldo (
    id_sueldo integer NOT NULL,
    monto_sueldo integer,
    fecha_pago_sueldo date
);


ALTER TABLE public.sueldo OWNER TO postgres;

--
-- Name: sueldo_id_sueldo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sueldo_id_sueldo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sueldo_id_sueldo_seq OWNER TO postgres;

--
-- Name: sueldo_id_sueldo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sueldo_id_sueldo_seq OWNED BY public.sueldo.id_sueldo;


--
-- Name: vuelo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vuelo (
    id_vuelo integer NOT NULL,
    "id_compañia" integer,
    id_avion integer
);


ALTER TABLE public.vuelo OWNER TO postgres;

--
-- Name: vuelo_id_vuelo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vuelo_id_vuelo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vuelo_id_vuelo_seq OWNER TO postgres;

--
-- Name: vuelo_id_vuelo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vuelo_id_vuelo_seq OWNED BY public.vuelo.id_vuelo;


--
-- Name: avion id_avion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avion ALTER COLUMN id_avion SET DEFAULT nextval('public.avion_id_avion_seq'::regclass);


--
-- Name: cliente id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);


--
-- Name: cliente_compañia id_cliente_compañia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."cliente_compañia" ALTER COLUMN "id_cliente_compañia" SET DEFAULT nextval('public."cliente_compañia_id_cliente_compañia_seq"'::regclass);


--
-- Name: cliente_vuelo id_cliente_vuelo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente_vuelo ALTER COLUMN id_cliente_vuelo SET DEFAULT nextval('public.cliente_vuelo_id_cliente_vuelo_seq'::regclass);


--
-- Name: compañia id_compañia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."compañia" ALTER COLUMN "id_compañia" SET DEFAULT nextval('public."compañia_id_compañia_seq"'::regclass);


--
-- Name: costo id_costo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.costo ALTER COLUMN id_costo SET DEFAULT nextval('public.costo_id_costo_seq'::regclass);


--
-- Name: emp_vuelo id_emp_vuelo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emp_vuelo ALTER COLUMN id_emp_vuelo SET DEFAULT nextval('public.emp_vuelo_id_emp_vuelo_seq'::regclass);


--
-- Name: empleado id_empleado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleado_id_empleado_seq'::regclass);


--
-- Name: modelo id_modelo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.modelo ALTER COLUMN id_modelo SET DEFAULT nextval('public.modelo_id_modelo_seq'::regclass);


--
-- Name: pasaje id_pasaje; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasaje ALTER COLUMN id_pasaje SET DEFAULT nextval('public.pasaje_id_pasaje_seq'::regclass);


--
-- Name: seccion id_seccion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seccion ALTER COLUMN id_seccion SET DEFAULT nextval('public.seccion_id_seccion_seq'::regclass);


--
-- Name: sueldo id_sueldo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sueldo ALTER COLUMN id_sueldo SET DEFAULT nextval('public.sueldo_id_sueldo_seq'::regclass);


--
-- Name: vuelo id_vuelo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelo ALTER COLUMN id_vuelo SET DEFAULT nextval('public.vuelo_id_vuelo_seq'::regclass);


--
-- Data for Name: avion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.avion (id_avion, vuelos_avion, "id_compañia", id_modelo) FROM stdin;
\.
COPY public.avion (id_avion, vuelos_avion, "id_compañia", id_modelo) FROM '$$PATH$$/2952.dat';

--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (id_cliente, nombre_cliente, nacionalidad_cliente) FROM stdin;
\.
COPY public.cliente (id_cliente, nombre_cliente, nacionalidad_cliente) FROM '$$PATH$$/2940.dat';

--
-- Data for Name: cliente_compañia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."cliente_compañia" ("id_cliente_compañia", id_cliente, "id_compañia") FROM stdin;
\.
COPY public."cliente_compañia" ("id_cliente_compañia", id_cliente, "id_compañia") FROM '$$PATH$$/2948.dat';

--
-- Data for Name: cliente_vuelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente_vuelo (id_cliente_vuelo, id_cliente, id_vuelo) FROM stdin;
\.
COPY public.cliente_vuelo (id_cliente_vuelo, id_cliente, id_vuelo) FROM '$$PATH$$/2956.dat';

--
-- Data for Name: compañia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."compañia" ("id_compañia", "nombre_compañia") FROM stdin;
\.
COPY public."compañia" ("id_compañia", "nombre_compañia") FROM '$$PATH$$/2944.dat';

--
-- Data for Name: costo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.costo (id_costo, valor_costo) FROM stdin;
\.
COPY public.costo (id_costo, valor_costo) FROM '$$PATH$$/2962.dat';

--
-- Data for Name: emp_vuelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.emp_vuelo (id_emp_vuelo, id_vuelo, id_empleado) FROM stdin;
\.
COPY public.emp_vuelo (id_emp_vuelo, id_vuelo, id_empleado) FROM '$$PATH$$/2958.dat';

--
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleado (id_empleado, nombre_empleado, cargo_empleado, id_sueldo, "id_compañia") FROM stdin;
\.
COPY public.empleado (id_empleado, nombre_empleado, cargo_empleado, id_sueldo, "id_compañia") FROM '$$PATH$$/2946.dat';

--
-- Data for Name: modelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.modelo (id_modelo, nombre_modelo) FROM stdin;
\.
COPY public.modelo (id_modelo, nombre_modelo) FROM '$$PATH$$/2950.dat';

--
-- Data for Name: pasaje; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pasaje (id_pasaje, fecha_pasaje, origen_pasaje, destino_pasaje, id_vuelo, id_costo, id_seccion) FROM stdin;
\.
COPY public.pasaje (id_pasaje, fecha_pasaje, origen_pasaje, destino_pasaje, id_vuelo, id_costo, id_seccion) FROM '$$PATH$$/2964.dat';

--
-- Data for Name: seccion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seccion (id_seccion, nombre_seccion) FROM stdin;
\.
COPY public.seccion (id_seccion, nombre_seccion) FROM '$$PATH$$/2960.dat';

--
-- Data for Name: sueldo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sueldo (id_sueldo, monto_sueldo, fecha_pago_sueldo) FROM stdin;
\.
COPY public.sueldo (id_sueldo, monto_sueldo, fecha_pago_sueldo) FROM '$$PATH$$/2942.dat';

--
-- Data for Name: vuelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vuelo (id_vuelo, "id_compañia", id_avion) FROM stdin;
\.
COPY public.vuelo (id_vuelo, "id_compañia", id_avion) FROM '$$PATH$$/2954.dat';

--
-- Name: avion_id_avion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.avion_id_avion_seq', 1000, true);


--
-- Name: cliente_compañia_id_cliente_compañia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."cliente_compañia_id_cliente_compañia_seq"', 1000, true);


--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 1000, true);


--
-- Name: cliente_vuelo_id_cliente_vuelo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_vuelo_id_cliente_vuelo_seq', 1000, true);


--
-- Name: compañia_id_compañia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."compañia_id_compañia_seq"', 100, true);


--
-- Name: costo_id_costo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.costo_id_costo_seq', 1000, true);


--
-- Name: emp_vuelo_id_emp_vuelo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.emp_vuelo_id_emp_vuelo_seq', 1000, true);


--
-- Name: empleado_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empleado_id_empleado_seq', 1000, true);


--
-- Name: modelo_id_modelo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.modelo_id_modelo_seq', 1000, true);


--
-- Name: pasaje_id_pasaje_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pasaje_id_pasaje_seq', 1000, true);


--
-- Name: seccion_id_seccion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seccion_id_seccion_seq', 3, true);


--
-- Name: sueldo_id_sueldo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sueldo_id_sueldo_seq', 100, true);


--
-- Name: vuelo_id_vuelo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vuelo_id_vuelo_seq', 1000, true);


--
-- Name: avion avion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avion
    ADD CONSTRAINT avion_pkey PRIMARY KEY (id_avion);


--
-- Name: cliente_compañia cliente_compañia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."cliente_compañia"
    ADD CONSTRAINT "cliente_compañia_pkey" PRIMARY KEY ("id_cliente_compañia");


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);


--
-- Name: cliente_vuelo cliente_vuelo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente_vuelo
    ADD CONSTRAINT cliente_vuelo_pkey PRIMARY KEY (id_cliente_vuelo);


--
-- Name: compañia compañia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."compañia"
    ADD CONSTRAINT "compañia_pkey" PRIMARY KEY ("id_compañia");


--
-- Name: costo costo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.costo
    ADD CONSTRAINT costo_pkey PRIMARY KEY (id_costo);


--
-- Name: emp_vuelo emp_vuelo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emp_vuelo
    ADD CONSTRAINT emp_vuelo_pkey PRIMARY KEY (id_emp_vuelo);


--
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);


--
-- Name: modelo modelo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.modelo
    ADD CONSTRAINT modelo_pkey PRIMARY KEY (id_modelo);


--
-- Name: pasaje pasaje_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasaje
    ADD CONSTRAINT pasaje_pkey PRIMARY KEY (id_pasaje);


--
-- Name: seccion seccion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seccion
    ADD CONSTRAINT seccion_pkey PRIMARY KEY (id_seccion);


--
-- Name: sueldo sueldo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sueldo
    ADD CONSTRAINT sueldo_pkey PRIMARY KEY (id_sueldo);


--
-- Name: vuelo vuelo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT vuelo_pkey PRIMARY KEY (id_vuelo);


--
-- Name: avion avion_id_compañia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avion
    ADD CONSTRAINT "avion_id_compañia_fkey" FOREIGN KEY ("id_compañia") REFERENCES public."compañia"("id_compañia");


--
-- Name: avion avion_id_modelo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avion
    ADD CONSTRAINT avion_id_modelo_fkey FOREIGN KEY (id_modelo) REFERENCES public.modelo(id_modelo);


--
-- Name: cliente_compañia cliente_compañia_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."cliente_compañia"
    ADD CONSTRAINT "cliente_compañia_id_cliente_fkey" FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- Name: cliente_compañia cliente_compañia_id_compañia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."cliente_compañia"
    ADD CONSTRAINT "cliente_compañia_id_compañia_fkey" FOREIGN KEY ("id_compañia") REFERENCES public."compañia"("id_compañia");


--
-- Name: cliente_vuelo cliente_vuelo_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente_vuelo
    ADD CONSTRAINT cliente_vuelo_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- Name: cliente_vuelo cliente_vuelo_id_vuelo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente_vuelo
    ADD CONSTRAINT cliente_vuelo_id_vuelo_fkey FOREIGN KEY (id_vuelo) REFERENCES public.vuelo(id_vuelo);


--
-- Name: emp_vuelo emp_vuelo_id_empleado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emp_vuelo
    ADD CONSTRAINT emp_vuelo_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado);


--
-- Name: emp_vuelo emp_vuelo_id_vuelo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emp_vuelo
    ADD CONSTRAINT emp_vuelo_id_vuelo_fkey FOREIGN KEY (id_vuelo) REFERENCES public.vuelo(id_vuelo);


--
-- Name: empleado empleado_id_compañia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT "empleado_id_compañia_fkey" FOREIGN KEY ("id_compañia") REFERENCES public."compañia"("id_compañia");


--
-- Name: empleado empleado_id_sueldo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_id_sueldo_fkey FOREIGN KEY (id_sueldo) REFERENCES public.sueldo(id_sueldo);


--
-- Name: pasaje pasaje_id_costo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasaje
    ADD CONSTRAINT pasaje_id_costo_fkey FOREIGN KEY (id_costo) REFERENCES public.costo(id_costo);


--
-- Name: pasaje pasaje_id_seccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasaje
    ADD CONSTRAINT pasaje_id_seccion_fkey FOREIGN KEY (id_seccion) REFERENCES public.seccion(id_seccion);


--
-- Name: pasaje pasaje_id_vuelo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasaje
    ADD CONSTRAINT pasaje_id_vuelo_fkey FOREIGN KEY (id_vuelo) REFERENCES public.vuelo(id_vuelo);


--
-- Name: vuelo vuelo_id_avion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT vuelo_id_avion_fkey FOREIGN KEY (id_avion) REFERENCES public.avion(id_avion);


--
-- Name: vuelo vuelo_id_compañia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT "vuelo_id_compañia_fkey" FOREIGN KEY ("id_compañia") REFERENCES public."compañia"("id_compañia");


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      