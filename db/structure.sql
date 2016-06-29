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
-- Name: agent_jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE agent_jobs (
    id integer NOT NULL,
    condition character varying DEFAULT 'All'::character varying NOT NULL,
    product_id integer NOT NULL,
    agent_id integer NOT NULL,
    job_type_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: agent_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE agent_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: agent_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE agent_jobs_id_seq OWNED BY agent_jobs.id;


--
-- Name: agent_roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE agent_roles (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: agent_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE agent_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: agent_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE agent_roles_id_seq OWNED BY agent_roles.id;


--
-- Name: agents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE agents (
    id integer NOT NULL,
    name character varying NOT NULL,
    available24x7 boolean DEFAULT false NOT NULL,
    agent_role_id integer NOT NULL,
    contact_center_id integer NOT NULL,
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
-- Name: case_queues; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE case_queues (
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    ticketable_id integer,
    ticketable_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: case_queues_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE case_queues_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: case_queues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE case_queues_id_seq OWNED BY case_queues.id;


--
-- Name: companies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE companies (
    id integer NOT NULL,
    name character varying NOT NULL,
    website_url character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE companies_id_seq OWNED BY companies.id;


--
-- Name: contact_centers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE contact_centers (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: contact_centers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE contact_centers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: contact_centers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE contact_centers_id_seq OWNED BY contact_centers.id;


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
-- Name: facilities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE facilities (
    id integer NOT NULL,
    name character varying NOT NULL,
    address_1 character varying,
    address_2 character varying,
    city character varying,
    state_province character varying,
    postal_code character varying,
    country character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: facilities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE facilities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: facilities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE facilities_id_seq OWNED BY facilities.id;


--
-- Name: facility_jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE facility_jobs (
    id integer NOT NULL,
    condition character varying DEFAULT 'All'::character varying NOT NULL,
    product_id integer NOT NULL,
    facility_id integer NOT NULL,
    job_type_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: facility_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE facility_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: facility_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE facility_jobs_id_seq OWNED BY facility_jobs.id;


--
-- Name: job_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE job_types (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: job_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE job_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: job_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE job_types_id_seq OWNED BY job_types.id;


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
-- Name: operation_days; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE operation_days (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: operation_days_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE operation_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: operation_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE operation_days_id_seq OWNED BY operation_days.id;


--
-- Name: operation_times; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE operation_times (
    id integer NOT NULL,
    begin time without time zone NOT NULL,
    "end" time without time zone NOT NULL,
    agent_id integer NOT NULL,
    operation_day_id integer NOT NULL,
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
-- Name: phone_numbers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE phone_numbers (
    id integer NOT NULL,
    number character varying NOT NULL,
    option text[] DEFAULT '{}'::text[],
    description character varying,
    phonable_id integer,
    phonable_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: phone_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE phone_numbers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: phone_numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE phone_numbers_id_seq OWNED BY phone_numbers.id;


--
-- Name: portal_jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE portal_jobs (
    id integer NOT NULL,
    condition character varying DEFAULT 'All'::character varying NOT NULL,
    product_id integer NOT NULL,
    portal_id integer NOT NULL,
    job_type_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: portal_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE portal_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: portal_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE portal_jobs_id_seq OWNED BY portal_jobs.id;


--
-- Name: portals; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE portals (
    id integer NOT NULL,
    name character varying NOT NULL,
    website_url character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: portals_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE portals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: portals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE portals_id_seq OWNED BY portals.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE products (
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    image_url character varying,
    company_id integer NOT NULL,
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
-- Name: splits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE splits (
    id integer NOT NULL,
    name character varying NOT NULL,
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

ALTER TABLE ONLY agent_jobs ALTER COLUMN id SET DEFAULT nextval('agent_jobs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY agent_roles ALTER COLUMN id SET DEFAULT nextval('agent_roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY agents ALTER COLUMN id SET DEFAULT nextval('agents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY case_queues ALTER COLUMN id SET DEFAULT nextval('case_queues_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY companies ALTER COLUMN id SET DEFAULT nextval('companies_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY contact_centers ALTER COLUMN id SET DEFAULT nextval('contact_centers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY emails ALTER COLUMN id SET DEFAULT nextval('emails_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY facilities ALTER COLUMN id SET DEFAULT nextval('facilities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY facility_jobs ALTER COLUMN id SET DEFAULT nextval('facility_jobs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY job_types ALTER COLUMN id SET DEFAULT nextval('job_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY links ALTER COLUMN id SET DEFAULT nextval('links_id_seq'::regclass);


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

ALTER TABLE ONLY operation_days ALTER COLUMN id SET DEFAULT nextval('operation_days_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY operation_times ALTER COLUMN id SET DEFAULT nextval('operation_times_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY phone_numbers ALTER COLUMN id SET DEFAULT nextval('phone_numbers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY portal_jobs ALTER COLUMN id SET DEFAULT nextval('portal_jobs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY portals ALTER COLUMN id SET DEFAULT nextval('portals_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY products ALTER COLUMN id SET DEFAULT nextval('products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY source_locations ALTER COLUMN id SET DEFAULT nextval('source_locations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY splits ALTER COLUMN id SET DEFAULT nextval('splits_id_seq'::regclass);


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
-- Name: agent_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY agent_jobs
    ADD CONSTRAINT agent_jobs_pkey PRIMARY KEY (id);


--
-- Name: agent_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY agent_roles
    ADD CONSTRAINT agent_roles_pkey PRIMARY KEY (id);


--
-- Name: agents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY agents
    ADD CONSTRAINT agents_pkey PRIMARY KEY (id);


--
-- Name: case_queues_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY case_queues
    ADD CONSTRAINT case_queues_pkey PRIMARY KEY (id);


--
-- Name: companies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- Name: contact_centers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contact_centers
    ADD CONSTRAINT contact_centers_pkey PRIMARY KEY (id);


--
-- Name: emails_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY emails
    ADD CONSTRAINT emails_pkey PRIMARY KEY (id);


--
-- Name: facilities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY facilities
    ADD CONSTRAINT facilities_pkey PRIMARY KEY (id);


--
-- Name: facility_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY facility_jobs
    ADD CONSTRAINT facility_jobs_pkey PRIMARY KEY (id);


--
-- Name: job_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY job_types
    ADD CONSTRAINT job_types_pkey PRIMARY KEY (id);


--
-- Name: links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY links
    ADD CONSTRAINT links_pkey PRIMARY KEY (id);


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
-- Name: operation_days_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY operation_days
    ADD CONSTRAINT operation_days_pkey PRIMARY KEY (id);


--
-- Name: operation_times_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY operation_times
    ADD CONSTRAINT operation_times_pkey PRIMARY KEY (id);


--
-- Name: phone_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY phone_numbers
    ADD CONSTRAINT phone_numbers_pkey PRIMARY KEY (id);


--
-- Name: portal_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY portal_jobs
    ADD CONSTRAINT portal_jobs_pkey PRIMARY KEY (id);


--
-- Name: portals_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY portals
    ADD CONSTRAINT portals_pkey PRIMARY KEY (id);


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: source_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY source_locations
    ADD CONSTRAINT source_locations_pkey PRIMARY KEY (id);


--
-- Name: splits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY splits
    ADD CONSTRAINT splits_pkey PRIMARY KEY (id);


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
-- Name: agent_jobs_index; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX agent_jobs_index ON agent_jobs USING btree (product_id, agent_id, job_type_id, condition);


--
-- Name: annotatable_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX annotatable_index ON notes USING btree (annotatable_type, annotatable_id);


--
-- Name: emailable_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX emailable_index ON emails USING btree (emailable_type, emailable_id);


--
-- Name: facility_jobs_index; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX facility_jobs_index ON facility_jobs USING btree (product_id, facility_id, job_type_id, condition);


--
-- Name: index_agent_jobs_on_agent_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_agent_jobs_on_agent_id ON agent_jobs USING btree (agent_id);


--
-- Name: index_agent_jobs_on_job_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_agent_jobs_on_job_type_id ON agent_jobs USING btree (job_type_id);


--
-- Name: index_agent_jobs_on_product_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_agent_jobs_on_product_id ON agent_jobs USING btree (product_id);


--
-- Name: index_agent_jobs_on_product_id_and_agent_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_agent_jobs_on_product_id_and_agent_id ON agent_jobs USING btree (product_id, agent_id);


--
-- Name: index_agent_roles_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_agent_roles_on_name ON agent_roles USING btree (name);


--
-- Name: index_agents_on_agent_role_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_agents_on_agent_role_id ON agents USING btree (agent_role_id);


--
-- Name: index_agents_on_contact_center_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_agents_on_contact_center_id ON agents USING btree (contact_center_id);


--
-- Name: index_agents_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_agents_on_name ON agents USING btree (name);


--
-- Name: index_case_queues_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_case_queues_on_name ON case_queues USING btree (name);


--
-- Name: index_companies_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_companies_on_name ON companies USING btree (name);


--
-- Name: index_contact_centers_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_contact_centers_on_name ON contact_centers USING btree (name);


--
-- Name: index_emails_on_address; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_emails_on_address ON emails USING btree (address);


--
-- Name: index_facilities_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_facilities_on_name ON facilities USING btree (name);


--
-- Name: index_facility_jobs_on_facility_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_facility_jobs_on_facility_id ON facility_jobs USING btree (facility_id);


--
-- Name: index_facility_jobs_on_job_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_facility_jobs_on_job_type_id ON facility_jobs USING btree (job_type_id);


--
-- Name: index_facility_jobs_on_product_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_facility_jobs_on_product_id ON facility_jobs USING btree (product_id);


--
-- Name: index_facility_jobs_on_product_id_and_facility_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_facility_jobs_on_product_id_and_facility_id ON facility_jobs USING btree (product_id, facility_id);


--
-- Name: index_job_types_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_job_types_on_name ON job_types USING btree (name);


--
-- Name: index_model_numbers_on_model; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_model_numbers_on_model ON model_numbers USING btree (model);


--
-- Name: index_model_numbers_on_product_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_model_numbers_on_product_id ON model_numbers USING btree (product_id);


--
-- Name: index_operation_days_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_operation_days_on_name ON operation_days USING btree (name);


--
-- Name: index_operation_times_on_agent_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_operation_times_on_agent_id ON operation_times USING btree (agent_id);


--
-- Name: index_operation_times_on_operation_day_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_operation_times_on_operation_day_id ON operation_times USING btree (operation_day_id);


--
-- Name: index_portal_jobs_on_job_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_portal_jobs_on_job_type_id ON portal_jobs USING btree (job_type_id);


--
-- Name: index_portal_jobs_on_portal_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_portal_jobs_on_portal_id ON portal_jobs USING btree (portal_id);


--
-- Name: index_portal_jobs_on_product_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_portal_jobs_on_product_id ON portal_jobs USING btree (product_id);


--
-- Name: index_portal_jobs_on_product_id_and_portal_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_portal_jobs_on_product_id_and_portal_id ON portal_jobs USING btree (product_id, portal_id);


--
-- Name: index_portals_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_portals_on_name ON portals USING btree (name);


--
-- Name: index_products_on_company_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_products_on_company_id ON products USING btree (company_id);


--
-- Name: index_products_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_products_on_name ON products USING btree (name);


--
-- Name: index_products_on_source_location_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_products_on_source_location_id ON products USING btree (source_location_id);


--
-- Name: index_source_locations_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_source_locations_on_name ON source_locations USING btree (name);


--
-- Name: index_splits_on_agent_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_splits_on_agent_id ON splits USING btree (agent_id);


--
-- Name: index_splits_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_splits_on_name ON splits USING btree (name);


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

CREATE INDEX phonable_index ON phone_numbers USING btree (phonable_type, phonable_id);


--
-- Name: portal_jobs_index; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX portal_jobs_index ON portal_jobs USING btree (product_id, portal_id, job_type_id, condition);


--
-- Name: taggings_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX taggings_idx ON taggings USING btree (tag_id, taggable_id, taggable_type, context, tagger_id, tagger_type);


--
-- Name: ticketable_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ticketable_index ON case_queues USING btree (ticketable_type, ticketable_id);


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
-- Name: fk_rails_438d5b34ce; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY products
    ADD CONSTRAINT fk_rails_438d5b34ce FOREIGN KEY (company_id) REFERENCES companies(id);


--
-- Name: fk_rails_50a6af4f52; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY model_numbers
    ADD CONSTRAINT fk_rails_50a6af4f52 FOREIGN KEY (product_id) REFERENCES products(id);


--
-- Name: fk_rails_6ab795d2bb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY portal_jobs
    ADD CONSTRAINT fk_rails_6ab795d2bb FOREIGN KEY (product_id) REFERENCES products(id);


--
-- Name: fk_rails_7d4e59d979; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY products
    ADD CONSTRAINT fk_rails_7d4e59d979 FOREIGN KEY (source_location_id) REFERENCES source_locations(id);


--
-- Name: fk_rails_8bb995839e; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY agent_jobs
    ADD CONSTRAINT fk_rails_8bb995839e FOREIGN KEY (agent_id) REFERENCES agents(id);


--
-- Name: fk_rails_8fad328a12; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY facility_jobs
    ADD CONSTRAINT fk_rails_8fad328a12 FOREIGN KEY (job_type_id) REFERENCES job_types(id);


--
-- Name: fk_rails_95c4e84412; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY portal_jobs
    ADD CONSTRAINT fk_rails_95c4e84412 FOREIGN KEY (job_type_id) REFERENCES job_types(id);


--
-- Name: fk_rails_a9c57a4eff; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY agent_jobs
    ADD CONSTRAINT fk_rails_a9c57a4eff FOREIGN KEY (product_id) REFERENCES products(id);


--
-- Name: fk_rails_aeda473911; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY facility_jobs
    ADD CONSTRAINT fk_rails_aeda473911 FOREIGN KEY (facility_id) REFERENCES facilities(id);


--
-- Name: fk_rails_c438db042d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY agents
    ADD CONSTRAINT fk_rails_c438db042d FOREIGN KEY (contact_center_id) REFERENCES contact_centers(id);


--
-- Name: fk_rails_c4c4f94fc5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY operation_times
    ADD CONSTRAINT fk_rails_c4c4f94fc5 FOREIGN KEY (operation_day_id) REFERENCES operation_days(id);


--
-- Name: fk_rails_cf5b31d5c2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY agent_jobs
    ADD CONSTRAINT fk_rails_cf5b31d5c2 FOREIGN KEY (job_type_id) REFERENCES job_types(id);


--
-- Name: fk_rails_d3e414747d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY agents
    ADD CONSTRAINT fk_rails_d3e414747d FOREIGN KEY (agent_role_id) REFERENCES agent_roles(id);


--
-- Name: fk_rails_e541bf561f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY facility_jobs
    ADD CONSTRAINT fk_rails_e541bf561f FOREIGN KEY (product_id) REFERENCES products(id);


--
-- Name: fk_rails_e7bb1c4332; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY portal_jobs
    ADD CONSTRAINT fk_rails_e7bb1c4332 FOREIGN KEY (portal_id) REFERENCES portals(id);


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

INSERT INTO schema_migrations (version) VALUES ('20160623141541');

INSERT INTO schema_migrations (version) VALUES ('20160623141708');

INSERT INTO schema_migrations (version) VALUES ('20160623142115');

INSERT INTO schema_migrations (version) VALUES ('20160623144146');

INSERT INTO schema_migrations (version) VALUES ('20160623144405');

INSERT INTO schema_migrations (version) VALUES ('20160623145532');

INSERT INTO schema_migrations (version) VALUES ('20160623162742');

INSERT INTO schema_migrations (version) VALUES ('20160623172201');

INSERT INTO schema_migrations (version) VALUES ('20160623172213');

INSERT INTO schema_migrations (version) VALUES ('20160623173031');

INSERT INTO schema_migrations (version) VALUES ('20160623173324');

INSERT INTO schema_migrations (version) VALUES ('20160623174931');

INSERT INTO schema_migrations (version) VALUES ('20160623182612');

INSERT INTO schema_migrations (version) VALUES ('20160623184153');

INSERT INTO schema_migrations (version) VALUES ('20160623185700');

INSERT INTO schema_migrations (version) VALUES ('20160623190926');

INSERT INTO schema_migrations (version) VALUES ('20160625184203');

INSERT INTO schema_migrations (version) VALUES ('20160629145344');

INSERT INTO schema_migrations (version) VALUES ('20160629145458');

