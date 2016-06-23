--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.5.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: addresses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE addresses (
    id integer NOT NULL,
    company character varying NOT NULL,
    line_1 character varying NOT NULL,
    line_2 character varying,
    city character varying NOT NULL,
    state_province character varying NOT NULL,
    postal_code character varying NOT NULL,
    country character varying NOT NULL,
    addressable_id integer,
    addressable_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE addresses_id_seq OWNED BY addresses.id;


--
-- Name: agents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE agents (
    id integer NOT NULL,
    name character varying NOT NULL,
    operates24x7 boolean DEFAULT false NOT NULL,
    support_function_id integer NOT NULL,
    support_center_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: agents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE agents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: agents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE agents_id_seq OWNED BY agents.id;


--
-- Name: cases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE cases (
    id integer NOT NULL,
    queue character varying NOT NULL,
    description character varying,
    caseable_id integer,
    caseable_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: cases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cases_id_seq OWNED BY cases.id;


--
-- Name: days; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE days (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: days_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE days_id_seq OWNED BY days.id;


--
-- Name: emails; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE emails (
    id integer NOT NULL,
    address character varying NOT NULL,
    description character varying,
    emailable_id integer,
    emailable_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: emails_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE emails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE emails_id_seq OWNED BY emails.id;


--
-- Name: links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE links (
    id integer NOT NULL,
    url character varying NOT NULL,
    title character varying NOT NULL,
    description character varying,
    linkable_id integer,
    linkable_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE links_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE links_id_seq OWNED BY links.id;


--
-- Name: manufacturers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE manufacturers (
    id integer NOT NULL,
    name character varying NOT NULL,
    website_url character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: manufacturers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE manufacturers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: manufacturers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE manufacturers_id_seq OWNED BY manufacturers.id;


--
-- Name: model_numbers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE model_numbers (
    id integer NOT NULL,
    model character varying,
    description character varying,
    product_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: model_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE model_numbers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: model_numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE model_numbers_id_seq OWNED BY model_numbers.id;


--
-- Name: notes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE notes (
    id integer NOT NULL,
    info character varying NOT NULL,
    annotatable_id integer,
    annotatable_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: notes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE notes_id_seq OWNED BY notes.id;


--
-- Name: operation_times; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE operation_times (
    id integer NOT NULL,
    open time without time zone NOT NULL,
    close time without time zone NOT NULL,
    agent_id integer NOT NULL,
    day_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: operation_times_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE operation_times_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: operation_times_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE operation_times_id_seq OWNED BY operation_times.id;


--
-- Name: phones; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE phones (
    id integer NOT NULL,
    number character varying NOT NULL,
    option character varying,
    description character varying,
    phonable_id integer,
    phonable_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: phones_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE phones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: phones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE phones_id_seq OWNED BY phones.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE products (
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    image_url character varying,
    manufacturer_id integer NOT NULL,
    source_type_id integer NOT NULL,
    source_location_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE products_id_seq OWNED BY products.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: service_jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE service_jobs (
    id integer NOT NULL,
    condition character varying DEFAULT 'All'::character varying NOT NULL,
    product_id integer NOT NULL,
    servicer_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: service_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE service_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: service_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE service_jobs_id_seq OWNED BY service_jobs.id;


--
-- Name: servicers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE servicers (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: servicers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE servicers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: servicers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE servicers_id_seq OWNED BY servicers.id;


--
-- Name: source_locations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE source_locations (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: source_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE source_locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: source_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE source_locations_id_seq OWNED BY source_locations.id;


--
-- Name: source_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE source_types (
    id integer NOT NULL,
    type character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: source_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE source_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: source_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE source_types_id_seq OWNED BY source_types.id;


--
-- Name: splits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE splits (
    id integer NOT NULL,
    queue character varying NOT NULL,
    description character varying,
    agent_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: splits_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE splits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: splits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE splits_id_seq OWNED BY splits.id;


--
-- Name: support_centers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE support_centers (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: support_centers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE support_centers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: support_centers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE support_centers_id_seq OWNED BY support_centers.id;


--
-- Name: support_functions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE support_functions (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: support_functions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE support_functions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: support_functions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE support_functions_id_seq OWNED BY support_functions.id;


--
-- Name: support_jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE support_jobs (
    id integer NOT NULL,
    condition character varying NOT NULL,
    product_id integer NOT NULL,
    support_type_id integer NOT NULL,
    agent_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: support_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE support_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: support_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE support_jobs_id_seq OWNED BY support_jobs.id;


--
-- Name: support_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE support_types (
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: support_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE support_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: support_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE support_types_id_seq OWNED BY support_types.id;


--
-- Name: taggings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE taggings (
    id integer NOT NULL,
    tag_id integer,
    taggable_id integer,
    taggable_type character varying,
    tagger_id integer,
    tagger_type character varying,
    context character varying(128),
    created_at timestamp without time zone
);


--
-- Name: taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE taggings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE taggings_id_seq OWNED BY taggings.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tags (
    id integer NOT NULL,
    name character varying,
    taggings_count integer DEFAULT 0
);


--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE tags_id_seq OWNED BY tags.id;


--
-- Name: user_roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE user_roles (
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: user_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE user_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE user_roles_id_seq OWNED BY user_roles.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE users (
    id integer NOT NULL,
    core_id character varying NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    email character varying NOT NULL,
    password_digest character varying,
    user_role_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY addresses ALTER COLUMN id SET DEFAULT nextval('addresses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY agents ALTER COLUMN id SET DEFAULT nextval('agents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY cases ALTER COLUMN id SET DEFAULT nextval('cases_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY days ALTER COLUMN id SET DEFAULT nextval('days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY emails ALTER COLUMN id SET DEFAULT nextval('emails_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY links ALTER COLUMN id SET DEFAULT nextval('links_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY manufacturers ALTER COLUMN id SET DEFAULT nextval('manufacturers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY model_numbers ALTER COLUMN id SET DEFAULT nextval('model_numbers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY notes ALTER COLUMN id SET DEFAULT nextval('notes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY operation_times ALTER COLUMN id SET DEFAULT nextval('operation_times_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY phones ALTER COLUMN id SET DEFAULT nextval('phones_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY products ALTER COLUMN id SET DEFAULT nextval('products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_jobs ALTER COLUMN id SET DEFAULT nextval('service_jobs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY servicers ALTER COLUMN id SET DEFAULT nextval('servicers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY source_locations ALTER COLUMN id SET DEFAULT nextval('source_locations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY source_types ALTER COLUMN id SET DEFAULT nextval('source_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY splits ALTER COLUMN id SET DEFAULT nextval('splits_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY support_centers ALTER COLUMN id SET DEFAULT nextval('support_centers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY support_functions ALTER COLUMN id SET DEFAULT nextval('support_functions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY support_jobs ALTER COLUMN id SET DEFAULT nextval('support_jobs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY support_types ALTER COLUMN id SET DEFAULT nextval('support_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY taggings ALTER COLUMN id SET DEFAULT nextval('taggings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_roles ALTER COLUMN id SET DEFAULT nextval('user_roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- Name: agents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY agents
    ADD CONSTRAINT agents_pkey PRIMARY KEY (id);


--
-- Name: cases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cases
    ADD CONSTRAINT cases_pkey PRIMARY KEY (id);


--
-- Name: days_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY days
    ADD CONSTRAINT days_pkey PRIMARY KEY (id);


--
-- Name: emails_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY emails
    ADD CONSTRAINT emails_pkey PRIMARY KEY (id);


--
-- Name: links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY links
    ADD CONSTRAINT links_pkey PRIMARY KEY (id);


--
-- Name: manufacturers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY manufacturers
    ADD CONSTRAINT manufacturers_pkey PRIMARY KEY (id);


--
-- Name: model_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY model_numbers
    ADD CONSTRAINT model_numbers_pkey PRIMARY KEY (id);


--
-- Name: notes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);


--
-- Name: operation_times_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY operation_times
    ADD CONSTRAINT operation_times_pkey PRIMARY KEY (id);


--
-- Name: phones_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY phones
    ADD CONSTRAINT phones_pkey PRIMARY KEY (id);


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: service_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_jobs
    ADD CONSTRAINT service_jobs_pkey PRIMARY KEY (id);


--
-- Name: servicers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY servicers
    ADD CONSTRAINT servicers_pkey PRIMARY KEY (id);


--
-- Name: source_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY source_locations
    ADD CONSTRAINT source_locations_pkey PRIMARY KEY (id);


--
-- Name: source_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY source_types
    ADD CONSTRAINT source_types_pkey PRIMARY KEY (id);


--
-- Name: splits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY splits
    ADD CONSTRAINT splits_pkey PRIMARY KEY (id);


--
-- Name: support_centers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY support_centers
    ADD CONSTRAINT support_centers_pkey PRIMARY KEY (id);


--
-- Name: support_functions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY support_functions
    ADD CONSTRAINT support_functions_pkey PRIMARY KEY (id);


--
-- Name: support_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY support_jobs
    ADD CONSTRAINT support_jobs_pkey PRIMARY KEY (id);


--
-- Name: support_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY support_types
    ADD CONSTRAINT support_types_pkey PRIMARY KEY (id);


--
-- Name: taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY taggings
    ADD CONSTRAINT taggings_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: addressable_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX addressable_index ON addresses USING btree (addressable_type, addressable_id);


--
-- Name: annotatable_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX annotatable_index ON notes USING btree (annotatable_type, annotatable_id);


--
-- Name: caseable_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX caseable_index ON cases USING btree (caseable_type, caseable_id);


--
-- Name: emailable_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX emailable_index ON emails USING btree (emailable_type, emailable_id);


--
-- Name: index_agents_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_agents_on_name ON agents USING btree (name);


--
-- Name: index_agents_on_support_center_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_agents_on_support_center_id ON agents USING btree (support_center_id);


--
-- Name: index_agents_on_support_function_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_agents_on_support_function_id ON agents USING btree (support_function_id);


--
-- Name: index_cases_on_queue; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_cases_on_queue ON cases USING btree (queue);


--
-- Name: index_days_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_days_on_name ON days USING btree (name);


--
-- Name: index_emails_on_address; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_emails_on_address ON emails USING btree (address);


--
-- Name: index_manufacturers_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_manufacturers_on_name ON manufacturers USING btree (name);


--
-- Name: index_model_numbers_on_model; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_model_numbers_on_model ON model_numbers USING btree (model);


--
-- Name: index_model_numbers_on_product_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_model_numbers_on_product_id ON model_numbers USING btree (product_id);


--
-- Name: index_operation_times_on_agent_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_operation_times_on_agent_id ON operation_times USING btree (agent_id);


--
-- Name: index_operation_times_on_day_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_operation_times_on_day_id ON operation_times USING btree (day_id);


--
-- Name: index_products_on_manufacturer_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_products_on_manufacturer_id ON products USING btree (manufacturer_id);


--
-- Name: index_products_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_products_on_name ON products USING btree (name);


--
-- Name: index_products_on_source_location_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_products_on_source_location_id ON products USING btree (source_location_id);


--
-- Name: index_products_on_source_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_products_on_source_type_id ON products USING btree (source_type_id);


--
-- Name: index_service_jobs_on_product_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_service_jobs_on_product_id ON service_jobs USING btree (product_id);


--
-- Name: index_service_jobs_on_product_id_and_servicer_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_service_jobs_on_product_id_and_servicer_id ON service_jobs USING btree (product_id, servicer_id);


--
-- Name: index_service_jobs_on_servicer_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_service_jobs_on_servicer_id ON service_jobs USING btree (servicer_id);


--
-- Name: index_servicers_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_servicers_on_name ON servicers USING btree (name);


--
-- Name: index_source_locations_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_source_locations_on_name ON source_locations USING btree (name);


--
-- Name: index_source_types_on_type; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_source_types_on_type ON source_types USING btree (type);


--
-- Name: index_splits_on_agent_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_splits_on_agent_id ON splits USING btree (agent_id);


--
-- Name: index_splits_on_queue; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_splits_on_queue ON splits USING btree (queue);


--
-- Name: index_support_centers_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_support_centers_on_name ON support_centers USING btree (name);


--
-- Name: index_support_functions_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_support_functions_on_name ON support_functions USING btree (name);


--
-- Name: index_support_jobs_on_agent_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_support_jobs_on_agent_id ON support_jobs USING btree (agent_id);


--
-- Name: index_support_jobs_on_product_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_support_jobs_on_product_id ON support_jobs USING btree (product_id);


--
-- Name: index_support_jobs_on_support_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_support_jobs_on_support_type_id ON support_jobs USING btree (support_type_id);


--
-- Name: index_support_types_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_support_types_on_name ON support_types USING btree (name);


--
-- Name: index_taggings_on_taggable_id_and_taggable_type_and_context; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_taggings_on_taggable_id_and_taggable_type_and_context ON taggings USING btree (taggable_id, taggable_type, context);


--
-- Name: index_tags_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_tags_on_name ON tags USING btree (name);


--
-- Name: index_user_roles_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_user_roles_on_name ON user_roles USING btree (name);


--
-- Name: index_users_on_core_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_core_id ON users USING btree (core_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_user_role_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_user_role_id ON users USING btree (user_role_id);


--
-- Name: linkable_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX linkable_index ON links USING btree (linkable_type, linkable_id);


--
-- Name: phonable_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX phonable_index ON phones USING btree (phonable_type, phonable_id);


--
-- Name: taggings_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX taggings_idx ON taggings USING btree (tag_id, taggable_id, taggable_type, context, tagger_id, tagger_type);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: fk_rails_0cad76ddfd; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY splits
    ADD CONSTRAINT fk_rails_0cad76ddfd FOREIGN KEY (agent_id) REFERENCES agents(id);


--
-- Name: fk_rails_1316d28656; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY agents
    ADD CONSTRAINT fk_rails_1316d28656 FOREIGN KEY (support_center_id) REFERENCES support_centers(id);


--
-- Name: fk_rails_282f6106e5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY support_jobs
    ADD CONSTRAINT fk_rails_282f6106e5 FOREIGN KEY (agent_id) REFERENCES agents(id);


--
-- Name: fk_rails_33082c31de; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY products
    ADD CONSTRAINT fk_rails_33082c31de FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(id);


--
-- Name: fk_rails_50a6af4f52; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY model_numbers
    ADD CONSTRAINT fk_rails_50a6af4f52 FOREIGN KEY (product_id) REFERENCES products(id);


--
-- Name: fk_rails_74e40dff89; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY operation_times
    ADD CONSTRAINT fk_rails_74e40dff89 FOREIGN KEY (day_id) REFERENCES days(id);


--
-- Name: fk_rails_7d4e59d979; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY products
    ADD CONSTRAINT fk_rails_7d4e59d979 FOREIGN KEY (source_location_id) REFERENCES source_locations(id);


--
-- Name: fk_rails_8e60b3914c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY products
    ADD CONSTRAINT fk_rails_8e60b3914c FOREIGN KEY (source_type_id) REFERENCES source_types(id);


--
-- Name: fk_rails_92d22c3bb4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_jobs
    ADD CONSTRAINT fk_rails_92d22c3bb4 FOREIGN KEY (servicer_id) REFERENCES servicers(id);


--
-- Name: fk_rails_a0f4fa1245; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY support_jobs
    ADD CONSTRAINT fk_rails_a0f4fa1245 FOREIGN KEY (product_id) REFERENCES products(id);


--
-- Name: fk_rails_a8d9367ca1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY support_jobs
    ADD CONSTRAINT fk_rails_a8d9367ca1 FOREIGN KEY (support_type_id) REFERENCES support_types(id);


--
-- Name: fk_rails_c133d7f9bb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY service_jobs
    ADD CONSTRAINT fk_rails_c133d7f9bb FOREIGN KEY (product_id) REFERENCES products(id);


--
-- Name: fk_rails_f14e16d0a4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY operation_times
    ADD CONSTRAINT fk_rails_f14e16d0a4 FOREIGN KEY (agent_id) REFERENCES agents(id);


--
-- Name: fk_rails_fa83e8f093; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY users
    ADD CONSTRAINT fk_rails_fa83e8f093 FOREIGN KEY (user_role_id) REFERENCES user_roles(id);


--
-- Name: fk_rails_fe1ea0ca5c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY agents
    ADD CONSTRAINT fk_rails_fe1ea0ca5c FOREIGN KEY (support_function_id) REFERENCES support_functions(id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO schema_migrations (version) VALUES ('20160623130722');

INSERT INTO schema_migrations (version) VALUES ('20160623130723');

INSERT INTO schema_migrations (version) VALUES ('20160623130724');

INSERT INTO schema_migrations (version) VALUES ('20160623130725');

INSERT INTO schema_migrations (version) VALUES ('20160623130726');

INSERT INTO schema_migrations (version) VALUES ('20160623133937');

INSERT INTO schema_migrations (version) VALUES ('20160623134234');

INSERT INTO schema_migrations (version) VALUES ('20160623134546');

INSERT INTO schema_migrations (version) VALUES ('20160623135805');

INSERT INTO schema_migrations (version) VALUES ('20160623141123');

INSERT INTO schema_migrations (version) VALUES ('20160623141541');

INSERT INTO schema_migrations (version) VALUES ('20160623141708');

INSERT INTO schema_migrations (version) VALUES ('20160623142115');

INSERT INTO schema_migrations (version) VALUES ('20160623143922');

INSERT INTO schema_migrations (version) VALUES ('20160623144146');

INSERT INTO schema_migrations (version) VALUES ('20160623144405');

INSERT INTO schema_migrations (version) VALUES ('20160623145420');

INSERT INTO schema_migrations (version) VALUES ('20160623145532');

INSERT INTO schema_migrations (version) VALUES ('20160623162742');

INSERT INTO schema_migrations (version) VALUES ('20160623163421');

INSERT INTO schema_migrations (version) VALUES ('20160623172213');

INSERT INTO schema_migrations (version) VALUES ('20160623173031');

INSERT INTO schema_migrations (version) VALUES ('20160623173324');

INSERT INTO schema_migrations (version) VALUES ('20160623174931');

INSERT INTO schema_migrations (version) VALUES ('20160623182612');

INSERT INTO schema_migrations (version) VALUES ('20160623184153');

INSERT INTO schema_migrations (version) VALUES ('20160623185700');

INSERT INTO schema_migrations (version) VALUES ('20160623190926');

