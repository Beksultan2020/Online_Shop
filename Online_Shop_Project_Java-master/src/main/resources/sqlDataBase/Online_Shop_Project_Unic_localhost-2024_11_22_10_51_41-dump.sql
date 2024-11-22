--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id bigint NOT NULL,
    description character varying(255),
    image character varying(255),
    mark double precision NOT NULL,
    name character varying(255),
    price double precision NOT NULL,
    quantity integer NOT NULL,
    purchase_id bigint
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_id_seq OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- Name: product_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_types (
    product_id bigint NOT NULL,
    types_id bigint NOT NULL
);


ALTER TABLE public.product_types OWNER TO postgres;

--
-- Name: purchase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchase (
    id bigint NOT NULL,
    purchase_time timestamp(6) without time zone,
    total_price double precision NOT NULL,
    user_id bigint
);


ALTER TABLE public.purchase OWNER TO postgres;

--
-- Name: purchase_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.purchase_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.purchase_id_seq OWNER TO postgres;

--
-- Name: purchase_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.purchase_id_seq OWNED BY public.purchase.id;


--
-- Name: purchase_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchase_products (
    purchase_id bigint NOT NULL,
    products_id bigint NOT NULL
);


ALTER TABLE public.purchase_products OWNER TO postgres;

--
-- Name: shopping_cart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shopping_cart (
    id bigint NOT NULL,
    total_price double precision NOT NULL,
    user_is_cart_id bigint
);


ALTER TABLE public.shopping_cart OWNER TO postgres;

--
-- Name: shopping_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shopping_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.shopping_cart_id_seq OWNER TO postgres;

--
-- Name: shopping_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shopping_cart_id_seq OWNED BY public.shopping_cart.id;


--
-- Name: shopping_cart_product_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shopping_cart_product_list (
    shopping_cart_id bigint NOT NULL,
    product_list_id bigint NOT NULL
);


ALTER TABLE public.shopping_cart_product_list OWNER TO postgres;

--
-- Name: type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.type (
    id bigint NOT NULL,
    type_name character varying(255)
);


ALTER TABLE public.type OWNER TO postgres;

--
-- Name: type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.type_id_seq OWNER TO postgres;

--
-- Name: type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.type_id_seq OWNED BY public.type.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    age integer NOT NULL,
    balance double precision NOT NULL,
    email character varying(255),
    full_name character varying(255),
    password character varying(255)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- Name: purchase id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase ALTER COLUMN id SET DEFAULT nextval('public.purchase_id_seq'::regclass);


--
-- Name: shopping_cart id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping_cart ALTER COLUMN id SET DEFAULT nextval('public.shopping_cart_id_seq'::regclass);


--
-- Name: type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type ALTER COLUMN id SET DEFAULT nextval('public.type_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product VALUES (3, 'Живите ярче каждый день – с ноутбуком Asus Vivobook 15, который будет полезен в любой ситуации. Раскрывающийся на 180 градусов дисплей', 'https://object.pscloud.io/cms/cms/Photo/img_0_62_3098_0_1_zqpEhw.jpg', 5, 'Ноутбук Asus VivoBook 15 i3 1215U', 209990, 1, 3);
INSERT INTO public.product VALUES (4, 'Живите ярче каждый день – с ноутбуком Asus Vivobook 15, который будет полезен в любой ситуации. Раскрывающийся на 180 градусов дисплей', 'https://object.pscloud.io/cms/cms/Photo/img_0_62_3098_0_1_zqpEhw.jpg', 5, 'Ноутбук Asus VivoBook 15 i3 1215U', 209990, 0, NULL);
INSERT INTO public.product VALUES (1, 'Бережная стирка, Быстрая стирка, Детские вещи, Хлопок, Полоскание + отжим, Шерсть, Спортивная одежда, Стирка смешанных тканей, Ежедневная стирка', 'https://www.technodom.kz/_next/image?url=https%3A%2F%2Fapi.technodom.kz%2Ff3%2Fapi%2Fv1%2Fimages%2F800%2F800%2F261231_1.jpg&w=1920&q=85', 5, 'Стиральная машина LG F2J3NS0W', 179990, 3, 4);
INSERT INTO public.product VALUES (2, 'Сильный мира всего. Самая совершенная система двух камер на iPhone.', 'https://object.pscloud.io/cms/cms/Photo/img_0_77_3123_9_1.webp', 4.9, 'Смартфон Apple iPhone 13 128GB Midnight', 334990, 1, 4);


--
-- Data for Name: product_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_types VALUES (1, 1);
INSERT INTO public.product_types VALUES (2, 4);
INSERT INTO public.product_types VALUES (3, 2);
INSERT INTO public.product_types VALUES (4, 2);


--
-- Data for Name: purchase; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.purchase VALUES (2, '2024-04-26 01:47:03.115845', 539970, 2);
INSERT INTO public.purchase VALUES (3, '2024-04-26 02:03:54.582049', 544980, 2);
INSERT INTO public.purchase VALUES (4, '2024-04-26 10:30:29.196079', 874960, 2);


--
-- Data for Name: purchase_products; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: shopping_cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.shopping_cart VALUES (1, 0, 1);
INSERT INTO public.shopping_cart VALUES (2, 0, 2);
INSERT INTO public.shopping_cart VALUES (3, 0, 3);
INSERT INTO public.shopping_cart VALUES (4, 0, 4);


--
-- Data for Name: shopping_cart_product_list; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.type VALUES (1, 'Бытовая техника');
INSERT INTO public.type VALUES (2, 'Ноутбуки и компьютеры');
INSERT INTO public.type VALUES (3, 'ТВ, аудио, фото, видео');
INSERT INTO public.type VALUES (4, 'Смартфоны и гаджеты');
INSERT INTO public.type VALUES (5, 'Техника для кухни');
INSERT INTO public.type VALUES (6, 'Красота');
INSERT INTO public.type VALUES (7, 'Строительство и ремонт');
INSERT INTO public.type VALUES (8, 'Товары для дома');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (3, 20, 2000, 'abylay@gmail.com', 'Abylay', 'AbylayBest');
INSERT INTO public.users VALUES (1, 20, 1001000, 'beka@gmail.com', 'Beksultan', 'bekaBest');
INSERT INTO public.users VALUES (2, 20, 144090, 'dimash@gmail.com', 'Dinmukhammet', 'DinmukhammetBest');
INSERT INTO public.users VALUES (4, 18, 10000, 'alisher@gmail.com', 'Alisher', 'AlisherBest');


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 4, true);


--
-- Name: purchase_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.purchase_id_seq', 4, true);


--
-- Name: shopping_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shopping_cart_id_seq', 4, true);


--
-- Name: type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.type_id_seq', 8, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: purchase purchase_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase
    ADD CONSTRAINT purchase_pkey PRIMARY KEY (id);


--
-- Name: shopping_cart shopping_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping_cart
    ADD CONSTRAINT shopping_cart_pkey PRIMARY KEY (id);


--
-- Name: type type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type
    ADD CONSTRAINT type_pkey PRIMARY KEY (id);


--
-- Name: shopping_cart_product_list uk_9ouvxkw6nno3nbqeegxwnlp24; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping_cart_product_list
    ADD CONSTRAINT uk_9ouvxkw6nno3nbqeegxwnlp24 UNIQUE (product_list_id);


--
-- Name: purchase_products uk_e0eiq990wd75h7g3l8wqitlax; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_products
    ADD CONSTRAINT uk_e0eiq990wd75h7g3l8wqitlax UNIQUE (products_id);


--
-- Name: shopping_cart uk_oee9js19x9pyowwsps4y79ipa; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping_cart
    ADD CONSTRAINT uk_oee9js19x9pyowwsps4y79ipa UNIQUE (user_is_cart_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: product_types fk12hcgr9jq6p0xl1thwlmraxgm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_types
    ADD CONSTRAINT fk12hcgr9jq6p0xl1thwlmraxgm FOREIGN KEY (types_id) REFERENCES public.type(id);


--
-- Name: shopping_cart fk4vcyg444y35nthdl9ssfeyl7k; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping_cart
    ADD CONSTRAINT fk4vcyg444y35nthdl9ssfeyl7k FOREIGN KEY (user_is_cart_id) REFERENCES public.users(id);


--
-- Name: purchase_products fk99e2jiaedwxh6oeuxp0l2f95c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_products
    ADD CONSTRAINT fk99e2jiaedwxh6oeuxp0l2f95c FOREIGN KEY (products_id) REFERENCES public.product(id);


--
-- Name: product_types fkidxuyd5ohcg770n939lcr6to9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_types
    ADD CONSTRAINT fkidxuyd5ohcg770n939lcr6to9 FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- Name: shopping_cart_product_list fkmmu0vop8hw74d2tvjet7jr8qk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping_cart_product_list
    ADD CONSTRAINT fkmmu0vop8hw74d2tvjet7jr8qk FOREIGN KEY (shopping_cart_id) REFERENCES public.shopping_cart(id);


--
-- Name: product fkmufb7e3fv0laaooxy88vvwkcg; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT fkmufb7e3fv0laaooxy88vvwkcg FOREIGN KEY (purchase_id) REFERENCES public.purchase(id);


--
-- Name: purchase fkoj7ky1v8cf4ibkk0s7alikp52; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase
    ADD CONSTRAINT fkoj7ky1v8cf4ibkk0s7alikp52 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: purchase_products fkquuf4xmoqfcnww0m8dl69wef0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_products
    ADD CONSTRAINT fkquuf4xmoqfcnww0m8dl69wef0 FOREIGN KEY (purchase_id) REFERENCES public.purchase(id);


--
-- Name: shopping_cart_product_list fktpkhfun7trysqee8ykmtx2joh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping_cart_product_list
    ADD CONSTRAINT fktpkhfun7trysqee8ykmtx2joh FOREIGN KEY (product_list_id) REFERENCES public.product(id);


--
-- PostgreSQL database dump complete
--

