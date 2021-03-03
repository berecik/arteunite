--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO beret;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO beret;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO beret;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO beret;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO beret;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO beret;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO beret;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO beret;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO beret;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO beret;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO beret;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO beret;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO beret;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO beret;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO beret;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO beret;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO beret;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO beret;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO beret;

--
-- Name: home_arteunitemock; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.home_arteunitemock (
    page_ptr_id integer NOT NULL,
    intro text NOT NULL
);


ALTER TABLE public.home_arteunitemock OWNER TO beret;

--
-- Name: home_homepage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.home_homepage (
    page_ptr_id integer NOT NULL,
    earth text NOT NULL,
    earth_head text NOT NULL,
    flame text NOT NULL,
    flame_head text NOT NULL,
    long_name text NOT NULL,
    quote text NOT NULL,
    star text NOT NULL,
    star_head text NOT NULL,
    quote_author text NOT NULL,
    stodola text NOT NULL,
    wolna_ziemia text NOT NULL,
    workshop text NOT NULL
);


ALTER TABLE public.home_homepage OWNER TO beret;

--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO beret;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO beret;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO beret;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO beret;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: wagtailcore_collection; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_collection (
    id integer NOT NULL,
    path character varying(255) NOT NULL COLLATE pg_catalog."C",
    depth integer NOT NULL,
    numchild integer NOT NULL,
    name character varying(255) NOT NULL,
    CONSTRAINT wagtailcore_collection_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_collection_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE public.wagtailcore_collection OWNER TO beret;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collection_id_seq OWNER TO beret;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_collection_id_seq OWNED BY public.wagtailcore_collection.id;


--
-- Name: wagtailcore_collectionviewrestriction; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_collectionviewrestriction (
    id integer NOT NULL,
    restriction_type character varying(20) NOT NULL,
    password character varying(255) NOT NULL,
    collection_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_collectionviewrestriction OWNER TO beret;

--
-- Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_collectionviewrestriction_groups (
    id integer NOT NULL,
    collectionviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_collectionviewrestriction_groups OWNER TO beret;

--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNER TO beret;

--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNED BY public.wagtailcore_collectionviewrestriction_groups.id;


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collectionviewrestriction_id_seq OWNER TO beret;

--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq OWNED BY public.wagtailcore_collectionviewrestriction.id;


--
-- Name: wagtailcore_groupapprovaltask; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_groupapprovaltask (
    task_ptr_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_groupapprovaltask OWNER TO beret;

--
-- Name: wagtailcore_groupapprovaltask_groups; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_groupapprovaltask_groups (
    id integer NOT NULL,
    groupapprovaltask_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_groupapprovaltask_groups OWNER TO beret;

--
-- Name: wagtailcore_groupapprovaltask_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_groupapprovaltask_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_groupapprovaltask_groups_id_seq OWNER TO beret;

--
-- Name: wagtailcore_groupapprovaltask_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_groupapprovaltask_groups_id_seq OWNED BY public.wagtailcore_groupapprovaltask_groups.id;


--
-- Name: wagtailcore_groupcollectionpermission; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_groupcollectionpermission (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_groupcollectionpermission OWNER TO beret;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_groupcollectionpermission_id_seq OWNER TO beret;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq OWNED BY public.wagtailcore_groupcollectionpermission.id;


--
-- Name: wagtailcore_grouppagepermission; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_grouppagepermission (
    id integer NOT NULL,
    permission_type character varying(20) NOT NULL,
    group_id integer NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_grouppagepermission OWNER TO beret;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_grouppagepermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_grouppagepermission_id_seq OWNER TO beret;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_grouppagepermission_id_seq OWNED BY public.wagtailcore_grouppagepermission.id;


--
-- Name: wagtailcore_locale; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_locale (
    id integer NOT NULL,
    language_code character varying(100) NOT NULL
);


ALTER TABLE public.wagtailcore_locale OWNER TO beret;

--
-- Name: wagtailcore_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_locale_id_seq OWNER TO beret;

--
-- Name: wagtailcore_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_locale_id_seq OWNED BY public.wagtailcore_locale.id;


--
-- Name: wagtailcore_page; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_page (
    id integer NOT NULL,
    path character varying(255) NOT NULL COLLATE pg_catalog."C",
    depth integer NOT NULL,
    numchild integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    live boolean NOT NULL,
    has_unpublished_changes boolean NOT NULL,
    url_path text NOT NULL,
    seo_title character varying(255) NOT NULL,
    show_in_menus boolean NOT NULL,
    search_description text NOT NULL,
    go_live_at timestamp with time zone,
    expire_at timestamp with time zone,
    expired boolean NOT NULL,
    content_type_id integer NOT NULL,
    owner_id integer,
    locked boolean NOT NULL,
    latest_revision_created_at timestamp with time zone,
    first_published_at timestamp with time zone,
    live_revision_id integer,
    last_published_at timestamp with time zone,
    draft_title character varying(255) NOT NULL,
    locked_at timestamp with time zone,
    locked_by_id integer,
    translation_key uuid NOT NULL,
    locale_id integer NOT NULL,
    alias_of_id integer,
    CONSTRAINT wagtailcore_page_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_page_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE public.wagtailcore_page OWNER TO beret;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_page_id_seq OWNER TO beret;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_page_id_seq OWNED BY public.wagtailcore_page.id;


--
-- Name: wagtailcore_pagelogentry; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_pagelogentry (
    id integer NOT NULL,
    label text NOT NULL,
    action character varying(255) NOT NULL,
    data_json text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    content_changed boolean NOT NULL,
    deleted boolean NOT NULL,
    content_type_id integer,
    page_id integer NOT NULL,
    revision_id integer,
    user_id integer
);


ALTER TABLE public.wagtailcore_pagelogentry OWNER TO beret;

--
-- Name: wagtailcore_pagelogentry_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_pagelogentry_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pagelogentry_id_seq OWNER TO beret;

--
-- Name: wagtailcore_pagelogentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_pagelogentry_id_seq OWNED BY public.wagtailcore_pagelogentry.id;


--
-- Name: wagtailcore_pagerevision; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_pagerevision (
    id integer NOT NULL,
    submitted_for_moderation boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    content_json text NOT NULL,
    approved_go_live_at timestamp with time zone,
    page_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.wagtailcore_pagerevision OWNER TO beret;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_pagerevision_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pagerevision_id_seq OWNER TO beret;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_pagerevision_id_seq OWNED BY public.wagtailcore_pagerevision.id;


--
-- Name: wagtailcore_pageviewrestriction; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_pageviewrestriction (
    id integer NOT NULL,
    password character varying(255) NOT NULL,
    page_id integer NOT NULL,
    restriction_type character varying(20) NOT NULL
);


ALTER TABLE public.wagtailcore_pageviewrestriction OWNER TO beret;

--
-- Name: wagtailcore_pageviewrestriction_groups; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_pageviewrestriction_groups (
    id integer NOT NULL,
    pageviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_pageviewrestriction_groups OWNER TO beret;

--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pageviewrestriction_groups_id_seq OWNER TO beret;

--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq OWNED BY public.wagtailcore_pageviewrestriction_groups.id;


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pageviewrestriction_id_seq OWNER TO beret;

--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_id_seq OWNED BY public.wagtailcore_pageviewrestriction.id;


--
-- Name: wagtailcore_site; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_site (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    port integer NOT NULL,
    is_default_site boolean NOT NULL,
    root_page_id integer NOT NULL,
    site_name character varying(255) NOT NULL
);


ALTER TABLE public.wagtailcore_site OWNER TO beret;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_site_id_seq OWNER TO beret;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_site_id_seq OWNED BY public.wagtailcore_site.id;


--
-- Name: wagtailcore_task; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_task (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    active boolean NOT NULL,
    content_type_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_task OWNER TO beret;

--
-- Name: wagtailcore_task_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_task_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_task_id_seq OWNER TO beret;

--
-- Name: wagtailcore_task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_task_id_seq OWNED BY public.wagtailcore_task.id;


--
-- Name: wagtailcore_taskstate; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_taskstate (
    id integer NOT NULL,
    status character varying(50) NOT NULL,
    started_at timestamp with time zone NOT NULL,
    finished_at timestamp with time zone,
    content_type_id integer NOT NULL,
    page_revision_id integer NOT NULL,
    task_id integer NOT NULL,
    workflow_state_id integer NOT NULL,
    finished_by_id integer,
    comment text NOT NULL
);


ALTER TABLE public.wagtailcore_taskstate OWNER TO beret;

--
-- Name: wagtailcore_taskstate_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_taskstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_taskstate_id_seq OWNER TO beret;

--
-- Name: wagtailcore_taskstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_taskstate_id_seq OWNED BY public.wagtailcore_taskstate.id;


--
-- Name: wagtailcore_workflow; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_workflow (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    active boolean NOT NULL
);


ALTER TABLE public.wagtailcore_workflow OWNER TO beret;

--
-- Name: wagtailcore_workflow_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_workflow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_workflow_id_seq OWNER TO beret;

--
-- Name: wagtailcore_workflow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_workflow_id_seq OWNED BY public.wagtailcore_workflow.id;


--
-- Name: wagtailcore_workflowpage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_workflowpage (
    page_id integer NOT NULL,
    workflow_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_workflowpage OWNER TO beret;

--
-- Name: wagtailcore_workflowstate; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_workflowstate (
    id integer NOT NULL,
    status character varying(50) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    current_task_state_id integer,
    page_id integer NOT NULL,
    requested_by_id integer,
    workflow_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_workflowstate OWNER TO beret;

--
-- Name: wagtailcore_workflowstate_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_workflowstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_workflowstate_id_seq OWNER TO beret;

--
-- Name: wagtailcore_workflowstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_workflowstate_id_seq OWNED BY public.wagtailcore_workflowstate.id;


--
-- Name: wagtailcore_workflowtask; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_workflowtask (
    id integer NOT NULL,
    sort_order integer,
    task_id integer NOT NULL,
    workflow_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_workflowtask OWNER TO beret;

--
-- Name: wagtailcore_workflowtask_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_workflowtask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_workflowtask_id_seq OWNER TO beret;

--
-- Name: wagtailcore_workflowtask_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_workflowtask_id_seq OWNED BY public.wagtailcore_workflowtask.id;


--
-- Name: wagtaildocs_document; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtaildocs_document (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    uploaded_by_user_id integer,
    collection_id integer NOT NULL,
    file_size integer,
    file_hash character varying(40) NOT NULL,
    CONSTRAINT wagtaildocs_document_file_size_check CHECK ((file_size >= 0))
);


ALTER TABLE public.wagtaildocs_document OWNER TO beret;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtaildocs_document_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtaildocs_document_id_seq OWNER TO beret;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtaildocs_document_id_seq OWNED BY public.wagtaildocs_document.id;


--
-- Name: wagtailembeds_embed; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailembeds_embed (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    max_width smallint,
    type character varying(10) NOT NULL,
    html text NOT NULL,
    title text NOT NULL,
    author_name text NOT NULL,
    provider_name text NOT NULL,
    thumbnail_url character varying(255),
    width integer,
    height integer,
    last_updated timestamp with time zone NOT NULL
);


ALTER TABLE public.wagtailembeds_embed OWNER TO beret;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailembeds_embed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailembeds_embed_id_seq OWNER TO beret;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailembeds_embed_id_seq OWNED BY public.wagtailembeds_embed.id;


--
-- Name: wagtailforms_formsubmission; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailforms_formsubmission (
    id integer NOT NULL,
    form_data text NOT NULL,
    submit_time timestamp with time zone NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.wagtailforms_formsubmission OWNER TO beret;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailforms_formsubmission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailforms_formsubmission_id_seq OWNER TO beret;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailforms_formsubmission_id_seq OWNED BY public.wagtailforms_formsubmission.id;


--
-- Name: wagtailimages_image; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailimages_image (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    focal_point_x integer,
    focal_point_y integer,
    focal_point_width integer,
    focal_point_height integer,
    uploaded_by_user_id integer,
    file_size integer,
    collection_id integer NOT NULL,
    file_hash character varying(40) NOT NULL,
    CONSTRAINT wagtailimages_image_file_size_check CHECK ((file_size >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_height_check CHECK ((focal_point_height >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_width_check CHECK ((focal_point_width >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_x_check CHECK ((focal_point_x >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_y_check CHECK ((focal_point_y >= 0))
);


ALTER TABLE public.wagtailimages_image OWNER TO beret;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailimages_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_image_id_seq OWNER TO beret;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailimages_image_id_seq OWNED BY public.wagtailimages_image.id;


--
-- Name: wagtailimages_rendition; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailimages_rendition (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    focal_point_key character varying(16) NOT NULL,
    filter_spec character varying(255) NOT NULL,
    image_id integer NOT NULL
);


ALTER TABLE public.wagtailimages_rendition OWNER TO beret;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailimages_rendition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_rendition_id_seq OWNER TO beret;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailimages_rendition_id_seq OWNED BY public.wagtailimages_rendition.id;


--
-- Name: wagtailimages_uploadedimage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailimages_uploadedimage (
    id integer NOT NULL,
    file character varying(200) NOT NULL,
    uploaded_by_user_id integer
);


ALTER TABLE public.wagtailimages_uploadedimage OWNER TO beret;

--
-- Name: wagtailimages_uploadedimage_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailimages_uploadedimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_uploadedimage_id_seq OWNER TO beret;

--
-- Name: wagtailimages_uploadedimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailimages_uploadedimage_id_seq OWNED BY public.wagtailimages_uploadedimage.id;


--
-- Name: wagtailredirects_redirect; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailredirects_redirect (
    id integer NOT NULL,
    old_path character varying(255) NOT NULL,
    is_permanent boolean NOT NULL,
    redirect_link character varying(255) NOT NULL,
    redirect_page_id integer,
    site_id integer
);


ALTER TABLE public.wagtailredirects_redirect OWNER TO beret;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailredirects_redirect_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailredirects_redirect_id_seq OWNER TO beret;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailredirects_redirect_id_seq OWNED BY public.wagtailredirects_redirect.id;


--
-- Name: wagtailsearch_editorspick; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailsearch_editorspick (
    id integer NOT NULL,
    sort_order integer,
    description text NOT NULL,
    page_id integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE public.wagtailsearch_editorspick OWNER TO beret;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailsearch_editorspick_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_editorspick_id_seq OWNER TO beret;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailsearch_editorspick_id_seq OWNED BY public.wagtailsearch_editorspick.id;


--
-- Name: wagtailsearch_query; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailsearch_query (
    id integer NOT NULL,
    query_string character varying(255) NOT NULL
);


ALTER TABLE public.wagtailsearch_query OWNER TO beret;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailsearch_query_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_query_id_seq OWNER TO beret;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailsearch_query_id_seq OWNED BY public.wagtailsearch_query.id;


--
-- Name: wagtailsearch_querydailyhits; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailsearch_querydailyhits (
    id integer NOT NULL,
    date date NOT NULL,
    hits integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE public.wagtailsearch_querydailyhits OWNER TO beret;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailsearch_querydailyhits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_querydailyhits_id_seq OWNER TO beret;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailsearch_querydailyhits_id_seq OWNED BY public.wagtailsearch_querydailyhits.id;


--
-- Name: wagtailusers_userprofile; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailusers_userprofile (
    id integer NOT NULL,
    submitted_notifications boolean NOT NULL,
    approved_notifications boolean NOT NULL,
    rejected_notifications boolean NOT NULL,
    user_id integer NOT NULL,
    preferred_language character varying(10) NOT NULL,
    current_time_zone character varying(40) NOT NULL,
    avatar character varying(100) NOT NULL
);


ALTER TABLE public.wagtailusers_userprofile OWNER TO beret;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailusers_userprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailusers_userprofile_id_seq OWNER TO beret;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailusers_userprofile_id_seq OWNED BY public.wagtailusers_userprofile.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Name: wagtailcore_collection id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collection ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collection_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_groupapprovaltask_groups id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_groupapprovaltask_groups_id_seq'::regclass);


--
-- Name: wagtailcore_groupcollectionpermission id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_groupcollectionpermission_id_seq'::regclass);


--
-- Name: wagtailcore_grouppagepermission id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_grouppagepermission_id_seq'::regclass);


--
-- Name: wagtailcore_locale id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_locale ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_locale_id_seq'::regclass);


--
-- Name: wagtailcore_page id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_page_id_seq'::regclass);


--
-- Name: wagtailcore_pagelogentry id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pagelogentry ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagelogentry_id_seq'::regclass);


--
-- Name: wagtailcore_pagerevision id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pagerevision ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagerevision_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_site id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_site ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_site_id_seq'::regclass);


--
-- Name: wagtailcore_task id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_task ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_task_id_seq'::regclass);


--
-- Name: wagtailcore_taskstate id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_taskstate ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_taskstate_id_seq'::regclass);


--
-- Name: wagtailcore_workflow id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflow ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflow_id_seq'::regclass);


--
-- Name: wagtailcore_workflowstate id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowstate ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflowstate_id_seq'::regclass);


--
-- Name: wagtailcore_workflowtask id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowtask ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflowtask_id_seq'::regclass);


--
-- Name: wagtaildocs_document id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtaildocs_document ALTER COLUMN id SET DEFAULT nextval('public.wagtaildocs_document_id_seq'::regclass);


--
-- Name: wagtailembeds_embed id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailembeds_embed ALTER COLUMN id SET DEFAULT nextval('public.wagtailembeds_embed_id_seq'::regclass);


--
-- Name: wagtailforms_formsubmission id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailforms_formsubmission ALTER COLUMN id SET DEFAULT nextval('public.wagtailforms_formsubmission_id_seq'::regclass);


--
-- Name: wagtailimages_image id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_image ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_image_id_seq'::regclass);


--
-- Name: wagtailimages_rendition id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_rendition ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_rendition_id_seq'::regclass);


--
-- Name: wagtailimages_uploadedimage id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_uploadedimage ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_uploadedimage_id_seq'::regclass);


--
-- Name: wagtailredirects_redirect id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailredirects_redirect ALTER COLUMN id SET DEFAULT nextval('public.wagtailredirects_redirect_id_seq'::regclass);


--
-- Name: wagtailsearch_editorspick id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_editorspick ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_editorspick_id_seq'::regclass);


--
-- Name: wagtailsearch_query id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_query ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_query_id_seq'::regclass);


--
-- Name: wagtailsearch_querydailyhits id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_querydailyhits_id_seq'::regclass);


--
-- Name: wagtailusers_userprofile id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailusers_userprofile ALTER COLUMN id SET DEFAULT nextval('public.wagtailusers_userprofile_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.auth_group (id, name) FROM stdin;
1	Moderators
2	Editors
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	2	1
3	1	2
4	1	3
5	1	4
6	2	2
7	2	3
8	2	4
9	1	5
10	1	6
11	1	7
12	2	5
13	2	6
14	2	7
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can access Wagtail admin	4	access_admin
2	Can add document	5	add_document
3	Can change document	5	change_document
4	Can delete document	5	delete_document
5	Can add image	6	add_image
6	Can change image	6	change_image
7	Can delete image	6	delete_image
8	Can add home page	3	add_homepage
9	Can change home page	3	change_homepage
10	Can delete home page	3	delete_homepage
11	Can view home page	3	view_homepage
12	Can add arteunite mock	7	add_arteunitemock
13	Can change arteunite mock	7	change_arteunitemock
14	Can delete arteunite mock	7	delete_arteunitemock
15	Can view arteunite mock	7	view_arteunitemock
16	Can add form submission	8	add_formsubmission
17	Can change form submission	8	change_formsubmission
18	Can delete form submission	8	delete_formsubmission
19	Can view form submission	8	view_formsubmission
20	Can add redirect	9	add_redirect
21	Can change redirect	9	change_redirect
22	Can delete redirect	9	delete_redirect
23	Can view redirect	9	view_redirect
24	Can add embed	10	add_embed
25	Can change embed	10	change_embed
26	Can delete embed	10	delete_embed
27	Can view embed	10	view_embed
28	Can add user profile	11	add_userprofile
29	Can change user profile	11	change_userprofile
30	Can delete user profile	11	delete_userprofile
31	Can view user profile	11	view_userprofile
32	Can view document	5	view_document
33	Can view image	6	view_image
34	Can add rendition	12	add_rendition
35	Can change rendition	12	change_rendition
36	Can delete rendition	12	delete_rendition
37	Can view rendition	12	view_rendition
38	Can add uploaded image	13	add_uploadedimage
39	Can change uploaded image	13	change_uploadedimage
40	Can delete uploaded image	13	delete_uploadedimage
41	Can view uploaded image	13	view_uploadedimage
42	Can add query	14	add_query
43	Can change query	14	change_query
44	Can delete query	14	delete_query
45	Can view query	14	view_query
46	Can add Query Daily Hits	15	add_querydailyhits
47	Can change Query Daily Hits	15	change_querydailyhits
48	Can delete Query Daily Hits	15	delete_querydailyhits
49	Can view Query Daily Hits	15	view_querydailyhits
50	Can add page	1	add_page
51	Can change page	1	change_page
52	Can delete page	1	delete_page
53	Can view page	1	view_page
54	Can add group page permission	16	add_grouppagepermission
55	Can change group page permission	16	change_grouppagepermission
56	Can delete group page permission	16	delete_grouppagepermission
57	Can view group page permission	16	view_grouppagepermission
58	Can add page revision	17	add_pagerevision
59	Can change page revision	17	change_pagerevision
60	Can delete page revision	17	delete_pagerevision
61	Can view page revision	17	view_pagerevision
62	Can add page view restriction	18	add_pageviewrestriction
63	Can change page view restriction	18	change_pageviewrestriction
64	Can delete page view restriction	18	delete_pageviewrestriction
65	Can view page view restriction	18	view_pageviewrestriction
66	Can add site	19	add_site
67	Can change site	19	change_site
68	Can delete site	19	delete_site
69	Can view site	19	view_site
70	Can add collection	20	add_collection
71	Can change collection	20	change_collection
72	Can delete collection	20	delete_collection
73	Can view collection	20	view_collection
74	Can add group collection permission	21	add_groupcollectionpermission
75	Can change group collection permission	21	change_groupcollectionpermission
76	Can delete group collection permission	21	delete_groupcollectionpermission
77	Can view group collection permission	21	view_groupcollectionpermission
78	Can add collection view restriction	22	add_collectionviewrestriction
79	Can change collection view restriction	22	change_collectionviewrestriction
80	Can delete collection view restriction	22	delete_collectionviewrestriction
81	Can view collection view restriction	22	view_collectionviewrestriction
82	Can add task	23	add_task
83	Can change task	23	change_task
84	Can delete task	23	delete_task
85	Can view task	23	view_task
86	Can add Task state	24	add_taskstate
87	Can change Task state	24	change_taskstate
88	Can delete Task state	24	delete_taskstate
89	Can view Task state	24	view_taskstate
90	Can add workflow	25	add_workflow
91	Can change workflow	25	change_workflow
92	Can delete workflow	25	delete_workflow
93	Can view workflow	25	view_workflow
94	Can add Group approval task	2	add_groupapprovaltask
95	Can change Group approval task	2	change_groupapprovaltask
96	Can delete Group approval task	2	delete_groupapprovaltask
97	Can view Group approval task	2	view_groupapprovaltask
98	Can add Workflow state	26	add_workflowstate
99	Can change Workflow state	26	change_workflowstate
100	Can delete Workflow state	26	delete_workflowstate
101	Can view Workflow state	26	view_workflowstate
102	Can add workflow page	27	add_workflowpage
103	Can change workflow page	27	change_workflowpage
104	Can delete workflow page	27	delete_workflowpage
105	Can view workflow page	27	view_workflowpage
106	Can add workflow task order	28	add_workflowtask
107	Can change workflow task order	28	change_workflowtask
108	Can delete workflow task order	28	delete_workflowtask
109	Can view workflow task order	28	view_workflowtask
110	Can add page log entry	29	add_pagelogentry
111	Can change page log entry	29	change_pagelogentry
112	Can delete page log entry	29	delete_pagelogentry
113	Can view page log entry	29	view_pagelogentry
114	Can add locale	30	add_locale
115	Can change locale	30	change_locale
116	Can delete locale	30	delete_locale
117	Can view locale	30	view_locale
118	Can add tag	31	add_tag
119	Can change tag	31	change_tag
120	Can delete tag	31	delete_tag
121	Can view tag	31	view_tag
122	Can add tagged item	32	add_taggeditem
123	Can change tagged item	32	change_taggeditem
124	Can delete tagged item	32	delete_taggeditem
125	Can view tagged item	32	view_taggeditem
126	Can add log entry	33	add_logentry
127	Can change log entry	33	change_logentry
128	Can delete log entry	33	delete_logentry
129	Can view log entry	33	view_logentry
130	Can add permission	34	add_permission
131	Can change permission	34	change_permission
132	Can delete permission	34	delete_permission
133	Can view permission	34	view_permission
134	Can add group	35	add_group
135	Can change group	35	change_group
136	Can delete group	35	delete_group
137	Can view group	35	view_group
138	Can add user	36	add_user
139	Can change user	36	change_user
140	Can delete user	36	delete_user
141	Can view user	36	view_user
142	Can add content type	37	add_contenttype
143	Can change content type	37	change_contenttype
144	Can delete content type	37	delete_contenttype
145	Can view content type	37	view_contenttype
146	Can add session	38	add_session
147	Can change session	38	change_session
148	Can delete session	38	delete_session
149	Can view session	38	view_session
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$uy2Eay3QXGvo$6IpiSB4xcRviygcFFYkvKlL1BVE6zWig1zuPqw6yy8Q=	2021-02-15 00:00:43.171485+00	t	beret			beret@hipisi.org.pl	t	t	2021-02-07 04:07:43.021502+00
3	pbkdf2_sha256$216000$0rl956Vutt4t$KzhW9COMdLWLGtfcqnhbjeE484kC5Xq0IBwobPszo9U=	2021-02-15 00:10:23.981241+00	t	kuba	Jakub	Ferenczak	unite@wp.pl	t	t	2021-02-15 00:05:20.374316+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	wagtailcore	page
2	wagtailcore	groupapprovaltask
3	home	homepage
4	wagtailadmin	admin
5	wagtaildocs	document
6	wagtailimages	image
7	home	arteunitemock
8	wagtailforms	formsubmission
9	wagtailredirects	redirect
10	wagtailembeds	embed
11	wagtailusers	userprofile
12	wagtailimages	rendition
13	wagtailimages	uploadedimage
14	wagtailsearch	query
15	wagtailsearch	querydailyhits
16	wagtailcore	grouppagepermission
17	wagtailcore	pagerevision
18	wagtailcore	pageviewrestriction
19	wagtailcore	site
20	wagtailcore	collection
21	wagtailcore	groupcollectionpermission
22	wagtailcore	collectionviewrestriction
23	wagtailcore	task
24	wagtailcore	taskstate
25	wagtailcore	workflow
26	wagtailcore	workflowstate
27	wagtailcore	workflowpage
28	wagtailcore	workflowtask
29	wagtailcore	pagelogentry
30	wagtailcore	locale
31	taggit	tag
32	taggit	taggeditem
33	admin	logentry
34	auth	permission
35	auth	group
36	auth	user
37	contenttypes	contenttype
38	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-01-27 19:50:03.596727+00
2	auth	0001_initial	2021-01-27 19:50:03.628721+00
3	admin	0001_initial	2021-01-27 19:50:03.667486+00
4	admin	0002_logentry_remove_auto_add	2021-01-27 19:50:03.678985+00
5	admin	0003_logentry_add_action_flag_choices	2021-01-27 19:50:03.685213+00
6	contenttypes	0002_remove_content_type_name	2021-01-27 19:50:03.69821+00
7	auth	0002_alter_permission_name_max_length	2021-01-27 19:50:03.704534+00
8	auth	0003_alter_user_email_max_length	2021-01-27 19:50:03.711132+00
9	auth	0004_alter_user_username_opts	2021-01-27 19:50:03.71609+00
10	auth	0005_alter_user_last_login_null	2021-01-27 19:50:03.72465+00
11	auth	0006_require_contenttypes_0002	2021-01-27 19:50:03.729176+00
12	auth	0007_alter_validators_add_error_messages	2021-01-27 19:50:03.735451+00
13	auth	0008_alter_user_username_max_length	2021-01-27 19:50:03.747302+00
14	auth	0009_alter_user_last_name_max_length	2021-01-27 19:50:03.75307+00
15	auth	0010_alter_group_name_max_length	2021-01-27 19:50:03.764899+00
16	auth	0011_update_proxy_permissions	2021-01-27 19:50:03.770258+00
17	auth	0012_alter_user_first_name_max_length	2021-01-27 19:50:03.778646+00
18	wagtailcore	0001_initial	2021-01-27 19:50:03.891003+00
19	wagtailcore	0002_initial_data	2021-01-27 19:50:03.89359+00
20	wagtailcore	0003_add_uniqueness_constraint_on_group_page_permission	2021-01-27 19:50:03.896338+00
21	wagtailcore	0004_page_locked	2021-01-27 19:50:03.898544+00
22	wagtailcore	0005_add_page_lock_permission_to_moderators	2021-01-27 19:50:03.901232+00
23	wagtailcore	0006_add_lock_page_permission	2021-01-27 19:50:03.903444+00
24	wagtailcore	0007_page_latest_revision_created_at	2021-01-27 19:50:03.90578+00
25	wagtailcore	0008_populate_latest_revision_created_at	2021-01-27 19:50:03.908158+00
26	wagtailcore	0009_remove_auto_now_add_from_pagerevision_created_at	2021-01-27 19:50:03.910337+00
27	wagtailcore	0010_change_page_owner_to_null_on_delete	2021-01-27 19:50:03.911956+00
28	wagtailcore	0011_page_first_published_at	2021-01-27 19:50:03.91325+00
29	wagtailcore	0012_extend_page_slug_field	2021-01-27 19:50:03.914707+00
30	wagtailcore	0013_update_golive_expire_help_text	2021-01-27 19:50:03.917116+00
31	wagtailcore	0014_add_verbose_name	2021-01-27 19:50:03.919517+00
32	wagtailcore	0015_add_more_verbose_names	2021-01-27 19:50:03.921708+00
33	wagtailcore	0016_change_page_url_path_to_text_field	2021-01-27 19:50:03.923999+00
34	wagtailcore	0017_change_edit_page_permission_description	2021-01-27 19:50:03.955616+00
35	wagtailcore	0018_pagerevision_submitted_for_moderation_index	2021-01-27 19:50:03.964411+00
36	wagtailcore	0019_verbose_names_cleanup	2021-01-27 19:50:03.988024+00
37	wagtailcore	0020_add_index_on_page_first_published_at	2021-01-27 19:50:03.995925+00
38	wagtailcore	0021_capitalizeverbose	2021-01-27 19:50:04.252898+00
39	wagtailcore	0022_add_site_name	2021-01-27 19:50:04.259906+00
40	wagtailcore	0023_alter_page_revision_on_delete_behaviour	2021-01-27 19:50:04.277048+00
41	wagtailcore	0024_collection	2021-01-27 19:50:04.283327+00
42	wagtailcore	0025_collection_initial_data	2021-01-27 19:50:04.291605+00
43	wagtailcore	0026_group_collection_permission	2021-01-27 19:50:04.305299+00
44	wagtailcore	0027_fix_collection_path_collation	2021-01-27 19:50:04.321227+00
45	wagtailcore	0024_alter_page_content_type_on_delete_behaviour	2021-01-27 19:50:04.334869+00
46	wagtailcore	0028_merge	2021-01-27 19:50:04.337143+00
47	wagtailcore	0029_unicode_slugfield_dj19	2021-01-27 19:50:04.344065+00
48	wagtailcore	0030_index_on_pagerevision_created_at	2021-01-27 19:50:04.351717+00
49	wagtailcore	0031_add_page_view_restriction_types	2021-01-27 19:50:04.380293+00
50	wagtailcore	0032_add_bulk_delete_page_permission	2021-01-27 19:50:04.397101+00
51	wagtailcore	0033_remove_golive_expiry_help_text	2021-01-27 19:50:04.410708+00
52	wagtailcore	0034_page_live_revision	2021-01-27 19:50:04.424466+00
53	wagtailcore	0035_page_last_published_at	2021-01-27 19:50:04.436198+00
54	wagtailcore	0036_populate_page_last_published_at	2021-01-27 19:50:04.447226+00
55	wagtailcore	0037_set_page_owner_editable	2021-01-27 19:50:04.463553+00
56	wagtailcore	0038_make_first_published_at_editable	2021-01-27 19:50:04.472038+00
57	wagtailcore	0039_collectionviewrestriction	2021-01-27 19:50:04.508336+00
58	wagtailcore	0040_page_draft_title	2021-01-27 19:50:04.532361+00
59	wagtailcore	0041_group_collection_permissions_verbose_name_plural	2021-01-27 19:50:04.538381+00
60	wagtailcore	0042_index_on_pagerevision_approved_go_live_at	2021-01-27 19:50:04.549618+00
61	wagtailcore	0043_lock_fields	2021-01-27 19:50:04.569581+00
62	wagtailcore	0044_add_unlock_grouppagepermission	2021-01-27 19:50:04.580952+00
63	wagtailcore	0045_assign_unlock_grouppagepermission	2021-01-27 19:50:04.596424+00
64	wagtailcore	0046_site_name_remove_null	2021-01-27 19:50:04.637129+00
65	wagtailcore	0047_add_workflow_models	2021-01-27 19:50:04.775623+00
66	wagtailcore	0048_add_default_workflows	2021-01-27 19:50:04.843771+00
67	wagtailcore	0049_taskstate_finished_by	2021-01-27 19:50:04.857748+00
68	wagtailcore	0050_workflow_rejected_to_needs_changes	2021-01-27 19:50:04.889629+00
69	wagtailcore	0051_taskstate_comment	2021-01-27 19:50:04.907362+00
70	wagtailcore	0052_pagelogentry	2021-01-27 19:50:04.932573+00
71	home	0001_initial	2021-01-27 19:50:04.954143+00
73	wagtailcore	0053_locale_model	2021-01-27 19:50:04.990106+00
74	wagtailcore	0054_initial_locale	2021-01-27 19:50:05.007015+00
75	wagtailcore	0055_page_locale_fields	2021-01-27 19:50:05.052924+00
76	wagtailcore	0056_page_locale_fields_populate	2021-01-27 19:50:05.074073+00
77	wagtailcore	0057_page_locale_fields_notnull	2021-01-27 19:50:05.117326+00
78	wagtailcore	0058_page_alias_of	2021-01-27 19:50:05.135813+00
79	wagtailcore	0059_apply_collection_ordering	2021-01-27 19:50:05.191872+00
81	sessions	0001_initial	2021-01-27 19:50:05.246517+00
82	taggit	0001_initial	2021-01-27 19:50:05.278708+00
83	taggit	0002_auto_20150616_2121	2021-01-27 19:50:05.291807+00
84	taggit	0003_taggeditem_add_unique_index	2021-01-27 19:50:05.301025+00
85	wagtailadmin	0001_create_admin_access_permissions	2021-01-27 19:50:05.326742+00
86	wagtaildocs	0001_initial	2021-01-27 19:50:05.352334+00
87	wagtaildocs	0002_initial_data	2021-01-27 19:50:05.382023+00
88	wagtaildocs	0003_add_verbose_names	2021-01-27 19:50:05.42505+00
89	wagtaildocs	0004_capitalizeverbose	2021-01-27 19:50:05.491214+00
90	wagtaildocs	0005_document_collection	2021-01-27 19:50:05.514337+00
91	wagtaildocs	0006_copy_document_permissions_to_collections	2021-01-27 19:50:05.541614+00
92	wagtaildocs	0005_alter_uploaded_by_user_on_delete_action	2021-01-27 19:50:05.572754+00
93	wagtaildocs	0007_merge	2021-01-27 19:50:05.575367+00
94	wagtaildocs	0008_document_file_size	2021-01-27 19:50:05.588461+00
95	wagtaildocs	0009_document_verbose_name_plural	2021-01-27 19:50:05.600383+00
96	wagtaildocs	0010_document_file_hash	2021-01-27 19:50:05.614901+00
97	wagtailembeds	0001_initial	2021-01-27 19:50:05.63208+00
98	wagtailembeds	0002_add_verbose_names	2021-01-27 19:50:05.635852+00
99	wagtailembeds	0003_capitalizeverbose	2021-01-27 19:50:05.639412+00
100	wagtailembeds	0004_embed_verbose_name_plural	2021-01-27 19:50:05.644039+00
101	wagtailembeds	0005_specify_thumbnail_url_max_length	2021-01-27 19:50:05.649868+00
102	wagtailforms	0001_initial	2021-01-27 19:50:05.673912+00
103	wagtailforms	0002_add_verbose_names	2021-01-27 19:50:05.694243+00
104	wagtailforms	0003_capitalizeverbose	2021-01-27 19:50:05.744582+00
105	wagtailforms	0004_add_verbose_name_plural	2021-01-27 19:50:05.756316+00
106	wagtailimages	0001_initial	2021-01-27 19:50:05.857057+00
107	wagtailimages	0002_initial_data	2021-01-27 19:50:05.861626+00
108	wagtailimages	0003_fix_focal_point_fields	2021-01-27 19:50:05.865467+00
109	wagtailimages	0004_make_focal_point_key_not_nullable	2021-01-27 19:50:05.86877+00
110	wagtailimages	0005_make_filter_spec_unique	2021-01-27 19:50:05.871811+00
111	wagtailimages	0006_add_verbose_names	2021-01-27 19:50:05.874529+00
112	wagtailimages	0007_image_file_size	2021-01-27 19:50:05.877324+00
113	wagtailimages	0008_image_created_at_index	2021-01-27 19:50:05.87992+00
114	wagtailimages	0009_capitalizeverbose	2021-01-27 19:50:05.882482+00
115	wagtailimages	0010_change_on_delete_behaviour	2021-01-27 19:50:05.884356+00
116	wagtailimages	0011_image_collection	2021-01-27 19:50:05.886014+00
117	wagtailimages	0012_copy_image_permissions_to_collections	2021-01-27 19:50:05.887837+00
118	wagtailimages	0013_make_rendition_upload_callable	2021-01-27 19:50:05.889372+00
119	wagtailimages	0014_add_filter_spec_field	2021-01-27 19:50:05.890679+00
120	wagtailimages	0015_fill_filter_spec_field	2021-01-27 19:50:05.892078+00
121	wagtailimages	0016_deprecate_rendition_filter_relation	2021-01-27 19:50:05.893377+00
122	wagtailimages	0017_reduce_focal_point_key_max_length	2021-01-27 19:50:05.894975+00
123	wagtailimages	0018_remove_rendition_filter	2021-01-27 19:50:05.898091+00
124	wagtailimages	0019_delete_filter	2021-01-27 19:50:05.900294+00
125	wagtailimages	0020_add-verbose-name	2021-01-27 19:50:05.902623+00
126	wagtailimages	0021_image_file_hash	2021-01-27 19:50:05.904121+00
127	wagtailimages	0022_uploadedimage	2021-01-27 19:50:05.938452+00
128	wagtailredirects	0001_initial	2021-01-27 19:50:05.961999+00
129	wagtailredirects	0002_add_verbose_names	2021-01-27 19:50:06.00697+00
130	wagtailredirects	0003_make_site_field_editable	2021-01-27 19:50:06.035353+00
131	wagtailredirects	0004_set_unique_on_path_and_site	2021-01-27 19:50:06.060136+00
132	wagtailredirects	0005_capitalizeverbose	2021-01-27 19:50:06.149156+00
133	wagtailredirects	0006_redirect_increase_max_length	2021-01-27 19:50:06.163419+00
134	wagtailsearch	0001_initial	2021-01-27 19:50:06.248214+00
135	wagtailsearch	0002_add_verbose_names	2021-01-27 19:50:06.31831+00
136	wagtailsearch	0003_remove_editors_pick	2021-01-27 19:50:06.338216+00
137	wagtailsearch	0004_querydailyhits_verbose_name_plural	2021-01-27 19:50:06.343137+00
138	wagtailusers	0001_initial	2021-01-27 19:50:06.36848+00
139	wagtailusers	0002_add_verbose_name_on_userprofile	2021-01-27 19:50:06.396633+00
140	wagtailusers	0003_add_verbose_names	2021-01-27 19:50:06.407922+00
141	wagtailusers	0004_capitalizeverbose	2021-01-27 19:50:06.439921+00
142	wagtailusers	0005_make_related_name_wagtail_specific	2021-01-27 19:50:06.47199+00
143	wagtailusers	0006_userprofile_prefered_language	2021-01-27 19:50:06.48533+00
144	wagtailusers	0007_userprofile_current_time_zone	2021-01-27 19:50:06.498695+00
145	wagtailusers	0008_userprofile_avatar	2021-01-27 19:50:06.513274+00
146	wagtailusers	0009_userprofile_verbose_name_plural	2021-01-27 19:50:06.5247+00
147	wagtailimages	0001_squashed_0021	2021-01-27 19:50:06.533017+00
148	wagtailcore	0001_squashed_0016_change_page_url_path_to_text_field	2021-01-27 19:50:06.537028+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
39jr3d1eofuryngkrq9yseu8qqfoqt5m	.eJztWmtv3MYV_S8G1l8mWUirdwB9kGS3jhPLbpzASIpCGHJGu8PXsOTQNKfof--5c4ePlTeNP7UwWkCyd8nh8D7PPfeO_vHsQXZu99C1unkw6tl3z46ffbO8lsg01xXdUJmstnad2so1JlnTknW8267fWKWL27h2b4OdbHd4Wp8mx8nxeXqRXKSPp-dXyXmi06NEJ8dnx0ebY3l0dnWqLvXlVXKM-xt5mZyc6LPHU3V69Xj6mD5i015unTTFt3WjPxrdf_vsu78-S9vmsTRKFbqXjXYW77_-Xv-Q_rrp6-z-9fDu0-33r3bZxav6x9fvP7qbc_2Xrb-_OUne3vXN7bvqV-Nf3WQXP745u9-1L96ev_rtxfnzSn9y18-dcYW-fmVL_byw1fahkqW-Xl3crjabpLBp3uLD6uRmdXbLF3M9xCv4fNIebejb5g7_Ouw33XrvLET1Q-t1ZbSopGi8Tr3oellURuJH_GZ0aURbWyX61d3Z6nIj28rSp6vb1AhTqaE3qsN6neENQhVS9G29ujtZ3Z4UlXVC59a2Utl-SHfrWY6h1pMcXdW6odBquqt07XZ8-4ivmKowlX5Py36C7_VC47MXvERXMNPwe3eVdDJehYkuXtDP_pNvZP1kwfO_d9bp63sJA4nUy3aAjRrfpYZNMZDGuYXtUj8aZXV3urq8EK3rbUNmleLRFNbbR2PCasemaaQojYwWTQaR7mQjc6cbsS1sAnMOwoiuMr1uWvpGz6Zx_WR-2JRWedXI3sgsvPosHdYsdwh821y_0lUz5OJ9bgtT2r7NzXMtG-TETkt1_ZP1PYuUiV7kRjddlXdwrNPbRqaZEX568VAK-nB7N6QIC4oXDo9Mtw7fXNdAVJZClJaXFqaf5I23ahjGNX2Ir1zyMqW3VmyxRXi56IfK5FIk2tfx6UarylgIo3tbdCTXJIqMgedojyCL03xzEgqSR9VI8L0trm5hO2XLOahTH-3cG53LNVvrS9OtUEfVxeF0u9vBbIVJBn5TGZzKgmqEAN6mPC0QFnK3HjLXjc10jqeQU0jTdNgLIY-w8V10O7uCPl9diUzmdpmGg4CCkxt1JopO-XzSeC3eyJJimzJfIdatcgQMklGBTYinGl2EiBjfo4IEC2ORcWUQfnR1ISvt-MtawAAa76ltLr3kRFmYQNDbausQHUmX8cIWrokro4JYT_kCWbE8G4OAl6xXZ3cV_YrXiAI9mllUto_ytBxOsMGcsVNc9sIhB9MgRd86GSJ0Le7ZF6kuoF0IL18aHfBRzxHkFrjHr0i9bslqKRCyMD5YzohaVt2UqekOL61MOVm2tpQcnhxfWz-kGfmC3lbR2ga5GoX17MtTMsSck5MBPghbyyY1HWKpU_CB8LI2wK9kBB3aD94JWVziHpQGikhI6GUecUkFFW2zxf8svwWwNV1OEUHPW29siZ3IK2PCk-MC-EWnLEwUhHJDjG_IhJrgZabp8V73EToQAPuwoHRp80Y6LK7oex11B8aSvA6o0NWaZSaBC72leA3GeA3YgPO8cKRwfCF7qWdn9gNSrjSIkaDtoSpXN0MvXaxwDjbbUqJC421cLBCRFob00rQOu0TNOQ1HY3r5BFlgBfVZ_nxtJRJ50nAl-aEZgosItwC0DtnSix1QF4G4M8B0-H626R8nCxk7eIiyEbxkV-lQOlBwyVNL5FjGXjmZf8S7HLZ1Y45P3ohQST5wlN52hJsSBZS0-lLEv8ySpj-M-G9rUn9Md9Ga6aUoURm0U6TzY5QTMNPj656dlnVfLlIJ0UrMqrJgEYhufEp1A1pIEJPIKpcMlcARQnSzB_jRPArJLEvr5RjFaggp8_Mcs7ye0gIJFFLP9lZ1tHPFOA95A8YTaiYBuLxuQEuovoveZoQuf1QtgCZjhbg3rU_9aC8ik3nDYeLgRd9YhoAAGIMp5ZbzlkTDL5JvxAgoAvujZuYdf4SJCp0hhJhkkJ0MECGSCwt-ato8bDyHoKSSQEG5oysB9lEURQ-rIiyj_UDSUkRpH0pCMOC9jMi4rA97DIPLomwipOwVPa90OqhRq07pSCM_9wkJV3GuUWEJVZVWzlHSPS2vSs5BOL4nhoOFc2BSfniuKR0LyGWpH8pIXtCGcMWwZIeMRPVywk74MFiDmbOXAJwI6BFlJyFCgieyIUDNBBgrgCb4MDAdMKJh5IJ-yURQcsLzBCSxcFxdwYjMUuQCQQJPCA9HwWWwLZPGgh_Mg5KySCjAFUcfixvsCZeT-oh8EgQplvASFdbc0P3clIgvCuqvDb8fwQE0A_hbRb3NDFdL_KT8dkQMGEVniJppHKrdCKFk8omuwXZDD75AFDMjfBuB42BuMLbstRKPiPA0mwJGhcTwY4j2JlK6WNXXq5O7pFlt_rQ6eRlkCJ72MuJIX1muy-84B0fJwSMobRXI4pZ8DE0oKUF9JK_fontwe_x7mOuOSEa2gyTK5ghCJh0gFPE-aWq2iHAyF3cFBPKGv4-gGSh4ERuaqRIo-1mbEjz5pUXronH5p8NF6x1QjtoN0UgPVCAANMC4DASs57I7ql3JSWy7wBUbO5lokZ5CAXhBBOy2GbaIDwLezeV7vKg2OhLZzRGNKa6iP0YEfxc6ICd-jvnuqef9IdaLLa9Ziw-OgGLq-lANEatUIwszNQGTfB4f9UT6D3cE4sPNexLxA1AJDbMWNzm0B-S9P9xAsNx-ERtQMY0cY6_qzr6kpkz8-eU9vefPoekXL1P70RSF3Gpxr4lE59h5LV6TPQ4JGvf0sYIj-RYKY3do0Yl26u_BAUb6T139hKHRFGgvJqoVqhknKpV99kJHVR9Xmqm_a3MZMXRqPd4mOqUA5h4AchBLjtOg2hawpvipg3X-E9MmiPMGO4NnrF5uVpdHq6uXH2woIIxO8eILgf5Cj_WB-hcJKZ1udPUk4UO56qL_iJLIMKgBukSLgOXjykImzpg95_Gl2OhNbQ8BTB1DlNiaEaGhaDldZvSarSESNEVwBrVBfZjYVNSjKYvruJtzDxZX7wHgUgPUtLEfolT3I2wTVLcsGmF6XLPko5_NEUa0B52C2wk-6jBdXHSclmgYZ_zXVil7RI58CPaRXwqzNkmzj4dhNgbmMh7_H4b_lTAESvwvEQWBBg_BFZwbOuphUZO4bnA0Ih5VTqOPiRE6-3TSMxnLjMU3PDMVu6lSPKIgE7E_xOlootiOX1BleLySLWd46-AmuX9RWNCHvIttL9wQm4xI0yPNZP8NTCy5nr2wJU2Z31B1Tylqf7BtieqpY60NPaLOuSvQB5RcVCKaun1dQNY6tLvFF2PYbneBtvAwVUTgq5FY9d6MhELHAV8puS0d-gPj3mUvujcw3Kvo88Tk34AQbRumD9xID3MfQuOH0clzPk7nGNRx0_SbhohTZk48knJjmoWGmcPqbrO6OcoIl4GlLe-XLAnxXvs47qgClECJbGp14_Amjis8t_GdQFBxu-9HcEzxRVe62fIBUsCzp5vRHKIfaGiVeiJHW5rTDkW3OCNZc7DrMYd5TEBdU0jthfEBlS43PNRdnjWU4WwiWZwTTJCIiHKke7EYRssn50NGaXmofnCR6S1o4-_4ambu0FmN0_OQqgdSk_Ubg4yBXVR74Bh1DuBYg9mqoUoDLuzPWFLqegu5mFHYqCqEkm2tw4wz6eJAQRBBWNbFw7OfEa-jEDT1KBzN7tBgRHCEWIiOtivrNLOV8QGsFiOP_UlLeHdrE-LccTaWWuIO5AAa0ajlrIXKMk1mF4dDX93MmRqjdmfrL2ZhXXl8fhjBfhOET3TKuTxcReSQUZkbPTklv2mcFr9UBv_6xMQoZTw40BnanjuVlM_-xHz4Jz7Ilk5lGsvxzTCxaNG6OCkJp0QSPZeDrWJXI97yocx-i5tFzMCDP3YJ37g8TTvxmnqwEAP9Vnw_6Gorwc0ClFSyy-O9EMngkR7FIR2y0LCX0gkAeRuNw2eWvajtPnrAMl04ZKlynvCVYovIiPE8GkNW80b4MkzKxJaxJNL7-cFxtA55I86zGSFVqL4iN0XeiZS4TR8OeWQ29t3L0dTnSDGZC14ARwgsemHrkY5O86r3oW7qkRUoYh8NI3vL7BPGDi3veCaLTLOVm2esXlLM6IYO5PZGyzX12yN155Mr8QvgbnbuEtR6Ps1KzTxfuL0jyA5_pEAlMlhzLkqTpuHYNMUynY8ymWlbPjq3AcahsgCxla4CObMlUjEcWiyxFZVgKplhdjqy0-koVryIh_JeTuhFLm51o7gDeVJukACSBy1h6OCHz6JswRlK6joMxwAenGZU-4fkcsG9oc_45xnzSczEUBeQGCvMVwaLbdFtr3f0R0Kttg_8N0P4SMdvD0q3aWNqZ2x1_XxrHwrzUT9Id_1cf6pNEz4---b4_Pjk5PTo8myzPt9szo4v_vbPfwE1tMYD:1lBPee:U3Mj4FJwkLalH3o382gvbA9VdK7lhIf1gfLONgS9nU0	2021-02-28 22:14:12.654943+00
nz44xd7emwpe2mjh76bjgdmausscn2ly	.eJxVjEEOwiAQRe_C2hCmBQou3fcMZAYGqRqalHZlvLtt0oVu_3vvv0XAbS1ha7yEKYmrAHH53Qjjk-sB0gPrfZZxrusykTwUedImxznx63a6fwcFW9lr1gQENg40xKytJ0scFTGBAdUBKuN1cuw8wc47dNT3bLJO2medYxafL_0tOLw:1lBRJj:X1PazR9t5HRp4A4J_WXuZQV8anCFRbOTfYaIN5SOWDs	2021-03-01 00:00:43.184366+00
x4jr0exi2vr7i8e7mtonf72rc7ol8iy0	.eJztWmtv3LgV_S8GJl-4O7DHz1nAH2wn3azzRJyF2y0KgxLpGepFVY8oYtH_3nP5ksae7eZTi6BFbEcjUeTlfZx77uX84-CB9932oW9l86DEwU8Hxwc_zO8lPM1lRQ9ExquNXqa66hqVLGnI0j9tl--0kMW1H7szwZa3W7x9fnG4wo94XF-Ix7N1ytPz1XlydnJ4dHGUyuPTNJGPayEeE8mPZLqSj8cXyeP67GSVHuLf4ykmHfim46r4sW7kFyWHHw9--utB2jaPpRKikANvZKex_uWne92ui1GdnCS_8puz7S9t37z9PPQXvx0Or_Wfj45f_-Xzqvl6e3_VnB7mHz_d_jze8swkb99sVxfnb1--qOTX7vJFp7pCXr7WpXxR6GrzUPFSXi7OrxerVVLoNG9xsTi-Wpxeu5u5HP2d1eprtklK-rS6wd8O88VHd52GqGZsjayUZBVnjZGpYf3Ai0px_LDflCwVa2st2LC4OV1crHhbabpaX6eKqUqMgxI9xssMKzBRcDa09eLmeHF9XFS6YzLXuuVCD2O6XU5yjLWMcvRV242FFPGpkHW3dY8P3R1VFaqSdzTsE2wvZzs-femGyApqGn_vqeAd93ehovOX9LP75jtePxnw4u-97uTlew4FsdTwdoSOGtOnyqlipB3nGrpLTVDK4uZkcXHO2m7QDamVs0dVaKMflbKjO6eahrNSca_RZGTpljc872TDNoVOoM6RKdZXapBNS5_o3dSPj-qHTmmUEQ0fFM_s0qfpuHRyW8fXzeVrWTVjzu5yXahSD22uXkjeICa2kovLT9oMTqSMDSxXsumrvIdhO7lpeJopZuLCY8no4vpmTOEW5C_OPTLZdvjU9Q1EdVKwUruhhRqivP5RDcV0zWD9K-dumJAbzTaYwi7OhrFSOWeJNLV_u5GiUhrCyEEXPckVReHe8Tqaw8rSSfcwCgXJ_dZI8J0p1tfQndDl5NSp8XoelMz50mnrW8Pt75uLs6_7w-1mC7UVKhndSqU1qhNUwgWwmjA0gGnI3RrIXDc6kzneQkwhTNNxx4UM3Mb03uzOFHS9XrOM53oehiPDBqMZZcaKXpg87njJ3vGSfJsiX8DXtegIGLhDBadCvNXIwnpEWEdYCWbKIuVyK3wwdcEr2bkPSwYFSKxT65wb7gJlpgJGq9W6g3ckfeYGtjCNH-k3iPEUL5AVw7PgBG7IcnF6U9Evu4UXyKBmVunBy9M6d4IOpoiNfjmwDjGYWimGtuPWQ5fsvbNFKgvszrqXKZW0-CgnD-pmuOeWSI1sSWspELJQxmpOsZpXfYzUdItFK1VGzdaagsOQ4WttxjQjW9BqFY1tEKteWONseUKKmGIyKuCe6Zo3qerhS72ADZjhtQJ-JQF0aD5Yx0ZxiWfYNFCEQ0LDc49Lwm5RNxv87-TXALamz8kj6H1tlC4xE1klBDwZzoKfN8pMRVaobvT-DZmQEwzPJL0-yMFDBxxgFxaELHXe8A6DK_pc-70DY0neDqjQ19LJTAIXckP-apVxC9iA8QzraMN-QWelwRlzGBFypYKP2N3uy3J1Mw688xmOFxIvipEGd7ykWxuKWyhg499lcFANvRqu2g7jvCJcVAbdGv4EaKAU8SycvreMibBpXGJ504zWYgRjwN0OwTOwLUAYfrlVgHi4wqTiP44dUrQ1GAUnaMq2kjaTIP-S4eZAMnfFMqo_wF8O3XYh5KM1PHKSDTqKdh3Qp0Q-pV19awI4OTRn3f4E8KGm7YfoZ62KiyJjZeRVtOdHLydQZ8DHHT3NaQCfRRacl4hWpUEq4Oy4SmUDlkiIk_Aq5w45ASsE8GoH_716BGKbl9rw4MVitBH0efJZN54cH_FkI1EPWvQ0c-VgH_JayCcQTSyOGdmApVC6Z4POCGz-KHkAXELCeK9ak5qgL-KWeePcpIMVTaMdIlj8GFXJNy6MSTT8IvgCZGAj0D9SaN67S6iokBlcyHEO0pMCQHiuoUFXVZvbiScX5JQhyCm3dMdmAeRINkCrcEuvP3C2FF462AxhFfiee6Ccp4sdwuGyJG88wuzkQCNkOoqwq15Izyqf24SEq1ysUZ6xSZZGTl7SP822gk9OGNbx7qBhHKjUvTylmN4J6LLUMJaey6AqcQlEkx4yEtXwCKWwodWGI9KGA3A8vnvQjULYAE94Q4CaMRBYAI21oSU-IEhjoIZmTkyQgez7BCQ-j6zXUKIjLXyGIJY22Je94Nzq1nHIwr2Y9w7nE3Jw4bzPiWv1CZPT9uH5JAhCLHFDhB1zRc9zVcK_yKm_N_x-BCWQDsA_CCp1Jria42dqk18eUHSCqInVIdsFCCWVR_YG3Y0D6AMxzozwLQDH3thw2LJTWTzCw9MsOoywgWGCiw7KMzyf5JeL45ukWaz-tDh-ZWWwljbc48hQaZeXP7oYDJKDVlDYCnDHDdkYO6GgBBPibvwGxUS3Q8fHKe-wJJAfBFE2eRAiaQ-_8M9pp2oDDyd1uSKBQF65zwE0LSMvfH0TM4HQz6oWa8lvTVqjvmiH_UnrI1COqg_WcANUIABUwLgMfGxwaTdsu-JRbD3DFe0LG6-RgVwBeEF87LoZN_APAt7VxR0WqpX0vHZ1eAhp1t4eAcE_2oKoY599vBsqgd_4fLFxY5bsviOgiEUgsiF8lXJkoWJNEOUzuJSxBthfILD7qzsS8R6ohPpZsqscuwfk3e2vJ5zcZuYb2GLqOcZO1p1sSTUa-_nVe1rnZ9sDYK9S_UUVBd9I9l4Sp84x85Ldkj72CernND6DI_hmG8bs2EXP2ljugwOEaoCK_IihXhWoNiLVstnMBSqlfWeFnrI-7jSx3Gtz7jE0ViIfEplaqmxLAshBLNk3h2pdQJvsUw_t_CeaTxDnHWYGz1i8Wi0uDhfrV_faJhCHTv7mS4ZyQ4b8QOUMh5SdbGT1JOBtuuq9_YiScNu3Abp4jYDl485MJhcxO8Zzt3zdF6sgApjauyixNcVsQdG6cJnQa9IGS1AjwRhUFQ22gVNRySY07uNp7koyP3oHAOc7QE4L5RGFugmwTVDdOtEI0_2YOR991lYIaA86BbMTfNS22TgrQDXRMBfx31umHOA5_MHqh38rzK6_JBu-H2a9Y8798f9u-F9xQ6DE_xJRYCjw4FzWuLaiHmc5yeUN543wR5FTJyQywk4_bfxEZamQfO07MdnFTPGIhEzEfh-nowZjGz4gy7j2SjZv6S2tmfjuTaZBH_Lel70wgy8yPE33NNPZb3TE0uWzl7qkpvM7yu4pee0b3ZbIntLnWlsjyjx0f55vcpaJqAn3fQFZ26HcLb4ZwwqxGle_g2Gu2CTubR0ktgBt97rLlesUzhvYpW14J7PmcwwsyNXhLiX1WH7yJ4cOSki-D4UcVA0a5IOW8GadIrCc8b-KZyK0ZK3B9xjYeXoIWgcPrNoJMb9nG2K1th3C1HrXbqWeUu1U8NjNssWu9ruFXLytpW2WJb2vTBllmjnA7m8ihMD3clD5XHTUBAJT9VEGycCF276s00xXylivn9XOuyW7XbvVCZE332RJNSUhsgHV-mJetBO-U4tvduhQ2iD9CDQUQduDUWE16ZvAJXe9inHYcyQwb1DsNJV3aN7URvs3mYmmtS0p110Zp-KU_46LeK-jNgydkFCjOcJ1LC4IMGO_3DaiFjerxdVhRskaCbZ18yXzKmmnpxBmFDa_YBNZ7H_4jp7vYRnX2-kZkMb1gEw_CwxZyWbjDhltkns6GTWnhpE6mTBtYWckQOpnwfW9IRdVRO1W198KXer8sE_3Q9dvjHyQTjvnh6xwQdKzI0VPTsuvmk6yXyuFvyZR3muczfeUhHpwJUrqzgDZdAjI7nlLpzONdp7uXGFWm_W-RWJPiziKrQ668uUM--AOZ3Zr28z7BV582yfuwcVJ2rNbKr5srAwb9ssoqw0HKbPuUvE-D4E2VrmHng3M6sEj7IRXRMCsigCClT_9GVitd7EfSurhsxbG_BSQs-DpmNnav-QdQ_jHuUa_IV8vlsR4nx8iew2RRXwz20WCsKmX_ehtRbSzoZNH2zYs8p6lRHYGewjEs1CIz3tVz0E_qhHWAWmwtHpmg8BPYwPrziZSGWiCIDrSuKhuHR2FEWwNHM5sgZi66qamq-HkS7KhA7udXnNNBXjg8u5ki_2KzDUZfY6agzvtStXUcLi-oexrv8RA8Gg1PAFS3Kk9Vk0xTOZBJhWndUfr2mZkbJmB6fKuAlvTJULUnmLM0yQgNsKlbaYGumqPatkH4Zj9PHbMxDxtsIAg9IIWK-eHJbA1oiwe-AVBQzrxDXLkukZaN55DHJJpPj9oouYPZTg1HerynUNd7KqQNWZesl-Q3kL6guQTtM872n02a2cPc8rLI8OlvdEhU8TmZ5t0woRcxxt_RLHvSxXzzQXLKHul3Kmx5ULOZV76L0kYHrM-hVkrG-FKwCdMDUDEXafLdn3M-CzEZ_m5pLJPuTjEi7FJuPulBT4rfuA_4esyk3WjvmYp3pOz7yw9tUW_udzSl7ZaqR_cd7hwSeefD0K2aaPqTunq8sVGPxTqi3zg3eUL-bVWjb08-OHo7Oj49PT8dH24PDo5PVmd_e2f_wKTTEIY:1lCK2Q:OqfjAJb6J0pOi4mjoiZqUNSs6JRlehPFG0zRD9Ux4MM	2021-03-03 10:26:30.165837+00
\.


--
-- Data for Name: home_arteunitemock; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.home_arteunitemock (page_ptr_id, intro) FROM stdin;
\.


--
-- Data for Name: home_homepage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.home_homepage (page_ptr_id, earth, earth_head, flame, flame_head, long_name, quote, star, star_head, quote_author, stodola, wolna_ziemia, workshop) FROM stdin;
3	<p>Chcielibyśmy, żeby wiedzieli o naszym projekcie wszyscy, którzy czują Ziemię jako wspólny dom całej ludzkości. Mamy na uwadze odtwarzanie naturalnej relacji między człowiekiem a naszą planetą. Chcemy pokazać, że nie potrzebujemy posiadać Ziemi, aby na niej żyć.<br/><br/> Jesteśmy nową społecznością w trakcie powstawania. Naszym celem jest zmienianie świata współczesnej cywilizacji i panujących w nim relacji poprzez propozycje odmiennych rozwiązań na życie.<br/><br/>W oparciu o udane zapisy białych plam na mapie prawa i zakładanie organizacji o strukturach poziomych, możemy tworzyć świat oparty o nasze zwyczaje, wewnątrz każdego demokratycznego państwa i to zupełnie legalne.<br/>Jednym z tych zwyczajów jest wyeliminowanie własności prywatnej, ale jedynie tam, gdzie mogła by ona zaistnieć jako władza człowieka nad człowiekiem.</p>	Rozwój w kierunku integracji z całym życiem na Ziemi jest naturalną możliwością przetrwania każdego gatunku i wynika bezpośrednio z ewolucji życia, dlatego jest też naturalnym kierunkiem ewolucji świadomości człowieka.	<p>Pierwszy raz o tej inicjatywie, można było się dowiedzieć w Zielonych Brygadach (Sierpień 2002), jako &quot;Projekt Tęczowy Krąg&quot;. Wtedy też kontaktowaliśmy się z siecią społeczności WAS (Wiejskie Aktywne Społeczności), z których część należy do GEN (Global Ecovillage Network). Jako społeczność zgłosiliśmy do WASu swój udział z chęcią rozpowszechnienia naszego projektu na szerszą skalę.<br/><br/>Obecnie tworzymy ogólnopolski Ruch na rzecz uwalniania Ziemi spod własności indywidualnej, dla wspólnot ekoosadowych.<br/>Mianem „Wolnej Ziemi” określamy taki teren, który jest użytkowany i zarządzany wspólnie, społecznie, przez pewną grupę ludzi na zasadach równości i braterstwa w intencji dobra i korzyści zarówno użytkowników tej ziemi, jej sąsiadów, całej ludzkości, przyrody oraz przyszłych pokoleń.</p>	Odrzucając całkowicie taką wartość, jak posiadanie Ziemi, przywracamy jej w naszej świadomości, naturalną funkcję jednego z żywiołów.<br/>Ziemia, zarówno jako Planeta, jak i ta pod nogami postrzegana jako grunt, który może być czyjąś własnością, nigdy nie była i nie będzie należała do człowieka.	<p>Stowarzyszenie na rzecz uwalniania Ziemi spod własności indywidualnej, dla wspólnot ekoosadowych.</p>	Nasze czasy narzuciły, konieczność stworzenia filozofii, która miałaby charakter globalny i uniwersalny, całościowy i uzdrawiający.	<p>Opierając się na tej jednej fałszywej wartości, cała światowa ekonomia z koncernami i bankami, prowadzi ludzkość do samozagłady.<br/>To właśnie z tego powodu, na naszej planecie bez przerwy trwa wojna między człowiekiem a naturą. Niszcząc dla krótkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich środowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie świadomości planetarnej, potrzebujemy zdecydowanego uderzenia właśnie w ten punkt i pokazania światu, że nie da się decydować o czyimś życiu, poprzez wymyślone prawo do jego zawłaszczenia.Nasze zaangażowanie się jest bardziej autentyczne, kiedy wynika z naturalnej chęci wewnętrznej realizacji, a nie z naśladowania, lęku, albo podążania za przewodnikami bądź za kimkolwiek.</p>	Krytycznym punktem w hierarchii wartości współczesnej cywilizacji, jest powszechne przekonanie, że możemy mieć całkowitą władzę nad tym co posiadamy.	Henryk Skolimowski	<p> Ma łączyć wszystkich, którzy mieli by na uwadze, jak istotna dla życia na Ziemi jest idea równości ludzi wobec miejsca w którym się znajdują. Jak również to, że Ziemia nie należąca do pojedynczego właściciela, jest bardzo istotnym aspektem budowania wolności i świadomości będącej alternatywą do konsumpcjonizmu i chęci zawłaszczania sobie tego, co tak na prawdę jest dobrem wspólnym.<br/>Przedsięwzięcie nasze ma pokazywać, że da się tworzyć wspólnotę na zasadach równości, bez potrzeby posiadania miejsca w którym żyjemy. Ma to być też przykład, w jaki sposób można dążyć do jak najbardziej ekonomicznego z punktu widzenia zużycia energii, oraz jak najbardziej samowystarczalnego stylu życia.</p>	<p>Mianem Wolnej Ziemi określamy taki teren, który jest użytkowany i zarządzany wspólnie, społecznie, przez pewną grupę ludzi na zasadach równości i braterstwa w intencji dobra i korzyści zarówno użytkowników tej ziemi, jej sąsiadów, całej ludzkości, przyrody oraz przyszłych pokoleń.<br/>Ziemia, zarówno jako Planeta, jak i ta pod nogami postrzegana jako grunt, który może być czyjąś własnością, nigdy nie była i nie będzie należała do człowieka. To my ludzie przynależymy do Ziemi i odkrywając to, możemy również odkryć naszą faktyczną funkcję i misję tu gdzie jesteśmy..<br/>a jesteśmy opiekunami i strażnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale również indywidualnie.</p>	<p>Z okazji założenia przez Stowarzyszenie Arte Unite zbiórki społecznościowej, chcieli byśmy Was zaprosić do udziału w naszych warsztatach.<br/> Organizowaliśmy już w Lublińcu Jogę wg Iyengara oraz naukę tynkowania gliną ścian słomianych, w połączeniu z budową izolacyjnych mat ze słomy.<br/> Obecnie mamy możliwość przeprowadzenia zdalnie - przez internet, kilku ciekawych zajęć, jak również już zaplanowanych warsztatów w naszej Stodole, ale dopiero jak skończymy ją remontować za zbierane w tej chwili pieniądze.<br/> Uznaliśmy, że w tych ciężkich czasach nie można już na nic czekać i że jest to dla nas ostatni moment na to, żeby być albo nie być. Od tej zbiórki zależy, czy uda nam się nadal spełniać nasze marzenia o kreowaniu życia wokół siebie i zmieniania świata na lepsze. Im więcej osób zaangażuje się w naszą akcję, tym bardziej uda nam się zmienić warunki i możliwości życia dla nas i dla innych ludzi.<br/> Dlatego zachęcamy serdecznie wszystkich, do aktywnego przyłączenia się materialnie do inicjatywy, która może stać się naszą wspólną.</p>
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_collection; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_collection (id, path, depth, numchild, name) FROM stdin;
1	0001	1	0	Root
\.


--
-- Data for Name: wagtailcore_collectionviewrestriction; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_collectionviewrestriction (id, restriction_type, password, collection_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_collectionviewrestriction_groups (id, collectionviewrestriction_id, group_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_groupapprovaltask; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_groupapprovaltask (task_ptr_id) FROM stdin;
1
\.


--
-- Data for Name: wagtailcore_groupapprovaltask_groups; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_groupapprovaltask_groups (id, groupapprovaltask_id, group_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: wagtailcore_groupcollectionpermission; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) FROM stdin;
1	1	1	2
2	1	2	2
3	1	1	3
4	1	2	3
5	1	1	5
6	1	2	5
7	1	1	6
8	1	2	6
\.


--
-- Data for Name: wagtailcore_grouppagepermission; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) FROM stdin;
1	add	1	1
2	edit	1	1
3	publish	1	1
4	add	2	1
5	edit	2	1
6	lock	1	1
7	unlock	1	1
\.


--
-- Data for Name: wagtailcore_locale; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_locale (id, language_code) FROM stdin;
1	pl
\.


--
-- Data for Name: wagtailcore_page; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at, live_revision_id, last_published_at, draft_title, locked_at, locked_by_id, translation_key, locale_id, alias_of_id) FROM stdin;
1	0001	1	1	Root	root	t	f	/		f		\N	\N	f	1	\N	f	\N	\N	\N	\N	Root	\N	\N	b59f2bc8-f317-471b-8a04-85d9403b5bc2	1	\N
3	00010001	2	0	Home	home	t	f	/home/		f		\N	\N	f	3	\N	f	2021-02-15 23:04:42.443259+00	2021-02-07 06:38:02.740781+00	11	2021-02-15 23:04:42.532578+00	Home	\N	\N	4d760b9f-f4c3-407a-92e4-17f32be77507	1	\N
\.


--
-- Data for Name: wagtailcore_pagelogentry; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_pagelogentry (id, label, action, data_json, "timestamp", content_changed, deleted, content_type_id, page_id, revision_id, user_id) FROM stdin;
1	Home	wagtail.edit	""	2021-02-07 06:27:14.888125+00	t	f	3	3	1	1
2	Home	wagtail.edit	""	2021-02-07 06:37:51.925883+00	t	f	3	3	2	1
3	Home	wagtail.edit	""	2021-02-07 06:38:02.735153+00	t	f	3	3	3	1
4	Home	wagtail.publish	null	2021-02-07 06:38:02.875497+00	f	f	3	3	3	1
5	Home	wagtail.edit	""	2021-02-07 14:10:58.266414+00	t	f	3	3	4	1
6	Home	wagtail.publish	null	2021-02-07 14:10:58.42257+00	t	f	3	3	4	1
7	Home	wagtail.edit	""	2021-02-07 14:16:55.173578+00	t	f	3	3	5	1
8	Home	wagtail.publish	null	2021-02-07 14:16:55.287497+00	t	f	3	3	5	1
9	Home	wagtail.edit	""	2021-02-07 14:24:43.05199+00	t	f	3	3	6	1
10	Home	wagtail.publish	null	2021-02-07 14:24:43.183414+00	f	f	3	3	6	1
11	Home	wagtail.edit	""	2021-02-14 22:05:22.770676+00	t	f	3	3	7	1
12	Home	wagtail.publish	null	2021-02-14 22:05:22.885945+00	t	f	3	3	7	1
13	Home	wagtail.edit	""	2021-02-14 22:14:00.173831+00	t	f	3	3	8	1
14	Home	wagtail.publish	null	2021-02-14 22:14:00.30185+00	t	f	3	3	8	1
15	Home	wagtail.edit	""	2021-02-15 22:48:31.24425+00	t	f	3	3	9	3
16	Home	wagtail.publish	null	2021-02-15 22:48:31.326144+00	t	f	3	3	9	3
17	Home	wagtail.edit	""	2021-02-15 22:53:01.66276+00	t	f	3	3	10	3
18	Home	wagtail.publish	null	2021-02-15 22:53:01.746443+00	t	f	3	3	10	3
19	Home	wagtail.edit	""	2021-02-15 23:04:42.502611+00	t	f	3	3	11	3
20	Home	wagtail.publish	null	2021-02-15 23:04:42.585941+00	t	f	3	3	11	3
\.


--
-- Data for Name: wagtailcore_pagerevision; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_pagerevision (id, submitted_for_moderation, created_at, content_json, approved_go_live_at, page_id, user_id) FROM stdin;
11	f	2021-02-15 23:04:42.443259+00	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-15T22:53:01.696Z", "latest_revision_created_at": "2021-02-15T22:53:01.577Z", "live_revision": 10, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, ale jedynie tam, gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p> Ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela, jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.<br/>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 tynkowania glin\\u0105 \\u015bcian s\\u0142omianych, w po\\u0142\\u0105czeniu z budow\\u0105 izolacyjnych mat ze s\\u0142omy.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie - przez internet, kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107. Od tej zbi\\u00f3rki zale\\u017cy, czy uda nam si\\u0119 nadal spe\\u0142nia\\u0107 nasze marzenia o kreowaniu \\u017cycia wok\\u00f3\\u0142 siebie i zmieniania \\u015bwiata na lepsze. Im wi\\u0119cej os\\u00f3b zaanga\\u017cuje si\\u0119 w nasz\\u0105 akcj\\u0119, tym bardziej uda nam si\\u0119 zmieni\\u0107 warunki i mo\\u017cliwo\\u015bci \\u017cycia dla nas i dla innych ludzi.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>"}	\N	3	3
10	f	2021-02-15 22:53:01.577193+00	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-15T22:48:31.277Z", "latest_revision_created_at": "2021-02-15T22:48:31.182Z", "live_revision": 9, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, ale jedynie tam, gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 tynkowania glin\\u0105 \\u015bcian s\\u0142omianych, w po\\u0142\\u0105czeniu z budow\\u0105 izolacyjnych mat ze s\\u0142omy.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie - przez internet, kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107. Od tej zbi\\u00f3rki zale\\u017cy, czy uda nam si\\u0119 nadal spe\\u0142nia\\u0107 nasze marzenia o kreowaniu \\u017cycia wok\\u00f3\\u0142 siebie i zmieniania \\u015bwiata na lepsze. Im wi\\u0119cej os\\u00f3b zaanga\\u017cuje si\\u0119 w nasz\\u0105 akcj\\u0119, tym bardziej uda nam si\\u0119 zmieni\\u0107 warunki i mo\\u017cliwo\\u015bci \\u017cycia dla nas i dla innych ludzi.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>"}	\N	3	3
1	f	2021-02-07 06:27:14.685056+00	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "body": "<p>Ala ma kota</p>"}	\N	3	1
2	f	2021-02-07 06:37:51.915945+00	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": true, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": "2021-02-07T06:27:14.685Z", "live_revision": null, "alias_of": null, "body": "<p>Ala ma kota</p><p>a kota ma al\\u0119...</p>"}	\N	3	1
4	f	2021-02-07 14:10:58.225814+00	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-07T06:38:02.740Z", "latest_revision_created_at": "2021-02-07T06:38:02.722Z", "live_revision": 3, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "<p>Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.</p>", "quote_author": "<p>Henryk Skolimowski</p>", "earth_head": "<p>Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.</p>", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/>   <br/>Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "<p>Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.</p>", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "<p>Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.</p>", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>"}	\N	3	1
8	f	2021-02-14 22:14:00.145636+00	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-14T22:05:22.804Z", "latest_revision_created_at": "2021-02-14T22:05:22.729Z", "live_revision": 7, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>"}	\N	3	1
3	f	2021-02-07 06:38:02.722917+00	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": true, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": "2021-02-07T06:37:51.915Z", "live_revision": null, "alias_of": null, "body": "<p>Ala ma kota</p><p>a kota ma al\\u0119...</p>"}	\N	3	1
5	f	2021-02-07 14:16:55.14025+00	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-07T14:10:58.304Z", "latest_revision_created_at": "2021-02-07T14:10:58.225Z", "live_revision": 4, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>"}	\N	3	1
6	f	2021-02-07 14:24:43.009281+00	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-07T14:16:55.208Z", "latest_revision_created_at": "2021-02-07T14:16:55.140Z", "live_revision": 5, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>"}	\N	3	1
7	f	2021-02-14 22:05:22.729116+00	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-07T14:24:43.085Z", "latest_revision_created_at": "2021-02-07T14:24:43.009Z", "live_revision": 6, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p><b>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</b></p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach. <br/>Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych. <br/>Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze. <br/>Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107. <br/>Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>"}	\N	3	1
9	f	2021-02-15 22:48:31.182853+00	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-14T22:14:00.204Z", "latest_revision_created_at": "2021-02-14T22:14:00.145Z", "live_revision": 8, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 tynkowania glin\\u0105 \\u015bcian s\\u0142omianych, w po\\u0142\\u0105czeniu z budow\\u0105 izolacyjnych mat ze s\\u0142omy.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie - przez internet, kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107. Od tej zbi\\u00f3rki zale\\u017cy, czy uda nam si\\u0119 nadal spe\\u0142nia\\u0107 nasze marzenia o kreowaniu \\u017cycia wok\\u00f3\\u0142 siebie i zmieniania \\u015bwiata na lepsze. Im wi\\u0119cej os\\u00f3b zaanga\\u017cuje si\\u0119 w nasz\\u0105 akcj\\u0119, tym bardziej uda nam si\\u0119 zmieni\\u0107 warunki i mo\\u017cliwo\\u015bci \\u017cycia dla nas i dla innych ludzi. <br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>"}	\N	3	3
\.


--
-- Data for Name: wagtailcore_pageviewrestriction; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_pageviewrestriction (id, password, page_id, restriction_type) FROM stdin;
\.


--
-- Data for Name: wagtailcore_pageviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_pageviewrestriction_groups (id, pageviewrestriction_id, group_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_site; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_site (id, hostname, port, is_default_site, root_page_id, site_name) FROM stdin;
2	localhost	80	t	3	
\.


--
-- Data for Name: wagtailcore_task; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_task (id, name, active, content_type_id) FROM stdin;
1	Moderators approval	t	2
\.


--
-- Data for Name: wagtailcore_taskstate; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_taskstate (id, status, started_at, finished_at, content_type_id, page_revision_id, task_id, workflow_state_id, finished_by_id, comment) FROM stdin;
\.


--
-- Data for Name: wagtailcore_workflow; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_workflow (id, name, active) FROM stdin;
1	Moderators approval	t
\.


--
-- Data for Name: wagtailcore_workflowpage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_workflowpage (page_id, workflow_id) FROM stdin;
1	1
\.


--
-- Data for Name: wagtailcore_workflowstate; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_workflowstate (id, status, created_at, current_task_state_id, page_id, requested_by_id, workflow_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_workflowtask; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_workflowtask (id, sort_order, task_id, workflow_id) FROM stdin;
1	0	1	1
\.


--
-- Data for Name: wagtaildocs_document; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtaildocs_document (id, title, file, created_at, uploaded_by_user_id, collection_id, file_size, file_hash) FROM stdin;
\.


--
-- Data for Name: wagtailembeds_embed; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, thumbnail_url, width, height, last_updated) FROM stdin;
\.


--
-- Data for Name: wagtailforms_formsubmission; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailforms_formsubmission (id, form_data, submit_time, page_id) FROM stdin;
\.


--
-- Data for Name: wagtailimages_image; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailimages_image (id, title, file, width, height, created_at, focal_point_x, focal_point_y, focal_point_width, focal_point_height, uploaded_by_user_id, file_size, collection_id, file_hash) FROM stdin;
\.


--
-- Data for Name: wagtailimages_rendition; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailimages_rendition (id, file, width, height, focal_point_key, filter_spec, image_id) FROM stdin;
\.


--
-- Data for Name: wagtailimages_uploadedimage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailimages_uploadedimage (id, file, uploaded_by_user_id) FROM stdin;
\.


--
-- Data for Name: wagtailredirects_redirect; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailredirects_redirect (id, old_path, is_permanent, redirect_link, redirect_page_id, site_id) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_editorspick; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailsearch_editorspick (id, sort_order, description, page_id, query_id) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_query; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailsearch_query (id, query_string) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_querydailyhits; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailsearch_querydailyhits (id, date, hits, query_id) FROM stdin;
\.


--
-- Data for Name: wagtailusers_userprofile; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailusers_userprofile (id, submitted_notifications, approved_notifications, rejected_notifications, user_id, preferred_language, current_time_zone, avatar) FROM stdin;
1	t	t	t	1			
2	t	t	t	3			
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 14, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 149, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 2, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 38, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 153, true);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 1, false);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 1, false);


--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_collection_id_seq', 1, true);


--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_groups_id_seq', 1, false);


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_id_seq', 1, false);


--
-- Name: wagtailcore_groupapprovaltask_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_groupapprovaltask_groups_id_seq', 1, true);


--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_groupcollectionpermission_id_seq', 8, true);


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_grouppagepermission_id_seq', 7, true);


--
-- Name: wagtailcore_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_locale_id_seq', 1, true);


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_page_id_seq', 3, true);


--
-- Name: wagtailcore_pagelogentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_pagelogentry_id_seq', 20, true);


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_pagerevision_id_seq', 11, true);


--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_groups_id_seq', 1, false);


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_id_seq', 1, false);


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_site_id_seq', 2, true);


--
-- Name: wagtailcore_task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_task_id_seq', 1, true);


--
-- Name: wagtailcore_taskstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_taskstate_id_seq', 1, false);


--
-- Name: wagtailcore_workflow_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_workflow_id_seq', 1, true);


--
-- Name: wagtailcore_workflowstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_workflowstate_id_seq', 1, false);


--
-- Name: wagtailcore_workflowtask_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_workflowtask_id_seq', 1, true);


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtaildocs_document_id_seq', 1, false);


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailembeds_embed_id_seq', 1, false);


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailforms_formsubmission_id_seq', 1, false);


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailimages_image_id_seq', 1, false);


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailimages_rendition_id_seq', 1, false);


--
-- Name: wagtailimages_uploadedimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailimages_uploadedimage_id_seq', 1, false);


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailredirects_redirect_id_seq', 1, false);


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailsearch_editorspick_id_seq', 1, false);


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailsearch_query_id_seq', 1, false);


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailsearch_querydailyhits_id_seq', 1, false);


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailusers_userprofile_id_seq', 2, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: home_arteunitemock home_arteunitemock_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.home_arteunitemock
    ADD CONSTRAINT home_arteunitemock_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_homepage home_homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.home_homepage
    ADD CONSTRAINT home_homepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);


--
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collection wagtailcore_collection_path_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_path_key UNIQUE (path);


--
-- Name: wagtailcore_collection wagtailcore_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq UNIQUE (collectionviewrestriction_id, group_id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction wagtailcore_collectionviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_groupapprovaltask_groups wagtailcore_groupapprova_groupapprovaltask_id_gro_bb5ee7eb_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapprova_groupapprovaltask_id_gro_bb5ee7eb_uniq UNIQUE (groupapprovaltask_id, group_id);


--
-- Name: wagtailcore_groupapprovaltask_groups wagtailcore_groupapprovaltask_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapprovaltask_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_groupapprovaltask wagtailcore_groupapprovaltask_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask
    ADD CONSTRAINT wagtailcore_groupapprovaltask_pkey PRIMARY KEY (task_ptr_id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq UNIQUE (group_id, collection_id, permission_id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollectionpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq UNIQUE (group_id, page_id, permission_type);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_locale wagtailcore_locale_language_code_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_locale
    ADD CONSTRAINT wagtailcore_locale_language_code_key UNIQUE (language_code);


--
-- Name: wagtailcore_locale wagtailcore_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_locale
    ADD CONSTRAINT wagtailcore_locale_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_page wagtailcore_page_path_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_path_key UNIQUE (path);


--
-- Name: wagtailcore_page wagtailcore_page_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_page wagtailcore_page_translation_key_locale_id_9b041bad_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_translation_key_locale_id_9b041bad_uniq UNIQUE (translation_key, locale_id);


--
-- Name: wagtailcore_pagelogentry wagtailcore_pagelogentry_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pagelogentry
    ADD CONSTRAINT wagtailcore_pagelogentry_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevision_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq UNIQUE (pageviewrestriction_id, group_id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction wagtailcore_pageviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_site wagtailcore_site_hostname_port_2c626d70_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_hostname_port_2c626d70_uniq UNIQUE (hostname, port);


--
-- Name: wagtailcore_site wagtailcore_site_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_task wagtailcore_task_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_task
    ADD CONSTRAINT wagtailcore_task_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_taskstate wagtailcore_taskstate_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_workflow wagtailcore_workflow_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflow
    ADD CONSTRAINT wagtailcore_workflow_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_workflowpage wagtailcore_workflowpage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT wagtailcore_workflowpage_pkey PRIMARY KEY (page_id);


--
-- Name: wagtailcore_workflowstate wagtailcore_workflowstate_current_task_state_id_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflowstate_current_task_state_id_key UNIQUE (current_task_state_id);


--
-- Name: wagtailcore_workflowstate wagtailcore_workflowstate_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflowstate_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_workflowtask wagtailcore_workflowtask_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflowtask_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_workflowtask wagtailcore_workflowtask_workflow_id_task_id_4ec7a62b_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflowtask_workflow_id_task_id_4ec7a62b_uniq UNIQUE (workflow_id, task_id);


--
-- Name: wagtaildocs_document wagtaildocs_document_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed wagtailembeds_embed_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed wagtailembeds_embed_url_max_width_8a2922d8_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_url_max_width_8a2922d8_uniq UNIQUE (url, max_width);


--
-- Name: wagtailforms_formsubmission wagtailforms_formsubmission_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmission_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_image wagtailimages_image_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_rendition wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq UNIQUE (image_id, filter_spec, focal_point_key);


--
-- Name: wagtailimages_rendition wagtailimages_rendition_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_uploadedimage wagtailimages_uploadedimage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_uploadedimage
    ADD CONSTRAINT wagtailimages_uploadedimage_pkey PRIMARY KEY (id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_old_path_site_id_783622d7_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_old_path_site_id_783622d7_uniq UNIQUE (old_path, site_id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_editorspick wagtailsearch_editorspick_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editorspick_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query wagtailsearch_query_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query wagtailsearch_query_query_string_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_query_string_key UNIQUE (query_string);


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq UNIQUE (query_id, date);


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_pkey PRIMARY KEY (id);


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_key UNIQUE (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: unique_in_progress_workflow; Type: INDEX; Schema: public; Owner: beret
--

CREATE UNIQUE INDEX unique_in_progress_workflow ON public.wagtailcore_workflowstate USING btree (page_id) WHERE (((status)::text = 'in_progress'::text) OR ((status)::text = 'needs_changes'::text));


--
-- Name: wagtailcore_collection_path_d848dc19_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_collection_path_d848dc19_like ON public.wagtailcore_collection USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_collectionview_collectionviewrestriction__47320efd; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_collectionview_collectionviewrestriction__47320efd ON public.wagtailcore_collectionviewrestriction_groups USING btree (collectionviewrestriction_id);


--
-- Name: wagtailcore_collectionviewrestriction_collection_id_761908ec; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_collectionviewrestriction_collection_id_761908ec ON public.wagtailcore_collectionviewrestriction USING btree (collection_id);


--
-- Name: wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3 ON public.wagtailcore_collectionviewrestriction_groups USING btree (group_id);


--
-- Name: wagtailcore_groupapprovalt_groupapprovaltask_id_9a9255ea; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_groupapprovalt_groupapprovaltask_id_9a9255ea ON public.wagtailcore_groupapprovaltask_groups USING btree (groupapprovaltask_id);


--
-- Name: wagtailcore_groupapprovaltask_groups_group_id_2e64b61f; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_groupapprovaltask_groups_group_id_2e64b61f ON public.wagtailcore_groupapprovaltask_groups USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_collection_id_5423575a; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_groupcollectionpermission_collection_id_5423575a ON public.wagtailcore_groupcollectionpermission USING btree (collection_id);


--
-- Name: wagtailcore_groupcollectionpermission_group_id_05d61460; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_groupcollectionpermission_group_id_05d61460 ON public.wagtailcore_groupcollectionpermission USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_permission_id_1b626275; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_groupcollectionpermission_permission_id_1b626275 ON public.wagtailcore_groupcollectionpermission USING btree (permission_id);


--
-- Name: wagtailcore_grouppagepermission_group_id_fc07e671; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_grouppagepermission_group_id_fc07e671 ON public.wagtailcore_grouppagepermission USING btree (group_id);


--
-- Name: wagtailcore_grouppagepermission_page_id_710b114a; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_grouppagepermission_page_id_710b114a ON public.wagtailcore_grouppagepermission USING btree (page_id);


--
-- Name: wagtailcore_locale_language_code_03149338_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_locale_language_code_03149338_like ON public.wagtailcore_locale USING btree (language_code varchar_pattern_ops);


--
-- Name: wagtailcore_page_alias_of_id_12945502; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_alias_of_id_12945502 ON public.wagtailcore_page USING btree (alias_of_id);


--
-- Name: wagtailcore_page_content_type_id_c28424df; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_content_type_id_c28424df ON public.wagtailcore_page USING btree (content_type_id);


--
-- Name: wagtailcore_page_first_published_at_2b5dd637; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_first_published_at_2b5dd637 ON public.wagtailcore_page USING btree (first_published_at);


--
-- Name: wagtailcore_page_live_revision_id_930bd822; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_live_revision_id_930bd822 ON public.wagtailcore_page USING btree (live_revision_id);


--
-- Name: wagtailcore_page_locale_id_3c7e30a6; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_locale_id_3c7e30a6 ON public.wagtailcore_page USING btree (locale_id);


--
-- Name: wagtailcore_page_locked_by_id_bcb86245; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_locked_by_id_bcb86245 ON public.wagtailcore_page USING btree (locked_by_id);


--
-- Name: wagtailcore_page_owner_id_fbf7c332; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_owner_id_fbf7c332 ON public.wagtailcore_page USING btree (owner_id);


--
-- Name: wagtailcore_page_path_98eba2c8_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_path_98eba2c8_like ON public.wagtailcore_page USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_page_slug_e7c11b8f; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f ON public.wagtailcore_page USING btree (slug);


--
-- Name: wagtailcore_page_slug_e7c11b8f_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f_like ON public.wagtailcore_page USING btree (slug varchar_pattern_ops);


--
-- Name: wagtailcore_pagelogentry_action_c2408198; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagelogentry_action_c2408198 ON public.wagtailcore_pagelogentry USING btree (action);


--
-- Name: wagtailcore_pagelogentry_action_c2408198_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagelogentry_action_c2408198_like ON public.wagtailcore_pagelogentry USING btree (action varchar_pattern_ops);


--
-- Name: wagtailcore_pagelogentry_content_changed_99f27ade; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagelogentry_content_changed_99f27ade ON public.wagtailcore_pagelogentry USING btree (content_changed);


--
-- Name: wagtailcore_pagelogentry_content_type_id_74e7708a; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagelogentry_content_type_id_74e7708a ON public.wagtailcore_pagelogentry USING btree (content_type_id);


--
-- Name: wagtailcore_pagelogentry_page_id_8464e327; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagelogentry_page_id_8464e327 ON public.wagtailcore_pagelogentry USING btree (page_id);


--
-- Name: wagtailcore_pagelogentry_revision_id_8043d103; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagelogentry_revision_id_8043d103 ON public.wagtailcore_pagelogentry USING btree (revision_id);


--
-- Name: wagtailcore_pagelogentry_user_id_604ccfd8; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagelogentry_user_id_604ccfd8 ON public.wagtailcore_pagelogentry USING btree (user_id);


--
-- Name: wagtailcore_pagerevision_approved_go_live_at_e56afc67; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagerevision_approved_go_live_at_e56afc67 ON public.wagtailcore_pagerevision USING btree (approved_go_live_at);


--
-- Name: wagtailcore_pagerevision_created_at_66954e3b; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagerevision_created_at_66954e3b ON public.wagtailcore_pagerevision USING btree (created_at);


--
-- Name: wagtailcore_pagerevision_page_id_d421cc1d; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagerevision_page_id_d421cc1d ON public.wagtailcore_pagerevision USING btree (page_id);


--
-- Name: wagtailcore_pagerevision_submitted_for_moderation_c682e44c; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagerevision_submitted_for_moderation_c682e44c ON public.wagtailcore_pagerevision USING btree (submitted_for_moderation);


--
-- Name: wagtailcore_pagerevision_user_id_2409d2f4; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagerevision_user_id_2409d2f4 ON public.wagtailcore_pagerevision USING btree (user_id);


--
-- Name: wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a ON public.wagtailcore_pageviewrestriction_groups USING btree (pageviewrestriction_id);


--
-- Name: wagtailcore_pageviewrestriction_groups_group_id_6460f223; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pageviewrestriction_groups_group_id_6460f223 ON public.wagtailcore_pageviewrestriction_groups USING btree (group_id);


--
-- Name: wagtailcore_pageviewrestriction_page_id_15a8bea6; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pageviewrestriction_page_id_15a8bea6 ON public.wagtailcore_pageviewrestriction USING btree (page_id);


--
-- Name: wagtailcore_site_hostname_96b20b46; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_site_hostname_96b20b46 ON public.wagtailcore_site USING btree (hostname);


--
-- Name: wagtailcore_site_hostname_96b20b46_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_site_hostname_96b20b46_like ON public.wagtailcore_site USING btree (hostname varchar_pattern_ops);


--
-- Name: wagtailcore_site_root_page_id_e02fb95c; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_site_root_page_id_e02fb95c ON public.wagtailcore_site USING btree (root_page_id);


--
-- Name: wagtailcore_task_content_type_id_249ab8ba; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_task_content_type_id_249ab8ba ON public.wagtailcore_task USING btree (content_type_id);


--
-- Name: wagtailcore_taskstate_content_type_id_0a758fdc; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_taskstate_content_type_id_0a758fdc ON public.wagtailcore_taskstate USING btree (content_type_id);


--
-- Name: wagtailcore_taskstate_finished_by_id_13f98229; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_taskstate_finished_by_id_13f98229 ON public.wagtailcore_taskstate USING btree (finished_by_id);


--
-- Name: wagtailcore_taskstate_page_revision_id_9f52c88e; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_taskstate_page_revision_id_9f52c88e ON public.wagtailcore_taskstate USING btree (page_revision_id);


--
-- Name: wagtailcore_taskstate_task_id_c3677c34; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_taskstate_task_id_c3677c34 ON public.wagtailcore_taskstate USING btree (task_id);


--
-- Name: wagtailcore_taskstate_workflow_state_id_9239a775; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_taskstate_workflow_state_id_9239a775 ON public.wagtailcore_taskstate USING btree (workflow_state_id);


--
-- Name: wagtailcore_workflowpage_workflow_id_56f56ff6; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_workflowpage_workflow_id_56f56ff6 ON public.wagtailcore_workflowpage USING btree (workflow_id);


--
-- Name: wagtailcore_workflowstate_page_id_6c962862; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_workflowstate_page_id_6c962862 ON public.wagtailcore_workflowstate USING btree (page_id);


--
-- Name: wagtailcore_workflowstate_requested_by_id_4090bca3; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_workflowstate_requested_by_id_4090bca3 ON public.wagtailcore_workflowstate USING btree (requested_by_id);


--
-- Name: wagtailcore_workflowstate_workflow_id_1f18378f; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_workflowstate_workflow_id_1f18378f ON public.wagtailcore_workflowstate USING btree (workflow_id);


--
-- Name: wagtailcore_workflowtask_task_id_ce7716fe; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_workflowtask_task_id_ce7716fe ON public.wagtailcore_workflowtask USING btree (task_id);


--
-- Name: wagtailcore_workflowtask_workflow_id_b9717175; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_workflowtask_workflow_id_b9717175 ON public.wagtailcore_workflowtask USING btree (workflow_id);


--
-- Name: wagtaildocs_document_collection_id_23881625; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtaildocs_document_collection_id_23881625 ON public.wagtaildocs_document USING btree (collection_id);


--
-- Name: wagtaildocs_document_uploaded_by_user_id_17258b41; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtaildocs_document_uploaded_by_user_id_17258b41 ON public.wagtaildocs_document USING btree (uploaded_by_user_id);


--
-- Name: wagtailforms_formsubmission_page_id_e48e93e7; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailforms_formsubmission_page_id_e48e93e7 ON public.wagtailforms_formsubmission USING btree (page_id);


--
-- Name: wagtailimages_image_collection_id_c2f8af7e; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailimages_image_collection_id_c2f8af7e ON public.wagtailimages_image USING btree (collection_id);


--
-- Name: wagtailimages_image_created_at_86fa6cd4; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailimages_image_created_at_86fa6cd4 ON public.wagtailimages_image USING btree (created_at);


--
-- Name: wagtailimages_image_uploaded_by_user_id_5d73dc75; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailimages_image_uploaded_by_user_id_5d73dc75 ON public.wagtailimages_image USING btree (uploaded_by_user_id);


--
-- Name: wagtailimages_rendition_filter_spec_1cba3201; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201 ON public.wagtailimages_rendition USING btree (filter_spec);


--
-- Name: wagtailimages_rendition_filter_spec_1cba3201_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201_like ON public.wagtailimages_rendition USING btree (filter_spec varchar_pattern_ops);


--
-- Name: wagtailimages_rendition_image_id_3e1fd774; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailimages_rendition_image_id_3e1fd774 ON public.wagtailimages_rendition USING btree (image_id);


--
-- Name: wagtailimages_uploadedimage_uploaded_by_user_id_85921689; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailimages_uploadedimage_uploaded_by_user_id_85921689 ON public.wagtailimages_uploadedimage USING btree (uploaded_by_user_id);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b ON public.wagtailredirects_redirect USING btree (old_path);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b_like ON public.wagtailredirects_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: wagtailredirects_redirect_redirect_page_id_b5728a8f; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailredirects_redirect_redirect_page_id_b5728a8f ON public.wagtailredirects_redirect USING btree (redirect_page_id);


--
-- Name: wagtailredirects_redirect_site_id_780a0e1e; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailredirects_redirect_site_id_780a0e1e ON public.wagtailredirects_redirect USING btree (site_id);


--
-- Name: wagtailsearch_editorspick_page_id_28cbc274; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailsearch_editorspick_page_id_28cbc274 ON public.wagtailsearch_editorspick USING btree (page_id);


--
-- Name: wagtailsearch_editorspick_query_id_c6eee4a0; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailsearch_editorspick_query_id_c6eee4a0 ON public.wagtailsearch_editorspick USING btree (query_id);


--
-- Name: wagtailsearch_query_query_string_e785ea07_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailsearch_query_query_string_e785ea07_like ON public.wagtailsearch_query USING btree (query_string varchar_pattern_ops);


--
-- Name: wagtailsearch_querydailyhits_query_id_2185994b; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailsearch_querydailyhits_query_id_2185994b ON public.wagtailsearch_querydailyhits USING btree (query_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_arteunitemock home_arteunitemock_page_ptr_id_2c6e3ae4_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.home_arteunitemock
    ADD CONSTRAINT home_arteunitemock_page_ptr_id_2c6e3ae4_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_homepage home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.home_homepage
    ADD CONSTRAINT home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction wagtailcore_collecti_collection_id_761908ec_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collecti_collection_id_761908ec_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco FOREIGN KEY (collectionviewrestriction_id) REFERENCES public.wagtailcore_collectionviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupapprovaltask_groups wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupapprovaltask_groups wagtailcore_groupapp_groupapprovaltask_id_9a9255ea_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapp_groupapprovaltask_id_9a9255ea_fk_wagtailco FOREIGN KEY (groupapprovaltask_id) REFERENCES public.wagtailcore_groupapprovaltask(task_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupapprovaltask wagtailcore_groupapp_task_ptr_id_cfe58781_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask
    ADD CONSTRAINT wagtailcore_groupapp_task_ptr_id_cfe58781_fk_wagtailco FOREIGN KEY (task_ptr_id) REFERENCES public.wagtailcore_task(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_group_id_05d61460_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_group_id_05d61460_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppag_page_id_710b114a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_page_id_710b114a_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id FOREIGN KEY (alias_of_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_content_type_id_c28424df_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_content_type_id_c28424df_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_live_revision_id_930bd822_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_live_revision_id_930bd822_fk_wagtailco FOREIGN KEY (live_revision_id) REFERENCES public.wagtailcore_pagerevision(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id FOREIGN KEY (locale_id) REFERENCES public.wagtailcore_locale(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_locked_by_id_bcb86245_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_locked_by_id_bcb86245_fk_auth_user_id FOREIGN KEY (locked_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagelogentry wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pagelogentry
    ADD CONSTRAINT wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageview_group_id_6460f223_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_group_id_6460f223_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco FOREIGN KEY (pageviewrestriction_id) REFERENCES public.wagtailcore_pageviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_site wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id FOREIGN KEY (root_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_task wagtailcore_task_content_type_id_249ab8ba_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_task
    ADD CONSTRAINT wagtailcore_task_content_type_id_249ab8ba_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_taskstate wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_taskstate wagtailcore_taskstat_page_revision_id_9f52c88e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstat_page_revision_id_9f52c88e_fk_wagtailco FOREIGN KEY (page_revision_id) REFERENCES public.wagtailcore_pagerevision(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_taskstate wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco FOREIGN KEY (workflow_state_id) REFERENCES public.wagtailcore_workflowstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_taskstate wagtailcore_taskstate_finished_by_id_13f98229_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_finished_by_id_13f98229_fk_auth_user_id FOREIGN KEY (finished_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_taskstate wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id FOREIGN KEY (task_id) REFERENCES public.wagtailcore_task(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowstate wagtailcore_workflow_current_task_state_i_3a1a0632_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_current_task_state_i_3a1a0632_fk_wagtailco FOREIGN KEY (current_task_state_id) REFERENCES public.wagtailcore_taskstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowstate wagtailcore_workflow_page_id_6c962862_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_page_id_6c962862_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowpage wagtailcore_workflow_page_id_81e7bab6_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT wagtailcore_workflow_page_id_81e7bab6_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowstate wagtailcore_workflow_requested_by_id_4090bca3_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_requested_by_id_4090bca3_fk_auth_user FOREIGN KEY (requested_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowtask wagtailcore_workflow_task_id_ce7716fe_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflow_task_id_ce7716fe_fk_wagtailco FOREIGN KEY (task_id) REFERENCES public.wagtailcore_task(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowstate wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowpage wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowtask wagtailcore_workflow_workflow_id_b9717175_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflow_workflow_id_b9717175_fk_wagtailco FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_document wagtaildocs_document_collection_id_23881625_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_collection_id_23881625_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_document wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailforms_formsubmission wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_image wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_image wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_rendition wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim FOREIGN KEY (image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_uploadedimage wagtailimages_upload_uploaded_by_user_id_85921689_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_uploadedimage
    ADD CONSTRAINT wagtailimages_upload_uploaded_by_user_id_85921689_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_redirect wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco FOREIGN KEY (redirect_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_redirect wagtailredirects_red_site_id_780a0e1e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_site_id_780a0e1e_fk_wagtailco FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editorspick wagtailsearch_editor_page_id_28cbc274_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_page_id_28cbc274_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editorspick wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_queryd_query_id_2185994b_fk_wagtailse; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_queryd_query_id_2185994b_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

