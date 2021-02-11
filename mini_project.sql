PGDMP     4    "    	    
        y            mini_project    13.1    13.1 P    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            C           1262    16485    mini_project    DATABASE     �   CREATE DATABASE mini_project WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252' TABLESPACE = bootcampspace;
    DROP DATABASE mini_project;
                postgres    false                        3079    16945    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false            D           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    2            �            1259    16696    address    TABLE     �  CREATE TABLE public.address (
    addr_id integer NOT NULL,
    addr_email character varying(55),
    addr_fullname character varying(55),
    addr_phone_number character varying(18),
    addr_is_default boolean,
    addr_zipcode character varying(15),
    addr_street1 character varying(255),
    addr_street2 character varying(255),
    add_city_id integer NOT NULL,
    add_user_id integer NOT NULL
);
    DROP TABLE public.address;
       public         heap    postgres    false            �            1259    16694    address_addr_id_seq    SEQUENCE     �   CREATE SEQUENCE public.address_addr_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.address_addr_id_seq;
       public          postgres    false    208            E           0    0    address_addr_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.address_addr_id_seq OWNED BY public.address.addr_id;
          public          postgres    false    207            �            1259    16984    cart    TABLE     �   CREATE TABLE public.cart (
    cart_id integer NOT NULL,
    cart_created_on timestamp without time zone,
    cart_is_closed boolean,
    cart_total integer,
    cart_user_id integer NOT NULL
);
    DROP TABLE public.cart;
       public         heap    postgres    false            �            1259    16982    cart_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cart_cart_id_seq;
       public          postgres    false    218            F           0    0    cart_cart_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cart_cart_id_seq OWNED BY public.cart.cart_id;
          public          postgres    false    217            �            1259    16785    category    TABLE     d   CREATE TABLE public.category (
    cate_id integer NOT NULL,
    cate_name character varying(25)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16783    category_cate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_cate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.category_cate_id_seq;
       public          postgres    false    211            G           0    0    category_cate_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.category_cate_id_seq OWNED BY public.category.cate_id;
          public          postgres    false    210            �            1259    16683    city    TABLE     �   CREATE TABLE public.city (
    city_id integer NOT NULL,
    city_name character varying(100),
    city_prov_id integer NOT NULL
);
    DROP TABLE public.city;
       public         heap    postgres    false            �            1259    16681    city_city_id_seq    SEQUENCE     �   CREATE SEQUENCE public.city_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.city_city_id_seq;
       public          postgres    false    206            H           0    0    city_city_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.city_city_id_seq OWNED BY public.city.city_id;
          public          postgres    false    205            �            1259    16867    order_detail    TABLE     �   CREATE TABLE public.order_detail (
    ordi_quantity integer,
    ordi_price integer,
    ordi_cart_id integer NOT NULL,
    ordi_prod_id integer NOT NULL,
    ordi_order_name character varying NOT NULL
);
     DROP TABLE public.order_detail;
       public         heap    postgres    false            �            1259    16717    orders    TABLE     �   CREATE TABLE public.orders (
    order_name character varying(55) NOT NULL,
    order_create_on timestamp without time zone,
    order_is_closed boolean,
    order_total integer,
    order_user_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16934    product    TABLE     7  CREATE TABLE public.product (
    prod_id integer NOT NULL,
    prod_title character varying(25),
    prod_description character varying(255),
    prod_stock integer,
    prod_price integer,
    prod_manufacture character varying(15),
    prod_image character varying(100),
    prod_cate_id integer NOT NULL
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16822    product_images    TABLE     �   CREATE TABLE public.product_images (
    prim_id uuid NOT NULL,
    prim_file_name character varying(255),
    prim_path character varying(255),
    prim_prod_id integer NOT NULL
);
 "   DROP TABLE public.product_images;
       public         heap    postgres    false            �            1259    16932    product_prod_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_prod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_prod_id_seq;
       public          postgres    false    216            I           0    0    product_prod_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_prod_id_seq OWNED BY public.product.prod_id;
          public          postgres    false    215            �            1259    16611    province    TABLE     e   CREATE TABLE public.province (
    prov_id integer NOT NULL,
    prov_name character varying(100)
);
    DROP TABLE public.province;
       public         heap    postgres    false            �            1259    16609    province_prov_id_seq    SEQUENCE     �   CREATE SEQUENCE public.province_prov_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.province_prov_id_seq;
       public          postgres    false    202            J           0    0    province_prov_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.province_prov_id_seq OWNED BY public.province.prov_id;
          public          postgres    false    201            �            1259    17000    roles    TABLE     a   CREATE TABLE public.roles (
    role_id integer NOT NULL,
    role_name character varying(25)
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16998    roles_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.roles_role_id_seq;
       public          postgres    false    220            K           0    0    roles_role_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.roles_role_id_seq OWNED BY public.roles.role_id;
          public          postgres    false    219            �            1259    16917 
   user_roles    TABLE     _   CREATE TABLE public.user_roles (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    16619    users    TABLE     �   CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(55),
    user_email character varying(55),
    user_password character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16617    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    204            L           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    203            �           2604    16699    address addr_id    DEFAULT     r   ALTER TABLE ONLY public.address ALTER COLUMN addr_id SET DEFAULT nextval('public.address_addr_id_seq'::regclass);
 >   ALTER TABLE public.address ALTER COLUMN addr_id DROP DEFAULT;
       public          postgres    false    207    208    208            �           2604    16987    cart cart_id    DEFAULT     l   ALTER TABLE ONLY public.cart ALTER COLUMN cart_id SET DEFAULT nextval('public.cart_cart_id_seq'::regclass);
 ;   ALTER TABLE public.cart ALTER COLUMN cart_id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    16788    category cate_id    DEFAULT     t   ALTER TABLE ONLY public.category ALTER COLUMN cate_id SET DEFAULT nextval('public.category_cate_id_seq'::regclass);
 ?   ALTER TABLE public.category ALTER COLUMN cate_id DROP DEFAULT;
       public          postgres    false    211    210    211            �           2604    16686    city city_id    DEFAULT     l   ALTER TABLE ONLY public.city ALTER COLUMN city_id SET DEFAULT nextval('public.city_city_id_seq'::regclass);
 ;   ALTER TABLE public.city ALTER COLUMN city_id DROP DEFAULT;
       public          postgres    false    206    205    206            �           2604    16937    product prod_id    DEFAULT     r   ALTER TABLE ONLY public.product ALTER COLUMN prod_id SET DEFAULT nextval('public.product_prod_id_seq'::regclass);
 >   ALTER TABLE public.product ALTER COLUMN prod_id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    16614    province prov_id    DEFAULT     t   ALTER TABLE ONLY public.province ALTER COLUMN prov_id SET DEFAULT nextval('public.province_prov_id_seq'::regclass);
 ?   ALTER TABLE public.province ALTER COLUMN prov_id DROP DEFAULT;
       public          postgres    false    201    202    202            �           2604    17003    roles role_id    DEFAULT     n   ALTER TABLE ONLY public.roles ALTER COLUMN role_id SET DEFAULT nextval('public.roles_role_id_seq'::regclass);
 <   ALTER TABLE public.roles ALTER COLUMN role_id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16622    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    204    203    204            1          0    16696    address 
   TABLE DATA           �   COPY public.address (addr_id, addr_email, addr_fullname, addr_phone_number, addr_is_default, addr_zipcode, addr_street1, addr_street2, add_city_id, add_user_id) FROM stdin;
    public          postgres    false    208   �[       ;          0    16984    cart 
   TABLE DATA           b   COPY public.cart (cart_id, cart_created_on, cart_is_closed, cart_total, cart_user_id) FROM stdin;
    public          postgres    false    218   w\       4          0    16785    category 
   TABLE DATA           6   COPY public.category (cate_id, cate_name) FROM stdin;
    public          postgres    false    211   �\       /          0    16683    city 
   TABLE DATA           @   COPY public.city (city_id, city_name, city_prov_id) FROM stdin;
    public          postgres    false    206   �\       6          0    16867    order_detail 
   TABLE DATA           n   COPY public.order_detail (ordi_quantity, ordi_price, ordi_cart_id, ordi_prod_id, ordi_order_name) FROM stdin;
    public          postgres    false    213   
]       2          0    16717    orders 
   TABLE DATA           j   COPY public.orders (order_name, order_create_on, order_is_closed, order_total, order_user_id) FROM stdin;
    public          postgres    false    209   k]       9          0    16934    product 
   TABLE DATA           �   COPY public.product (prod_id, prod_title, prod_description, prod_stock, prod_price, prod_manufacture, prod_image, prod_cate_id) FROM stdin;
    public          postgres    false    216   �]       5          0    16822    product_images 
   TABLE DATA           Z   COPY public.product_images (prim_id, prim_file_name, prim_path, prim_prod_id) FROM stdin;
    public          postgres    false    212   ^^       +          0    16611    province 
   TABLE DATA           6   COPY public.province (prov_id, prov_name) FROM stdin;
    public          postgres    false    202   _       =          0    17000    roles 
   TABLE DATA           3   COPY public.roles (role_id, role_name) FROM stdin;
    public          postgres    false    220   X_       7          0    16917 
   user_roles 
   TABLE DATA           6   COPY public.user_roles (user_id, role_id) FROM stdin;
    public          postgres    false    214   �_       -          0    16619    users 
   TABLE DATA           N   COPY public.users (user_id, user_name, user_email, user_password) FROM stdin;
    public          postgres    false    204   �_       M           0    0    address_addr_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.address_addr_id_seq', 8, true);
          public          postgres    false    207            N           0    0    cart_cart_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.cart_cart_id_seq', 1, true);
          public          postgres    false    217            O           0    0    category_cate_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.category_cate_id_seq', 4, true);
          public          postgres    false    210            P           0    0    city_city_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.city_city_id_seq', 4, true);
          public          postgres    false    205            Q           0    0    product_prod_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_prod_id_seq', 5, true);
          public          postgres    false    215            R           0    0    province_prov_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.province_prov_id_seq', 4, true);
          public          postgres    false    201            S           0    0    roles_role_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.roles_role_id_seq', 4, true);
          public          postgres    false    219            T           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 5, true);
          public          postgres    false    203            �           2606    16704    address address_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (addr_id);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    208            �           2606    16989    cart cart_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (cart_id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public            postgres    false    218            �           2606    16790    category category_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (cate_id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    211            �           2606    16688    city city_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    206            �           2606    16721    orders orders_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_name);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    209            �           2606    16829 "   product_images product_images_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_pkey PRIMARY KEY (prim_id);
 L   ALTER TABLE ONLY public.product_images DROP CONSTRAINT product_images_pkey;
       public            postgres    false    212            �           2606    16939    product product_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (prod_id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    216            �           2606    16616    province province_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.province
    ADD CONSTRAINT province_pkey PRIMARY KEY (prov_id);
 @   ALTER TABLE ONLY public.province DROP CONSTRAINT province_pkey;
       public            postgres    false    202            �           2606    17005    roles roles_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    220            �           2606    16624    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    204            �           2606    16710     address address_add_city_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_add_city_id_fkey FOREIGN KEY (add_city_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.address DROP CONSTRAINT address_add_city_id_fkey;
       public          postgres    false    208    2959    204            �           2606    16705     address address_add_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_add_user_id_fkey FOREIGN KEY (add_user_id) REFERENCES public.city(city_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.address DROP CONSTRAINT address_add_user_id_fkey;
       public          postgres    false    2961    208    206            �           2606    16990    cart cart_cart_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_cart_user_id_fkey FOREIGN KEY (cart_user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_cart_user_id_fkey;
       public          postgres    false    2959    218    204            �           2606    16689    city city_city_prov_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_city_prov_id_fkey FOREIGN KEY (city_prov_id) REFERENCES public.province(prov_id) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.city DROP CONSTRAINT city_city_prov_id_fkey;
       public          postgres    false    206    202    2957            �           2606    16883 .   order_detail order_detail_ordi_order_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_ordi_order_name_fkey FOREIGN KEY (ordi_order_name) REFERENCES public.orders(order_name) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT order_detail_ordi_order_name_fkey;
       public          postgres    false    209    213    2965            �           2606    16722     orders orders_order_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_order_user_id_fkey FOREIGN KEY (order_user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_order_user_id_fkey;
       public          postgres    false    2959    204    209            �           2606    16940 !   product product_prod_cate_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_prod_cate_id_fkey FOREIGN KEY (prod_cate_id) REFERENCES public.category(cate_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.product DROP CONSTRAINT product_prod_cate_id_fkey;
       public          postgres    false    216    2967    211            �           2606    16920 "   user_roles user_roles_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_user_id_fkey;
       public          postgres    false    214    2959    204            1   �   x�M�1�0 ����=
X6Y��.O#��-I)oo�����F>���|4�����69�RW�B�j�n�r��!q��~T�DzFÐ��!Wy��̨��ׇne�Y����d�@�Zt��c�3��e���u��<մ����Mf����B��h>�      ;      x������ � �      4   (   x�3�tOLIO-�2�t��/�H-�2�.�/*����� ���      /   .   x�3��M-)��4�2�tN�K�N,��F\ƜN���E��\1z\\\ ߌ
      6   Q   x�m�1�0C�9�KQ�v�J�=���N��IV2��z�
 ��(�j�e{X	i�5s�S��ˎ�66:S۟΍�_ԕ      2   `   x��r�52203204�5�Sf@!CK+CC+#S�NCNC.�Bs�
#�Bs�B�B�8�Bc�Bc
-�*L�
-0L4FUh����� Ei� �(/      9   s   x�-�I� �=��"�7�La#@$��q��XU�K���mK�]H�`�58#��v>|�Y�&=��7���r�!1��,�/��_ٳ�/���`W��,�D�t�*�      5   �   x�]�Kn�0 е}
.0����n�cd33WI	 A$����U{��WS�
�.��3$�c��i��):����m����:m�~���|o1b��$���ExȚb��d��[#��'�K�q�P��U{��pa@�����;�%9��B۫�r/��[��/����Z��D&      +   ,   x�3��I�-(�K�2��J�N,*I�2����K�b���� ��
�      =   $   x�3�LL����2�,-N-�2�L/M-.����� s?h      7      x�3�4�2bc ����� I      -   U   x�3�LK��̈́����鹉�9z���������E)\F����E`"=1�$5/�*c�Ĝ�40Q��[���M�)g�q��qqq ]�+     