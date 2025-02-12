PGDMP         2        	        y            postgres    13.1    13.1     I           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            J           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            K           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            L           1262    13709    postgres    DATABASE     S   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE postgres;
                postgres    false            M           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3404                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            N           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2                        3079    24599    citext 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;
    DROP EXTENSION citext;
                   false            O           0    0    EXTENSION citext    COMMENT     S   COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';
                        false    3                        3079    24707    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false            P           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    4                        3079    24750 	   uuid-ossp 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;
    DROP EXTENSION "uuid-ossp";
                   false            Q           0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                        false    5            �            1259    40986    patient_detail    TABLE       CREATE TABLE public.patient_detail (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    first_name public.citext,
    last_name public.citext,
    email public.citext,
    address public.citext,
    contact_no public.citext,
    city public.citext,
    state public.citext
);
 "   DROP TABLE public.patient_detail;
       public         heap    postgres    false    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3            �            1259    40995    user_detail    TABLE     �   CREATE TABLE public.user_detail (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    first_name public.citext,
    last_name public.citext,
    email public.citext,
    password public.citext
);
    DROP TABLE public.user_detail;
       public         heap    postgres    false    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3    3            E          0    40986    patient_detail 
   TABLE DATA           l   COPY public.patient_detail (id, first_name, last_name, email, address, contact_no, city, state) FROM stdin;
    public          postgres    false    204   J       F          0    40995    user_detail 
   TABLE DATA           Q   COPY public.user_detail (id, first_name, last_name, email, password) FROM stdin;
    public          postgres    false    205   �       �           2606    40994 "   patient_detail patient_detail_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.patient_detail
    ADD CONSTRAINT patient_detail_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.patient_detail DROP CONSTRAINT patient_detail_pkey;
       public            postgres    false    204            �           2606    41003    user_detail user_detail_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.user_detail
    ADD CONSTRAINT user_detail_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.user_detail DROP CONSTRAINT user_detail_pkey;
       public            postgres    false    205            E   �   x�M��� E��/��v�n���D���k�6��9�scI�,GȌ	���"��+f��"7^{ٚx�^�/S�y�G��K��Yhc�Q	>�t�y�]�Br�3؈��R6���-�l��m^Dz��?��g;��b������m�R� �>�      F   U   x�-�9�  ���%L�`�Cl�1�XX�{-lw3ٰdg��t���C���o|"��v2U�^d�G~X�!��|e"�da� ��	�     