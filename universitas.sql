PGDMP  $    '                }            universitas    16.6    16.6     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17771    universitas    DATABASE     �   CREATE DATABASE universitas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE universitas;
                postgres    false            �            1259    17773 	   mahasiswa    TABLE     L  CREATE TABLE public.mahasiswa (
    id integer NOT NULL,
    nama character varying(255) NOT NULL,
    nim character varying(255) NOT NULL,
    jenis_kelamin character varying(20) NOT NULL,
    kelas character varying(255) NOT NULL,
    program_studi character varying(255) NOT NULL,
    angkatan character varying(255) NOT NULL
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            �            1259    17772    mahasiswa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mahasiswa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.mahasiswa_id_seq;
       public          postgres    false    216            �           0    0    mahasiswa_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.mahasiswa_id_seq OWNED BY public.mahasiswa.id;
          public          postgres    false    215            P           2604    17776    mahasiswa id    DEFAULT     l   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN id SET DEFAULT nextval('public.mahasiswa_id_seq'::regclass);
 ;   ALTER TABLE public.mahasiswa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �          0    17773 	   mahasiswa 
   TABLE DATA           a   COPY public.mahasiswa (id, nama, nim, jenis_kelamin, kelas, program_studi, angkatan) FROM stdin;
    public          postgres    false    216   �       �           0    0    mahasiswa_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.mahasiswa_id_seq', 10, true);
          public          postgres    false    215            R           2606    17780    mahasiswa mahasiswa_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    216            �   �   x����j�0E�㯘H�e�t!!��f
�XI&��0���WmI�M�F�;:��*��֌��@�Y�*ׅR9������ac��t�!�J��W���$m�#��j�tWO�?����1V��X��JXхwB��e��v��θ'����	,��?�ş�?�����Sx�qK���Ӵv��l\s>�Ev���a睄~;��v���
*�#�c���8����,˾ ����     