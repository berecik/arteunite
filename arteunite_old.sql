--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 13.1

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
-- Name: contact_contactpage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.contact_contactpage (
    page_ptr_id integer NOT NULL
);


ALTER TABLE public.contact_contactpage OWNER TO beret;

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
-- Name: miejsca_miejscapage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.miejsca_miejscapage (
    page_ptr_id integer NOT NULL,
    opis text NOT NULL,
    objasnienie text NOT NULL,
    komentarz text NOT NULL,
    zaproszenie text NOT NULL
);


ALTER TABLE public.miejsca_miejscapage OWNER TO beret;

--
-- Name: misja_misjapage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.misja_misjapage (
    page_ptr_id integer NOT NULL,
    opis text NOT NULL,
    objasnienie text NOT NULL,
    komentarz_1 text NOT NULL,
    komentarz_2 text NOT NULL,
    komentarz_3 text NOT NULL,
    podsumowanie text NOT NULL
);


ALTER TABLE public.misja_misjapage OWNER TO beret;

--
-- Name: rwz_rwzpage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.rwz_rwzpage (
    page_ptr_id integer NOT NULL,
    opis text NOT NULL,
    objasnienie text NOT NULL,
    komentarz text NOT NULL
);


ALTER TABLE public.rwz_rwzpage OWNER TO beret;

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
-- Name: wagtailadmin_admin; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailadmin_admin (
    id integer NOT NULL
);


ALTER TABLE public.wagtailadmin_admin OWNER TO beret;

--
-- Name: wagtailadmin_admin_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailadmin_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailadmin_admin_id_seq OWNER TO beret;

--
-- Name: wagtailadmin_admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailadmin_admin_id_seq OWNED BY public.wagtailadmin_admin.id;


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
-- Name: wagtaildocs_uploadeddocument; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtaildocs_uploadeddocument (
    id integer NOT NULL,
    file character varying(200) NOT NULL,
    uploaded_by_user_id integer
);


ALTER TABLE public.wagtaildocs_uploadeddocument OWNER TO beret;

--
-- Name: wagtaildocs_uploadeddocument_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtaildocs_uploadeddocument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtaildocs_uploadeddocument_id_seq OWNER TO beret;

--
-- Name: wagtaildocs_uploadeddocument_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtaildocs_uploadeddocument_id_seq OWNED BY public.wagtaildocs_uploadeddocument.id;


--
-- Name: wagtailembeds_embed; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailembeds_embed (
    id integer NOT NULL,
    url text NOT NULL,
    max_width smallint,
    type character varying(10) NOT NULL,
    html text NOT NULL,
    title text NOT NULL,
    author_name text NOT NULL,
    provider_name text NOT NULL,
    thumbnail_url text NOT NULL,
    width integer,
    height integer,
    last_updated timestamp with time zone NOT NULL,
    hash character varying(32) NOT NULL
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
-- Name: warsztaty_warsztatypage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.warsztaty_warsztatypage (
    page_ptr_id integer NOT NULL,
    beret text NOT NULL,
    comment text NOT NULL,
    milicki text NOT NULL,
    monika text NOT NULL,
    opis text NOT NULL,
    zaproszenie text NOT NULL
);


ALTER TABLE public.warsztaty_warsztatypage OWNER TO beret;

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
-- Name: wagtailadmin_admin id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailadmin_admin ALTER COLUMN id SET DEFAULT nextval('public.wagtailadmin_admin_id_seq'::regclass);


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
-- Name: wagtaildocs_uploadeddocument id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtaildocs_uploadeddocument ALTER COLUMN id SET DEFAULT nextval('public.wagtaildocs_uploadeddocument_id_seq'::regclass);


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
15	1	150
16	2	150
17	1	151
18	2	151
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
150	Can choose document	5	choose_document
151	Can choose image	6	choose_image
152	Can add uploaded document	39	add_uploadeddocument
153	Can change uploaded document	39	change_uploadeddocument
154	Can delete uploaded document	39	delete_uploadeddocument
155	Can view uploaded document	39	view_uploadeddocument
156	Can add contact page	40	add_contactpage
157	Can change contact page	40	change_contactpage
158	Can delete contact page	40	delete_contactpage
159	Can view contact page	40	view_contactpage
160	Can add warsztaty page	41	add_warsztatypage
161	Can change warsztaty page	41	change_warsztatypage
162	Can delete warsztaty page	41	delete_warsztatypage
163	Can view warsztaty page	41	view_warsztatypage
164	Can add misja page	42	add_misjapage
165	Can change misja page	42	change_misjapage
166	Can delete misja page	42	delete_misjapage
167	Can view misja page	42	view_misjapage
168	Can add miejsca page	43	add_miejscapage
169	Can change miejsca page	43	change_miejscapage
170	Can delete miejsca page	43	delete_miejscapage
171	Can view miejsca page	43	view_miejscapage
172	Can add rwz page	44	add_rwzpage
173	Can change rwz page	44	change_rwzpage
174	Can delete rwz page	44	delete_rwzpage
175	Can view rwz page	44	view_rwzpage
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$uy2Eay3QXGvo$6IpiSB4xcRviygcFFYkvKlL1BVE6zWig1zuPqw6yy8Q=	2021-02-21 02:52:30.594621+01	t	beret			beret@hipisi.org.pl	t	t	2021-02-07 05:07:43.021502+01
2	pbkdf2_sha256$216000$2T4hAC5aRJpR$Y/cu3yxV5bFls6PDK4o1grblJMHwiLsXnHkAS9xo3iA=	2021-02-21 14:07:02.551484+01	t	kuba	Kuba	kuba	unite@wp.pl	f	t	2021-02-21 03:06:48.592918+01
3	pbkdf2_sha256$216000$RdFIZWgmLwwi$libjYc0ADoBciXZqB8lbShedyELrn+2PATlx6lJ6YLE=	\N	t	maciek	Maciek	Przybycień	m.a.przybycien@gmail.com	f	t	2021-02-24 16:06:47.535075+01
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	2	1
2	2	2
3	3	1
4	3	2
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: contact_contactpage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.contact_contactpage (page_ptr_id) FROM stdin;
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
39	wagtaildocs	uploadeddocument
40	contact	contactpage
41	warsztaty	warsztatypage
42	misja	misjapage
43	miejsca	miejscapage
44	rwz	rwzpage
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-01-27 20:50:03.596727+01
2	auth	0001_initial	2021-01-27 20:50:03.628721+01
3	admin	0001_initial	2021-01-27 20:50:03.667486+01
4	admin	0002_logentry_remove_auto_add	2021-01-27 20:50:03.678985+01
5	admin	0003_logentry_add_action_flag_choices	2021-01-27 20:50:03.685213+01
6	contenttypes	0002_remove_content_type_name	2021-01-27 20:50:03.69821+01
7	auth	0002_alter_permission_name_max_length	2021-01-27 20:50:03.704534+01
8	auth	0003_alter_user_email_max_length	2021-01-27 20:50:03.711132+01
9	auth	0004_alter_user_username_opts	2021-01-27 20:50:03.71609+01
10	auth	0005_alter_user_last_login_null	2021-01-27 20:50:03.72465+01
11	auth	0006_require_contenttypes_0002	2021-01-27 20:50:03.729176+01
12	auth	0007_alter_validators_add_error_messages	2021-01-27 20:50:03.735451+01
13	auth	0008_alter_user_username_max_length	2021-01-27 20:50:03.747302+01
14	auth	0009_alter_user_last_name_max_length	2021-01-27 20:50:03.75307+01
15	auth	0010_alter_group_name_max_length	2021-01-27 20:50:03.764899+01
16	auth	0011_update_proxy_permissions	2021-01-27 20:50:03.770258+01
17	auth	0012_alter_user_first_name_max_length	2021-01-27 20:50:03.778646+01
18	wagtailcore	0001_initial	2021-01-27 20:50:03.891003+01
19	wagtailcore	0002_initial_data	2021-01-27 20:50:03.89359+01
20	wagtailcore	0003_add_uniqueness_constraint_on_group_page_permission	2021-01-27 20:50:03.896338+01
21	wagtailcore	0004_page_locked	2021-01-27 20:50:03.898544+01
22	wagtailcore	0005_add_page_lock_permission_to_moderators	2021-01-27 20:50:03.901232+01
23	wagtailcore	0006_add_lock_page_permission	2021-01-27 20:50:03.903444+01
24	wagtailcore	0007_page_latest_revision_created_at	2021-01-27 20:50:03.90578+01
25	wagtailcore	0008_populate_latest_revision_created_at	2021-01-27 20:50:03.908158+01
26	wagtailcore	0009_remove_auto_now_add_from_pagerevision_created_at	2021-01-27 20:50:03.910337+01
27	wagtailcore	0010_change_page_owner_to_null_on_delete	2021-01-27 20:50:03.911956+01
28	wagtailcore	0011_page_first_published_at	2021-01-27 20:50:03.91325+01
29	wagtailcore	0012_extend_page_slug_field	2021-01-27 20:50:03.914707+01
30	wagtailcore	0013_update_golive_expire_help_text	2021-01-27 20:50:03.917116+01
31	wagtailcore	0014_add_verbose_name	2021-01-27 20:50:03.919517+01
32	wagtailcore	0015_add_more_verbose_names	2021-01-27 20:50:03.921708+01
33	wagtailcore	0016_change_page_url_path_to_text_field	2021-01-27 20:50:03.923999+01
34	wagtailcore	0017_change_edit_page_permission_description	2021-01-27 20:50:03.955616+01
35	wagtailcore	0018_pagerevision_submitted_for_moderation_index	2021-01-27 20:50:03.964411+01
36	wagtailcore	0019_verbose_names_cleanup	2021-01-27 20:50:03.988024+01
37	wagtailcore	0020_add_index_on_page_first_published_at	2021-01-27 20:50:03.995925+01
38	wagtailcore	0021_capitalizeverbose	2021-01-27 20:50:04.252898+01
39	wagtailcore	0022_add_site_name	2021-01-27 20:50:04.259906+01
40	wagtailcore	0023_alter_page_revision_on_delete_behaviour	2021-01-27 20:50:04.277048+01
41	wagtailcore	0024_collection	2021-01-27 20:50:04.283327+01
42	wagtailcore	0025_collection_initial_data	2021-01-27 20:50:04.291605+01
43	wagtailcore	0026_group_collection_permission	2021-01-27 20:50:04.305299+01
44	wagtailcore	0027_fix_collection_path_collation	2021-01-27 20:50:04.321227+01
45	wagtailcore	0024_alter_page_content_type_on_delete_behaviour	2021-01-27 20:50:04.334869+01
46	wagtailcore	0028_merge	2021-01-27 20:50:04.337143+01
47	wagtailcore	0029_unicode_slugfield_dj19	2021-01-27 20:50:04.344065+01
48	wagtailcore	0030_index_on_pagerevision_created_at	2021-01-27 20:50:04.351717+01
49	wagtailcore	0031_add_page_view_restriction_types	2021-01-27 20:50:04.380293+01
50	wagtailcore	0032_add_bulk_delete_page_permission	2021-01-27 20:50:04.397101+01
51	wagtailcore	0033_remove_golive_expiry_help_text	2021-01-27 20:50:04.410708+01
52	wagtailcore	0034_page_live_revision	2021-01-27 20:50:04.424466+01
53	wagtailcore	0035_page_last_published_at	2021-01-27 20:50:04.436198+01
54	wagtailcore	0036_populate_page_last_published_at	2021-01-27 20:50:04.447226+01
55	wagtailcore	0037_set_page_owner_editable	2021-01-27 20:50:04.463553+01
56	wagtailcore	0038_make_first_published_at_editable	2021-01-27 20:50:04.472038+01
57	wagtailcore	0039_collectionviewrestriction	2021-01-27 20:50:04.508336+01
58	wagtailcore	0040_page_draft_title	2021-01-27 20:50:04.532361+01
59	wagtailcore	0041_group_collection_permissions_verbose_name_plural	2021-01-27 20:50:04.538381+01
60	wagtailcore	0042_index_on_pagerevision_approved_go_live_at	2021-01-27 20:50:04.549618+01
61	wagtailcore	0043_lock_fields	2021-01-27 20:50:04.569581+01
62	wagtailcore	0044_add_unlock_grouppagepermission	2021-01-27 20:50:04.580952+01
63	wagtailcore	0045_assign_unlock_grouppagepermission	2021-01-27 20:50:04.596424+01
64	wagtailcore	0046_site_name_remove_null	2021-01-27 20:50:04.637129+01
65	wagtailcore	0047_add_workflow_models	2021-01-27 20:50:04.775623+01
66	wagtailcore	0048_add_default_workflows	2021-01-27 20:50:04.843771+01
67	wagtailcore	0049_taskstate_finished_by	2021-01-27 20:50:04.857748+01
68	wagtailcore	0050_workflow_rejected_to_needs_changes	2021-01-27 20:50:04.889629+01
69	wagtailcore	0051_taskstate_comment	2021-01-27 20:50:04.907362+01
70	wagtailcore	0052_pagelogentry	2021-01-27 20:50:04.932573+01
71	home	0001_initial	2021-01-27 20:50:04.954143+01
72	home	0002_create_homepage	2021-01-27 20:50:04.980937+01
73	wagtailcore	0053_locale_model	2021-01-27 20:50:04.990106+01
74	wagtailcore	0054_initial_locale	2021-01-27 20:50:05.007015+01
75	wagtailcore	0055_page_locale_fields	2021-01-27 20:50:05.052924+01
76	wagtailcore	0056_page_locale_fields_populate	2021-01-27 20:50:05.074073+01
77	wagtailcore	0057_page_locale_fields_notnull	2021-01-27 20:50:05.117326+01
78	wagtailcore	0058_page_alias_of	2021-01-27 20:50:05.135813+01
79	wagtailcore	0059_apply_collection_ordering	2021-01-27 20:50:05.191872+01
80	home	0003_auto_20210101_2116	2021-01-27 20:50:05.228912+01
81	sessions	0001_initial	2021-01-27 20:50:05.246517+01
82	taggit	0001_initial	2021-01-27 20:50:05.278708+01
83	taggit	0002_auto_20150616_2121	2021-01-27 20:50:05.291807+01
84	taggit	0003_taggeditem_add_unique_index	2021-01-27 20:50:05.301025+01
85	wagtailadmin	0001_create_admin_access_permissions	2021-01-27 20:50:05.326742+01
86	wagtaildocs	0001_initial	2021-01-27 20:50:05.352334+01
87	wagtaildocs	0002_initial_data	2021-01-27 20:50:05.382023+01
88	wagtaildocs	0003_add_verbose_names	2021-01-27 20:50:05.42505+01
89	wagtaildocs	0004_capitalizeverbose	2021-01-27 20:50:05.491214+01
90	wagtaildocs	0005_document_collection	2021-01-27 20:50:05.514337+01
91	wagtaildocs	0006_copy_document_permissions_to_collections	2021-01-27 20:50:05.541614+01
92	wagtaildocs	0005_alter_uploaded_by_user_on_delete_action	2021-01-27 20:50:05.572754+01
93	wagtaildocs	0007_merge	2021-01-27 20:50:05.575367+01
94	wagtaildocs	0008_document_file_size	2021-01-27 20:50:05.588461+01
95	wagtaildocs	0009_document_verbose_name_plural	2021-01-27 20:50:05.600383+01
96	wagtaildocs	0010_document_file_hash	2021-01-27 20:50:05.614901+01
97	wagtailembeds	0001_initial	2021-01-27 20:50:05.63208+01
98	wagtailembeds	0002_add_verbose_names	2021-01-27 20:50:05.635852+01
99	wagtailembeds	0003_capitalizeverbose	2021-01-27 20:50:05.639412+01
100	wagtailembeds	0004_embed_verbose_name_plural	2021-01-27 20:50:05.644039+01
101	wagtailembeds	0005_specify_thumbnail_url_max_length	2021-01-27 20:50:05.649868+01
102	wagtailforms	0001_initial	2021-01-27 20:50:05.673912+01
103	wagtailforms	0002_add_verbose_names	2021-01-27 20:50:05.694243+01
104	wagtailforms	0003_capitalizeverbose	2021-01-27 20:50:05.744582+01
105	wagtailforms	0004_add_verbose_name_plural	2021-01-27 20:50:05.756316+01
106	wagtailimages	0001_initial	2021-01-27 20:50:05.857057+01
107	wagtailimages	0002_initial_data	2021-01-27 20:50:05.861626+01
108	wagtailimages	0003_fix_focal_point_fields	2021-01-27 20:50:05.865467+01
109	wagtailimages	0004_make_focal_point_key_not_nullable	2021-01-27 20:50:05.86877+01
110	wagtailimages	0005_make_filter_spec_unique	2021-01-27 20:50:05.871811+01
111	wagtailimages	0006_add_verbose_names	2021-01-27 20:50:05.874529+01
112	wagtailimages	0007_image_file_size	2021-01-27 20:50:05.877324+01
113	wagtailimages	0008_image_created_at_index	2021-01-27 20:50:05.87992+01
114	wagtailimages	0009_capitalizeverbose	2021-01-27 20:50:05.882482+01
115	wagtailimages	0010_change_on_delete_behaviour	2021-01-27 20:50:05.884356+01
116	wagtailimages	0011_image_collection	2021-01-27 20:50:05.886014+01
117	wagtailimages	0012_copy_image_permissions_to_collections	2021-01-27 20:50:05.887837+01
118	wagtailimages	0013_make_rendition_upload_callable	2021-01-27 20:50:05.889372+01
119	wagtailimages	0014_add_filter_spec_field	2021-01-27 20:50:05.890679+01
120	wagtailimages	0015_fill_filter_spec_field	2021-01-27 20:50:05.892078+01
121	wagtailimages	0016_deprecate_rendition_filter_relation	2021-01-27 20:50:05.893377+01
122	wagtailimages	0017_reduce_focal_point_key_max_length	2021-01-27 20:50:05.894975+01
123	wagtailimages	0018_remove_rendition_filter	2021-01-27 20:50:05.898091+01
124	wagtailimages	0019_delete_filter	2021-01-27 20:50:05.900294+01
125	wagtailimages	0020_add-verbose-name	2021-01-27 20:50:05.902623+01
126	wagtailimages	0021_image_file_hash	2021-01-27 20:50:05.904121+01
127	wagtailimages	0022_uploadedimage	2021-01-27 20:50:05.938452+01
128	wagtailredirects	0001_initial	2021-01-27 20:50:05.961999+01
129	wagtailredirects	0002_add_verbose_names	2021-01-27 20:50:06.00697+01
130	wagtailredirects	0003_make_site_field_editable	2021-01-27 20:50:06.035353+01
131	wagtailredirects	0004_set_unique_on_path_and_site	2021-01-27 20:50:06.060136+01
132	wagtailredirects	0005_capitalizeverbose	2021-01-27 20:50:06.149156+01
133	wagtailredirects	0006_redirect_increase_max_length	2021-01-27 20:50:06.163419+01
134	wagtailsearch	0001_initial	2021-01-27 20:50:06.248214+01
135	wagtailsearch	0002_add_verbose_names	2021-01-27 20:50:06.31831+01
136	wagtailsearch	0003_remove_editors_pick	2021-01-27 20:50:06.338216+01
137	wagtailsearch	0004_querydailyhits_verbose_name_plural	2021-01-27 20:50:06.343137+01
138	wagtailusers	0001_initial	2021-01-27 20:50:06.36848+01
139	wagtailusers	0002_add_verbose_name_on_userprofile	2021-01-27 20:50:06.396633+01
140	wagtailusers	0003_add_verbose_names	2021-01-27 20:50:06.407922+01
141	wagtailusers	0004_capitalizeverbose	2021-01-27 20:50:06.439921+01
142	wagtailusers	0005_make_related_name_wagtail_specific	2021-01-27 20:50:06.47199+01
143	wagtailusers	0006_userprofile_prefered_language	2021-01-27 20:50:06.48533+01
144	wagtailusers	0007_userprofile_current_time_zone	2021-01-27 20:50:06.498695+01
145	wagtailusers	0008_userprofile_avatar	2021-01-27 20:50:06.513274+01
146	wagtailusers	0009_userprofile_verbose_name_plural	2021-01-27 20:50:06.5247+01
147	wagtailimages	0001_squashed_0021	2021-01-27 20:50:06.533017+01
148	wagtailcore	0001_squashed_0016_change_page_url_path_to_text_field	2021-01-27 20:50:06.537028+01
149	home	0004_auto_20210207_1502	2021-02-07 15:02:55.186498+01
150	home	0005_homepage_quote_author	2021-02-07 15:08:12.439552+01
151	home	0006_auto_20210207_1512	2021-02-07 15:12:40.896908+01
152	home	0007_auto_20210207_1516	2021-02-07 15:16:11.021542+01
153	home	0008_auto_20210214_2126	2021-02-14 21:26:34.702245+01
154	wagtailadmin	0002_admin	2021-02-19 01:47:15.75426+01
155	wagtailadmin	0003_admin_managed	2021-02-19 01:47:15.783249+01
156	wagtailcore	0060_fix_workflow_unique_constraint	2021-02-19 01:47:15.816551+01
157	wagtaildocs	0011_add_choose_permissions	2021-02-19 01:47:15.871178+01
158	wagtaildocs	0012_uploadeddocument	2021-02-19 01:47:15.887964+01
159	wagtailembeds	0006_add_embed_hash	2021-02-19 01:47:15.895892+01
160	wagtailembeds	0007_populate_hash	2021-02-19 01:47:15.913949+01
161	wagtailembeds	0008_allow_long_urls	2021-02-19 01:47:15.932825+01
162	wagtailimages	0023_add_choose_permissions	2021-02-19 01:47:15.981502+01
163	contact	0001_initial	2021-02-21 00:26:06.938558+01
164	warsztaty	0001_initial	2021-02-21 00:26:06.96643+01
165	warsztaty	0002_auto_20210221_0101	2021-02-21 01:01:48.74069+01
166	home	0002_delete_arteunitemock	2021-02-21 01:16:59.142839+01
167	warsztaty	0003_auto_20210221_0116	2021-02-21 01:16:59.170364+01
168	misja	0001_initial	2021-02-21 02:03:00.663632+01
169	miejsca	0001_initial	2021-02-21 02:13:21.707218+01
170	rwz	0001_initial	2021-02-21 02:34:35.697516+01
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
39jr3d1eofuryngkrq9yseu8qqfoqt5m	.eJzVWNtu4zgS_ZcAzgsnhm9J7AHyECfdu9M9Pcj0bbC9WASUWLGpC-mRyLClxf77VpGULF8amMddIEgkkioWq845Vcy_L565NdtnW0P1LMXFzxfTi5-GYwlPc1A0ITKuNnqcamUqmYxpyTjO1uMPWkCxjmsPDGx5vcWvYZFMk-lNepvcpi-Lm1Vyk0A6SSCZXk8nsymfXK8WYgnLVTLF-RlfJvM5XL8sxGL1snhJX9Co4xvDZXG1q-BVgru6-PmfF2ldvZRSiAIcr8Bo3P_uS1KU6vbl8esvk3df-cOb79s2-eV2_WFRv_5juXh9-vV9Iu4_F-_n7qZZfL1__DNTT7_99pi_uf_dvnuSby8VfDd3l0aaAu4-2nTL_tCFgox9k1DKS72T9d3odj2azZJCp3mND6P5_eh6HQZzaOLIbPa6a5d_0tvsAX8btNtPnRhmGdSGSSXTjJvGjR4Wo-U1q3d69HA9Ws4gbVU3ltud1N2b4syJitOq9QNX0jLHwkuTSkADFXei1arB_SrdOhm-a_0XywWjeT8pma42aKDlaZP5EcdSKCwbvZmNlpPR6o11vFASl_DgcjfxSG4K5oKnvFbe59U6lWi9cdzgIcfsGy8gOoZOl-S4cbpqgXyW3jed4ZMyoNJMK9yLnDiIwN6wk5DVucQFo9nStG7MINdO6hpyjDa96JqL0WxFb47lZvQwH63nFZkUkDZtBkxo06RtiEcKzNVtUxtvE48DWakdVxjBGGhX74INjAHQrrlWNaja1nEXebxP2dBwYUUrgZ52upZc8LJhVVjl0DzFn7OW90OaOY3kiKjQFW9ZLSHBPRV3Lc-gHLPPFLgGDTlmmjKkSdc6aUI6gRkM-ItVgqd4zsImrDZ4Gvympnjz8R6UzQ56UG6BC6iuMC39vICd2YYFkzAiVSEVfDJNAR9REmBAgOvHsAQUsqf50azghsdRZMztI_0cfvmB744WXOokQ2BJdB7-KvtQLqrb8-z7krbINiVzjDEjKlpW6gBOYEnjM37L8sgqwX1wOeWwTzAnxNrSpwWDyiKhZp0ZYolk7YaLlmMCyeRqxVqmZCnH7JT-BCovAT0Lswi8MLerMIGIpEhuLuhTcFIQW4hobaN6hu2JMg7mve8HIMt4rtlTgQg3fhLfcSfDCftM6Q1HnxCwBgmK_vCwflNZZQ7C0JwLXNo20fngxjlpiPNoS8mNaPwZyYBfF8-chKgRf9j-cLxbJDQj-vqoox7kHImhkXWRckcxIbrgFyHaSCyRkzZFP1NmNPnSH2ZIUhkthG_iGSnrMUEvPCch6RQZeZeH5GHCJStl3b0YyzbeM0o0hEiUzXjM-OEIwyIDuVXce4o5iEBEwNKQB1wWk-c1xo9sNHvUJWnpBxLHFAsDe6_rElUHxuydzx83VgWFxLicOaFUokFMWRJ6_OgLWcZU5GaPz9E10cmyXG9iMsOIF1qS0LQ5Oo2NAtZhMdgRBffWhU4qZOFAXhtUuHVMfZee3tUGAxAEsgynPBb4sit_qJQ-OLUh0Wz2JNwfO1rq3PuD5JNyCUy3iqfI3ACLDuF4PihyQqOECimsy0Gp062mrfb1hAgXMYIiQGVuz215JCYo7KVFre6dHMQj4irU3NgDxL_I1Z3uapjJKfmKjJGjzNBhQhHz7KVI66FhiDwr9Sba6ymM3AESK8ryQAeipRM-h68QZZRZo4fsEFVvXVBtKwYa0OtOzcuuzB4s6EViECqseaCoL6jDUMKgQFFVFL62p0LfA3lFw8S4hlHFtuWOugvZlvYHVdCqmoqb-J-rgbkucQ4x9VcrILbLq-Z8BcRubK_Q64dcxjI4rEm-qaEyCUNQDwPfKV_juzmoqDyzJ11gZ4Yg9M0s4i-Ahf0dFJaLT7hLydMtVGTed4Adxx2bTSYTVuHDWkLdIv-wgdmyt6GRicR4KiIN8PkTV3YcDZPaZ5Buu-0QbNETx6ar1RTtHmv-zjdEsb2MekJt4RA8LRW9Xd96481G4j2o688_atRzPP7n4BAWPlIRw0vflrW8pha8tTkvsOIo2WkWhQtspXe-iQX2bVPpEqu7j99HDFyiHXuLWl80B-BHXRJdkdQDregO6NB5RCYaoQ6xwVSSOxjV6RmtP4oyFYsy3grwHMiajNNtIdTafi_TF8Oo71JTc4Rp9oHi-1BoZNz7KgRqcyJ31LR6YRluoqnNPe2k4Fg4bVenC-nkXnKzrsWmT9pwq_JyNZC8LGjejhIH_v1MczJmj208MOLHQGkDOBc-xn-reBKjiXCxgp8kBIUfqMhVHv1eUD8NG3Bg95UB9kVJA0cJpn2mMwKroRa_t033vJOS8AMdZokVDdZ5ttF0M-OVx-X5xDBftSJnjkKPt0bfDq4bgZbars7E4uC7LORHx0ZB3ValhXYQa8ZW4mVZO4I4jlReYA7Rza4ihfgxhZA_WBT2LBKDhGDwkDyOGp1CptTEW9zP9efgnWRw32V0Ld-vweHjM1JFqTTWTgz8FFvzE6Kc2zrc51wTllC17a_uzXlIQFJ1WJDMhu5BxgGP0pM7AcYhXkkRFtj3IHA03e0sdhkDRsCwccXTWGxdol2kmXfL7gX89OaBvrt2U8QkWkIa5Ro2-zbBDhaES9jgiiwpgEr2F2sZ8ZHr7nr8QDeCgv7FIRQ1A334V2tqM__PynBd2M0d5e_K-TBeeaW5rEE_h38a4SNSbvssoE4ruTOYtbvLjX4u5Cs8c3N3Cd93svKPFz9Nb6bz5e10vliM5_PJcjn713_-Cz7yNAE:1lDdey:5S2euqCwGnqVGi1QpGfQG_Dn08C4szOgJP3G07a0rkM	2021-03-07 02:35:44.383123+01
tsk3skxv2f8s1ubyvvzrqvf4cy8miq92	.eJxVjEEOwiAQRe_C2hCmBQou3fcMZAYGqRqalHZlvLtt0oVu_3vvv0XAbS1ha7yEKYmrAHH53Qjjk-sB0gPrfZZxrusykTwUedImxznx63a6fwcFW9lr1gQENg40xKytJ0scFTGBAdUBKuN1cuw8wc47dNT3bLJO2medYxafL_0tOLw:1lDdvC:UQL7wKA_Ixv0T7Mrk_v8PsX0nsnnUu-ShcJYWoAJJ0Y	2021-03-07 02:52:30.604032+01
smh972hke8gwf8118bx6bnyt9kzr1ui8	.eJztWm1v3DYS_i8G1l_YLuy1N7YL-IPtpOkllxfUzbnt4WBQIq3l6oWKREURD_ff7xmSorT2ps19OgR3QJPurihpOPPMM88M88-De96ZzX3XyuZeiYMfDlYH381_S3iay4ouiC2vMr1MdWUalSxpyTJcbZdvtJDFdVi784ANbze4-2gtTviDXF3I4_X6-Oj84tn6_CR9ODo_lUlyxo_Pjs8eTs6fHYlnZ0KcrPj6ePVweraSMuXHKyHP8NCeZ4ar4vu6kZ-U7L8_-OHvB2nbPJRKiEL2vJFG4_2X8sdC89Xf1F-z7eeX1ct3a_FGPhytnvH6Ob9Sv_323qrs15fnK_FRig-vb8WP10IfK_mh_Gg_fzq_-_Wwkp_N5aFRppCXP-lSHha6yu4rXsrLxdn1YrVKCp3mLT4sTq4W62v_Yy6H8MtqdTS055y-rW7wt8Hz4qVXsjVycbNeXFyXA9NNxitlebpd3Jwuzte4gZU8fEn9_1jFWSqLjnU9LyqF9ZL9rmSpWFtrwXp62PmKt5X2j00VU5UYeiU6rJdbJgrO-rZe3Jwsrk-KShsmc61bLnQ_pJvF-qaaTB1qGU3tqtYMhRTxqpC12fjLR_4XVRWqkre07GfAQ86csn7ul8gKnhy-dFVww8Ov8OLZc_pv9843vH604PBjp428fMtbK1lqeTvARY3tUuVdMZAXcw0_pXZ0inPlGWtNrxsr4UX2oApt9YNSbrXx3mk4KxUPHk0Glm54w3MjG5YVOoE7B6ZYV6leNi19o3vTsD66H26lVVY0vFcxmMPS2-1yQzeXP8mqGXJ2m-tClbpvc3UoeYO02UguLn_WtvcmbVnPciWbrso7BNbIrAFcFLPxxUPJ6MP1zZACFgQXD48toIZvpmtgasBSqf3SQvXR3nCphmNM03NyTs79MiEzzTI8wr2c9UOlcs4SaetwdyNFpTSMkb0uOrIrmsLJOcCeoWc4Wzzwr2-iUbA8bI0M33nExTV8J3Q5gTq1wc-9kjlfem99bUYmK_tR7s_Imw3cVqhkGLOS7PaGSkAAbxOWFjANu1sLm-tGb2WOu5BWdmjTYQdCFrCxXQi7DwV9vrhgW57reSYODBuMYUSmFp2wedzxkr3hJWGbMl8A61oY0Jx1DDC6EHc1snCIGN8jnAUzZ5FzuTN-DHXBK2n8lyWDAyTeU-ucW-4TZeYCRm-rtQE6km7rF7YITVgZNoj1lC-wFcu3Iwj8kqWjGPxhu-RX6T7Y03o4wQdTxkZc9swgB1NnRd8a7hC6ZG99LMCM2J2Dly2VDPwYEWRm1OdfkVrZktdSMGThqBd8yWpedTFT0w1eWqkyerbWlByWAl9rO6RbigW9raK1DXI1GGt9LE_JEVNORgfcMV3zJlUdsNQJxIBZXivwVzKSDj0P0XFZXOIaNg0W4bDQ8jzwknBbnEoHIbM1TZcTIuh-bZUuidqpmoSEp8A58gtBmbnIGWWGgG_YhLJg-VbS7b3sA3UAALu0IGSp84YbLK7oex32Do4lew1Yoault5kMLmRGeHXOeAXaQPAsM7Th8EIfpd4Hsx-QcqUCRtxu91W5uhl6bhBLMtTAZxklKnachcUMiNRwpOWqNXhK2LlPw9GZlj9iFnhBPMmf5TdWIpEnja8kr5vBhYh4C0RrkC0924B1AcSNAqcj9pNP_zxZyNkuQpSNVqabSrrSgYJLkZozxxx7ZXT_yHc5fGvGHI_RCFRJMTCU3nqkmxIFlHb1tYxvbNsf72f8dzVtf0x31qr4UpSoLXYnaM8PwU7QTI-vO36a130-SyWglcRVpaEigG58SmUD5UgUk_Aq554qwSPE6GqH8IN7BJKZl9ryEcVicCnzy4RZv57SAgnkUk_3WnT05MrzPOx1HE-smTjisrKBLKH6znq9JXb5s2oBNhkrxFvV2tSO_iI9mTceJgZRtI32FOAIY1Alz3zekmn4g-QbOQIbgf9RM_POf4SLCrkFhLzIID8pMEIQFxoSVbW5e_AEQU4lgUC5oV8c7aMosh5eBSyD_yDSUqC0dyXBOfAtD8w4rw87CsOXRd4EStkpelbIdBDjrjohg4x8GhMyrvK5RoXFVVVaOaGke1xeBZ9AOL4nwEEjOHCpv3mqKZ030JelfiiDeEGn4iuGJj9syVTLI3cihs4bXjlbDsIJhB5YNhrhEjzhDRHqlkGxgmhcDJ3SgSIaRi1o50oEJcfdT0QSCsfFBZzoVQqfMYjTCe7mYDh3vvWisfA35m6TvEgI4CI0SM5c50-EnLYP5JMhSLHELxFuzRVdz1UJfBGovzX-foAGkJ7A3wnqbSa6mvMn5bchYeBZdKKoScah2o0UGjtHz0HgNegFkphb4reROPbmhueWnVbiAQj3fasDjHCJYUeI9ipIulDVl4uTm6RZrH5cnLxwNrhIWx54pK-0r8vvfQ6OlkNHUNoKiMWMYoydUFJC-nC_PkP3YHb09zDVHZaMagdJtJ0QhEzaIyimFrxSGRBO7vJdAZG88t9H0nQSvAgNTawEQj9pU1wkv7ZoSblJNvuL1nuwHLUbrOEWrEAEqMBxWwiw3pfdcdsVj2brGa_o0MkEj_QEBfAFCbDrZsiADyLe1fktXlQrGYTs6ugI1lyEeIwM_t51QIb9EvLdUs_7OtSLzK9ZsjtDRBG7PlRDYJVqZKFiExDts_goo-jf3xGwu6tbMvEOrISGWbKrHLsH5d3ubyC83XaGDWwxDRpjp-pOsaSmjL188Zbe89I1_exFqj-pouCZZG8liegcT16yV-SPfYaGZ9pQwZF8sw3j6dhFx9rY30MDjPKfuvrIocEVaC-i1HLVzCcqlX0fhY6qPn5pYn_X5jxwaGw93iUyJQD7HoBGT1kcCNW6gDfZzx28g0chv1I7TZv4fzRtCk3_HwycnElv8GTojMWL1eL8aHHx4k67AuLZKfz4nKG_kGN9oP6Fw0ojG1k9SnhXrroQP5Ik3A1qwC7BI1D5-GVmk8-YneD5n0KjF9seIpg6QJTUmmKuoWh9ukzsNXmDJWiKEAxqg3o3samoRxMav-Nq7nuwsHqHAOc7QE0b-yFKdTvSNlF1600jTg9r5nr0yRxhZHvIKZo4cicHh9bOOk5NMsxn_LdWKXsgh987__Cvpdl8y7tsP80GYM7x-H8Y_ldgCJb4XxIKDA0ewOWC6zrqYVaTfN3waAQeRU6jj6gIjX486YnOUmPxdffEYhcrxQMKMgn7fZqOJort-AVVxo9XtvMZ3tKFie_-yDTkQ96FthdhCE1GkOlBZvr4DV5Y-nr2XJc0ZX5D1T0l1L7WbYnqKUOtdT2izH1XIPdsclaJaOr2bRFZa9DuFl_NYbJN0uELUhHAF6Ow6q0aBYUMA76S-7Z06PeMe-e96M7AcKeiTxOTPyAheqybPvhGepj6EBo_jEGe8jGeY1DHTdNvGiLGzIw6knIjzkLdzGFxs1pcHW2Jl8GlrX9eMhfEO-3j-EThqASb2MZWNwxvwrjC-ja-YwCVb_ftSI4pvshKNpk_QHJ89vhhNIfoBxpapZbEUUZz2qHoZmckSw92OeawHxNQ1-RSe-Z8UKXJlR_qzs8aSnc2kczOCSIlAlGG9l7MhtH80fmQEpLvqx--yPQasvELsZqUO_Ysxum5S9U9qen3N4LMEzurdsgx7NmRYw1lK4YqdbywO2NJqest-GxGocNWYRRva-lmnEkXBgqMBMK8Lu6f_Yx8HYygqUdhaHaHBiOQI8wCOtqurNOtrpR1ZDUbeexOWty7W52Q5g6zsVSTdqAA0IhGzGctVJZpMjs7HPrmZs7UGLUbXX8tg33u1sMXTsl_Z8RPdMo5P1wFcsipXhvdUiPpBIQkGF01RrIPlcLfNlEBpZ4P9nSGuvedSurP_th0-MfueEunMo32-PY0MWvRujApcadEHD2Xga9CV8Pe-UOZ3RZ3GzgDN_61S_yF89O0Y6-oB3MY6DP2l0FWGYc2c1RS8S4P1xySoSMtikM6bF3DXnLDQORtcI4_s-xZrXfZA57p3CFLlfsJX8kyICPgeXQGr6YH4csQNxNaxpJE79OD4-AdikaYZ3uGFK76slwVecdS0ja9O-Th27Hvno-mnjJFdBeiAI3gVPTM16McjfOqW1c35agKBKmPxjN769UnnO1a3vFMFpmmKzPNWC0nzMiGDuR2Rss19dujdPcnV-wD6G4K7pzUen-alappvnB9Q5Tt_pEClUjnzakoxZ26Y9MUy2Q-2qTiY_3RuXY0ji0zCFtuKogzXSIV3aHFnFtRCWLJdLPTUZ3Go1j2PBzKWx7Zi0Lcykb4DuRRuUECcD9ocUMHOzxB2UwzlNR1KI8B3BhnVLuH5HymvbGf8Z9nTCcxUaHOKDFUmG-MFtuiyy439O-IWqnv_T8rwkc6frsXsk0bVRulq8vDTN8X6pO85-byUH6uVeM-Hnx3_Oz49OTs-OT0aHm6vjg6Wa_-8a9_A9Cxzyo:1lFjjQ:L1VuJOAmzFfBlDTGMZCc7Z9gISvssrOGv6jNTpts3kc	2021-03-12 21:29:00.478896+01
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
3	<p>Chcielibyśmy, żeby wiedzieli o naszym projekcie wszyscy, którzy czują Ziemię jako wspólny dom całej ludzkości. Mamy na uwadze odtwarzanie naturalnej relacji między człowiekiem a naszą planetą. Chcemy pokazać, że nie potrzebujemy posiadać Ziemi, aby na niej żyć.<br/><br/> Jesteśmy nową społecznością w trakcie powstawania. Naszym celem jest zmienianie świata współczesnej cywilizacji i panujących w nim relacji poprzez propozycje odmiennych rozwiązań na życie.<br/><br/>W oparciu o udane zapisy białych plam na mapie prawa i zakładanie organizacji o strukturach poziomych, możemy tworzyć świat oparty o nasze zwyczaje, wewnątrz każdego demokratycznego państwa i to zupełnie legalne.<br/>Jednym z tych zwyczajów jest wyeliminowanie własności prywatnej, tam gdzie mogła by ona zaistnieć jako władza człowieka nad człowiekiem.</p>	Rozwój w kierunku integracji z całym życiem na Ziemi jest naturalną możliwością przetrwania każdego gatunku i wynika bezpośrednio z ewolucji życia, dlatego jest też naturalnym kierunkiem ewolucji świadomości człowieka.	<p>Pierwszy raz o tej inicjatywie, można było się dowiedzieć w Zielonych Brygadach (Sierpień 2002), jako &quot;Projekt Tęczowy Krąg&quot;. Wtedy też kontaktowaliśmy się z siecią społeczności WAS (Wiejskie Aktywne Społeczności), z których część należy do GEN (Global Ecovillage Network). Jako społeczność zgłosiliśmy do WASu swój udział z chęcią rozpowszechnienia naszego projektu na szerszą skalę.<br/><br/>Obecnie tworzymy ogólnopolski Ruch na rzecz uwalniania Ziemi spod własności indywidualnej, dla wspólnot ekoosadowych.<br/>Mianem „Wolnej Ziemi” określamy taki teren, który jest użytkowany i zarządzany wspólnie, społecznie, przez pewną grupę ludzi na zasadach równości i braterstwa w intencji dobra i korzyści zarówno użytkowników tej ziemi, jej sąsiadów, całej ludzkości, przyrody oraz przyszłych pokoleń.</p>	Odrzucając całkowicie taką wartość, jak posiadanie Ziemi, przywracamy jej w naszej świadomości, naturalną funkcję jednego z żywiołów. Ziemia, zarówno jako Planeta, jak i ta pod nogami postrzegana jako grunt, który może być czyjąś własnością, nigdy nie była i nie będzie należała do człowieka.	<p>Jesteśmy organizacją, mającą na celu uwalnianie Ziemi spod własności indywidualnej dla wspólnot ekoosadowych<br/></p>	Nasze czasy narzuciły, konieczność stworzenia filozofii, która miałaby charakter globalny i uniwersalny, całościowy i uzdrawiający.	<p>Opierając się na tej jednej fałszywej wartości, cała światowa ekonomia z koncernami i bankami, prowadzi ludzkość do samozagłady.<br/>To właśnie z tego powodu, na naszej planecie bez przerwy trwa wojna między człowiekiem a naturą. Niszcząc dla krótkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich środowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie świadomości planetarnej, potrzebujemy zdecydowanego uderzenia właśnie w ten punkt i pokazania światu, że nie da się decydować o czyimś życiu, poprzez wymyślone prawo do jego zawłaszczenia.Nasze zaangażowanie się jest bardziej autentyczne, kiedy wynika z naturalnej chęci wewnętrznej realizacji, a nie z naśladowania, lęku, albo podążania za przewodnikami bądź za kimkolwiek.</p>	Krytycznym punktem w hierarchii wartości współczesnej cywilizacji, jest powszechne przekonanie, że możemy mieć całkowitą władzę nad tym co posiadamy.	Henryk Skolimowski	<p>Przedsięwzięcie nasze ma pokazywać, że da się tworzyć wspólnotę na zasadach równości, bez potrzeby posiadania miejsca w którym żyjemy. Ma to być też przykład, w jaki sposób można dążyć do jak najbardziej ekonomicznego z punktu widzenia zużycia energii, oraz jak najbardziej samowystarczalnego stylu życia.Miejsce to, ma łączyć wszystkich, którzy mieli by na uwadze, jak istotna dla życia na Ziemi jest idea równości ludzi wobec miejsca w którym się znajdują. Jak również to, że Ziemia nie należąca do pojedynczego właściciela jest bardzo istotnym aspektem budowania wolności i świadomości będącej alternatywą do konsumpcjonizmu i chęci zawłaszczania sobie tego, co tak na prawdę jest dobrem wspólnym.</p>	<p>Mianem Wolnej Ziemi określamy taki teren, który jest użytkowany i zarządzany wspólnie, społecznie, przez pewną grupę ludzi na zasadach równości i braterstwa w intencji dobra i korzyści zarówno użytkowników tej ziemi, jej sąsiadów, całej ludzkości, przyrody oraz przyszłych pokoleń.<br/>Ziemia, zarówno jako Planeta, jak i ta pod nogami postrzegana jako grunt, który może być czyjąś własnością, nigdy nie była i nie będzie należała do człowieka. To my ludzie przynależymy do Ziemi i odkrywając to, możemy również odkryć naszą faktyczną funkcję i misję tu gdzie jesteśmy..<br/>a jesteśmy opiekunami i strażnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale również indywidualnie.</p>	<p>Z okazji założenia przez Stowarzyszenie Arte Unite zbiórki społecznościowej, chcieli byśmy Was zaprosić do udziału w naszych warsztatach.<br/> Organizowaliśmy już w Lublińcu Jogę wg Iyengara oraz naukę budowy izolacyjnych mat ze słomy, w połączeniu z tynkowaniem gliną ścian słomianych.<br/> Obecnie mamy możliwość przeprowadzenia zdalnie kilku ciekawych zajęć, jak również już zaplanowanych warsztatów w naszej Stodole, ale dopiero jak skończymy ją remontować za zbierane w tej chwili pieniądze.<br/> Uznaliśmy, że w tych ciężkich czasach nie można już na nic czekać i że jest to dla nas ostatni moment na to, żeby być albo nie być.<br/> Dlatego zachęcamy serdecznie wszystkich, do aktywnego przyłączenia się materialnie do inicjatywy, która może stać się naszą wspólną.</p>
\.


--
-- Data for Name: miejsca_miejscapage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.miejsca_miejscapage (page_ptr_id, opis, objasnienie, komentarz, zaproszenie) FROM stdin;
8	<h2><br/>      Chcemy by to miejsce było tworzeniem wspólnej przestrzeni, którą możemy razem kształtować dla naszych pasji i potrzeb.<br/>Bardzo ważne dla nas jest również to, że Ziemia nie należąca do pojedynczego właściciela jest bardzo istotnym aspektem budowania wolności i świadomości będącej alternatywą do konsumpcjonizmu i chęci zawłaszczania sobie tego, co tak na prawdę jest dobrem wspólnym.<br/>Nasza wspólnota, ma łączyć wszystkich, którzy mieli by na uwadze, jak istotna dla życia na Ziemi jest idea równości ludzi wobec miejsca w którym się znajdują.<br/><br/></h2>	<p>Stodoła Wymyślacz jest na obrzeżach Lublińca, blisko trasy nr 11 łączącej Katowice z Poznaniem. Nasze miasteczko leży 30 km na zachód od Częstochowy. Oddzielone jest od aglomeracji śląskiej dużym kompleksem lasów, który rozpoczyna się kilkaset metrów od naszego budynku.<br/> Jest to gospodarczy budynek z cegły na wapiennej zaprawie. Przebudowa na obiekt mieszkalny, polega na łączeniu technologii nowoczesnych z tradycyjnymi.  <br/><br/>Ogrzewanie całego budynku będzie oparte o zbiornik akumulacyjny, a ciepło rozprowadzane za pomocą wody do grzejników płaszczyznowych zrobionych z gliny i kruszywa akumulacyjnego. Sam zbiornik będzie zasilany z dwóch podków, baterii słonecznych, solarnej i fotowoltaicznej.<br/>Budynek ma dwa piętra. Na parterze mieści się sala wykładowa z małą sceną, kuchnia, łazienka, biuro, warsztat, a za nim część szklarni i piwnica z suszarnią do warzyw. Na piętrze są cztery niewielkie pokoje mieszkalne, szklarnia działająca również zimą, balkon i z niego most prowadzący do domku na drzewie. <br/></p><p>Budynek sąsiaduje jednym podwórkiem z glinianym domem Andrzeja. Oba domy tworzą jedną wspólnotę. <br/> Przedsięwzięcie nasze ma pokazywać, że da się tworzyć wspólnotę na zasadach równości, bez potrzeby posiadania miejsca w którym żyjemy. Ma to być też przykład, w jaki sposób można dążyć do jak najbardziej ekonomicznego z punktu widzenia zużycia energii, oraz jak najbardziej samowystarczalnego stylu życia.</p>	<h2>Nasze zwyczaje<br/> -zaproszenie<br/><br/></h2><p>Żeby uniknąć przypadkowości ludzi biorących udział w naszym projekcie, jesteśmy w mocy zaprosić wszystkich, którzy nie utożsamiają się z żadnymi dogmatami, nie potrzebują przywódców i chcą z nami współtworzyć rodzinę opartą na plemiennym kręgu. Mamy na uwadze stwarzanie między nami relacji, w której uczymy się nawzajem nie dla samej wiedzy, a dla harmonii ze sobą i z całym życiem. Na tym poziomie różnice między nami stają się inspiracją do łączenia różnorodności w funkcjonalny zespół, wtedy każdy staje się jednakowo potrzebny. Kiedy rywalizacja zmienia się we współpracę, nikt nie podąża już sam naprzeciw przeszkodom i problemom - łatwiej jest pokonywać je razem. U nas nikt nie jest u kogoś, wszyscy jesteśmy u siebie.<br/> Organizacja pozarządowa, gdzie zarząd jest wyłącznie władzą wykonawczą jednogłośnych decyzji daje nam taką możliwość również na poziomie prawnym. Będąc równymi wobec miejsca, w którym żyjemy, stajemy się równi wobec siebie. Dzięki temu każdy, kto pojawia się u nas, może mieć poczucie, że jego udział w tym przedsięwzięciu jest na równi ze wszystkimi.<br/> Nie mamy potrzeby przeciwstawiania się jakiejkolwiek władzy, ale też nie mamy potrzeby jej tworzyć między sobą, ani uczestniczyć w przekazywaniu sobie tej zbędnej dla wolności tradycji. Wspólnie nie utożsamiamy się z żadną religią, ani jej nie tworzymy. Jest to koniecznym warunkiem na ścieżce życia którą idziemy, w taki sposób chcemy zachować możliwość kontynuacji tego kim jesteśmy jako ludzie tutaj na Ziemi. Naszą odpowiedzią jest utworzenie kręgu, w którym mogą uczestniczyć wyznawcy wielu religii, jednak żadnej z nich nie stawiamy w centrum. Zdajemy sobie sprawę, że wiara jest częścią anatomii naszych uczuć i nadaje moc tworzenia wszystkiemu, co jesteśmy w stanie uznać za prawdziwe. Kiedy nie jest w sprzeczności z naszym rozumieniem, faktycznie staje się coraz bardziej skuteczna w kreowaniu rzeczywistości. Żeby to widzieć, nie potrzebujemy żadnych “pośredników” pomiędzy człowiekiem a tym wszystkim czego manifestacją jesteśmy. To my należymy do tej Planety. Jesteśmy jej opiekunami i strażnikami.</p>	
\.


--
-- Data for Name: misja_misjapage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.misja_misjapage (page_ptr_id, opis, objasnienie, komentarz_1, komentarz_2, komentarz_3, podsumowanie) FROM stdin;
7	<h2>MISJA<br/><br/></h2>	<p>Każdy człowiek marzy o tym, by kształtować swoje życie zgodnie z tym, co dla niego dobre. Jednak różnorodność pomysłów i rozwiązań na świecie, wciąż kłóci się ze sobą i sobie zaprzecza. Mimo to, jako ludzie wciąż zmieniamy świat. Każdy z nas pragnie się tym zająć jak najlepiej. Problem w tym, że wciąż nie wiemy co to znaczy lepiej, a zwłaszcza lepiej dla całego życia na Ziemi, którego jesteśmy częścią. <br/>Ewolucja dotarła już do punktu, gdzie zmiana musi dotyczyć nas samych. Świadomość, którą zyskaliśmy w ciągu wieków, pokazuje nam wyraźnie, że nie możemy już planować i działać w zakresie jednego pokolenia, a tym bardziej jednostkowo.<br/> Nasza organizacja ma na celu stwarzanie godnych warunków do życia i do samostanowienia o nim. Chcemy zmieniać świat i relacje między ludźmi w nim panujące. Dlatego do naszych projektów, zapraszamy ludzi świadomych zagrożenia, jakie niesie obecny kierunek rozwoju cywilizacji.<br/><br/> Uważamy, że rozwój w kierunku integracji z całym życiem na Ziemi jest naturalną możliwością przetrwania każdego gatunku i wynika bezpośrednio z ewolucji życia, dlatego jest też naturalnym kierunkiem ewolucji świadomości człowieka. Chcielibyśmy, żeby wiedzieli o naszym projekcie wszyscy, którzy czują Ziemię jako wspólny dom całej ludzkości. Mamy na uwadze odtwarzanie naturalnej relacji między człowiekiem a naszą planetą. Chcemy też pokazać, że nie potrzebujemy posiadać Ziemi, aby na niej żyć.<br/><br/> W oparciu o udane zapisy białych plam na mapie prawa i zakładanie organizacji o strukturach poziomych, możemy tworzyć świat oparty o nasze zwyczaje, wewnątrz każdego demokratycznego państwa i to zupełnie legalne. Jednym z tych zwyczajów jest wyeliminowanie własności prywatnej, tam gdzie mogła by ona zaistnieć jako władza człowieka nad człowiekiem. Umożliwi nam to posiadanie ziemi jako wspólnej i niepodzielnej własności, a przede wszystkim stworzenie podstaw do tego, by każdy mógł mieć równe prawa do decydowania o swoim życiu. <br/><br/> Krytycznym punktem w hierarchii wartości współczesnej cywilizacji, jest powszechne przekonanie, że możemy mieć całkowitą władzę nad tym co posiadamy. To właśnie z tego powodu, na naszej planecie bez przerwy trwa wojna między człowiekiem a naturą. Niszcząc kolejne gatunki i ich środowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia. Świat konsumpcji doprowadził nawet do sytuacji, gdzie możemy konsumować czas i życie innych ludzi wyznaczając za nie cenę. Demokracja daje równe prawa również głupocie, jeśli tylko da się ją sprzedać. Kiedy od dziecka motywację wyznaczają dwa bieguny: kara i nagroda, zysk i strata, kupno i sprzedaż, tworzymy świat rywalizacji i kariery, ludzi coraz bardziej sobie obcych i podatnych na władzę. Jest to upadek poniżej normalności, a prawda o tym może wystraszyć. Dlatego boimy się jej i ukrywamy swoją naturę wciąż nie mogąc jej odkryć.<br/><br/> Nie mamy potrzeby przeciwstawiania się jakiejkolwiek władzy, ale też nie mamy potrzeby jej tworzyć, ani uczestniczyć w przekazywaniu sobie tej zbędnej dla wolności tradycji. Kiedy przemieniamy stare systemy wartościowania w nowe, nie potrzebujemy już buntu. Nasze działania wywodzą się z ekofilozofii i głębokiej ekologii oraz kultur plemiennych, gdzie Ziemia nigdy nie była własnością człowieka. To my należymy do tej Planety. Jesteśmy jej opiekunami i strażnikami. Będąc równymi wobec miejsca, w którym żyjemy, stajemy się w sposób naturalny równi wobec siebie. Dzięki temu każdy, kto pojawia się u nas, może mieć poczucie, że uczestniczy w tym na równych prawach ze wszystkimi. Na tym poziomie różnice miedzy nami stają się inspiracją do łączenia różnorodności w funkcjonalny zespół, wtedy każdy staje się jednakowo potrzebny.<br/>U nas nikt nie jest &quot;u kogoś&quot;, wszyscy jesteśmy u siebie. Ziemia jest dla nas dobrem wspólnym. Będąc równymi wobec miejsca, w którym żyjemy, stajemy się równi wobec siebie.<br/> W praktyce oznacza to, że wszelkie nieruchomości pozostające w zarządzaniu organizacji, która zajmuje się wspólną Ziemią są od początku i na zawsze traktowane jako dobro wspólne i nie mogą być przez nikogo postrzegane jako własność. Jest to naszą drogą do wolności, jak i samą wolnością, która eliminuje z naszego życia konsumpcjonizm jako wartość. Jakakolwiek forma posiadania Ziemi, oparta o struktury władzy człowieka nad człowiekiem, lub jednych ludzi nad drugimi, z naszego punktu widzenia eliminuje ideę przestrzeni, gdzie każdy może być równy, zarówno wobec miejsca w którym żyje, jak i wobec innych ludzi.</p>				
\.


--
-- Data for Name: rwz_rwzpage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.rwz_rwzpage (page_ptr_id, opis, objasnienie, komentarz) FROM stdin;
9	<h2>Ruch Wolnej Ziemi jest inicjatywą społeczną skupioną na wdrażaniu w życie sprawdzonych rozwiązań prawnych i organizacyjnych w celu uwalniania Ziemi spod własności prywatnej. Zależy nam na tworzeniu i rozwoju intencjonalnych społeczności wiejskich (tzw. ekowiosek, ekoosad), w których decyzje dotyczące wszystkich podejmowane są wspólnie (przez konsensus), i w których my ludzie, posiadamy równe prawa zarówno wobec Ziemi oraz siebie nawzajem. Tworzymy w tym celu osoby prawne tj. fundacje lub stowarzyszenia.</h2>	<p>Uczestnikiem Ruchu może być każda osoba, która rozumie nasze założenia i zgadza się z nimi. Ruch Wolnej Ziemi nie jest organizacją i nie prowadzi żadnej ewidencji przynależności. Ziemia, zarówno jako Planeta, jak i ta pod nogami postrzegana jako grunt, który może być czyjąś własnością, nigdy nie była i nie będzie należała do człowieka. To my ludzie przynależymy do Ziemi i odkrywając to, możemy również odkryć naszą faktyczną funkcję i misję tu gdzie jesteśmy.. a jesteśmy opiekunami i strażnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale również indywidualnie. U nas nikt nie jest &quot;u kogoś&quot;, wszyscy jesteśmy u siebie. Ziemia jest dla nas dobrem wspólnym. Będąc równymi wobec miejsca, w którym żyjemy, stajemy się równi wobec siebie. W praktyce oznacza to, że wszelkie nieruchomości pozostające w zarządzaniu organizacji, która zajmuje się wspólną Ziemią są od początku i na zawsze traktowane jako dobro wspólne i nie mogą być przez nikogo postrzegane jako własność. Jest to naszą drogą do wolności, jak i samą wolnością, która w ten sposób eliminuje z naszego życia podstawy konsumpcjonizmu.</p>	<p>Zalążki Ruchu Wolnej Ziemi, istniejące w sposób faktyczny na terenie Polski zainicjował Henry Schumacher, tworząc w 2000 r w Bieszczadach Fundację Plemię Sanu. Henry przyjechał do Polski w 1991 r odkrywając przyszłe miejsce do życia z grupą skautingową Rodziny Tęczy. W tamtym czasie szukali oni miejsca na europejskie Zgromadzenie Rainbow Family, które odbyło się w 1991 r w dolinie Tworylne. W 2001 również w Bieszczadach w Komańczy pojawiła się też ośmioosobowa grupa Tęczowy Krąg, która za cel postawiła sobie założenie organizacji, umożliwiającej posiadanie ziemi jako wspólnej i niepodzielnej własności. Dzięki temu w 2004 r w Grabówce udało się zarejestrować Stowarzyszenie Arte Unite, które w 2012 r otrzymało na wspólną własność budynek gospodarczy. Tęczowy Krąg został założony pod Bydgoszczą przez ludzi z międzynarodowego posthipisowskiego ruchu Rainbow Family - Rodzina Tęczy. W tym samym czasie dzięki Arturowi Milickiemu powstała Fundacja dla Ziemi i Ludzi założona w roku 2011. Również dzięki Arturowi, powyższe inicjatywy udało się zebrać i uruchomić jako Ruch Wolnej Ziemi. Wszystkie wymienione tutaj organizacje, można uznać za inicjujące Ruch Wolnej Ziemi ze względu na szczególne uwzględnienie podejmowania w nich decyzji przez kosensus, czyli jednogłośnie.</p>
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
-- Data for Name: wagtailadmin_admin; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailadmin_admin (id) FROM stdin;
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
9	1	1	150
10	1	2	150
11	1	1	151
12	1	2	151
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
6	000100010001	3	0	Warsztaty	warsztaty	t	f	/home/warsztaty/		f		\N	\N	f	41	1	f	2021-02-24 04:28:23.398862+01	2021-02-21 01:20:43.836522+01	40	2021-02-24 04:28:23.492369+01	Warsztaty	\N	\N	af663334-acac-4c96-9aa7-48db95a271d6	1	\N
8	000100010003	3	0	Stodoła Wymyślacz	stodoła-wymyślacz	t	f	/home/stodoła-wymyślacz/		f		\N	\N	f	43	1	f	2021-02-24 11:28:42.724364+01	2021-02-21 02:30:25.139524+01	41	2021-02-24 11:28:42.810559+01	Stodoła Wymyślacz	\N	\N	9337acdf-56ac-42a5-aacb-5ea59c83aa6f	1	\N
7	000100010002	3	0	Misja	misja	t	f	/home/misja/		f		\N	\N	f	42	1	f	2021-02-24 03:29:53.745063+01	2021-02-21 02:05:29.731187+01	31	2021-02-24 03:29:53.849197+01	Misja	\N	\N	ad7d4a29-49cc-4bbc-9cd5-a8fbeaaa3b04	1	\N
9	000100010004	3	0	Ruch Wolnej Ziemi	ruch-wolnej-ziemi	t	f	/home/ruch-wolnej-ziemi/		f		\N	\N	f	44	1	f	2021-02-24 03:31:50.293827+01	2021-02-21 02:35:56.738346+01	32	2021-02-24 03:31:50.415821+01	Ruch Wolnej Ziemi	\N	\N	9f495cdd-69e2-4634-a111-b3c6ffc99ed9	1	\N
3	00010001	2	4	Home	home	t	f	/home/		f		\N	\N	f	3	\N	f	2021-02-26 21:28:51.583808+01	2021-02-07 07:38:02.740781+01	45	2021-02-26 21:28:51.686174+01	Home	\N	\N	4d760b9f-f4c3-407a-92e4-17f32be77507	1	\N
\.


--
-- Data for Name: wagtailcore_pagelogentry; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_pagelogentry (id, label, action, data_json, "timestamp", content_changed, deleted, content_type_id, page_id, revision_id, user_id) FROM stdin;
1	Home	wagtail.edit	""	2021-02-07 07:27:14.888125+01	t	f	3	3	1	1
2	Home	wagtail.edit	""	2021-02-07 07:37:51.925883+01	t	f	3	3	2	1
3	Home	wagtail.edit	""	2021-02-07 07:38:02.735153+01	t	f	3	3	3	1
4	Home	wagtail.publish	null	2021-02-07 07:38:02.875497+01	f	f	3	3	3	1
5	Home	wagtail.edit	""	2021-02-07 15:10:58.266414+01	t	f	3	3	4	1
6	Home	wagtail.publish	null	2021-02-07 15:10:58.42257+01	t	f	3	3	4	1
7	Home	wagtail.edit	""	2021-02-07 15:16:55.173578+01	t	f	3	3	5	1
8	Home	wagtail.publish	null	2021-02-07 15:16:55.287497+01	t	f	3	3	5	1
9	Home	wagtail.edit	""	2021-02-07 15:24:43.05199+01	t	f	3	3	6	1
10	Home	wagtail.publish	null	2021-02-07 15:24:43.183414+01	f	f	3	3	6	1
11	Home	wagtail.edit	""	2021-02-14 23:05:22.770676+01	t	f	3	3	7	1
12	Home	wagtail.publish	null	2021-02-14 23:05:22.885945+01	t	f	3	3	7	1
13	Home	wagtail.edit	""	2021-02-14 23:14:00.173831+01	t	f	3	3	8	1
14	Home	wagtail.publish	null	2021-02-14 23:14:00.30185+01	t	f	3	3	8	1
15	WARSZTATY	wagtail.create	""	2021-02-21 00:28:30.222002+01	t	f	41	4	\N	1
16	WARSZTATY	wagtail.publish	null	2021-02-21 00:28:30.356676+01	t	f	41	4	9	1
17	Warsztaty	wagtail.create	""	2021-02-21 00:31:33.255749+01	t	f	41	5	\N	1
18	Warsztaty	wagtail.publish	null	2021-02-21 00:31:33.430712+01	t	f	41	5	10	1
19	Warsztaty	wagtail.delete	""	2021-02-21 01:03:09.046268+01	f	t	41	5	\N	1
20	WARSZTATY	wagtail.delete	""	2021-02-21 01:03:30.184142+01	f	t	41	4	\N	1
21	Warsztaty	wagtail.create	""	2021-02-21 01:20:43.743563+01	t	f	41	6	\N	1
22	Warsztaty	wagtail.publish	null	2021-02-21 01:20:43.924886+01	t	f	41	6	11	1
23	Misja	wagtail.create	""	2021-02-21 02:05:29.636394+01	t	f	42	7	\N	1
24	Misja	wagtail.publish	null	2021-02-21 02:05:29.819018+01	t	f	42	7	12	1
25	Stodoła Wymyślacz	wagtail.create	""	2021-02-21 02:30:25.079711+01	t	f	43	8	\N	1
26	Stodoła Wymyślacz	wagtail.publish	null	2021-02-21 02:30:25.218257+01	t	f	43	8	13	1
27	Ruch Wolnej Ziemi	wagtail.create	""	2021-02-21 02:35:56.679739+01	t	f	44	9	\N	1
28	Ruch Wolnej Ziemi	wagtail.publish	null	2021-02-21 02:35:56.79174+01	t	f	44	9	14	1
29	Stodoła Wymyślacz	wagtail.edit	""	2021-02-22 11:17:40.134678+01	t	f	43	8	15	2
30	Stodoła Wymyślacz	wagtail.publish	null	2021-02-22 11:17:40.216648+01	t	f	43	8	15	2
31	Stodoła Wymyślacz	wagtail.edit	""	2021-02-22 11:20:07.423288+01	t	f	43	8	16	2
32	Stodoła Wymyślacz	wagtail.edit	""	2021-02-22 11:25:39.198049+01	t	f	43	8	17	2
33	Stodoła Wymyślacz	wagtail.edit	""	2021-02-22 11:29:16.815001+01	t	f	43	8	18	2
34	Stodoła Wymyślacz	wagtail.edit	""	2021-02-22 14:06:23.678961+01	t	f	43	8	19	2
35	Stodoła Wymyślacz	wagtail.publish	null	2021-02-22 14:06:23.762815+01	f	f	43	8	19	2
36	Misja	wagtail.edit	""	2021-02-22 14:35:09.853605+01	t	f	42	7	20	2
37	Misja	wagtail.publish	null	2021-02-22 14:35:09.946475+01	t	f	42	7	20	2
38	Misja	wagtail.edit	""	2021-02-22 14:36:30.000045+01	t	f	42	7	21	2
39	Misja	wagtail.publish	null	2021-02-22 14:36:30.091636+01	t	f	42	7	21	2
40	Misja	wagtail.edit	""	2021-02-22 14:37:38.70456+01	t	f	42	7	22	2
41	Misja	wagtail.publish	null	2021-02-22 14:37:38.786281+01	t	f	42	7	22	2
42	Misja	wagtail.edit	""	2021-02-22 15:23:56.377272+01	t	f	42	7	23	2
43	Misja	wagtail.publish	null	2021-02-22 15:23:56.458926+01	t	f	42	7	23	2
44	Misja	wagtail.edit	""	2021-02-22 15:25:48.035666+01	t	f	42	7	24	2
45	Misja	wagtail.publish	null	2021-02-22 15:25:48.116766+01	t	f	42	7	24	2
46	Misja	wagtail.edit	""	2021-02-22 15:27:23.636882+01	t	f	42	7	25	2
47	Misja	wagtail.publish	null	2021-02-22 15:27:23.718553+01	t	f	42	7	25	2
48	Warsztaty	wagtail.edit	""	2021-02-22 15:37:00.243542+01	t	f	41	6	26	2
49	Warsztaty	wagtail.publish	null	2021-02-22 15:37:00.325359+01	t	f	41	6	26	2
50	Warsztaty	wagtail.edit	""	2021-02-22 15:38:48.793829+01	t	f	41	6	27	2
51	Warsztaty	wagtail.publish	null	2021-02-22 15:38:48.875958+01	t	f	41	6	27	2
52	Warsztaty	wagtail.edit	""	2021-02-22 15:43:06.057831+01	t	f	41	6	28	2
53	Warsztaty	wagtail.publish	null	2021-02-22 15:43:06.139697+01	t	f	41	6	28	2
54	Stodoła Wymyślacz	wagtail.edit	""	2021-02-22 15:45:00.532958+01	t	f	43	8	29	2
55	Stodoła Wymyślacz	wagtail.publish	null	2021-02-22 15:45:00.614545+01	t	f	43	8	29	2
56	Misja	wagtail.edit	""	2021-02-22 19:38:54.059028+01	t	f	42	7	30	2
57	Misja	wagtail.publish	null	2021-02-22 19:38:54.168707+01	t	f	42	7	30	2
58	Misja	wagtail.edit	""	2021-02-24 03:29:53.81579+01	t	f	42	7	31	2
59	Misja	wagtail.publish	null	2021-02-24 03:29:53.907756+01	t	f	42	7	31	2
60	Ruch Wolnej Ziemi	wagtail.edit	""	2021-02-24 03:31:50.382334+01	t	f	44	9	32	2
61	Ruch Wolnej Ziemi	wagtail.publish	null	2021-02-24 03:31:50.464311+01	t	f	44	9	32	2
62	Stodoła Wymyślacz	wagtail.edit	""	2021-02-24 03:46:38.5261+01	t	f	43	8	33	2
63	Stodoła Wymyślacz	wagtail.publish	null	2021-02-24 03:46:38.617618+01	t	f	43	8	33	2
64	Stodoła Wymyślacz	wagtail.edit	""	2021-02-24 03:58:04.047911+01	t	f	43	8	34	2
65	Stodoła Wymyślacz	wagtail.publish	null	2021-02-24 03:58:04.138062+01	t	f	43	8	34	2
66	Stodoła Wymyślacz	wagtail.edit	""	2021-02-24 04:12:25.541554+01	t	f	43	8	35	2
67	Stodoła Wymyślacz	wagtail.publish	null	2021-02-24 04:12:25.622754+01	t	f	43	8	35	2
68	Warsztaty	wagtail.edit	""	2021-02-24 04:15:44.057361+01	t	f	41	6	36	2
69	Warsztaty	wagtail.edit	""	2021-02-24 04:15:57.389511+01	t	f	41	6	37	2
70	Warsztaty	wagtail.publish	null	2021-02-24 04:15:57.462773+01	t	f	41	6	37	2
71	Warsztaty	wagtail.edit	""	2021-02-24 04:18:58.526015+01	t	f	41	6	38	2
72	Warsztaty	wagtail.publish	null	2021-02-24 04:18:58.608383+01	t	f	41	6	38	2
73	Warsztaty	wagtail.edit	""	2021-02-24 04:22:27.852124+01	t	f	41	6	39	2
74	Warsztaty	wagtail.publish	null	2021-02-24 04:22:27.933958+01	t	f	41	6	39	2
75	Warsztaty	wagtail.edit	""	2021-02-24 04:28:23.467194+01	t	f	41	6	40	2
76	Warsztaty	wagtail.publish	null	2021-02-24 04:28:23.530815+01	t	f	41	6	40	2
77	Stodoła Wymyślacz	wagtail.edit	""	2021-02-24 11:28:42.777222+01	t	f	43	8	41	2
78	Stodoła Wymyślacz	wagtail.publish	null	2021-02-24 11:28:42.858604+01	t	f	43	8	41	2
79	Home	wagtail.edit	""	2021-02-26 19:35:58.235414+01	t	f	3	3	42	2
80	Home	wagtail.publish	null	2021-02-26 19:35:58.309822+01	t	f	3	3	42	2
81	Home	wagtail.edit	""	2021-02-26 19:42:08.022807+01	t	f	3	3	43	2
82	Home	wagtail.publish	null	2021-02-26 19:42:08.113943+01	t	f	3	3	43	2
83	Home	wagtail.edit	""	2021-02-26 21:13:38.994335+01	t	f	3	3	44	2
84	Home	wagtail.publish	null	2021-02-26 21:13:39.088393+01	t	f	3	3	44	2
85	Home	wagtail.edit	""	2021-02-26 21:28:51.652832+01	t	f	3	3	45	2
86	Home	wagtail.publish	null	2021-02-26 21:28:51.734817+01	t	f	3	3	45	2
\.


--
-- Data for Name: wagtailcore_pagerevision; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_pagerevision (id, submitted_for_moderation, created_at, content_json, approved_go_live_at, page_id, user_id) FROM stdin;
36	f	2021-02-24 04:15:44.001541+01	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "af663334-acac-4c96-9aa7-48db95a271d6", "locale": 1, "title": "Warsztaty", "draft_title": "Warsztaty", "slug": "warsztaty", "content_type": 41, "live": true, "has_unpublished_changes": false, "url_path": "/home/warsztaty/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T00:20:43.836Z", "last_published_at": "2021-02-22T14:43:06.091Z", "latest_revision_created_at": "2021-02-22T14:43:06.003Z", "live_revision": 28, "alias_of": null, "opis": "<h2>Po ca\\u0142kowitym sko\\u0144czeniu Stodo\\u0142y, b\\u0119dziemy dysponowali:<br/>-Warsztatem ceramicznym (mamy ko\\u0142o garncarskie, szkliwa i piec gazowy do wypalania)<br/><br/> - Warsztatem rze\\u017aby w drewnie, szklarni\\u0105 i suszarni\\u0105 do warzyw, nie tylko produkowanych przez nas, ale r\\u00f3wnie\\u017c z zaprzyja\\u017anionych gospodarstw, o kt\\u00f3rych wiemy, \\u017ce uprawia si\\u0119 tam ro\\u015bliny w spos\\u00f3b ekologiczny. B\\u0119dziemy mogli si\\u0119 te\\u017c zaj\\u0105\\u0107 pakowaniem tych warzyw.<br/> - Sal\\u0105 do spotka\\u0144 na oko\\u0142o 20 os\\u00f3b, jak r\\u00f3wnie\\u017c zapleczem umo\\u017cliwiaj\\u0105cym, \\u017ceby takie osoby mog\\u0142y mieszka\\u0107 w Stodole przez tydzie\\u0144 lub dwa. Nie s\\u0105 to warunki hotelowe, poniewa\\u017c spa\\u0107 mo\\u017cna na drewnianej pod\\u0142odze i na antresoli, na materacach lub karimatach.</h2>", "zaproszenie": "", "milicki": "<p><b>Artur Milicki</b><br/> jest konstruktorem, zdunem i nauczycielem zdu\\u0144stwa specjalizuj\\u0105cym si\\u0119 w projektowaniu i budowie wydajnych piec\\u00f3w akumulacyjnych (rakietowych, komorowych) oraz kompleksowych instalacji s\\u0142u\\u017c\\u0105cych do ogrzewania pomieszcze\\u0144 mieszkalnych i u\\u017cytkowych. Ponadto projektuje on i buduje r\\u00f3wnie\\u017c trzony kuchenne, piece chlebowe, piece do pizzy, suszarnie, sauny, w\\u0119dzarnie, grille.</p><h3><b>Kurs projektowania i budowy piec\\u00f3w (Kurs Zdu\\u0144ski - edycja VI - 2021)</b></h3><h3><b>Proces Integracji Emocjonalnej (9-tygodniowy kurs online).</b></h3>", "beret": "<p><b>Adam Ma\\u0144czuk</b><br/> Jest programist\\u0105 z ponad 20-letnim do\\u015bwiadczeniem na ca\\u0142ym \\u015bwiecie (w tym w Dolinie Krzemowej). Specjalizuje si\\u0119 w Pythonie i Django. Pracowa\\u0142 jako lektor programowania na Uniwersytecie Warszawskim. Adam jest tak\\u017ce poet\\u0105 i \\u017ceglarzem.</p>", "monika": "<p><b>Monika Matis</b><br/><br/> Pracuje jako publicystka, t\\u0142umaczka, autorka tekst\\u00f3w \\u017ceglarskich oraz piel\\u0119gniarka. Posiada r\\u00f3\\u017cnorodne do\\u015bwiadczenia akademickie, od informatyki i mechaniki po studia medyczne. Z zami\\u0142owania zajmuje si\\u0119 nawigacj\\u0105 tradycyjn\\u0105, lub jak si\\u0119 j\\u0105 teraz okre\\u015bla \\u201cawaryjn\\u0105\\u201d. \\u017begluje od pi\\u0119tnastego roku \\u017cycia, zwykle na jachtach znajomych i przyjaci\\u00f3\\u0142, gdy potrzebowali kogo\\u015b znaj\\u0105cego si\\u0119 na rzeczy i do\\u015bwiadczonego aby pop\\u0142yn\\u0105\\u0107 gdzie\\u015b dalej. Prowadzi\\u0142a jachty na Ba\\u0142tyku, Morzu P\\u00f3\\u0142nocnym i \\u015ar\\u00f3dziemnym, Atlantyku, od Afryki po dalek\\u0105 Arktyk\\u0119. \\u017beglowa\\u0142a r\\u00f3wnie\\u017c samotnie i w ma\\u0142ych za\\u0142ogach.</p>", "comment": "<p> Warsztat ceramiczny dla os\\u00f3b doros\\u0142ych w oparciu o prac\\u0119 w glinie z pobliskich cegielni Panosz\\u00f3w i Gwo\\u017adziany.\\u00a0<br/>Obejmuje wiedz\\u0119, dotycz\\u0105c\\u0105 przygotowania gliny i podstawowych technik tworzenia prostych przedmiot\\u00f3w u\\u017cytkowych jak i podstaw rze\\u017aby w glinie.\\u00a0<br/></p><p>Kuba Ferenczak uczy\\u0142em si\\u0119 w Liceum Sztuk Plastycznych w Zakopanem w klasie o profilu rze\\u017abiarstwo w drewnie, zaj\\u0119cia jednak r\\u00f3wnie\\u017c obejmowa\\u0142y rze\\u017ab\\u0119 w glinie. Z ceramik\\u0105 i jej wypalaniem w piecu gazowym mia\\u0142em do czynienia w Grab\\u00f3wce, gdzie eksperymentowa\\u0142em z lokaln\\u0105 glin\\u0105. Dla kilku os\\u00f3b, wsp\\u00f3lnie z Ann\\u0105 Ovalle Correa prowadzi\\u0142em zaj\\u0119cia z ceramiki we wsi Dziadowice.<br/></p><p>Po warsztatach, ka\\u017cdy b\\u0119dzie w stanie zrobi\\u0107 samodzielnie szkliwione naczynie, prost\\u0105 form\\u0119 w postaci rze\\u017aby, zabawk\\u0119, ozdob\\u0119 na prezent, lub inne przedmioty wg pomys\\u0142u uczestnika.\\u00a0<br/>Zdobyta wiedza, b\\u0119dzie dotyczy\\u0107 tego, jak przystosowa\\u0107 dowolny kszta\\u0142t do materia\\u0142u, z kt\\u00f3rego ma by\\u0107 zrobiony, czyli gliny. B\\u0119dziemy te\\u017c robi\\u0107 proste narz\\u0119dzia do kszta\\u0142towania form, kt\\u00f3re chcemy uzyska\\u0107.\\u00a0 </p>"}	\N	6	2
37	f	2021-02-24 04:15:57.291947+01	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "af663334-acac-4c96-9aa7-48db95a271d6", "locale": 1, "title": "Warsztaty", "draft_title": "Warsztaty", "slug": "warsztaty", "content_type": 41, "live": true, "has_unpublished_changes": true, "url_path": "/home/warsztaty/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T00:20:43.836Z", "last_published_at": "2021-02-22T14:43:06.091Z", "latest_revision_created_at": "2021-02-24T03:15:44.001Z", "live_revision": 28, "alias_of": null, "opis": "<h2>Po ca\\u0142kowitym sko\\u0144czeniu Stodo\\u0142y, b\\u0119dziemy dysponowali:<br/>-Warsztatem ceramicznym (mamy ko\\u0142o garncarskie, szkliwa i piec gazowy do wypalania)<br/><br/> - Warsztatem rze\\u017aby w drewnie, szklarni\\u0105 i suszarni\\u0105 do warzyw, nie tylko produkowanych przez nas, ale r\\u00f3wnie\\u017c z zaprzyja\\u017anionych gospodarstw, o kt\\u00f3rych wiemy, \\u017ce uprawia si\\u0119 tam ro\\u015bliny w spos\\u00f3b ekologiczny. B\\u0119dziemy mogli si\\u0119 te\\u017c zaj\\u0105\\u0107 pakowaniem tych warzyw.<br/> - Sal\\u0105 do spotka\\u0144 na oko\\u0142o 20 os\\u00f3b, jak r\\u00f3wnie\\u017c zapleczem umo\\u017cliwiaj\\u0105cym, \\u017ceby takie osoby mog\\u0142y mieszka\\u0107 w Stodole przez tydzie\\u0144 lub dwa. Nie s\\u0105 to warunki hotelowe, poniewa\\u017c spa\\u0107 mo\\u017cna na drewnianej pod\\u0142odze i na antresoli, na materacach lub karimatach.</h2>", "zaproszenie": "", "milicki": "<p><b>Artur Milicki</b><br/> jest konstruktorem, zdunem i nauczycielem zdu\\u0144stwa specjalizuj\\u0105cym si\\u0119 w projektowaniu i budowie wydajnych piec\\u00f3w akumulacyjnych (rakietowych, komorowych) oraz kompleksowych instalacji s\\u0142u\\u017c\\u0105cych do ogrzewania pomieszcze\\u0144 mieszkalnych i u\\u017cytkowych. Ponadto projektuje on i buduje r\\u00f3wnie\\u017c trzony kuchenne, piece chlebowe, piece do pizzy, suszarnie, sauny, w\\u0119dzarnie, grille.</p><h3><b>Kurs projektowania i budowy piec\\u00f3w (Kurs Zdu\\u0144ski - edycja VI - 2021)</b></h3><h3><b>Proces Integracji Emocjonalnej (9-tygodniowy kurs online).</b></h3>", "beret": "<p><b>Adam Ma\\u0144czuk</b><br/> Jest programist\\u0105 z ponad 20-letnim do\\u015bwiadczeniem na ca\\u0142ym \\u015bwiecie (w tym w Dolinie Krzemowej). Specjalizuje si\\u0119 w Pythonie i Django. Pracowa\\u0142 jako lektor programowania na Uniwersytecie Warszawskim. Adam jest tak\\u017ce poet\\u0105 i \\u017ceglarzem.</p>", "monika": "<p><b>Monika Matis</b><br/><br/> Pracuje jako publicystka, t\\u0142umaczka, autorka tekst\\u00f3w \\u017ceglarskich oraz piel\\u0119gniarka. Posiada r\\u00f3\\u017cnorodne do\\u015bwiadczenia akademickie, od informatyki i mechaniki po studia medyczne. Z zami\\u0142owania zajmuje si\\u0119 nawigacj\\u0105 tradycyjn\\u0105, lub jak si\\u0119 j\\u0105 teraz okre\\u015bla \\u201cawaryjn\\u0105\\u201d. \\u017begluje od pi\\u0119tnastego roku \\u017cycia, zwykle na jachtach znajomych i przyjaci\\u00f3\\u0142, gdy potrzebowali kogo\\u015b znaj\\u0105cego si\\u0119 na rzeczy i do\\u015bwiadczonego aby pop\\u0142yn\\u0105\\u0107 gdzie\\u015b dalej. Prowadzi\\u0142a jachty na Ba\\u0142tyku, Morzu P\\u00f3\\u0142nocnym i \\u015ar\\u00f3dziemnym, Atlantyku, od Afryki po dalek\\u0105 Arktyk\\u0119. \\u017beglowa\\u0142a r\\u00f3wnie\\u017c samotnie i w ma\\u0142ych za\\u0142ogach.</p>", "comment": "<p>Warsztat ceramiczny dla os\\u00f3b doros\\u0142ych w oparciu o prac\\u0119 w glinie z pobliskich cegielni Panosz\\u00f3w i Gwo\\u017adziany.\\u00a0<br/>Obejmuje wiedz\\u0119, dotycz\\u0105c\\u0105 przygotowania gliny i podstawowych technik tworzenia prostych przedmiot\\u00f3w u\\u017cytkowych jak i podstaw rze\\u017aby w glinie.\\u00a0<br/></p><p>Kuba Ferenczak uczy\\u0142em si\\u0119 w Liceum Sztuk Plastycznych w Zakopanem w klasie o profilu rze\\u017abiarstwo w drewnie, zaj\\u0119cia jednak r\\u00f3wnie\\u017c obejmowa\\u0142y rze\\u017ab\\u0119 w glinie. Z ceramik\\u0105 i jej wypalaniem w piecu gazowym mia\\u0142em do czynienia w Grab\\u00f3wce, gdzie eksperymentowa\\u0142em z lokaln\\u0105 glin\\u0105. Dla kilku os\\u00f3b, wsp\\u00f3lnie z Ann\\u0105 Ovalle Correa prowadzi\\u0142em zaj\\u0119cia z ceramiki we wsi Dziadowice.<br/></p><p>Po warsztatach, ka\\u017cdy b\\u0119dzie w stanie zrobi\\u0107 samodzielnie szkliwione naczynie, prost\\u0105 form\\u0119 w postaci rze\\u017aby, zabawk\\u0119, ozdob\\u0119 na prezent, lub inne przedmioty wg pomys\\u0142u uczestnika.\\u00a0<br/>Zdobyta wiedza, b\\u0119dzie dotyczy\\u0107 tego, jak przystosowa\\u0107 dowolny kszta\\u0142t do materia\\u0142u, z kt\\u00f3rego ma by\\u0107 zrobiony, czyli gliny. B\\u0119dziemy te\\u017c robi\\u0107 proste narz\\u0119dzia do kszta\\u0142towania form, kt\\u00f3re chcemy uzyska\\u0107.</p>"}	\N	6	2
11	f	2021-02-21 01:20:43.778304+01	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "af663334-acac-4c96-9aa7-48db95a271d6", "locale": 1, "title": "Warsztaty", "draft_title": "Warsztaty", "slug": "warsztaty", "content_type": 41, "live": true, "has_unpublished_changes": false, "url_path": "/home/warsztaty/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "opis": "<h2>Po ca\\u0142kowitym sko\\u0144czeniu Stodo\\u0142y, b\\u0119dziemy dysponowali -warsztatem ceramicznym (mamy ko\\u0142o garncarskie, szkliwa i piec gazowy do wypalania) - warsztatem rze\\u017aby w drewnie, szklarni\\u0105 i suszarni\\u0105 do warzyw (nie tylko produkowanych przez nas, ale r\\u00f3wnie\\u017c z zaprzyja\\u017anionych gospodarstw, o kt\\u00f3rych wiemy, \\u017ce uprawia si\\u0119 tam ro\\u015bliny w spos\\u00f3b ekologiczny) B\\u0119dziemy mogli si\\u0119 te\\u017c zaj\\u0105\\u0107 pakowaniem tych warzyw. - sal\\u0105 do spotka\\u0144 na oko\\u0142o 20 os\\u00f3b, jak r\\u00f3wnie\\u017c zapleczem umo\\u017cliwiaj\\u0105cym, \\u017ceby takie osoby mog\\u0142y mieszka\\u0107 w Stodole przez tydzie\\u0144 lub dwa. (Nie s\\u0105 to warunki hotelowe, poniewa\\u017c spa\\u0107 mo\\u017cna na drewnianej pod\\u0142odze i na antresoli, na karimatach.)</h2>", "zaproszenie": "<p>Zapraszamy do wsp\\u00f3\\u0142pracy osoby, kt\\u00f3re chcia\\u0142y by si\\u0119 zajmowa\\u0107 alternatywnymi rozwi\\u0105zaniami, dotycz\\u0105cymi struktur spo\\u0142ecznych. B\\u0119dziemy te\\u017c dysponowa\\u0107 tzw. biurem, gdzie mo\\u017cna gromadzi\\u0107 i udost\\u0119pnia\\u0107 przez internet gotowe projekty.</p>", "milicki": "<p><b>Artur Milicki</b> jest konstruktorem, zdunem i nauczycielem zdu\\u0144stwa specjalizuj\\u0105cym si\\u0119 w projektowaniu i budowie wydajnych piec\\u00f3w akumulacyjnych (rakietowych, komorowych) oraz kompleksowych instalacji s\\u0142u\\u017c\\u0105cych do ogrzewania pomieszcze\\u0144 mieszkalnych i u\\u017cytkowych. Ponadto projektuje on i buduje r\\u00f3wnie\\u017c trzony kuchenne, piece chlebowe, piece do pizzy, suszarnie, sauny, w\\u0119dzarnie, grille.</p><h3><b>Kurs projektowania i budowy piec\\u00f3w (Kurs Zdu\\u0144ski - edycja VI - 2021)</b></h3><h3><b>Proces Integracji Emocjonalnej (9-tygodniowy kurs online).</b></h3>", "beret": "<p><b>Adam Ma\\u0144czuk</b> is a programmer with over 20 years of experience all over the world (Silicon Valley included). He specializes in Python and Django. He worked as programming lector on Warsaw University. Adam is also a poet and sailor (skipper)</p>", "monika": "<p><b>Monika Matis</b>  \\u017begluje od pi\\u0119tnastego roku \\u017cycia, zwykle na jachtach znajomych i przyjaci\\u00f3\\u0142, gdy potrzebowali kogo\\u015b znaj\\u0105cego si\\u0119 na rzeczy i do\\u015bwiadczonego aby pop\\u0142yn\\u0105\\u0107 gdzie\\u015b dalej. Prowadzi\\u0142a jachty na Ba\\u0142tyku, Morzu P\\u00f3\\u0142nocnym i \\u015ar\\u00f3dziemnym, Atlantyku, od Afryki po dalek\\u0105 Arktyk\\u0119. \\u017beglowa\\u0142a r\\u00f3wnie\\u017c samotnie i w ma\\u0142ych za\\u0142ogach. Pracuje jako publicystka, t\\u0142umaczka, autorka tekst\\u00f3w \\u017ceglarskich oraz piel\\u0119gniarka.  Posiada r\\u00f3\\u017cnorodne do\\u015bwiadczenia akademickie (od informatyki i mechaniki po studia medyczne) i z zami\\u0142owania zajmuje si\\u0119 nawigacj\\u0105 tradycyjn\\u0105 (lub jak si\\u0119 j\\u0105 teraz okre\\u015bla \\u201cawaryjn\\u0105\\u201d). Monika jest naszym Skipperem, czyli osob\\u0105 pierwsz\\u0105 po Bogu na pok\\u0142adzie naszego jachtu.</p>", "comment": ""}	\N	6	1
26	f	2021-02-22 15:37:00.204701+01	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "af663334-acac-4c96-9aa7-48db95a271d6", "locale": 1, "title": "Warsztaty", "draft_title": "Warsztaty", "slug": "warsztaty", "content_type": 41, "live": true, "has_unpublished_changes": false, "url_path": "/home/warsztaty/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T00:20:43.836Z", "last_published_at": "2021-02-21T00:20:43.836Z", "latest_revision_created_at": "2021-02-21T00:20:43.778Z", "live_revision": 11, "alias_of": null, "opis": "<h2>Po ca\\u0142kowitym sko\\u0144czeniu Stodo\\u0142y, b\\u0119dziemy dysponowali -warsztatem ceramicznym (mamy ko\\u0142o garncarskie, szkliwa i piec gazowy do wypalania) - warsztatem rze\\u017aby w drewnie, szklarni\\u0105 i suszarni\\u0105 do warzyw (nie tylko produkowanych przez nas, ale r\\u00f3wnie\\u017c z zaprzyja\\u017anionych gospodarstw, o kt\\u00f3rych wiemy, \\u017ce uprawia si\\u0119 tam ro\\u015bliny w spos\\u00f3b ekologiczny) B\\u0119dziemy mogli si\\u0119 te\\u017c zaj\\u0105\\u0107 pakowaniem tych warzyw. - sal\\u0105 do spotka\\u0144 na oko\\u0142o 20 os\\u00f3b, jak r\\u00f3wnie\\u017c zapleczem umo\\u017cliwiaj\\u0105cym, \\u017ceby takie osoby mog\\u0142y mieszka\\u0107 w Stodole przez tydzie\\u0144 lub dwa. (Nie s\\u0105 to warunki hotelowe, poniewa\\u017c spa\\u0107 mo\\u017cna na drewnianej pod\\u0142odze i na antresoli, na karimatach.)</h2>", "zaproszenie": "<p>Zapraszamy do wsp\\u00f3\\u0142pracy osoby, kt\\u00f3re chcia\\u0142y by si\\u0119 zajmowa\\u0107 alternatywnymi rozwi\\u0105zaniami, dotycz\\u0105cymi struktur spo\\u0142ecznych. B\\u0119dziemy te\\u017c dysponowa\\u0107 tzw. biurem, gdzie mo\\u017cna gromadzi\\u0107 i udost\\u0119pnia\\u0107 przez internet gotowe projekty.</p>", "milicki": "<p><b>Artur Milicki</b> jest konstruktorem, zdunem i nauczycielem zdu\\u0144stwa specjalizuj\\u0105cym si\\u0119 w projektowaniu i budowie wydajnych piec\\u00f3w akumulacyjnych (rakietowych, komorowych) oraz kompleksowych instalacji s\\u0142u\\u017c\\u0105cych do ogrzewania pomieszcze\\u0144 mieszkalnych i u\\u017cytkowych. Ponadto projektuje on i buduje r\\u00f3wnie\\u017c trzony kuchenne, piece chlebowe, piece do pizzy, suszarnie, sauny, w\\u0119dzarnie, grille.</p><h3><b>Kurs projektowania i budowy piec\\u00f3w (Kurs Zdu\\u0144ski - edycja VI - 2021)</b></h3><h3><b>Proces Integracji Emocjonalnej (9-tygodniowy kurs online).</b></h3>", "beret": "<p><b>Adam Ma\\u0144czuk</b> is a programmer with over 20 years of experience all over the world (Silicon Valley included). He specializes in Python and Django. He worked as programming lector on Warsaw University. Adam is also a poet and sailor (skipper)</p>", "monika": "<p><b>Monika Matis</b> <br/><br/>Pracuje jako publicystka, t\\u0142umaczka, autorka tekst\\u00f3w \\u017ceglarskich oraz piel\\u0119gniarka. Posiada r\\u00f3\\u017cnorodne do\\u015bwiadczenia akademickie, od informatyki i mechaniki po studia medyczne. Z zami\\u0142owania zajmuje si\\u0119 nawigacj\\u0105 tradycyjn\\u0105, lub jak si\\u0119 j\\u0105 teraz okre\\u015bla \\u201cawaryjn\\u0105\\u201d. \\u017begluje od pi\\u0119tnastego roku \\u017cycia, zwykle na jachtach znajomych i przyjaci\\u00f3\\u0142, gdy potrzebowali kogo\\u015b znaj\\u0105cego si\\u0119 na rzeczy i do\\u015bwiadczonego aby pop\\u0142yn\\u0105\\u0107 gdzie\\u015b dalej. Prowadzi\\u0142a jachty na Ba\\u0142tyku, Morzu P\\u00f3\\u0142nocnym i \\u015ar\\u00f3dziemnym, Atlantyku, od Afryki po dalek\\u0105 Arktyk\\u0119. \\u017beglowa\\u0142a r\\u00f3wnie\\u017c samotnie i w ma\\u0142ych za\\u0142ogach. </p>", "comment": ""}	\N	6	2
27	f	2021-02-22 15:38:48.714739+01	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "af663334-acac-4c96-9aa7-48db95a271d6", "locale": 1, "title": "Warsztaty", "draft_title": "Warsztaty", "slug": "warsztaty", "content_type": 41, "live": true, "has_unpublished_changes": false, "url_path": "/home/warsztaty/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T00:20:43.836Z", "last_published_at": "2021-02-22T14:37:00.276Z", "latest_revision_created_at": "2021-02-22T14:37:00.204Z", "live_revision": 26, "alias_of": null, "opis": "<h2>Po ca\\u0142kowitym sko\\u0144czeniu Stodo\\u0142y, b\\u0119dziemy dysponowali -warsztatem ceramicznym (mamy ko\\u0142o garncarskie, szkliwa i piec gazowy do wypalania) - warsztatem rze\\u017aby w drewnie, szklarni\\u0105 i suszarni\\u0105 do warzyw (nie tylko produkowanych przez nas, ale r\\u00f3wnie\\u017c z zaprzyja\\u017anionych gospodarstw, o kt\\u00f3rych wiemy, \\u017ce uprawia si\\u0119 tam ro\\u015bliny w spos\\u00f3b ekologiczny) B\\u0119dziemy mogli si\\u0119 te\\u017c zaj\\u0105\\u0107 pakowaniem tych warzyw. - sal\\u0105 do spotka\\u0144 na oko\\u0142o 20 os\\u00f3b, jak r\\u00f3wnie\\u017c zapleczem umo\\u017cliwiaj\\u0105cym, \\u017ceby takie osoby mog\\u0142y mieszka\\u0107 w Stodole przez tydzie\\u0144 lub dwa. (Nie s\\u0105 to warunki hotelowe, poniewa\\u017c spa\\u0107 mo\\u017cna na drewnianej pod\\u0142odze i na antresoli, na karimatach.)</h2>", "zaproszenie": "<p>Zapraszamy do wsp\\u00f3\\u0142pracy osoby, kt\\u00f3re chcia\\u0142y by si\\u0119 zajmowa\\u0107 alternatywnymi rozwi\\u0105zaniami, dotycz\\u0105cymi struktur spo\\u0142ecznych. B\\u0119dziemy te\\u017c dysponowa\\u0107 tzw. biurem, gdzie mo\\u017cna gromadzi\\u0107 i udost\\u0119pnia\\u0107 przez internet gotowe projekty.</p>", "milicki": "<p><b>Artur Milicki</b> jest konstruktorem, zdunem i nauczycielem zdu\\u0144stwa specjalizuj\\u0105cym si\\u0119 w projektowaniu i budowie wydajnych piec\\u00f3w akumulacyjnych (rakietowych, komorowych) oraz kompleksowych instalacji s\\u0142u\\u017c\\u0105cych do ogrzewania pomieszcze\\u0144 mieszkalnych i u\\u017cytkowych. Ponadto projektuje on i buduje r\\u00f3wnie\\u017c trzony kuchenne, piece chlebowe, piece do pizzy, suszarnie, sauny, w\\u0119dzarnie, grille.</p><h3><b>Kurs projektowania i budowy piec\\u00f3w (Kurs Zdu\\u0144ski - edycja VI - 2021)</b></h3><h3><b>Proces Integracji Emocjonalnej (9-tygodniowy kurs online).</b></h3>", "beret": "<p><b>Adam Ma\\u0144czuk</b> <br/>Jest programist\\u0105 z ponad 20-letnim do\\u015bwiadczeniem na ca\\u0142ym \\u015bwiecie (w tym w Dolinie Krzemowej). Specjalizuje si\\u0119 w Pythonie i Django. Pracowa\\u0142 jako lektor programowania na Uniwersytecie Warszawskim. Adam jest tak\\u017ce poet\\u0105 i \\u017ceglarzem.</p>", "monika": "<p><b>Monika Matis</b><br/><br/> Pracuje jako publicystka, t\\u0142umaczka, autorka tekst\\u00f3w \\u017ceglarskich oraz piel\\u0119gniarka. Posiada r\\u00f3\\u017cnorodne do\\u015bwiadczenia akademickie, od informatyki i mechaniki po studia medyczne. Z zami\\u0142owania zajmuje si\\u0119 nawigacj\\u0105 tradycyjn\\u0105, lub jak si\\u0119 j\\u0105 teraz okre\\u015bla \\u201cawaryjn\\u0105\\u201d. \\u017begluje od pi\\u0119tnastego roku \\u017cycia, zwykle na jachtach znajomych i przyjaci\\u00f3\\u0142, gdy potrzebowali kogo\\u015b znaj\\u0105cego si\\u0119 na rzeczy i do\\u015bwiadczonego aby pop\\u0142yn\\u0105\\u0107 gdzie\\u015b dalej. Prowadzi\\u0142a jachty na Ba\\u0142tyku, Morzu P\\u00f3\\u0142nocnym i \\u015ar\\u00f3dziemnym, Atlantyku, od Afryki po dalek\\u0105 Arktyk\\u0119. \\u017beglowa\\u0142a r\\u00f3wnie\\u017c samotnie i w ma\\u0142ych za\\u0142ogach.</p>", "comment": ""}	\N	6	2
28	f	2021-02-22 15:43:06.00376+01	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "af663334-acac-4c96-9aa7-48db95a271d6", "locale": 1, "title": "Warsztaty", "draft_title": "Warsztaty", "slug": "warsztaty", "content_type": 41, "live": true, "has_unpublished_changes": false, "url_path": "/home/warsztaty/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T00:20:43.836Z", "last_published_at": "2021-02-22T14:38:48.826Z", "latest_revision_created_at": "2021-02-22T14:38:48.714Z", "live_revision": 27, "alias_of": null, "opis": "<h2>Po ca\\u0142kowitym sko\\u0144czeniu Stodo\\u0142y, b\\u0119dziemy dysponowali:<br/>-Warsztatem ceramicznym (mamy ko\\u0142o garncarskie, szkliwa i piec gazowy do wypalania) <br/><br/>- Warsztatem rze\\u017aby w drewnie, szklarni\\u0105 i suszarni\\u0105 do warzyw, nie tylko produkowanych przez nas, ale r\\u00f3wnie\\u017c z zaprzyja\\u017anionych gospodarstw, o kt\\u00f3rych wiemy, \\u017ce uprawia si\\u0119 tam ro\\u015bliny w spos\\u00f3b ekologiczny. B\\u0119dziemy mogli si\\u0119 te\\u017c zaj\\u0105\\u0107 pakowaniem tych warzyw. <br/>- Sal\\u0105 do spotka\\u0144 na oko\\u0142o 20 os\\u00f3b, jak r\\u00f3wnie\\u017c zapleczem umo\\u017cliwiaj\\u0105cym, \\u017ceby takie osoby mog\\u0142y mieszka\\u0107 w Stodole przez tydzie\\u0144 lub dwa. Nie s\\u0105 to warunki hotelowe, poniewa\\u017c spa\\u0107 mo\\u017cna na drewnianej pod\\u0142odze i na antresoli, na materacach lub karimatach.</h2>", "zaproszenie": "", "milicki": "<p><b>Artur Milicki</b> <br/>jest konstruktorem, zdunem i nauczycielem zdu\\u0144stwa specjalizuj\\u0105cym si\\u0119 w projektowaniu i budowie wydajnych piec\\u00f3w akumulacyjnych (rakietowych, komorowych) oraz kompleksowych instalacji s\\u0142u\\u017c\\u0105cych do ogrzewania pomieszcze\\u0144 mieszkalnych i u\\u017cytkowych. Ponadto projektuje on i buduje r\\u00f3wnie\\u017c trzony kuchenne, piece chlebowe, piece do pizzy, suszarnie, sauny, w\\u0119dzarnie, grille.</p><h3><b>Kurs projektowania i budowy piec\\u00f3w (Kurs Zdu\\u0144ski - edycja VI - 2021)</b></h3><h3><b>Proces Integracji Emocjonalnej (9-tygodniowy kurs online).</b></h3>", "beret": "<p><b>Adam Ma\\u0144czuk</b><br/> Jest programist\\u0105 z ponad 20-letnim do\\u015bwiadczeniem na ca\\u0142ym \\u015bwiecie (w tym w Dolinie Krzemowej). Specjalizuje si\\u0119 w Pythonie i Django. Pracowa\\u0142 jako lektor programowania na Uniwersytecie Warszawskim. Adam jest tak\\u017ce poet\\u0105 i \\u017ceglarzem.</p>", "monika": "<p><b>Monika Matis</b><br/><br/> Pracuje jako publicystka, t\\u0142umaczka, autorka tekst\\u00f3w \\u017ceglarskich oraz piel\\u0119gniarka. Posiada r\\u00f3\\u017cnorodne do\\u015bwiadczenia akademickie, od informatyki i mechaniki po studia medyczne. Z zami\\u0142owania zajmuje si\\u0119 nawigacj\\u0105 tradycyjn\\u0105, lub jak si\\u0119 j\\u0105 teraz okre\\u015bla \\u201cawaryjn\\u0105\\u201d. \\u017begluje od pi\\u0119tnastego roku \\u017cycia, zwykle na jachtach znajomych i przyjaci\\u00f3\\u0142, gdy potrzebowali kogo\\u015b znaj\\u0105cego si\\u0119 na rzeczy i do\\u015bwiadczonego aby pop\\u0142yn\\u0105\\u0107 gdzie\\u015b dalej. Prowadzi\\u0142a jachty na Ba\\u0142tyku, Morzu P\\u00f3\\u0142nocnym i \\u015ar\\u00f3dziemnym, Atlantyku, od Afryki po dalek\\u0105 Arktyk\\u0119. \\u017beglowa\\u0142a r\\u00f3wnie\\u017c samotnie i w ma\\u0142ych za\\u0142ogach.</p>", "comment": ""}	\N	6	2
38	f	2021-02-24 04:18:58.463849+01	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "af663334-acac-4c96-9aa7-48db95a271d6", "locale": 1, "title": "Warsztaty", "draft_title": "Warsztaty", "slug": "warsztaty", "content_type": 41, "live": true, "has_unpublished_changes": false, "url_path": "/home/warsztaty/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T00:20:43.836Z", "last_published_at": "2021-02-24T03:15:57.414Z", "latest_revision_created_at": "2021-02-24T03:15:57.291Z", "live_revision": 37, "alias_of": null, "opis": "<h2>Po ca\\u0142kowitym sko\\u0144czeniu Stodo\\u0142y, b\\u0119dziemy dysponowali:<br/>-Warsztatem ceramicznym (mamy ko\\u0142o garncarskie, szkliwa i piec gazowy do wypalania)<br/><br/> - Warsztatem rze\\u017aby w drewnie, szklarni\\u0105 i suszarni\\u0105 do warzyw, nie tylko produkowanych przez nas, ale r\\u00f3wnie\\u017c z zaprzyja\\u017anionych gospodarstw, o kt\\u00f3rych wiemy, \\u017ce uprawia si\\u0119 tam ro\\u015bliny w spos\\u00f3b ekologiczny. B\\u0119dziemy mogli si\\u0119 te\\u017c zaj\\u0105\\u0107 pakowaniem tych warzyw.<br/> - Sal\\u0105 do spotka\\u0144 na oko\\u0142o 20 os\\u00f3b, jak r\\u00f3wnie\\u017c zapleczem umo\\u017cliwiaj\\u0105cym, \\u017ceby takie osoby mog\\u0142y mieszka\\u0107 w Stodole przez tydzie\\u0144 lub dwa. Nie s\\u0105 to warunki hotelowe, poniewa\\u017c spa\\u0107 mo\\u017cna na drewnianej pod\\u0142odze i na antresoli, na materacach lub karimatach.</h2>", "zaproszenie": "", "milicki": "<p><b>Artur Milicki</b><br/> jest konstruktorem, zdunem i nauczycielem zdu\\u0144stwa specjalizuj\\u0105cym si\\u0119 w projektowaniu i budowie wydajnych piec\\u00f3w akumulacyjnych (rakietowych, komorowych) oraz kompleksowych instalacji s\\u0142u\\u017c\\u0105cych do ogrzewania pomieszcze\\u0144 mieszkalnych i u\\u017cytkowych. Ponadto projektuje on i buduje r\\u00f3wnie\\u017c trzony kuchenne, piece chlebowe, piece do pizzy, suszarnie, sauny, w\\u0119dzarnie, grille.</p><h3><b>Kurs projektowania i budowy piec\\u00f3w (Kurs Zdu\\u0144ski - edycja VI - 2021)</b></h3><h3><b><br/><br/></b> Proces Integracji Emocjonalnej jest metod\\u0105 samopoznania i autoterapii<br/><b> (9-tygodniowy kurs online)</b></h3><p>kt\\u00f3ra gwa\\u0142townie poszerza \\u015bwiadomo\\u015b\\u0107 w\\u0142asnych emocji, uczu\\u0107, my\\u015bli i</p><p>przekona\\u0144. W sk\\u0142ad Procesu wchodz\\u0105 specjalnie dobrane techniki</p><p>percepcyjno-wgl\\u0105dowe, s\\u0142u\\u017c\\u0105ce do intencjonalnej zmiany lub korekty</p><p>oprogramowania naszej pod\\u015bwiadomo\\u015bci, w taki spos\\u00f3b, aby nasze</p><p>wewn\\u0119trzne i zewn\\u0119trzne \\u017cycie przyj\\u0119\\u0142o jak najbardziej \\u017cyczliwy</p><p>wymiar, dla nas samych, dla naszych bliskich i dla ca\\u0142ego otoczenia, w</p><p>kt\\u00f3rym \\u017cyjemy.</p><p>umiej\\u0119tno\\u015bci jakie zdob\\u0119dzie osoba uczestnicz\\u0105ca</p><p>Wraz z post\\u0119pem w praktyce Procesu Integracji Emocjonalnej mo\\u017cemy</p><p>do\\u015bwiadczy\\u0107 nast\\u0119puj\\u0105cych przeobra\\u017ce\\u0144 i trwa\\u0142ych wewn\\u0119trznych</p><p>wzrost\\u00f3w:</p><p>wzrost poczucia pewno\\u015bci wobec w\\u0142asnych \\u017cyciowych priorytet\\u00f3w, cel\\u00f3w i wybor\\u00f3w,</p><p>wzrost \\u015bwiadomo\\u015bci i umiej\\u0119tno\\u015bci dostrzegania i do\\u015bwiadczania \\u017ar\\u00f3d\\u0142a</p><p>szcz\\u0119\\u015bcia i spe\\u0142nienia w sobie i zmniejszenie tym samym zale\\u017cno\\u015bci od</p><p>\\u015bwiata zewn\\u0119trznego, jako \\u017ar\\u00f3d\\u0142a satysfakcji,</p><p>wzrost mo\\u017cliwo\\u015bci stania si\\u0119 osob\\u0105 bardziej wspieraj\\u0105c\\u0105, wsp\\u00f3\\u0142czuj\\u0105c\\u0105,</p><p>motywuj\\u0105c\\u0105, cierpliw\\u0105, tolerancyjn\\u0105 i autentyczn\\u0105 wobec samej /samego</p><p>siebie oraz wobec innych,</p><p>wzrost umiej\\u0119tno\\u015bci do\\u015bwiadczania \\u017cycia w chwili obecnej poprzez</p><p>zmniejszenie negatywnego zaabsorbowania przesz\\u0142o\\u015bci\\u0105 lub przysz\\u0142o\\u015bci\\u0105,</p><p>wzrost w odczuwaniu wewn\\u0119trznej mocy sprawczej, kt\\u00f3r\\u0105 wcze\\u015bniej</p><p>projektowali\\u015bmy na \\u015bwiat,</p><p>wzrost wewn\\u0119trznej si\\u0142y, odporno\\u015bci na zranienie, poczucia w\\u0142asnej</p><p>warto\\u015bci, wewn\\u0119trznego spokoju, rado\\u015bci, spe\\u0142nienia i og\\u00f3lnego poziomu</p><p>\\u015bwiadomo\\u015bci.</p>", "beret": "<p><b>Adam Ma\\u0144czuk</b><br/> Jest programist\\u0105 z ponad 20-letnim do\\u015bwiadczeniem na ca\\u0142ym \\u015bwiecie (w tym w Dolinie Krzemowej). Specjalizuje si\\u0119 w Pythonie i Django. Pracowa\\u0142 jako lektor programowania na Uniwersytecie Warszawskim. Adam jest tak\\u017ce poet\\u0105 i \\u017ceglarzem.</p>", "monika": "<p><b>Monika Matis</b><br/><br/> Pracuje jako publicystka, t\\u0142umaczka, autorka tekst\\u00f3w \\u017ceglarskich oraz piel\\u0119gniarka. Posiada r\\u00f3\\u017cnorodne do\\u015bwiadczenia akademickie, od informatyki i mechaniki po studia medyczne. Z zami\\u0142owania zajmuje si\\u0119 nawigacj\\u0105 tradycyjn\\u0105, lub jak si\\u0119 j\\u0105 teraz okre\\u015bla \\u201cawaryjn\\u0105\\u201d. \\u017begluje od pi\\u0119tnastego roku \\u017cycia, zwykle na jachtach znajomych i przyjaci\\u00f3\\u0142, gdy potrzebowali kogo\\u015b znaj\\u0105cego si\\u0119 na rzeczy i do\\u015bwiadczonego aby pop\\u0142yn\\u0105\\u0107 gdzie\\u015b dalej. Prowadzi\\u0142a jachty na Ba\\u0142tyku, Morzu P\\u00f3\\u0142nocnym i \\u015ar\\u00f3dziemnym, Atlantyku, od Afryki po dalek\\u0105 Arktyk\\u0119. \\u017beglowa\\u0142a r\\u00f3wnie\\u017c samotnie i w ma\\u0142ych za\\u0142ogach.</p>", "comment": "<p>Warsztat ceramiczny dla os\\u00f3b doros\\u0142ych w oparciu o prac\\u0119 w glinie z pobliskich cegielni Panosz\\u00f3w i Gwo\\u017adziany.\\u00a0<br/>Obejmuje wiedz\\u0119, dotycz\\u0105c\\u0105 przygotowania gliny i podstawowych technik tworzenia prostych przedmiot\\u00f3w u\\u017cytkowych jak i podstaw rze\\u017aby w glinie.\\u00a0<br/></p><p>Kuba Ferenczak uczy\\u0142em si\\u0119 w Liceum Sztuk Plastycznych w Zakopanem w klasie o profilu rze\\u017abiarstwo w drewnie, zaj\\u0119cia jednak r\\u00f3wnie\\u017c obejmowa\\u0142y rze\\u017ab\\u0119 w glinie. Z ceramik\\u0105 i jej wypalaniem w piecu gazowym mia\\u0142em do czynienia w Grab\\u00f3wce, gdzie eksperymentowa\\u0142em z lokaln\\u0105 glin\\u0105. Dla kilku os\\u00f3b, wsp\\u00f3lnie z Ann\\u0105 Ovalle Correa prowadzi\\u0142em zaj\\u0119cia z ceramiki we wsi Dziadowice.<br/></p><p>Po warsztatach, ka\\u017cdy b\\u0119dzie w stanie zrobi\\u0107 samodzielnie szkliwione naczynie, prost\\u0105 form\\u0119 w postaci rze\\u017aby, zabawk\\u0119, ozdob\\u0119 na prezent, lub inne przedmioty wg pomys\\u0142u uczestnika.\\u00a0<br/>Zdobyta wiedza, b\\u0119dzie dotyczy\\u0107 tego, jak przystosowa\\u0107 dowolny kszta\\u0142t do materia\\u0142u, z kt\\u00f3rego ma by\\u0107 zrobiony, czyli gliny. B\\u0119dziemy te\\u017c robi\\u0107 proste narz\\u0119dzia do kszta\\u0142towania form, kt\\u00f3re chcemy uzyska\\u0107.</p>"}	\N	6	2
39	f	2021-02-24 04:22:27.774636+01	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "af663334-acac-4c96-9aa7-48db95a271d6", "locale": 1, "title": "Warsztaty", "draft_title": "Warsztaty", "slug": "warsztaty", "content_type": 41, "live": true, "has_unpublished_changes": false, "url_path": "/home/warsztaty/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T00:20:43.836Z", "last_published_at": "2021-02-24T03:18:58.559Z", "latest_revision_created_at": "2021-02-24T03:18:58.463Z", "live_revision": 38, "alias_of": null, "opis": "<h2>Po ca\\u0142kowitym sko\\u0144czeniu Stodo\\u0142y, b\\u0119dziemy dysponowali:<br/>-Warsztatem ceramicznym (mamy ko\\u0142o garncarskie, szkliwa i piec gazowy do wypalania)<br/><br/> - Warsztatem rze\\u017aby w drewnie, szklarni\\u0105 i suszarni\\u0105 do warzyw, nie tylko produkowanych przez nas, ale r\\u00f3wnie\\u017c z zaprzyja\\u017anionych gospodarstw, o kt\\u00f3rych wiemy, \\u017ce uprawia si\\u0119 tam ro\\u015bliny w spos\\u00f3b ekologiczny. B\\u0119dziemy mogli si\\u0119 te\\u017c zaj\\u0105\\u0107 pakowaniem tych warzyw.<br/> - Sal\\u0105 do spotka\\u0144 na oko\\u0142o 20 os\\u00f3b, jak r\\u00f3wnie\\u017c zapleczem umo\\u017cliwiaj\\u0105cym, \\u017ceby takie osoby mog\\u0142y mieszka\\u0107 w Stodole przez tydzie\\u0144 lub dwa. Nie s\\u0105 to warunki hotelowe, poniewa\\u017c spa\\u0107 mo\\u017cna na drewnianej pod\\u0142odze i na antresoli, na materacach lub karimatach.</h2>", "zaproszenie": "", "milicki": "<p><b>Artur Milicki</b><br/> (ur. 1976) \\u2013 jest praktykiem, nauczycielem rozwoju</p><p>wewn\\u0119trznego i autoterapii. Studiowa\\u0142 zarz\\u0105dzanie i informatyk\\u0119 na UWM</p><p>w Olsztynie (1996-2002) oraz kulturoznawstwo na UJ w Krakowie</p><p>(1997-1998). By\\u0142 mnichem w tradycji wisznuizmu gaudia (1999-2004). Po</p><p>zdj\\u0119ciu szafranu rozpocz\\u0105\\u0142 proces w\\u0142asnej psychoedukacji i</p><p>autoterapii. Zosta\\u0142 wolnomy\\u015blicielem i aktywist\\u0105 spo\\u0142ecznym</p><p>dzia\\u0142aj\\u0105cym na rzecz ruchu ekowioskowego. Wsp\\u00f3\\u0142tworzy\\u0142 \\u201cAkademi\\u0119 Bosej</p><p>Stopy\\u201d (2012) oraz \\u201cRuch Wolnej Ziemi\\u201d (2017). Napisa\\u0142 ksi\\u0105\\u017ck\\u0119</p><p>\\u201cCz\\u0142owiek na Ziemi\\u201d (2014). Jest tat\\u0105 Lubomira (2008) i Anastazji</p><p>(2009). Opr\\u00f3cz dzia\\u0142alno\\u015bci psychoedukacyjnej i spo\\u0142ecznej, zawodowo</p><p>zajmuje si\\u0119 projektowaniem piec\\u00f3w i nauczaniem rzemios\\u0142a zdu\\u0144skiego.</p><h3><b>Kurs projektowania i budowy piec\\u00f3w (Kurs Zdu\\u0144ski - edycja VI - 2021)</b></h3><h3><b><br/><br/></b>Proces Integracji Emocjonalnej jest metod\\u0105 samopoznania i autoterapii<br/><b> (9-tygodniowy kurs online)</b></h3><p>kt\\u00f3ra gwa\\u0142townie poszerza \\u015bwiadomo\\u015b\\u0107 w\\u0142asnych emocji, uczu\\u0107, my\\u015bli i</p><p>przekona\\u0144. W sk\\u0142ad Procesu wchodz\\u0105 specjalnie dobrane techniki</p><p>percepcyjno-wgl\\u0105dowe, s\\u0142u\\u017c\\u0105ce do intencjonalnej zmiany lub korekty</p><p>oprogramowania naszej pod\\u015bwiadomo\\u015bci, w taki spos\\u00f3b, aby nasze</p><p>wewn\\u0119trzne i zewn\\u0119trzne \\u017cycie przyj\\u0119\\u0142o jak najbardziej \\u017cyczliwy</p><p>wymiar, dla nas samych, dla naszych bliskich i dla ca\\u0142ego otoczenia, w</p><p>kt\\u00f3rym \\u017cyjemy.</p><p>umiej\\u0119tno\\u015bci jakie zdob\\u0119dzie osoba uczestnicz\\u0105ca</p><p>Wraz z post\\u0119pem w praktyce Procesu Integracji Emocjonalnej mo\\u017cemy</p><p>do\\u015bwiadczy\\u0107 nast\\u0119puj\\u0105cych przeobra\\u017ce\\u0144 i trwa\\u0142ych wewn\\u0119trznych</p><p>wzrost\\u00f3w:</p><p>wzrost poczucia pewno\\u015bci wobec w\\u0142asnych \\u017cyciowych priorytet\\u00f3w, cel\\u00f3w i wybor\\u00f3w,</p><p>wzrost \\u015bwiadomo\\u015bci i umiej\\u0119tno\\u015bci dostrzegania i do\\u015bwiadczania \\u017ar\\u00f3d\\u0142a</p><p>szcz\\u0119\\u015bcia i spe\\u0142nienia w sobie i zmniejszenie tym samym zale\\u017cno\\u015bci od</p><p>\\u015bwiata zewn\\u0119trznego, jako \\u017ar\\u00f3d\\u0142a satysfakcji,</p><p>wzrost mo\\u017cliwo\\u015bci stania si\\u0119 osob\\u0105 bardziej wspieraj\\u0105c\\u0105, wsp\\u00f3\\u0142czuj\\u0105c\\u0105,</p><p>motywuj\\u0105c\\u0105, cierpliw\\u0105, tolerancyjn\\u0105 i autentyczn\\u0105 wobec samej /samego</p><p>siebie oraz wobec innych,</p><p>wzrost umiej\\u0119tno\\u015bci do\\u015bwiadczania \\u017cycia w chwili obecnej poprzez</p><p>zmniejszenie negatywnego zaabsorbowania przesz\\u0142o\\u015bci\\u0105 lub przysz\\u0142o\\u015bci\\u0105,</p><p>wzrost w odczuwaniu wewn\\u0119trznej mocy sprawczej, kt\\u00f3r\\u0105 wcze\\u015bniej</p><p>projektowali\\u015bmy na \\u015bwiat,</p><p>wzrost wewn\\u0119trznej si\\u0142y, odporno\\u015bci na zranienie, poczucia w\\u0142asnej</p><p>warto\\u015bci, wewn\\u0119trznego spokoju, rado\\u015bci, spe\\u0142nienia i og\\u00f3lnego poziomu</p><p>\\u015bwiadomo\\u015bci.</p>", "beret": "<p><b>Adam Ma\\u0144czuk</b><br/> Jest programist\\u0105 z ponad 20-letnim do\\u015bwiadczeniem na ca\\u0142ym \\u015bwiecie (w tym w Dolinie Krzemowej). Specjalizuje si\\u0119 w Pythonie i Django. Pracowa\\u0142 jako lektor programowania na Uniwersytecie Warszawskim. Adam jest tak\\u017ce poet\\u0105 i \\u017ceglarzem.</p>", "monika": "<p><b>Monika Matis</b><br/><br/> Pracuje jako publicystka, t\\u0142umaczka, autorka tekst\\u00f3w \\u017ceglarskich oraz piel\\u0119gniarka. Posiada r\\u00f3\\u017cnorodne do\\u015bwiadczenia akademickie, od informatyki i mechaniki po studia medyczne. Z zami\\u0142owania zajmuje si\\u0119 nawigacj\\u0105 tradycyjn\\u0105, lub jak si\\u0119 j\\u0105 teraz okre\\u015bla \\u201cawaryjn\\u0105\\u201d. \\u017begluje od pi\\u0119tnastego roku \\u017cycia, zwykle na jachtach znajomych i przyjaci\\u00f3\\u0142, gdy potrzebowali kogo\\u015b znaj\\u0105cego si\\u0119 na rzeczy i do\\u015bwiadczonego aby pop\\u0142yn\\u0105\\u0107 gdzie\\u015b dalej. Prowadzi\\u0142a jachty na Ba\\u0142tyku, Morzu P\\u00f3\\u0142nocnym i \\u015ar\\u00f3dziemnym, Atlantyku, od Afryki po dalek\\u0105 Arktyk\\u0119. \\u017beglowa\\u0142a r\\u00f3wnie\\u017c samotnie i w ma\\u0142ych za\\u0142ogach.</p>", "comment": "<p><br/></p><p>Kuba Ferenczak <br/>Uczy\\u0142em si\\u0119 w Liceum Sztuk Plastycznych w Zakopanem w klasie o profilu rze\\u017abiarstwo w drewnie, zaj\\u0119cia jednak r\\u00f3wnie\\u017c obejmowa\\u0142y rze\\u017ab\\u0119 w glinie. Z ceramik\\u0105 i jej wypalaniem w piecu gazowym mia\\u0142em do czynienia w Grab\\u00f3wce, gdzie eksperymentowa\\u0142em z lokaln\\u0105 glin\\u0105. Dla kilku os\\u00f3b, wsp\\u00f3lnie z Ann\\u0105 Ovalle Correa prowadzi\\u0142em zaj\\u0119cia z ceramiki we wsi Dziadowice.<br/><br/>Warsztat ceramiczny dla os\\u00f3b doros\\u0142ych w oparciu o prac\\u0119 w glinie z pobliskich cegielni Panosz\\u00f3w i Gwo\\u017adziany.\\u00a0<br/>Obejmuje wiedz\\u0119, dotycz\\u0105c\\u0105 przygotowania gliny i podstawowych technik tworzenia prostych przedmiot\\u00f3w u\\u017cytkowych jak i podstaw rze\\u017aby w glinie.\\u00a0<br/></p><p>Po warsztatach, ka\\u017cdy b\\u0119dzie w stanie zrobi\\u0107 samodzielnie szkliwione naczynie, prost\\u0105 form\\u0119 w postaci rze\\u017aby, zabawk\\u0119, ozdob\\u0119 na prezent, lub inne przedmioty wg pomys\\u0142u uczestnika.\\u00a0<br/>Zdobyta wiedza, b\\u0119dzie dotyczy\\u0107 tego, jak przystosowa\\u0107 dowolny kszta\\u0142t do materia\\u0142u, z kt\\u00f3rego ma by\\u0107 zrobiony, czyli gliny. B\\u0119dziemy te\\u017c robi\\u0107 proste narz\\u0119dzia do kszta\\u0142towania form, kt\\u00f3re chcemy uzyska\\u0107.</p>"}	\N	6	2
14	f	2021-02-21 02:35:56.701499+01	{"pk": 9, "path": "000100010004", "depth": 3, "numchild": 0, "translation_key": "9f495cdd-69e2-4634-a111-b3c6ffc99ed9", "locale": 1, "title": "Ruch Wolnej Ziemi", "draft_title": "Ruch Wolnej Ziemi", "slug": "ruch-wolnej-ziemi", "content_type": 44, "live": true, "has_unpublished_changes": false, "url_path": "/home/ruch-wolnej-ziemi/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "opis": "<h2>Ruch Wolnej Ziemi jest inicjatyw\\u0105 spo\\u0142eczn\\u0105 skupion\\u0105 na wdra\\u017caniu w \\u017cycie sprawdzonych rozwi\\u0105za\\u0144 prawnych i organizacyjnych w celu \\u201euwalniania Ziemi\\u201d spod w\\u0142asno\\u015bci prywatnej. Zale\\u017cy nam na tworzeniu i rozwoju intencjonalnych spo\\u0142eczno\\u015bci wiejskich (tzw. ekowiosek, ekoosad), w kt\\u00f3rych decyzje dotycz\\u0105ce wszystkich podejmowane s\\u0105 wsp\\u00f3lnie (konsensus), i w kt\\u00f3rych my, ludzie, posiadamy r\\u00f3wne prawa zar\\u00f3wno wobec Ziemi oraz siebie nawzajem. Tworzymy w tym celu osoby prawne tj. fundacje lub stowarzyszenia.</h2>", "objasnienie": "<p>Uczestnikiem Ruchu mo\\u017ce by\\u0107 ka\\u017cda osoba, kt\\u00f3ra rozumie nasze za\\u0142o\\u017cenia i zgadza si\\u0119 z nimi. Ruch Wolnej Ziemi nie jest organizacj\\u0105 i nie prowadzi \\u017cadnej ewidencji przynale\\u017cno\\u015bci. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra w ten spos\\u00f3b eliminuje z naszego \\u017cycia podstawy konsumpcjonizmu.</p>", "komentarz": "<p>Zal\\u0105\\u017cki Ruchu Wolnej Ziemi, istniej\\u0105ce w spos\\u00f3b faktyczny na terenie Polski zainicjowa\\u0142 Henry Schumacher, tworz\\u0105c w 2000 r w Bieszczadach Fundacj\\u0119 Plemi\\u0119 Sanu. Henry przyjecha\\u0142 do Polski w 1991 r odkrywaj\\u0105c przysz\\u0142e miejsce do \\u017cycia z grup\\u0105 skautingow\\u0105 Rodziny T\\u0119czy. W tamtym czasie szukali oni miejsca na europejskie Zgromadzenie Rainbow Family, kt\\u00f3re odby\\u0142o si\\u0119 w 1991 r w dolinie Tworylne. W 2001 r\\u00f3wnie\\u017c w Bieszczadach w Koma\\u0144czy pojawi\\u0142a si\\u0119 te\\u017c o\\u015bmioosobowa grupa T\\u0119czowy Kr\\u0105g, kt\\u00f3ra za cel postawi\\u0142a sobie za\\u0142o\\u017cenie organizacji, umo\\u017cliwiaj\\u0105cej posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci. Dzi\\u0119ki temu w 2004 r w Grab\\u00f3wce uda\\u0142o si\\u0119 zarejestrowa\\u0107 Stowarzyszenie Arte Unite, kt\\u00f3re w 2012 r otrzyma\\u0142o na wsp\\u00f3ln\\u0105 w\\u0142asno\\u015b\\u0107 budynek gospodarczy. T\\u0119czowy Kr\\u0105g zosta\\u0142 za\\u0142o\\u017cony pod Bydgoszcz\\u0105 przez ludzi z mi\\u0119dzynarodowego posthipisowskiego ruchu Rainbow Family - Rodzina T\\u0119czy. W tym samym czasie dzi\\u0119ki Arturowi Milickiemu powsta\\u0142a Fundacja dla Ziemi i Ludzi za\\u0142o\\u017cona w roku 2011. R\\u00f3wnie\\u017c dzi\\u0119ki Arturowi, powy\\u017csze inicjatywy uda\\u0142o si\\u0119 zebra\\u0107 i uruchomi\\u0107 jako Ruch Wolnej Ziemi. Wszystkie wymienione tutaj organizacje, mo\\u017cna uzna\\u0107 za inicjuj\\u0105ce Ruch Wolnej Ziemi ze wzgl\\u0119du na szczeg\\u00f3lne uwzgl\\u0119dnienie podejmowania w nich decyzji przez kosensus, czyli jednog\\u0142o\\u015bnie.</p>"}	\N	9	1
32	f	2021-02-24 03:31:50.293827+01	{"pk": 9, "path": "000100010004", "depth": 3, "numchild": 0, "translation_key": "9f495cdd-69e2-4634-a111-b3c6ffc99ed9", "locale": 1, "title": "Ruch Wolnej Ziemi", "draft_title": "Ruch Wolnej Ziemi", "slug": "ruch-wolnej-ziemi", "content_type": 44, "live": true, "has_unpublished_changes": false, "url_path": "/home/ruch-wolnej-ziemi/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:35:56.738Z", "last_published_at": "2021-02-21T01:35:56.738Z", "latest_revision_created_at": "2021-02-21T01:35:56.701Z", "live_revision": 14, "alias_of": null, "opis": "<h2>Ruch Wolnej Ziemi jest inicjatyw\\u0105 spo\\u0142eczn\\u0105 skupion\\u0105 na wdra\\u017caniu w \\u017cycie sprawdzonych rozwi\\u0105za\\u0144 prawnych i organizacyjnych w celu uwalniania Ziemi spod w\\u0142asno\\u015bci prywatnej. Zale\\u017cy nam na tworzeniu i rozwoju intencjonalnych spo\\u0142eczno\\u015bci wiejskich (tzw. ekowiosek, ekoosad), w kt\\u00f3rych decyzje dotycz\\u0105ce wszystkich podejmowane s\\u0105 wsp\\u00f3lnie (przez konsensus), i w kt\\u00f3rych my ludzie, posiadamy r\\u00f3wne prawa zar\\u00f3wno wobec Ziemi oraz siebie nawzajem. Tworzymy w tym celu osoby prawne tj. fundacje lub stowarzyszenia.</h2>", "objasnienie": "<p>Uczestnikiem Ruchu mo\\u017ce by\\u0107 ka\\u017cda osoba, kt\\u00f3ra rozumie nasze za\\u0142o\\u017cenia i zgadza si\\u0119 z nimi. Ruch Wolnej Ziemi nie jest organizacj\\u0105 i nie prowadzi \\u017cadnej ewidencji przynale\\u017cno\\u015bci. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra w ten spos\\u00f3b eliminuje z naszego \\u017cycia podstawy konsumpcjonizmu.</p>", "komentarz": "<p>Zal\\u0105\\u017cki Ruchu Wolnej Ziemi, istniej\\u0105ce w spos\\u00f3b faktyczny na terenie Polski zainicjowa\\u0142 Henry Schumacher, tworz\\u0105c w 2000 r w Bieszczadach Fundacj\\u0119 Plemi\\u0119 Sanu. Henry przyjecha\\u0142 do Polski w 1991 r odkrywaj\\u0105c przysz\\u0142e miejsce do \\u017cycia z grup\\u0105 skautingow\\u0105 Rodziny T\\u0119czy. W tamtym czasie szukali oni miejsca na europejskie Zgromadzenie Rainbow Family, kt\\u00f3re odby\\u0142o si\\u0119 w 1991 r w dolinie Tworylne. W 2001 r\\u00f3wnie\\u017c w Bieszczadach w Koma\\u0144czy pojawi\\u0142a si\\u0119 te\\u017c o\\u015bmioosobowa grupa T\\u0119czowy Kr\\u0105g, kt\\u00f3ra za cel postawi\\u0142a sobie za\\u0142o\\u017cenie organizacji, umo\\u017cliwiaj\\u0105cej posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci. Dzi\\u0119ki temu w 2004 r w Grab\\u00f3wce uda\\u0142o si\\u0119 zarejestrowa\\u0107 Stowarzyszenie Arte Unite, kt\\u00f3re w 2012 r otrzyma\\u0142o na wsp\\u00f3ln\\u0105 w\\u0142asno\\u015b\\u0107 budynek gospodarczy. T\\u0119czowy Kr\\u0105g zosta\\u0142 za\\u0142o\\u017cony pod Bydgoszcz\\u0105 przez ludzi z mi\\u0119dzynarodowego posthipisowskiego ruchu Rainbow Family - Rodzina T\\u0119czy. W tym samym czasie dzi\\u0119ki Arturowi Milickiemu powsta\\u0142a Fundacja dla Ziemi i Ludzi za\\u0142o\\u017cona w roku 2011. R\\u00f3wnie\\u017c dzi\\u0119ki Arturowi, powy\\u017csze inicjatywy uda\\u0142o si\\u0119 zebra\\u0107 i uruchomi\\u0107 jako Ruch Wolnej Ziemi. Wszystkie wymienione tutaj organizacje, mo\\u017cna uzna\\u0107 za inicjuj\\u0105ce Ruch Wolnej Ziemi ze wzgl\\u0119du na szczeg\\u00f3lne uwzgl\\u0119dnienie podejmowania w nich decyzji przez kosensus, czyli jednog\\u0142o\\u015bnie.</p>"}	\N	9	2
40	f	2021-02-24 04:28:23.398862+01	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "af663334-acac-4c96-9aa7-48db95a271d6", "locale": 1, "title": "Warsztaty", "draft_title": "Warsztaty", "slug": "warsztaty", "content_type": 41, "live": true, "has_unpublished_changes": false, "url_path": "/home/warsztaty/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T00:20:43.836Z", "last_published_at": "2021-02-24T03:22:27.885Z", "latest_revision_created_at": "2021-02-24T03:22:27.774Z", "live_revision": 39, "alias_of": null, "opis": "<h2>Po ca\\u0142kowitym sko\\u0144czeniu Stodo\\u0142y, b\\u0119dziemy dysponowali:<br/>-Warsztatem ceramicznym (mamy ko\\u0142o garncarskie, szkliwa i piec gazowy do wypalania)<br/><br/> - Warsztatem rze\\u017aby w drewnie, szklarni\\u0105 i suszarni\\u0105 do warzyw, nie tylko produkowanych przez nas, ale r\\u00f3wnie\\u017c z zaprzyja\\u017anionych gospodarstw, o kt\\u00f3rych wiemy, \\u017ce uprawia si\\u0119 tam ro\\u015bliny w spos\\u00f3b ekologiczny. B\\u0119dziemy mogli si\\u0119 te\\u017c zaj\\u0105\\u0107 pakowaniem tych warzyw.<br/> - Sal\\u0105 do spotka\\u0144 na oko\\u0142o 20 os\\u00f3b, jak r\\u00f3wnie\\u017c zapleczem umo\\u017cliwiaj\\u0105cym, \\u017ceby takie osoby mog\\u0142y mieszka\\u0107 w Stodole przez tydzie\\u0144 lub dwa. Nie s\\u0105 to warunki hotelowe, poniewa\\u017c spa\\u0107 mo\\u017cna na drewnianej pod\\u0142odze i na antresoli, na materacach lub karimatach.</h2>", "zaproszenie": "", "milicki": "<p><b>Artur Milicki</b><br/> (ur. 1976) \\u2013 jest praktykiem, nauczycielem rozwoju wewn\\u0119trznego i autoterapii. Studiowa\\u0142 zarz\\u0105dzanie i informatyk\\u0119 na UWM w Olsztynie (1996-2002) oraz kulturoznawstwo na UJ w Krakowie (1997-1998). By\\u0142 mnichem w tradycji wisznuizmu gaudia (1999-2004). Po zdj\\u0119ciu szafranu rozpocz\\u0105\\u0142 proces w\\u0142asnej psychoedukacji i autoterapii. Zosta\\u0142 wolnomy\\u015blicielem i aktywist\\u0105 spo\\u0142ecznym dzia\\u0142aj\\u0105cym na rzecz ruchu ekowioskowego. Wsp\\u00f3\\u0142tworzy\\u0142 \\u201cAkademi\\u0119 Bosej Stopy\\u201d (2012) oraz \\u201cRuch Wolnej Ziemi\\u201d (2017). Napisa\\u0142 ksi\\u0105\\u017ck\\u0119 \\u201cCz\\u0142owiek na Ziemi\\u201d (2014). Jest tat\\u0105 Lubomira (2008) i Anastazji (2009). Opr\\u00f3cz dzia\\u0142alno\\u015bci psychoedukacyjnej i spo\\u0142ecznej, zawodowo zajmuje si\\u0119 projektowaniem piec\\u00f3w i nauczaniem rzemios\\u0142a zdu\\u0144skiego.<br/>Jest konstruktorem, zdunem i nauczycielem zdu\\u0144stwa specjalizuj\\u0105cym si\\u0119 w projektowaniu i budowie wydajnych piec\\u00f3w akumulacyjnych (rakietowych, komorowych) oraz kompleksowych instalacji s\\u0142u\\u017c\\u0105cych do ogrzewania pomieszcze\\u0144 mieszkalnych i u\\u017cytkowych. Ponadto projektuje on i buduje r\\u00f3wnie\\u017c trzony kuchenne, piece chlebowe, piece do pizzy, suszarnie, sauny, w\\u0119dzarnie, grille.</p><h3><b>Kurs projektowania i budowy piec\\u00f3w (Kurs Zdu\\u0144ski - edycja VI - 2021)<br/><br/></b> Strona z opisem kursu: <a href=\\"https://pieceartura.pl/kurs-zdunski/\\">https://pieceartura.pl/kurs-zdunski/</a></h3><p>Umiej\\u0119tno\\u015bci jakie zdob\\u0119dzie osoba uczestnicz\\u0105ca</p><p>Po uko\\u0144czeniu tego kursu:</p><p>- b\\u0119dziesz dysponowa\\u0142 specjalistyczn\\u0105 wiedz\\u0119 z zakresu zdu\\u0144stwa, kt\\u00f3r\\u0105</p><p>mo\\u017cesz natychmiast wykorzysta\\u0107 w swojej praktyce budowy piec\\u00f3w,</p><p>- b\\u0119dziesz dysponowa\\u0142 wszystkimi narz\\u0119dziami (wzory, arkusze</p><p>kalkulacyjne, oprogramowanie) niezb\\u0119dnymi do samodzielnego</p><p>projektowania r\\u00f3\\u017cnych piec\\u00f3w,</p><p>- b\\u0119dziesz mia\\u0142 sta\\u0142\\u0105 mo\\u017cliwo\\u015b\\u0107 uczestniczenia w praktycznych</p><p>zdu\\u0144skich warsztatach szkoleniowych na kt\\u00f3rych od pocz\\u0105tku do ko\\u0144ca</p><p>budowane s\\u0105 r\\u00f3\\u017cnego rodzaju piece (opcjonalnie, na oddzielnie</p><p>okre\\u015blonych warunkach),</p><p>- b\\u0119dziesz m\\u00f3g\\u0142 odby\\u0107 praktyk\\u0119 i uczestniczy\\u0107 w realizacjach zlece\\u0144</p><p>jako pomocnik zduna, lub zdun (opcjonalnie, na indywidualnie</p><p>ustalonych warunkach).</p><h3><b><br/><br/></b>Proces Integracji Emocjonalnej jest metod\\u0105 samopoznania i autoterapii<br/><b> (9-tygodniowy kurs online)</b></h3><p>kt\\u00f3ra gwa\\u0142townie poszerza \\u015bwiadomo\\u015b\\u0107 w\\u0142asnych emocji, uczu\\u0107, my\\u015bli i</p><p>przekona\\u0144. W sk\\u0142ad Procesu wchodz\\u0105 specjalnie dobrane techniki</p><p>percepcyjno-wgl\\u0105dowe, s\\u0142u\\u017c\\u0105ce do intencjonalnej zmiany lub korekty</p><p>oprogramowania naszej pod\\u015bwiadomo\\u015bci, w taki spos\\u00f3b, aby nasze</p><p>wewn\\u0119trzne i zewn\\u0119trzne \\u017cycie przyj\\u0119\\u0142o jak najbardziej \\u017cyczliwy</p><p>wymiar, dla nas samych, dla naszych bliskich i dla ca\\u0142ego otoczenia, w</p><p>kt\\u00f3rym \\u017cyjemy.</p><p>umiej\\u0119tno\\u015bci jakie zdob\\u0119dzie osoba uczestnicz\\u0105ca</p><p>Wraz z post\\u0119pem w praktyce Procesu Integracji Emocjonalnej mo\\u017cemy</p><p>do\\u015bwiadczy\\u0107 nast\\u0119puj\\u0105cych przeobra\\u017ce\\u0144 i trwa\\u0142ych wewn\\u0119trznych</p><p>wzrost\\u00f3w:</p><p>wzrost poczucia pewno\\u015bci wobec w\\u0142asnych \\u017cyciowych priorytet\\u00f3w, cel\\u00f3w i wybor\\u00f3w,</p><p>wzrost \\u015bwiadomo\\u015bci i umiej\\u0119tno\\u015bci dostrzegania i do\\u015bwiadczania \\u017ar\\u00f3d\\u0142a</p><p>szcz\\u0119\\u015bcia i spe\\u0142nienia w sobie i zmniejszenie tym samym zale\\u017cno\\u015bci od</p><p>\\u015bwiata zewn\\u0119trznego, jako \\u017ar\\u00f3d\\u0142a satysfakcji,</p><p>wzrost mo\\u017cliwo\\u015bci stania si\\u0119 osob\\u0105 bardziej wspieraj\\u0105c\\u0105, wsp\\u00f3\\u0142czuj\\u0105c\\u0105,</p><p>motywuj\\u0105c\\u0105, cierpliw\\u0105, tolerancyjn\\u0105 i autentyczn\\u0105 wobec samej /samego</p><p>siebie oraz wobec innych,</p><p>wzrost umiej\\u0119tno\\u015bci do\\u015bwiadczania \\u017cycia w chwili obecnej poprzez</p><p>zmniejszenie negatywnego zaabsorbowania przesz\\u0142o\\u015bci\\u0105 lub przysz\\u0142o\\u015bci\\u0105,</p><p>wzrost w odczuwaniu wewn\\u0119trznej mocy sprawczej, kt\\u00f3r\\u0105 wcze\\u015bniej</p><p>projektowali\\u015bmy na \\u015bwiat,</p><p>wzrost wewn\\u0119trznej si\\u0142y, odporno\\u015bci na zranienie, poczucia w\\u0142asnej</p><p>warto\\u015bci, wewn\\u0119trznego spokoju, rado\\u015bci, spe\\u0142nienia i og\\u00f3lnego poziomu</p><p>\\u015bwiadomo\\u015bci.</p>", "beret": "<p><b>Adam Ma\\u0144czuk</b><br/> Jest programist\\u0105 z ponad 20-letnim do\\u015bwiadczeniem na ca\\u0142ym \\u015bwiecie (w tym w Dolinie Krzemowej). Specjalizuje si\\u0119 w Pythonie i Django. Pracowa\\u0142 jako lektor programowania na Uniwersytecie Warszawskim. Adam jest tak\\u017ce poet\\u0105 i \\u017ceglarzem.</p>", "monika": "<p><b>Monika Matis</b><br/><br/> Pracuje jako publicystka, t\\u0142umaczka, autorka tekst\\u00f3w \\u017ceglarskich oraz piel\\u0119gniarka. Posiada r\\u00f3\\u017cnorodne do\\u015bwiadczenia akademickie, od informatyki i mechaniki po studia medyczne. Z zami\\u0142owania zajmuje si\\u0119 nawigacj\\u0105 tradycyjn\\u0105, lub jak si\\u0119 j\\u0105 teraz okre\\u015bla \\u201cawaryjn\\u0105\\u201d. \\u017begluje od pi\\u0119tnastego roku \\u017cycia, zwykle na jachtach znajomych i przyjaci\\u00f3\\u0142, gdy potrzebowali kogo\\u015b znaj\\u0105cego si\\u0119 na rzeczy i do\\u015bwiadczonego aby pop\\u0142yn\\u0105\\u0107 gdzie\\u015b dalej. Prowadzi\\u0142a jachty na Ba\\u0142tyku, Morzu P\\u00f3\\u0142nocnym i \\u015ar\\u00f3dziemnym, Atlantyku, od Afryki po dalek\\u0105 Arktyk\\u0119. \\u017beglowa\\u0142a r\\u00f3wnie\\u017c samotnie i w ma\\u0142ych za\\u0142ogach.</p>", "comment": "<p><br/></p><p>Kuba Ferenczak<br/> Uczy\\u0142em si\\u0119 w Liceum Sztuk Plastycznych w Zakopanem w klasie o profilu rze\\u017abiarstwo w drewnie, zaj\\u0119cia jednak r\\u00f3wnie\\u017c obejmowa\\u0142y rze\\u017ab\\u0119 w glinie. Z ceramik\\u0105 i jej wypalaniem w piecu gazowym mia\\u0142em do czynienia w Grab\\u00f3wce, gdzie eksperymentowa\\u0142em z lokaln\\u0105 glin\\u0105. Dla kilku os\\u00f3b, wsp\\u00f3lnie z Ann\\u0105 Ovalle Correa prowadzi\\u0142em zaj\\u0119cia z ceramiki we wsi Dziadowice.<br/><br/>Warsztat ceramiczny dla os\\u00f3b doros\\u0142ych w oparciu o prac\\u0119 w glinie z pobliskich cegielni Panosz\\u00f3w i Gwo\\u017adziany.\\u00a0<br/>Obejmuje wiedz\\u0119, dotycz\\u0105c\\u0105 przygotowania gliny i podstawowych technik tworzenia prostych przedmiot\\u00f3w u\\u017cytkowych jak i podstaw rze\\u017aby w glinie.\\u00a0<br/></p><p>Po warsztatach, ka\\u017cdy b\\u0119dzie w stanie zrobi\\u0107 samodzielnie szkliwione naczynie, prost\\u0105 form\\u0119 w postaci rze\\u017aby, zabawk\\u0119, ozdob\\u0119 na prezent, lub inne przedmioty wg pomys\\u0142u uczestnika.\\u00a0<br/>Zdobyta wiedza, b\\u0119dzie dotyczy\\u0107 tego, jak przystosowa\\u0107 dowolny kszta\\u0142t do materia\\u0142u, z kt\\u00f3rego ma by\\u0107 zrobiony, czyli gliny. B\\u0119dziemy te\\u017c robi\\u0107 proste narz\\u0119dzia do kszta\\u0142towania form, kt\\u00f3re chcemy uzyska\\u0107.</p>"}	\N	6	2
45	f	2021-02-26 21:28:51.583808+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 4, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-26T20:13:39.029Z", "latest_revision_created_at": "2021-02-26T20:13:38.935Z", "live_revision": 44, "alias_of": null, "long_name": "<p>Jeste\\u015bmy organizacj\\u0105, maj\\u0105c\\u0105 na celu uwalnianie Ziemi spod w\\u0142asno\\u015bci indywidualnej dla wsp\\u00f3lnot ekoosadowych<br/></p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>"}	\N	3	2
44	f	2021-02-26 21:13:38.935553+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 4, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-26T18:42:08.056Z", "latest_revision_created_at": "2021-02-26T18:42:07.953Z", "live_revision": 43, "alias_of": null, "long_name": "<p>Jeste\\u015bmy organizacj\\u0105, maj\\u0105c\\u0105 na celu uwalnianie Ziemi spod w\\u0142asno\\u015bci indywidualnej dla wsp\\u00f3lnot ekoosadowych<br/></p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>"}	\N	3	2
43	f	2021-02-26 19:42:07.953+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 4, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-26T18:35:58.260Z", "latest_revision_created_at": "2021-02-26T18:35:58.157Z", "live_revision": 42, "alias_of": null, "long_name": "<p>Jeste\\u015bmy organizacj\\u0105, maj\\u0105c\\u0105 na celu uwalnianie Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych,<br/>na rzecz wolno\\u015bci, m\\u0105dro\\u015bci i sprawiedliwo\\u015bci mi\\u0119dzy lud\\u017ami.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>"}	\N	3	2
1	f	2021-02-07 07:27:14.685056+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "body": "<p>Ala ma kota</p>"}	\N	3	1
2	f	2021-02-07 07:37:51.915945+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": true, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": "2021-02-07T06:27:14.685Z", "live_revision": null, "alias_of": null, "body": "<p>Ala ma kota</p><p>a kota ma al\\u0119...</p>"}	\N	3	1
4	f	2021-02-07 15:10:58.225814+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-07T06:38:02.740Z", "latest_revision_created_at": "2021-02-07T06:38:02.722Z", "live_revision": 3, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "<p>Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.</p>", "quote_author": "<p>Henryk Skolimowski</p>", "earth_head": "<p>Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.</p>", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/>   <br/>Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "<p>Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.</p>", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "<p>Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.</p>", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>"}	\N	3	1
8	f	2021-02-14 23:14:00.145636+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-14T22:05:22.804Z", "latest_revision_created_at": "2021-02-14T22:05:22.729Z", "live_revision": 7, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>"}	\N	3	1
3	f	2021-02-07 07:38:02.722917+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": true, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": "2021-02-07T06:37:51.915Z", "live_revision": null, "alias_of": null, "body": "<p>Ala ma kota</p><p>a kota ma al\\u0119...</p>"}	\N	3	1
5	f	2021-02-07 15:16:55.14025+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-07T14:10:58.304Z", "latest_revision_created_at": "2021-02-07T14:10:58.225Z", "live_revision": 4, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>"}	\N	3	1
13	f	2021-02-21 02:30:25.103087+01	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "9337acdf-56ac-42a5-aacb-5ea59c83aa6f", "locale": 1, "title": "Stodo\\u0142a Wymy\\u015blacz", "draft_title": "Stodo\\u0142a Wymy\\u015blacz", "slug": "stodo\\u0142a-wymy\\u015blacz", "content_type": 43, "live": true, "has_unpublished_changes": false, "url_path": "/home/stodo\\u0142a-wymy\\u015blacz/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "opis": "<h2>Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</h2>", "objasnienie": "<p>Stodo\\u0142a Wymy\\u015blacz jest na obrze\\u017cach Lubli\\u0144ca, blisko trasy nr 11 \\u0142\\u0105cz\\u0105cej Katowice z Poznaniem. Nasze miasteczko le\\u017cy 30 km na zach\\u00f3d od Cz\\u0119stochowy. Oddzielone jest od aglomeracji \\u015bl\\u0105skiej du\\u017cym kompleksem las\\u00f3w, kt\\u00f3ry rozpoczyna si\\u0119 kilkaset metr\\u00f3w od naszego budynku. Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.</p>", "komentarz": "", "zaproszenie": "<h2>Zasady/Zwyczaje (zaproszenie)</h2><p>\\u017beby unikn\\u0105\\u0107 \\u201cprzypadkowo\\u015bci\\u201d ludzi bior\\u0105cych udzia\\u0142 w naszym projekcie, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 z nami wsp\\u00f3\\u0142tworzy\\u0107 rodzin\\u0119 opart\\u0105 na plemiennym kr\\u0119gu. Mamy na uwadze stwarzanie mi\\u0119dzy nami relacji, w kt\\u00f3rej uczymy si\\u0119 nawzajem nie dla samej wiedzy, a dla harmonii ze sob\\u0105 i z ca\\u0142ym \\u017cyciem. Na tym poziomie r\\u00f3\\u017cnice mi\\u0119dzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam naprzeciw przeszkodom i problemom - \\u0142atwiej jest pokonywa\\u0107 je razem. U nas nikt nie jest u kogo\\u015b, wszyscy jeste\\u015bmy u siebie. Organizacja pozarz\\u0105dowa, gdzie zarz\\u0105d jest wy\\u0142\\u0105cznie w\\u0142adz\\u0105 wykonawcz\\u0105 jednog\\u0142o\\u015bnych decyzji daje nam tak\\u0105 mo\\u017cliwo\\u015b\\u0107 r\\u00f3wnie\\u017c na poziomie prawnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce uczestniczy w tym na r\\u00f3wni ze wszystkimi. Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107 mi\\u0119dzy sob\\u0105, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Wsp\\u00f3lnie nie uto\\u017csamiamy si\\u0119 z \\u017cadn\\u0105 religi\\u0105, ani jej nie tworzymy. Jest to koniecznym warunkiem na \\u015bcie\\u017cce \\u017cycia kt\\u00f3r\\u0105 idziemy, w taki spos\\u00f3b chcemy zachowa\\u0107 mo\\u017cliwo\\u015b\\u0107 kontynuacji tego kim jeste\\u015bmy jako ludzie tutaj na Ziemi. Nasz\\u0105 odpowiedzi\\u0105 jest utworzenie kr\\u0119gu, w kt\\u00f3rym mog\\u0105 uczestniczy\\u0107 wyznawcy wielu religii, jednak \\u017cadnej z nich nie stawiamy w centrum. Zdajemy sobie spraw\\u0119, \\u017ce wiara jest cz\\u0119\\u015bci\\u0105 anatomii naszych uczu\\u0107 i nadaje moc tworzenia wszystkiemu co jeste\\u015bmy w stanie uzna\\u0107 za prawdziwe. Kiedy nie jest w sprzeczno\\u015bci z naszym rozumieniem faktycznie staje si\\u0119 coraz bardziej skuteczna w kreowaniu rzeczywisto\\u015bci. \\u017beby to widzie\\u0107, nie potrzebujemy \\u017cadnych \\u201cpo\\u015brednik\\u00f3w\\u201d pomi\\u0119dzy cz\\u0142owiekiem a Tym wszystkim czego manifestacj\\u0105 jeste\\u015bmy. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami.</p>"}	\N	8	1
30	f	2021-02-22 19:38:53.993404+01	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "ad7d4a29-49cc-4bbc-9cd5-a8fbeaaa3b04", "locale": 1, "title": "Misja", "draft_title": "Misja", "slug": "misja", "content_type": 42, "live": true, "has_unpublished_changes": false, "url_path": "/home/misja/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:05:29.731Z", "last_published_at": "2021-02-22T14:27:23.670Z", "latest_revision_created_at": "2021-02-22T14:27:23.539Z", "live_revision": 25, "alias_of": null, "opis": "<h2>MISJA<br/><br/></h2>", "objasnienie": "<p>Chcemy zmienia\\u0107 \\u017cycie i wci\\u0105\\u017c zmieniamy \\u015bwiat. Ka\\u017cdy z nas pragnie si\\u0119 tym zaj\\u0105\\u0107 jak najlepiej. Problem w tym, \\u017ce wci\\u0105\\u017c nie wiemy co to znaczy lepiej. Ewolucja dotar\\u0142a ju\\u017c do punktu, gdzie zmiana musi dotyczy\\u0107 nas samych. \\u015awiadomo\\u015b\\u0107, kt\\u00f3r\\u0105 zyskali\\u015bmy w ci\\u0105gu wiek\\u00f3w, pokazuje nam wyra\\u017anie, \\u017ce nie mo\\u017cemy ju\\u017c planowa\\u0107 i dzia\\u0142a\\u0107 w zakresie jednego pokolenia, a tym bardziej jednej osoby.<br/> Nasza organizacja ma na celu stwarzanie godnych warunk\\u00f3w do \\u017cycia i do samostanowienia o nim. Chcemy zmienia\\u0107 \\u015bwiat i relacje mi\\u0119dzy lud\\u017ami w nim panuj\\u0105ce. Dlatego do naszych projekt\\u00f3w, zapraszamy ludzi \\u015bwiadomych zagro\\u017cenia, jakie niesie obecny kierunek rozwoju cywilizacji.<br/><br/> Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka. Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy te\\u017c pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci.<br/><br/> Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy. To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia. \\u015awiat konsumpcji doprowadzi\\u0142 nawet do sytuacji, gdzie mo\\u017cemy konsumowa\\u0107 czas i \\u017cycie innych ludzi wyznaczaj\\u0105c za nie cen\\u0119. Demokracja daje r\\u00f3wne prawa r\\u00f3wnie\\u017c g\\u0142upocie, je\\u015bli tylko da si\\u0119 j\\u0105 sprzeda\\u0107. Kiedy od dziecka motywacj\\u0119 wyznaczaj\\u0105 dwa bieguny: kara i nagroda, zysk i strata, kupno i sprzeda\\u017c tworzymy \\u015bwiat rywalizacji i kariery, ludzi coraz bardziej sobie obcych i podatnych na w\\u0142adz\\u0119. Jest to upadek poni\\u017cej normalno\\u015bci, a prawda o tym mo\\u017ce wystraszy\\u0107. Dlatego boimy si\\u0119 jej i ukrywamy swoj\\u0105 natur\\u0119 wci\\u0105\\u017c nie mog\\u0105c jej odkry\\u0107.<br/><br/> Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Kiedy przemieniamy stare systemy warto\\u015bciowania w nowe, nie potrzebujemy ju\\u017c buntu. Nasze dzia\\u0142ania wywodz\\u0105 si\\u0119 z ekofilozofii i g\\u0142\\u0119bokiej ekologii oraz kultur plemiennych, gdzie Ziemia nigdy nie by\\u0142a w\\u0142asno\\u015bci\\u0105 cz\\u0142owieka. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 w spos\\u00f3b naturalny r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce uczestniczy w tym na r\\u00f3wni ze wszystkimi. Na tym poziomie r\\u00f3\\u017cnice miedzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny.<br/>U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie.<br/> W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra eliminuje z naszego \\u017cycia konsumpcjonizm jako warto\\u015b\\u0107. Jakakolwiek forma posiadania Ziemi, oparta o struktury w\\u0142adzy cz\\u0142owieka nad cz\\u0142owiekiem, lub jednych ludzi nad drugimi, z naszego punktu widzenia eliminuje ide\\u0119 przestrzeni, gdzie ka\\u017cdy mo\\u017ce by\\u0107 r\\u00f3wny, zar\\u00f3wno wobec miejsca w kt\\u00f3rym \\u017cyje, jak i wobec innych ludzi.</p>", "komentarz_1": "", "komentarz_2": "", "komentarz_3": "", "podsumowanie": ""}	\N	7	2
12	f	2021-02-21 02:05:29.671106+01	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "ad7d4a29-49cc-4bbc-9cd5-a8fbeaaa3b04", "locale": 1, "title": "Misja", "draft_title": "Misja", "slug": "misja", "content_type": 42, "live": true, "has_unpublished_changes": false, "url_path": "/home/misja/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "opis": "<h2>Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka. Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.</h2>", "objasnienie": "<p>Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie. W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci. Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy. To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia. \\u015awiat konsumpcji doprowadzi\\u0142 nawet do sytuacji, gdzie mo\\u017cemy konsumowa\\u0107 czas i \\u017cycie innych ludzi wyznaczaj\\u0105c za nie cen\\u0119. Demokracja daje r\\u00f3wne prawa r\\u00f3wnie\\u017c g\\u0142upocie, je\\u015bli tylko da si\\u0119 j\\u0105 sprzeda\\u0107. Kiedy od dziecka motywacj\\u0119 wyznaczaj\\u0105 dwa bieguny: kara i nagroda, zysk i strata, kupno i sprzeda\\u017c tworzymy \\u015bwiat rywalizacji i kariery, ludzi coraz bardziej sobie obcych i podatnych na w\\u0142adz\\u0119. Jest to upadek poni\\u017cej normalno\\u015bci, a prawda o tym mo\\u017ce wystraszy\\u0107. Dlatego boimy si\\u0119 jej i ukrywamy swoj\\u0105 natur\\u0119 wci\\u0105\\u017c nie mog\\u0105c jej odkry\\u0107. Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Kiedy przemieniamy stare systemy warto\\u015bciowania w nowe, nie potrzebujemy ju\\u017c buntu. Nasze dzia\\u0142ania wywodz\\u0105 si\\u0119 z ekofilozofii i g\\u0142\\u0119bokiej ekologii oraz kultur plemiennych, gdzie Ziemia nigdy nie by\\u0142a w\\u0142asno\\u015bci\\u0105 cz\\u0142owieka. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 w spos\\u00f3b naturalny r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce uczestniczy w tym na r\\u00f3wni ze wszystkimi. Na tym poziomie r\\u00f3\\u017cnice miedzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny.</p>", "komentarz_1": "<p>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Zak\\u0142adaj\\u0105c, \\u017ce dane miejsce ma w\\u0142a\\u015bciciela, to w\\u0142a\\u015bnie owy w\\u0142a\\u015bciciel mo\\u017ce zawsze zdecydowa\\u0107 ostatecznie i to jego decyzje s\\u0105 egzekwowane przez oficjalne i funkcjonuj\\u0105ce we wsp\\u00f3\\u0142czesnym spo\\u0142ecze\\u0144stwie prawo. W zwi\\u0105zku z tym, wszyscy inni ludzie znajduj\\u0105cy si\\u0119 w tym w\\u0142a\\u015bnie miejscu, niestety podlegaj\\u0105 decyzj\\u0105 jednej osoby: w\\u0142a\\u015bciciela. Ta sama w\\u0142adza, jest przekazywana z pokolenia na pokolenie za pomoc\\u0105 tak prostego narz\\u0119dzia jak dziedziczenie maj\\u0105tku -czyli posiadania terytorium. Jedn\\u0105 z g\\u0142\\u00f3wnych przyczyn powstania Ruchu Wolnej Ziemi jest przerwanie \\u0142a\\u0144cucha dziedziczenia i przekazywania sobie w\\u0142adzy i tym samym nap\\u0119dzania w ten spos\\u00f3b konsumpcjonizmu.</p>", "komentarz_2": "<p>U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra eliminuje z naszego \\u017cycia konsumpcjonizm jako warto\\u015b\\u0107. Jakakolwiek forma posiadania Ziemi, oparta o struktury w\\u0142adzy cz\\u0142owieka nad cz\\u0142owiekiem, lub jednych ludzi nad drugimi, z naszego punktu widzenia eliminuje ide\\u0119 przestrzeni, gdzie ka\\u017cdy mo\\u017ce by\\u0107 r\\u00f3wny, zar\\u00f3wno wobec miejsca w kt\\u00f3rym \\u017cyje, jak i wobec innych ludzi.</p>", "komentarz_3": "<p>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. Jeste\\u015bmy dzie\\u0107mi tej Planety i mo\\u017cemy bawi\\u0107 si\\u0119 w co chcemy i z kim chcemy, a kto chce mo\\u017ce bawi\\u0107 si\\u0119 z nami. Dlatego \\u017ceby unikn\\u0105\\u0107 przypadkowo\\u015bci ludzi bior\\u0105cych udzia\\u0142 we wsp\\u00f3lnym prze\\u017cywaniu, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 wzi\\u0105\\u0107 udzia\\u0142 w tworzeniu rodziny opartej na plemiennym kr\\u0119gu. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam na przeciw przeszkodom i problemom, \\u0142atwiej jest pokonywa\\u0107 je razem. Nie mo\\u017cna ju\\u017c zmieni\\u0107 przesz\\u0142o\\u015bci, jednak po tylu latach eko i ludob\\u00f3jstwa, nadszed\\u0142 ju\\u017c czas, by zacz\\u0105\\u0107 spe\\u0142nia\\u0107 marzenia. Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.</p>", "podsumowanie": "<p>Tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych. Ruch Wolnej Ziemi jest inicjatyw\\u0105 spo\\u0142eczn\\u0105 skupion\\u0105 na wdra\\u017caniu w \\u017cycie sprawdzonych rozwi\\u0105za\\u0144 prawnych i organizacyjnych w celu \\u201euwalniania Ziemi\\u201d spod w\\u0142asno\\u015bci prywatnej. Zale\\u017cy nam na tworzeniu i rozwoju intencjonalnych spo\\u0142eczno\\u015bci wiejskich (tzw. ekowiosek, ekoosad), w kt\\u00f3rych decyzje dotycz\\u0105ce wszystkich podejmowane s\\u0105 wsp\\u00f3lnie (konsensus), i w kt\\u00f3rych my, ludzie, posiadamy r\\u00f3wne prawa zar\\u00f3wno wobec Ziemi oraz siebie nawzajem. Tworzymy w tym celu osoby prawne tj. fundacje lub stowarzyszenia. Uczestnikiem Ruchu mo\\u017ce by\\u0107 ka\\u017cda osoba, kt\\u00f3ra rozumie nasze za\\u0142o\\u017cenia i zgadza si\\u0119 z nimi. Ruch Wolnej Ziemi nie jest organizacj\\u0105 i nie prowadzi \\u017cadnej ewidencji przynale\\u017cno\\u015bci. Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144. Jednym z g\\u0142\\u00f3wnych za\\u0142o\\u017ce\\u0144 jest wsp\\u00f3lne decydowanie w sprawach, kt\\u00f3re dotycz\\u0105 Ruchu. Pozwala to miejscom w kt\\u00f3rych \\u017cyjemy, jak r\\u00f3wnie\\u017c nam wszystkim na rozw\\u00f3j i ewoluowanie zgodnie z jednog\\u0142o\\u015bnie ustalanym kierunkiem. Decyzje takie, mog\\u0105 zapada\\u0107 jedynie w kontakcie osobistym w kr\\u0119gu. Jedn\\u0105 z organizacji, kt\\u00f3re za\\u0142o\\u017cyli\\u015bmy, jest Zwi\\u0105zek Wolnej Ziemi. Oto jego podstawowe za\\u0142o\\u017cenia : . My, ludzie tworz\\u0105cy Zwi\\u0105zek Wolnej Ziemi, uznajemy si\\u0119 za opiekun\\u00f3w i stra\\u017cnik\\u00f3w Ziemi, a w szczeg\\u00f3lno\\u015bci teren\\u00f3w, na kt\\u00f3rych \\u017cyjemy. D\\u0105\\u017cymy do rozwoju \\u015bwiadomo\\u015bci poprzez odtworzenie naturalnej relacji cz\\u0142owieka z nasz\\u0105 Planet\\u0105. Przyjmujemy, \\u017ce b\\u0119d\\u0105c r\\u00f3wnymi wobec Ziemi, na kt\\u00f3rej \\u017cyjemy, jeste\\u015bmy r\\u00f3wnie\\u017c r\\u00f3wni wobec siebie i ca\\u0142ej Przyrody. O\\u015bwiadczamy, \\u017ce Ziemia i ca\\u0142e \\u017cycie na Ziemi stanowi\\u0105 dla nas najwi\\u0119ksz\\u0105 warto\\u015b\\u0107 przez sam fakt swego istnienia. Uznajemy, \\u017ce naszym zadaniem jest ochrona Ziemi, naszego Domu i Miejsca w Kosmosie. Uznajemy, \\u017ce to my, ludzie, nale\\u017cymy do Ziemi, a nie odwrotnie. Uznajemy, \\u017ce Ziemia ma takie samo prawo do istnienia i uszanowania jej bytu, jakie maj\\u0105 wszyscy ludzie. Pragniemy tworzy\\u0107 wsp\\u00f3lnoty, w kt\\u00f3rych b\\u0119dziemy razem \\u017cyli, wsp\\u00f3\\u0142pracowali ze sob\\u0105 i uczyli si\\u0119 od siebie dla dobra nas samych i ca\\u0142ego \\u017bycia. Pragniemy, aby wszyscy ludzie \\u017cyli w harmonii ze sob\\u0105 i z ca\\u0142\\u0105 Przyrod\\u0105, szanuj\\u0105c i chroni\\u0105c Ziemi\\u0119. Wszystkie decyzje podejmujemy przez consensus (jednog\\u0142o\\u015bnie), czyli sposoby \\u017cycia, ochrony ziemi i dalsze dzia\\u0142ania na terenie fundacji podlegaj\\u0105 decyzji kr\\u0119gu. Dzi\\u0119ki temu ka\\u017cdy, kto pojawi si\\u0119 u nas, b\\u0119dzie m\\u00f3g\\u0142 mie\\u0107 poczucie, \\u017ce ziemia jest naszym wsp\\u00f3lnym domem i razem mo\\u017cemy w tym uczestniczy\\u0107.</p>"}	\N	7	1
20	f	2021-02-22 14:35:09.755699+01	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "ad7d4a29-49cc-4bbc-9cd5-a8fbeaaa3b04", "locale": 1, "title": "Misja", "draft_title": "Misja", "slug": "misja", "content_type": 42, "live": true, "has_unpublished_changes": false, "url_path": "/home/misja/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:05:29.731Z", "last_published_at": "2021-02-21T01:05:29.731Z", "latest_revision_created_at": "2021-02-21T01:05:29.671Z", "live_revision": 12, "alias_of": null, "opis": "<h2>Chcemy zmienia\\u0107 \\u017cycie i wci\\u0105\\u017c zmieniamy \\u015bwiat. Ka\\u017cdy z nas chce si\\u0119 tym zaj\\u0105\\u0107 jak najlepiej. Problem w tym, \\u017ce wci\\u0105\\u017c nie wiemy co to znaczy lepiej. <br/><br/>Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka. Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.</h2>", "objasnienie": "<p>Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie. W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci. Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy. To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia. \\u015awiat konsumpcji doprowadzi\\u0142 nawet do sytuacji, gdzie mo\\u017cemy konsumowa\\u0107 czas i \\u017cycie innych ludzi wyznaczaj\\u0105c za nie cen\\u0119. Demokracja daje r\\u00f3wne prawa r\\u00f3wnie\\u017c g\\u0142upocie, je\\u015bli tylko da si\\u0119 j\\u0105 sprzeda\\u0107. Kiedy od dziecka motywacj\\u0119 wyznaczaj\\u0105 dwa bieguny: kara i nagroda, zysk i strata, kupno i sprzeda\\u017c tworzymy \\u015bwiat rywalizacji i kariery, ludzi coraz bardziej sobie obcych i podatnych na w\\u0142adz\\u0119. Jest to upadek poni\\u017cej normalno\\u015bci, a prawda o tym mo\\u017ce wystraszy\\u0107. Dlatego boimy si\\u0119 jej i ukrywamy swoj\\u0105 natur\\u0119 wci\\u0105\\u017c nie mog\\u0105c jej odkry\\u0107. Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Kiedy przemieniamy stare systemy warto\\u015bciowania w nowe, nie potrzebujemy ju\\u017c buntu. Nasze dzia\\u0142ania wywodz\\u0105 si\\u0119 z ekofilozofii i g\\u0142\\u0119bokiej ekologii oraz kultur plemiennych, gdzie Ziemia nigdy nie by\\u0142a w\\u0142asno\\u015bci\\u0105 cz\\u0142owieka. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 w spos\\u00f3b naturalny r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce uczestniczy w tym na r\\u00f3wni ze wszystkimi. Na tym poziomie r\\u00f3\\u017cnice miedzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny.</p>", "komentarz_1": "<p>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Zak\\u0142adaj\\u0105c, \\u017ce dane miejsce ma w\\u0142a\\u015bciciela, to w\\u0142a\\u015bnie owy w\\u0142a\\u015bciciel mo\\u017ce zawsze zdecydowa\\u0107 ostatecznie i to jego decyzje s\\u0105 egzekwowane przez oficjalne i funkcjonuj\\u0105ce we wsp\\u00f3\\u0142czesnym spo\\u0142ecze\\u0144stwie prawo. W zwi\\u0105zku z tym, wszyscy inni ludzie znajduj\\u0105cy si\\u0119 w tym w\\u0142a\\u015bnie miejscu, niestety podlegaj\\u0105 decyzj\\u0105 jednej osoby: w\\u0142a\\u015bciciela. Ta sama w\\u0142adza, jest przekazywana z pokolenia na pokolenie za pomoc\\u0105 tak prostego narz\\u0119dzia jak dziedziczenie maj\\u0105tku -czyli posiadania terytorium. Jedn\\u0105 z g\\u0142\\u00f3wnych przyczyn powstania Ruchu Wolnej Ziemi jest przerwanie \\u0142a\\u0144cucha dziedziczenia i przekazywania sobie w\\u0142adzy i tym samym nap\\u0119dzania w ten spos\\u00f3b konsumpcjonizmu.</p>", "komentarz_2": "<p>U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra eliminuje z naszego \\u017cycia konsumpcjonizm jako warto\\u015b\\u0107. Jakakolwiek forma posiadania Ziemi, oparta o struktury w\\u0142adzy cz\\u0142owieka nad cz\\u0142owiekiem, lub jednych ludzi nad drugimi, z naszego punktu widzenia eliminuje ide\\u0119 przestrzeni, gdzie ka\\u017cdy mo\\u017ce by\\u0107 r\\u00f3wny, zar\\u00f3wno wobec miejsca w kt\\u00f3rym \\u017cyje, jak i wobec innych ludzi.</p>", "komentarz_3": "<p>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. Jeste\\u015bmy dzie\\u0107mi tej Planety i mo\\u017cemy bawi\\u0107 si\\u0119 w co chcemy i z kim chcemy, a kto chce mo\\u017ce bawi\\u0107 si\\u0119 z nami. Dlatego \\u017ceby unikn\\u0105\\u0107 przypadkowo\\u015bci ludzi bior\\u0105cych udzia\\u0142 we wsp\\u00f3lnym prze\\u017cywaniu, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 wzi\\u0105\\u0107 udzia\\u0142 w tworzeniu rodziny opartej na plemiennym kr\\u0119gu. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam na przeciw przeszkodom i problemom, \\u0142atwiej jest pokonywa\\u0107 je razem. Nie mo\\u017cna ju\\u017c zmieni\\u0107 przesz\\u0142o\\u015bci, jednak po tylu latach eko i ludob\\u00f3jstwa, nadszed\\u0142 ju\\u017c czas, by zacz\\u0105\\u0107 spe\\u0142nia\\u0107 marzenia. Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.</p>", "podsumowanie": "<p>Tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych. Ruch Wolnej Ziemi jest inicjatyw\\u0105 spo\\u0142eczn\\u0105 skupion\\u0105 na wdra\\u017caniu w \\u017cycie sprawdzonych rozwi\\u0105za\\u0144 prawnych i organizacyjnych w celu \\u201euwalniania Ziemi\\u201d spod w\\u0142asno\\u015bci prywatnej. Zale\\u017cy nam na tworzeniu i rozwoju intencjonalnych spo\\u0142eczno\\u015bci wiejskich (tzw. ekowiosek, ekoosad), w kt\\u00f3rych decyzje dotycz\\u0105ce wszystkich podejmowane s\\u0105 wsp\\u00f3lnie (konsensus), i w kt\\u00f3rych my, ludzie, posiadamy r\\u00f3wne prawa zar\\u00f3wno wobec Ziemi oraz siebie nawzajem. Tworzymy w tym celu osoby prawne tj. fundacje lub stowarzyszenia. Uczestnikiem Ruchu mo\\u017ce by\\u0107 ka\\u017cda osoba, kt\\u00f3ra rozumie nasze za\\u0142o\\u017cenia i zgadza si\\u0119 z nimi. Ruch Wolnej Ziemi nie jest organizacj\\u0105 i nie prowadzi \\u017cadnej ewidencji przynale\\u017cno\\u015bci. Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144. Jednym z g\\u0142\\u00f3wnych za\\u0142o\\u017ce\\u0144 jest wsp\\u00f3lne decydowanie w sprawach, kt\\u00f3re dotycz\\u0105 Ruchu. Pozwala to miejscom w kt\\u00f3rych \\u017cyjemy, jak r\\u00f3wnie\\u017c nam wszystkim na rozw\\u00f3j i ewoluowanie zgodnie z jednog\\u0142o\\u015bnie ustalanym kierunkiem. Decyzje takie, mog\\u0105 zapada\\u0107 jedynie w kontakcie osobistym w kr\\u0119gu. Jedn\\u0105 z organizacji, kt\\u00f3re za\\u0142o\\u017cyli\\u015bmy, jest Zwi\\u0105zek Wolnej Ziemi. Oto jego podstawowe za\\u0142o\\u017cenia : . My, ludzie tworz\\u0105cy Zwi\\u0105zek Wolnej Ziemi, uznajemy si\\u0119 za opiekun\\u00f3w i stra\\u017cnik\\u00f3w Ziemi, a w szczeg\\u00f3lno\\u015bci teren\\u00f3w, na kt\\u00f3rych \\u017cyjemy. D\\u0105\\u017cymy do rozwoju \\u015bwiadomo\\u015bci poprzez odtworzenie naturalnej relacji cz\\u0142owieka z nasz\\u0105 Planet\\u0105. Przyjmujemy, \\u017ce b\\u0119d\\u0105c r\\u00f3wnymi wobec Ziemi, na kt\\u00f3rej \\u017cyjemy, jeste\\u015bmy r\\u00f3wnie\\u017c r\\u00f3wni wobec siebie i ca\\u0142ej Przyrody. O\\u015bwiadczamy, \\u017ce Ziemia i ca\\u0142e \\u017cycie na Ziemi stanowi\\u0105 dla nas najwi\\u0119ksz\\u0105 warto\\u015b\\u0107 przez sam fakt swego istnienia. Uznajemy, \\u017ce naszym zadaniem jest ochrona Ziemi, naszego Domu i Miejsca w Kosmosie. Uznajemy, \\u017ce to my, ludzie, nale\\u017cymy do Ziemi, a nie odwrotnie. Uznajemy, \\u017ce Ziemia ma takie samo prawo do istnienia i uszanowania jej bytu, jakie maj\\u0105 wszyscy ludzie. Pragniemy tworzy\\u0107 wsp\\u00f3lnoty, w kt\\u00f3rych b\\u0119dziemy razem \\u017cyli, wsp\\u00f3\\u0142pracowali ze sob\\u0105 i uczyli si\\u0119 od siebie dla dobra nas samych i ca\\u0142ego \\u017bycia. Pragniemy, aby wszyscy ludzie \\u017cyli w harmonii ze sob\\u0105 i z ca\\u0142\\u0105 Przyrod\\u0105, szanuj\\u0105c i chroni\\u0105c Ziemi\\u0119. Wszystkie decyzje podejmujemy przez consensus (jednog\\u0142o\\u015bnie), czyli sposoby \\u017cycia, ochrony ziemi i dalsze dzia\\u0142ania na terenie fundacji podlegaj\\u0105 decyzji kr\\u0119gu. Dzi\\u0119ki temu ka\\u017cdy, kto pojawi si\\u0119 u nas, b\\u0119dzie m\\u00f3g\\u0142 mie\\u0107 poczucie, \\u017ce ziemia jest naszym wsp\\u00f3lnym domem i razem mo\\u017cemy w tym uczestniczy\\u0107.</p>"}	\N	7	2
21	f	2021-02-22 14:36:29.970036+01	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "ad7d4a29-49cc-4bbc-9cd5-a8fbeaaa3b04", "locale": 1, "title": "Misja", "draft_title": "Misja", "slug": "misja", "content_type": 42, "live": true, "has_unpublished_changes": false, "url_path": "/home/misja/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:05:29.731Z", "last_published_at": "2021-02-22T13:35:09.889Z", "latest_revision_created_at": "2021-02-22T13:35:09.755Z", "live_revision": 20, "alias_of": null, "opis": "<h2>                                                   MISJA<br/><br/>Chcemy zmienia\\u0107 \\u017cycie i wci\\u0105\\u017c zmieniamy \\u015bwiat. Ka\\u017cdy z nas <br/>chce si\\u0119 tym zaj\\u0105\\u0107 jak najlepiej. Problem w tym, \\u017ce wci\\u0105\\u017c nie wiemy co to znaczy lepiej.<br/><br/> Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka. Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.</h2>", "objasnienie": "<p>Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie. W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci. Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy. To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia. \\u015awiat konsumpcji doprowadzi\\u0142 nawet do sytuacji, gdzie mo\\u017cemy konsumowa\\u0107 czas i \\u017cycie innych ludzi wyznaczaj\\u0105c za nie cen\\u0119. Demokracja daje r\\u00f3wne prawa r\\u00f3wnie\\u017c g\\u0142upocie, je\\u015bli tylko da si\\u0119 j\\u0105 sprzeda\\u0107. Kiedy od dziecka motywacj\\u0119 wyznaczaj\\u0105 dwa bieguny: kara i nagroda, zysk i strata, kupno i sprzeda\\u017c tworzymy \\u015bwiat rywalizacji i kariery, ludzi coraz bardziej sobie obcych i podatnych na w\\u0142adz\\u0119. Jest to upadek poni\\u017cej normalno\\u015bci, a prawda o tym mo\\u017ce wystraszy\\u0107. Dlatego boimy si\\u0119 jej i ukrywamy swoj\\u0105 natur\\u0119 wci\\u0105\\u017c nie mog\\u0105c jej odkry\\u0107. Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Kiedy przemieniamy stare systemy warto\\u015bciowania w nowe, nie potrzebujemy ju\\u017c buntu. Nasze dzia\\u0142ania wywodz\\u0105 si\\u0119 z ekofilozofii i g\\u0142\\u0119bokiej ekologii oraz kultur plemiennych, gdzie Ziemia nigdy nie by\\u0142a w\\u0142asno\\u015bci\\u0105 cz\\u0142owieka. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 w spos\\u00f3b naturalny r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce uczestniczy w tym na r\\u00f3wni ze wszystkimi. Na tym poziomie r\\u00f3\\u017cnice miedzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny.</p>", "komentarz_1": "<p>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Zak\\u0142adaj\\u0105c, \\u017ce dane miejsce ma w\\u0142a\\u015bciciela, to w\\u0142a\\u015bnie owy w\\u0142a\\u015bciciel mo\\u017ce zawsze zdecydowa\\u0107 ostatecznie i to jego decyzje s\\u0105 egzekwowane przez oficjalne i funkcjonuj\\u0105ce we wsp\\u00f3\\u0142czesnym spo\\u0142ecze\\u0144stwie prawo. W zwi\\u0105zku z tym, wszyscy inni ludzie znajduj\\u0105cy si\\u0119 w tym w\\u0142a\\u015bnie miejscu, niestety podlegaj\\u0105 decyzj\\u0105 jednej osoby: w\\u0142a\\u015bciciela. Ta sama w\\u0142adza, jest przekazywana z pokolenia na pokolenie za pomoc\\u0105 tak prostego narz\\u0119dzia jak dziedziczenie maj\\u0105tku -czyli posiadania terytorium. Jedn\\u0105 z g\\u0142\\u00f3wnych przyczyn powstania Ruchu Wolnej Ziemi jest przerwanie \\u0142a\\u0144cucha dziedziczenia i przekazywania sobie w\\u0142adzy i tym samym nap\\u0119dzania w ten spos\\u00f3b konsumpcjonizmu.</p>", "komentarz_2": "<p>U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra eliminuje z naszego \\u017cycia konsumpcjonizm jako warto\\u015b\\u0107. Jakakolwiek forma posiadania Ziemi, oparta o struktury w\\u0142adzy cz\\u0142owieka nad cz\\u0142owiekiem, lub jednych ludzi nad drugimi, z naszego punktu widzenia eliminuje ide\\u0119 przestrzeni, gdzie ka\\u017cdy mo\\u017ce by\\u0107 r\\u00f3wny, zar\\u00f3wno wobec miejsca w kt\\u00f3rym \\u017cyje, jak i wobec innych ludzi.</p>", "komentarz_3": "<p>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. Jeste\\u015bmy dzie\\u0107mi tej Planety i mo\\u017cemy bawi\\u0107 si\\u0119 w co chcemy i z kim chcemy, a kto chce mo\\u017ce bawi\\u0107 si\\u0119 z nami. Dlatego \\u017ceby unikn\\u0105\\u0107 przypadkowo\\u015bci ludzi bior\\u0105cych udzia\\u0142 we wsp\\u00f3lnym prze\\u017cywaniu, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 wzi\\u0105\\u0107 udzia\\u0142 w tworzeniu rodziny opartej na plemiennym kr\\u0119gu. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam na przeciw przeszkodom i problemom, \\u0142atwiej jest pokonywa\\u0107 je razem. Nie mo\\u017cna ju\\u017c zmieni\\u0107 przesz\\u0142o\\u015bci, jednak po tylu latach eko i ludob\\u00f3jstwa, nadszed\\u0142 ju\\u017c czas, by zacz\\u0105\\u0107 spe\\u0142nia\\u0107 marzenia. Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.</p>", "podsumowanie": "<p>Tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych. Ruch Wolnej Ziemi jest inicjatyw\\u0105 spo\\u0142eczn\\u0105 skupion\\u0105 na wdra\\u017caniu w \\u017cycie sprawdzonych rozwi\\u0105za\\u0144 prawnych i organizacyjnych w celu \\u201euwalniania Ziemi\\u201d spod w\\u0142asno\\u015bci prywatnej. Zale\\u017cy nam na tworzeniu i rozwoju intencjonalnych spo\\u0142eczno\\u015bci wiejskich (tzw. ekowiosek, ekoosad), w kt\\u00f3rych decyzje dotycz\\u0105ce wszystkich podejmowane s\\u0105 wsp\\u00f3lnie (konsensus), i w kt\\u00f3rych my, ludzie, posiadamy r\\u00f3wne prawa zar\\u00f3wno wobec Ziemi oraz siebie nawzajem. Tworzymy w tym celu osoby prawne tj. fundacje lub stowarzyszenia. Uczestnikiem Ruchu mo\\u017ce by\\u0107 ka\\u017cda osoba, kt\\u00f3ra rozumie nasze za\\u0142o\\u017cenia i zgadza si\\u0119 z nimi. Ruch Wolnej Ziemi nie jest organizacj\\u0105 i nie prowadzi \\u017cadnej ewidencji przynale\\u017cno\\u015bci. Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144. Jednym z g\\u0142\\u00f3wnych za\\u0142o\\u017ce\\u0144 jest wsp\\u00f3lne decydowanie w sprawach, kt\\u00f3re dotycz\\u0105 Ruchu. Pozwala to miejscom w kt\\u00f3rych \\u017cyjemy, jak r\\u00f3wnie\\u017c nam wszystkim na rozw\\u00f3j i ewoluowanie zgodnie z jednog\\u0142o\\u015bnie ustalanym kierunkiem. Decyzje takie, mog\\u0105 zapada\\u0107 jedynie w kontakcie osobistym w kr\\u0119gu. Jedn\\u0105 z organizacji, kt\\u00f3re za\\u0142o\\u017cyli\\u015bmy, jest Zwi\\u0105zek Wolnej Ziemi. Oto jego podstawowe za\\u0142o\\u017cenia : . My, ludzie tworz\\u0105cy Zwi\\u0105zek Wolnej Ziemi, uznajemy si\\u0119 za opiekun\\u00f3w i stra\\u017cnik\\u00f3w Ziemi, a w szczeg\\u00f3lno\\u015bci teren\\u00f3w, na kt\\u00f3rych \\u017cyjemy. D\\u0105\\u017cymy do rozwoju \\u015bwiadomo\\u015bci poprzez odtworzenie naturalnej relacji cz\\u0142owieka z nasz\\u0105 Planet\\u0105. Przyjmujemy, \\u017ce b\\u0119d\\u0105c r\\u00f3wnymi wobec Ziemi, na kt\\u00f3rej \\u017cyjemy, jeste\\u015bmy r\\u00f3wnie\\u017c r\\u00f3wni wobec siebie i ca\\u0142ej Przyrody. O\\u015bwiadczamy, \\u017ce Ziemia i ca\\u0142e \\u017cycie na Ziemi stanowi\\u0105 dla nas najwi\\u0119ksz\\u0105 warto\\u015b\\u0107 przez sam fakt swego istnienia. Uznajemy, \\u017ce naszym zadaniem jest ochrona Ziemi, naszego Domu i Miejsca w Kosmosie. Uznajemy, \\u017ce to my, ludzie, nale\\u017cymy do Ziemi, a nie odwrotnie. Uznajemy, \\u017ce Ziemia ma takie samo prawo do istnienia i uszanowania jej bytu, jakie maj\\u0105 wszyscy ludzie. Pragniemy tworzy\\u0107 wsp\\u00f3lnoty, w kt\\u00f3rych b\\u0119dziemy razem \\u017cyli, wsp\\u00f3\\u0142pracowali ze sob\\u0105 i uczyli si\\u0119 od siebie dla dobra nas samych i ca\\u0142ego \\u017bycia. Pragniemy, aby wszyscy ludzie \\u017cyli w harmonii ze sob\\u0105 i z ca\\u0142\\u0105 Przyrod\\u0105, szanuj\\u0105c i chroni\\u0105c Ziemi\\u0119. Wszystkie decyzje podejmujemy przez consensus (jednog\\u0142o\\u015bnie), czyli sposoby \\u017cycia, ochrony ziemi i dalsze dzia\\u0142ania na terenie fundacji podlegaj\\u0105 decyzji kr\\u0119gu. Dzi\\u0119ki temu ka\\u017cdy, kto pojawi si\\u0119 u nas, b\\u0119dzie m\\u00f3g\\u0142 mie\\u0107 poczucie, \\u017ce ziemia jest naszym wsp\\u00f3lnym domem i razem mo\\u017cemy w tym uczestniczy\\u0107.</p>"}	\N	7	2
22	f	2021-02-22 14:37:38.62403+01	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "ad7d4a29-49cc-4bbc-9cd5-a8fbeaaa3b04", "locale": 1, "title": "Misja", "draft_title": "Misja", "slug": "misja", "content_type": 42, "live": true, "has_unpublished_changes": false, "url_path": "/home/misja/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:05:29.731Z", "last_published_at": "2021-02-22T13:36:30.042Z", "latest_revision_created_at": "2021-02-22T13:36:29.970Z", "live_revision": 21, "alias_of": null, "opis": "<h2>MISJA<br/><br/></h2>", "objasnienie": "<p>Chcemy zmienia\\u0107 \\u017cycie i wci\\u0105\\u017c zmieniamy \\u015bwiat. Ka\\u017cdy z nas<br/> chce si\\u0119 tym zaj\\u0105\\u0107 jak najlepiej. Problem w tym, \\u017ce wci\\u0105\\u017c nie wiemy co to znaczy lepiej.<br/><br/> Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka. Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/><br/>Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i <br/>panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie. W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci. Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy. To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia. \\u015awiat konsumpcji doprowadzi\\u0142 nawet do sytuacji, gdzie mo\\u017cemy konsumowa\\u0107 czas i \\u017cycie innych ludzi wyznaczaj\\u0105c za nie cen\\u0119. Demokracja daje r\\u00f3wne prawa r\\u00f3wnie\\u017c g\\u0142upocie, je\\u015bli tylko da si\\u0119 j\\u0105 sprzeda\\u0107. Kiedy od dziecka motywacj\\u0119 wyznaczaj\\u0105 dwa bieguny: kara i nagroda, zysk i strata, kupno i sprzeda\\u017c tworzymy \\u015bwiat rywalizacji i kariery, ludzi coraz bardziej sobie obcych i podatnych na w\\u0142adz\\u0119. Jest to upadek poni\\u017cej normalno\\u015bci, a prawda o tym mo\\u017ce wystraszy\\u0107. Dlatego boimy si\\u0119 jej i ukrywamy swoj\\u0105 natur\\u0119 wci\\u0105\\u017c nie mog\\u0105c jej odkry\\u0107. Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Kiedy przemieniamy stare systemy warto\\u015bciowania w nowe, nie potrzebujemy ju\\u017c buntu. Nasze dzia\\u0142ania wywodz\\u0105 si\\u0119 z ekofilozofii i g\\u0142\\u0119bokiej ekologii oraz kultur plemiennych, gdzie Ziemia nigdy nie by\\u0142a w\\u0142asno\\u015bci\\u0105 cz\\u0142owieka. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 w spos\\u00f3b naturalny r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce uczestniczy w tym na r\\u00f3wni ze wszystkimi. Na tym poziomie r\\u00f3\\u017cnice miedzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny.</p>", "komentarz_1": "<p>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Zak\\u0142adaj\\u0105c, \\u017ce dane miejsce ma w\\u0142a\\u015bciciela, to w\\u0142a\\u015bnie owy w\\u0142a\\u015bciciel mo\\u017ce zawsze zdecydowa\\u0107 ostatecznie i to jego decyzje s\\u0105 egzekwowane przez oficjalne i funkcjonuj\\u0105ce we wsp\\u00f3\\u0142czesnym spo\\u0142ecze\\u0144stwie prawo. W zwi\\u0105zku z tym, wszyscy inni ludzie znajduj\\u0105cy si\\u0119 w tym w\\u0142a\\u015bnie miejscu, niestety podlegaj\\u0105 decyzj\\u0105 jednej osoby: w\\u0142a\\u015bciciela. Ta sama w\\u0142adza, jest przekazywana z pokolenia na pokolenie za pomoc\\u0105 tak prostego narz\\u0119dzia jak dziedziczenie maj\\u0105tku -czyli posiadania terytorium. Jedn\\u0105 z g\\u0142\\u00f3wnych przyczyn powstania Ruchu Wolnej Ziemi jest przerwanie \\u0142a\\u0144cucha dziedziczenia i przekazywania sobie w\\u0142adzy i tym samym nap\\u0119dzania w ten spos\\u00f3b konsumpcjonizmu.</p>", "komentarz_2": "<p>U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra eliminuje z naszego \\u017cycia konsumpcjonizm jako warto\\u015b\\u0107. Jakakolwiek forma posiadania Ziemi, oparta o struktury w\\u0142adzy cz\\u0142owieka nad cz\\u0142owiekiem, lub jednych ludzi nad drugimi, z naszego punktu widzenia eliminuje ide\\u0119 przestrzeni, gdzie ka\\u017cdy mo\\u017ce by\\u0107 r\\u00f3wny, zar\\u00f3wno wobec miejsca w kt\\u00f3rym \\u017cyje, jak i wobec innych ludzi.</p>", "komentarz_3": "<p>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. Jeste\\u015bmy dzie\\u0107mi tej Planety i mo\\u017cemy bawi\\u0107 si\\u0119 w co chcemy i z kim chcemy, a kto chce mo\\u017ce bawi\\u0107 si\\u0119 z nami. Dlatego \\u017ceby unikn\\u0105\\u0107 przypadkowo\\u015bci ludzi bior\\u0105cych udzia\\u0142 we wsp\\u00f3lnym prze\\u017cywaniu, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 wzi\\u0105\\u0107 udzia\\u0142 w tworzeniu rodziny opartej na plemiennym kr\\u0119gu. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam na przeciw przeszkodom i problemom, \\u0142atwiej jest pokonywa\\u0107 je razem. Nie mo\\u017cna ju\\u017c zmieni\\u0107 przesz\\u0142o\\u015bci, jednak po tylu latach eko i ludob\\u00f3jstwa, nadszed\\u0142 ju\\u017c czas, by zacz\\u0105\\u0107 spe\\u0142nia\\u0107 marzenia. Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.</p>", "podsumowanie": "<p>Tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych. Ruch Wolnej Ziemi jest inicjatyw\\u0105 spo\\u0142eczn\\u0105 skupion\\u0105 na wdra\\u017caniu w \\u017cycie sprawdzonych rozwi\\u0105za\\u0144 prawnych i organizacyjnych w celu \\u201euwalniania Ziemi\\u201d spod w\\u0142asno\\u015bci prywatnej. Zale\\u017cy nam na tworzeniu i rozwoju intencjonalnych spo\\u0142eczno\\u015bci wiejskich (tzw. ekowiosek, ekoosad), w kt\\u00f3rych decyzje dotycz\\u0105ce wszystkich podejmowane s\\u0105 wsp\\u00f3lnie (konsensus), i w kt\\u00f3rych my, ludzie, posiadamy r\\u00f3wne prawa zar\\u00f3wno wobec Ziemi oraz siebie nawzajem. Tworzymy w tym celu osoby prawne tj. fundacje lub stowarzyszenia. Uczestnikiem Ruchu mo\\u017ce by\\u0107 ka\\u017cda osoba, kt\\u00f3ra rozumie nasze za\\u0142o\\u017cenia i zgadza si\\u0119 z nimi. Ruch Wolnej Ziemi nie jest organizacj\\u0105 i nie prowadzi \\u017cadnej ewidencji przynale\\u017cno\\u015bci. Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144. Jednym z g\\u0142\\u00f3wnych za\\u0142o\\u017ce\\u0144 jest wsp\\u00f3lne decydowanie w sprawach, kt\\u00f3re dotycz\\u0105 Ruchu. Pozwala to miejscom w kt\\u00f3rych \\u017cyjemy, jak r\\u00f3wnie\\u017c nam wszystkim na rozw\\u00f3j i ewoluowanie zgodnie z jednog\\u0142o\\u015bnie ustalanym kierunkiem. Decyzje takie, mog\\u0105 zapada\\u0107 jedynie w kontakcie osobistym w kr\\u0119gu. Jedn\\u0105 z organizacji, kt\\u00f3re za\\u0142o\\u017cyli\\u015bmy, jest Zwi\\u0105zek Wolnej Ziemi. Oto jego podstawowe za\\u0142o\\u017cenia : . My, ludzie tworz\\u0105cy Zwi\\u0105zek Wolnej Ziemi, uznajemy si\\u0119 za opiekun\\u00f3w i stra\\u017cnik\\u00f3w Ziemi, a w szczeg\\u00f3lno\\u015bci teren\\u00f3w, na kt\\u00f3rych \\u017cyjemy. D\\u0105\\u017cymy do rozwoju \\u015bwiadomo\\u015bci poprzez odtworzenie naturalnej relacji cz\\u0142owieka z nasz\\u0105 Planet\\u0105. Przyjmujemy, \\u017ce b\\u0119d\\u0105c r\\u00f3wnymi wobec Ziemi, na kt\\u00f3rej \\u017cyjemy, jeste\\u015bmy r\\u00f3wnie\\u017c r\\u00f3wni wobec siebie i ca\\u0142ej Przyrody. O\\u015bwiadczamy, \\u017ce Ziemia i ca\\u0142e \\u017cycie na Ziemi stanowi\\u0105 dla nas najwi\\u0119ksz\\u0105 warto\\u015b\\u0107 przez sam fakt swego istnienia. Uznajemy, \\u017ce naszym zadaniem jest ochrona Ziemi, naszego Domu i Miejsca w Kosmosie. Uznajemy, \\u017ce to my, ludzie, nale\\u017cymy do Ziemi, a nie odwrotnie. Uznajemy, \\u017ce Ziemia ma takie samo prawo do istnienia i uszanowania jej bytu, jakie maj\\u0105 wszyscy ludzie. Pragniemy tworzy\\u0107 wsp\\u00f3lnoty, w kt\\u00f3rych b\\u0119dziemy razem \\u017cyli, wsp\\u00f3\\u0142pracowali ze sob\\u0105 i uczyli si\\u0119 od siebie dla dobra nas samych i ca\\u0142ego \\u017bycia. Pragniemy, aby wszyscy ludzie \\u017cyli w harmonii ze sob\\u0105 i z ca\\u0142\\u0105 Przyrod\\u0105, szanuj\\u0105c i chroni\\u0105c Ziemi\\u0119. Wszystkie decyzje podejmujemy przez consensus (jednog\\u0142o\\u015bnie), czyli sposoby \\u017cycia, ochrony ziemi i dalsze dzia\\u0142ania na terenie fundacji podlegaj\\u0105 decyzji kr\\u0119gu. Dzi\\u0119ki temu ka\\u017cdy, kto pojawi si\\u0119 u nas, b\\u0119dzie m\\u00f3g\\u0142 mie\\u0107 poczucie, \\u017ce ziemia jest naszym wsp\\u00f3lnym domem i razem mo\\u017cemy w tym uczestniczy\\u0107.</p>"}	\N	7	2
15	f	2021-02-22 11:17:40.051137+01	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "9337acdf-56ac-42a5-aacb-5ea59c83aa6f", "locale": 1, "title": "Stodo\\u0142a Wymy\\u015blacz", "draft_title": "Stodo\\u0142a Wymy\\u015blacz", "slug": "stodo\\u0142a-wymy\\u015blacz", "content_type": 43, "live": true, "has_unpublished_changes": false, "url_path": "/home/stodo\\u0142a-wymy\\u015blacz/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:30:25.139Z", "last_published_at": "2021-02-21T01:30:25.139Z", "latest_revision_created_at": "2021-02-21T01:30:25.103Z", "live_revision": 13, "alias_of": null, "opis": "<h2><br/><br/>Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</h2>", "objasnienie": "<p>Stodo\\u0142a Wymy\\u015blacz jest na obrze\\u017cach Lubli\\u0144ca, blisko trasy nr 11 \\u0142\\u0105cz\\u0105cej Katowice z Poznaniem. Nasze miasteczko le\\u017cy 30 km na zach\\u00f3d od Cz\\u0119stochowy. Oddzielone jest od aglomeracji \\u015bl\\u0105skiej du\\u017cym kompleksem las\\u00f3w, kt\\u00f3ry rozpoczyna si\\u0119 kilkaset metr\\u00f3w od naszego budynku. Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.</p>", "komentarz": "", "zaproszenie": "<h2>Zasady/Zwyczaje (zaproszenie)</h2><p>\\u017beby unikn\\u0105\\u0107 \\u201cprzypadkowo\\u015bci\\u201d ludzi bior\\u0105cych udzia\\u0142 w naszym projekcie, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 z nami wsp\\u00f3\\u0142tworzy\\u0107 rodzin\\u0119 opart\\u0105 na plemiennym kr\\u0119gu. Mamy na uwadze stwarzanie mi\\u0119dzy nami relacji, w kt\\u00f3rej uczymy si\\u0119 nawzajem nie dla samej wiedzy, a dla harmonii ze sob\\u0105 i z ca\\u0142ym \\u017cyciem. Na tym poziomie r\\u00f3\\u017cnice mi\\u0119dzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam naprzeciw przeszkodom i problemom - \\u0142atwiej jest pokonywa\\u0107 je razem. U nas nikt nie jest u kogo\\u015b, wszyscy jeste\\u015bmy u siebie. Organizacja pozarz\\u0105dowa, gdzie zarz\\u0105d jest wy\\u0142\\u0105cznie w\\u0142adz\\u0105 wykonawcz\\u0105 jednog\\u0142o\\u015bnych decyzji daje nam tak\\u0105 mo\\u017cliwo\\u015b\\u0107 r\\u00f3wnie\\u017c na poziomie prawnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce uczestniczy w tym na r\\u00f3wni ze wszystkimi. Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107 mi\\u0119dzy sob\\u0105, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Wsp\\u00f3lnie nie uto\\u017csamiamy si\\u0119 z \\u017cadn\\u0105 religi\\u0105, ani jej nie tworzymy. Jest to koniecznym warunkiem na \\u015bcie\\u017cce \\u017cycia kt\\u00f3r\\u0105 idziemy, w taki spos\\u00f3b chcemy zachowa\\u0107 mo\\u017cliwo\\u015b\\u0107 kontynuacji tego kim jeste\\u015bmy jako ludzie tutaj na Ziemi. Nasz\\u0105 odpowiedzi\\u0105 jest utworzenie kr\\u0119gu, w kt\\u00f3rym mog\\u0105 uczestniczy\\u0107 wyznawcy wielu religii, jednak \\u017cadnej z nich nie stawiamy w centrum. Zdajemy sobie spraw\\u0119, \\u017ce wiara jest cz\\u0119\\u015bci\\u0105 anatomii naszych uczu\\u0107 i nadaje moc tworzenia wszystkiemu co jeste\\u015bmy w stanie uzna\\u0107 za prawdziwe. Kiedy nie jest w sprzeczno\\u015bci z naszym rozumieniem faktycznie staje si\\u0119 coraz bardziej skuteczna w kreowaniu rzeczywisto\\u015bci. \\u017beby to widzie\\u0107, nie potrzebujemy \\u017cadnych \\u201cpo\\u015brednik\\u00f3w\\u201d pomi\\u0119dzy cz\\u0142owiekiem a Tym wszystkim czego manifestacj\\u0105 jeste\\u015bmy. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami.</p>"}	\N	8	2
6	f	2021-02-07 15:24:43.009281+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-07T14:16:55.208Z", "latest_revision_created_at": "2021-02-07T14:16:55.140Z", "live_revision": 5, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>"}	\N	3	1
23	f	2021-02-22 15:23:56.349085+01	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "ad7d4a29-49cc-4bbc-9cd5-a8fbeaaa3b04", "locale": 1, "title": "Misja", "draft_title": "Misja", "slug": "misja", "content_type": 42, "live": true, "has_unpublished_changes": false, "url_path": "/home/misja/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:05:29.731Z", "last_published_at": "2021-02-22T13:37:38.737Z", "latest_revision_created_at": "2021-02-22T13:37:38.624Z", "live_revision": 22, "alias_of": null, "opis": "<h2>MISJA<br/><br/></h2>", "objasnienie": "<p>     Chcemy zmienia\\u0107 \\u017cycie i wci\\u0105\\u017c zmieniamy \\u015bwiat. Ka\\u017cdy z nas pragnie si\\u0119 tym zaj\\u0105\\u0107 jak najlepiej. Problem w tym, \\u017ce wci\\u0105\\u017c nie wiemy co to znaczy lepiej. Ewolucja dotar\\u0142a ju\\u017c do punktu, gdzie zmiana musi dotyczy\\u0107 nas samych. \\u015awiadomo\\u015b\\u0107, kt\\u00f3r\\u0105 zyskali\\u015bmy w ci\\u0105gu wiek\\u00f3w, pokazuje nam wyra\\u017anie, \\u017ce nie mo\\u017cemy ju\\u017c planowa\\u0107 i dzia\\u0142a\\u0107 w zakresie jednego pokolenia, a tym bardziej jednej osoby. <br/>Nasza organizacja ma na celu stwarzanie godnych warunk\\u00f3w do \\u017cycia i do samostanowienia o nim. Chcemy zmienia\\u0107 \\u015bwiat i relacje mi\\u0119dzy lud\\u017ami w nim panuj\\u0105ce. Dlatego do naszych projekt\\u00f3w, zapraszamy ludzi \\u015bwiadomych zagro\\u017cenia, jakie niesie obecny kierunek rozwoju cywilizacji. <br/><br/> Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka. Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy te\\u017c pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci. <br/><br/>Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy. To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia. \\u015awiat konsumpcji doprowadzi\\u0142 nawet do sytuacji, gdzie mo\\u017cemy konsumowa\\u0107 czas i \\u017cycie innych ludzi wyznaczaj\\u0105c za nie cen\\u0119. Demokracja daje r\\u00f3wne prawa r\\u00f3wnie\\u017c g\\u0142upocie, je\\u015bli tylko da si\\u0119 j\\u0105 sprzeda\\u0107. Kiedy od dziecka motywacj\\u0119 wyznaczaj\\u0105 dwa bieguny: kara i nagroda, zysk i strata, kupno i sprzeda\\u017c tworzymy \\u015bwiat rywalizacji i kariery, ludzi coraz bardziej sobie obcych i podatnych na w\\u0142adz\\u0119. Jest to upadek poni\\u017cej normalno\\u015bci, a prawda o tym mo\\u017ce wystraszy\\u0107. Dlatego boimy si\\u0119 jej i ukrywamy swoj\\u0105 natur\\u0119 wci\\u0105\\u017c nie mog\\u0105c jej odkry\\u0107. Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Kiedy przemieniamy stare systemy warto\\u015bciowania w nowe, nie potrzebujemy ju\\u017c buntu. Nasze dzia\\u0142ania wywodz\\u0105 si\\u0119 z ekofilozofii i g\\u0142\\u0119bokiej ekologii oraz kultur plemiennych, gdzie Ziemia nigdy nie by\\u0142a w\\u0142asno\\u015bci\\u0105 cz\\u0142owieka. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 w spos\\u00f3b naturalny r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce uczestniczy w tym na r\\u00f3wni ze wszystkimi. Na tym poziomie r\\u00f3\\u017cnice miedzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny.</p>", "komentarz_1": "<p>U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra eliminuje z naszego \\u017cycia konsumpcjonizm jako warto\\u015b\\u0107. Jakakolwiek forma posiadania Ziemi, oparta o struktury w\\u0142adzy cz\\u0142owieka nad cz\\u0142owiekiem, lub jednych ludzi nad drugimi, z naszego punktu widzenia eliminuje ide\\u0119 przestrzeni, gdzie ka\\u017cdy mo\\u017ce by\\u0107 r\\u00f3wny, zar\\u00f3wno wobec miejsca w kt\\u00f3rym \\u017cyje, jak i wobec innych ludzi.</p>", "komentarz_2": "", "komentarz_3": "", "podsumowanie": ""}	\N	7	2
24	f	2021-02-22 15:25:47.975966+01	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "ad7d4a29-49cc-4bbc-9cd5-a8fbeaaa3b04", "locale": 1, "title": "Misja", "draft_title": "Misja", "slug": "misja", "content_type": 42, "live": true, "has_unpublished_changes": false, "url_path": "/home/misja/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:05:29.731Z", "last_published_at": "2021-02-22T14:23:56.410Z", "latest_revision_created_at": "2021-02-22T14:23:56.349Z", "live_revision": 23, "alias_of": null, "opis": "<h2>MISJA<br/><br/></h2>", "objasnienie": "<p>Chcemy zmienia\\u0107 \\u017cycie i wci\\u0105\\u017c zmieniamy \\u015bwiat. Ka\\u017cdy z nas pragnie si\\u0119 tym zaj\\u0105\\u0107 jak najlepiej. Problem w tym, \\u017ce wci\\u0105\\u017c nie wiemy co to znaczy lepiej. Ewolucja dotar\\u0142a ju\\u017c do punktu, gdzie zmiana musi dotyczy\\u0107 nas samych. \\u015awiadomo\\u015b\\u0107, kt\\u00f3r\\u0105 zyskali\\u015bmy w ci\\u0105gu wiek\\u00f3w, pokazuje nam wyra\\u017anie, \\u017ce nie mo\\u017cemy ju\\u017c planowa\\u0107 i dzia\\u0142a\\u0107 w zakresie jednego pokolenia, a tym bardziej jednej osoby.<br/> Nasza organizacja ma na celu stwarzanie godnych warunk\\u00f3w do \\u017cycia i do samostanowienia o nim. Chcemy zmienia\\u0107 \\u015bwiat i relacje mi\\u0119dzy lud\\u017ami w nim panuj\\u0105ce. Dlatego do naszych projekt\\u00f3w, zapraszamy ludzi \\u015bwiadomych zagro\\u017cenia, jakie niesie obecny kierunek rozwoju cywilizacji.<br/><br/> Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka. Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy te\\u017c pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci.<br/><br/> Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy. To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia. \\u015awiat konsumpcji doprowadzi\\u0142 nawet do sytuacji, gdzie mo\\u017cemy konsumowa\\u0107 czas i \\u017cycie innych ludzi wyznaczaj\\u0105c za nie cen\\u0119. Demokracja daje r\\u00f3wne prawa r\\u00f3wnie\\u017c g\\u0142upocie, je\\u015bli tylko da si\\u0119 j\\u0105 sprzeda\\u0107. Kiedy od dziecka motywacj\\u0119 wyznaczaj\\u0105 dwa bieguny: kara i nagroda, zysk i strata, kupno i sprzeda\\u017c tworzymy \\u015bwiat rywalizacji i kariery, ludzi coraz bardziej sobie obcych i podatnych na w\\u0142adz\\u0119. Jest to upadek poni\\u017cej normalno\\u015bci, a prawda o tym mo\\u017ce wystraszy\\u0107. Dlatego boimy si\\u0119 jej i ukrywamy swoj\\u0105 natur\\u0119 wci\\u0105\\u017c nie mog\\u0105c jej odkry\\u0107. Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Kiedy przemieniamy stare systemy warto\\u015bciowania w nowe, nie potrzebujemy ju\\u017c buntu. Nasze dzia\\u0142ania wywodz\\u0105 si\\u0119 z ekofilozofii i g\\u0142\\u0119bokiej ekologii oraz kultur plemiennych, gdzie Ziemia nigdy nie by\\u0142a w\\u0142asno\\u015bci\\u0105 cz\\u0142owieka. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 w spos\\u00f3b naturalny r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce uczestniczy w tym na r\\u00f3wni ze wszystkimi. Na tym poziomie r\\u00f3\\u017cnice miedzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny.<br/>U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. <br/>W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra eliminuje z naszego \\u017cycia konsumpcjonizm jako warto\\u015b\\u0107. Jakakolwiek forma posiadania Ziemi, oparta o struktury w\\u0142adzy cz\\u0142owieka nad cz\\u0142owiekiem, lub jednych ludzi nad drugimi, z naszego punktu widzenia eliminuje ide\\u0119 przestrzeni, gdzie ka\\u017cdy mo\\u017ce by\\u0107 r\\u00f3wny, zar\\u00f3wno wobec miejsca w kt\\u00f3rym \\u017cyje, jak i wobec innych ludzi.</p>", "komentarz_1": "", "komentarz_2": "", "komentarz_3": "", "podsumowanie": ""}	\N	7	2
25	f	2021-02-22 15:27:23.539327+01	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "ad7d4a29-49cc-4bbc-9cd5-a8fbeaaa3b04", "locale": 1, "title": "Misja", "draft_title": "Misja", "slug": "misja", "content_type": 42, "live": true, "has_unpublished_changes": false, "url_path": "/home/misja/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:05:29.731Z", "last_published_at": "2021-02-22T14:25:48.068Z", "latest_revision_created_at": "2021-02-22T14:25:47.975Z", "live_revision": 24, "alias_of": null, "opis": "<h2>MISJA<br/><br/></h2>", "objasnienie": "<p>Chcemy zmienia\\u0107 \\u017cycie i wci\\u0105\\u017c zmieniamy \\u015bwiat. Ka\\u017cdy z nas pragnie si\\u0119 tym zaj\\u0105\\u0107 jak najlepiej. Problem w tym, \\u017ce wci\\u0105\\u017c nie wiemy co to znaczy lepiej. Ewolucja dotar\\u0142a ju\\u017c do punktu, gdzie zmiana musi dotyczy\\u0107 nas samych. \\u015awiadomo\\u015b\\u0107, kt\\u00f3r\\u0105 zyskali\\u015bmy w ci\\u0105gu wiek\\u00f3w, pokazuje nam wyra\\u017anie, \\u017ce nie mo\\u017cemy ju\\u017c planowa\\u0107 i dzia\\u0142a\\u0107 w zakresie jednego pokolenia, a tym bardziej jednej osoby.<br/> Nasza organizacja ma na celu stwarzanie godnych warunk\\u00f3w do \\u017cycia i do samostanowienia o nim. Chcemy zmienia\\u0107 \\u015bwiat i relacje mi\\u0119dzy lud\\u017ami w nim panuj\\u0105ce. Dlatego do naszych projekt\\u00f3w, zapraszamy ludzi \\u015bwiadomych zagro\\u017cenia, jakie niesie obecny kierunek rozwoju cywilizacji.<br/><br/> Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka. Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy te\\u017c pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci.<br/><br/> Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy. To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia. \\u015awiat konsumpcji doprowadzi\\u0142 nawet do sytuacji, gdzie mo\\u017cemy konsumowa\\u0107 czas i \\u017cycie innych ludzi wyznaczaj\\u0105c za nie cen\\u0119. Demokracja daje r\\u00f3wne prawa r\\u00f3wnie\\u017c g\\u0142upocie, je\\u015bli tylko da si\\u0119 j\\u0105 sprzeda\\u0107. Kiedy od dziecka motywacj\\u0119 wyznaczaj\\u0105 dwa bieguny: kara i nagroda, zysk i strata, kupno i sprzeda\\u017c tworzymy \\u015bwiat rywalizacji i kariery, ludzi coraz bardziej sobie obcych i podatnych na w\\u0142adz\\u0119. Jest to upadek poni\\u017cej normalno\\u015bci, a prawda o tym mo\\u017ce wystraszy\\u0107. Dlatego boimy si\\u0119 jej i ukrywamy swoj\\u0105 natur\\u0119 wci\\u0105\\u017c nie mog\\u0105c jej odkry\\u0107. <br/><br/>Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Kiedy przemieniamy stare systemy warto\\u015bciowania w nowe, nie potrzebujemy ju\\u017c buntu. Nasze dzia\\u0142ania wywodz\\u0105 si\\u0119 z ekofilozofii i g\\u0142\\u0119bokiej ekologii oraz kultur plemiennych, gdzie Ziemia nigdy nie by\\u0142a w\\u0142asno\\u015bci\\u0105 cz\\u0142owieka. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 w spos\\u00f3b naturalny r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce uczestniczy w tym na r\\u00f3wni ze wszystkimi. Na tym poziomie r\\u00f3\\u017cnice miedzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny.<br/>U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie.<br/> W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra eliminuje z naszego \\u017cycia konsumpcjonizm jako warto\\u015b\\u0107. Jakakolwiek forma posiadania Ziemi, oparta o struktury w\\u0142adzy cz\\u0142owieka nad cz\\u0142owiekiem, lub jednych ludzi nad drugimi, z naszego punktu widzenia eliminuje ide\\u0119 przestrzeni, gdzie ka\\u017cdy mo\\u017ce by\\u0107 r\\u00f3wny, zar\\u00f3wno wobec miejsca w kt\\u00f3rym \\u017cyje, jak i wobec innych ludzi.</p>", "komentarz_1": "", "komentarz_2": "", "komentarz_3": "", "podsumowanie": ""}	\N	7	2
31	f	2021-02-24 03:29:53.745063+01	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "ad7d4a29-49cc-4bbc-9cd5-a8fbeaaa3b04", "locale": 1, "title": "Misja", "draft_title": "Misja", "slug": "misja", "content_type": 42, "live": true, "has_unpublished_changes": false, "url_path": "/home/misja/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:05:29.731Z", "last_published_at": "2021-02-22T18:38:54.092Z", "latest_revision_created_at": "2021-02-22T18:38:53.993Z", "live_revision": 30, "alias_of": null, "opis": "<h2>MISJA<br/><br/></h2>", "objasnienie": "<p>Ka\\u017cdy cz\\u0142owiek marzy o tym, by kszta\\u0142towa\\u0107 swoje \\u017cycie zgodnie z tym, co dla niego dobre. Jednak r\\u00f3\\u017cnorodno\\u015b\\u0107 pomys\\u0142\\u00f3w i rozwi\\u0105za\\u0144 na \\u015bwiecie, wci\\u0105\\u017c k\\u0142\\u00f3ci si\\u0119 ze sob\\u0105 i sobie zaprzecza. Mimo to, jako ludzie wci\\u0105\\u017c zmieniamy \\u015bwiat. Ka\\u017cdy z nas pragnie si\\u0119 tym zaj\\u0105\\u0107 jak najlepiej. Problem w tym, \\u017ce wci\\u0105\\u017c nie wiemy co to znaczy lepiej, a zw\\u0142aszcza lepiej dla ca\\u0142ego \\u017cycia na Ziemi, kt\\u00f3rego jeste\\u015bmy cz\\u0119\\u015bci\\u0105. <br/>Ewolucja dotar\\u0142a ju\\u017c do punktu, gdzie zmiana musi dotyczy\\u0107 nas samych. \\u015awiadomo\\u015b\\u0107, kt\\u00f3r\\u0105 zyskali\\u015bmy w ci\\u0105gu wiek\\u00f3w, pokazuje nam wyra\\u017anie, \\u017ce nie mo\\u017cemy ju\\u017c planowa\\u0107 i dzia\\u0142a\\u0107 w zakresie jednego pokolenia, a tym bardziej jednostkowo.<br/> Nasza organizacja ma na celu stwarzanie godnych warunk\\u00f3w do \\u017cycia i do samostanowienia o nim. Chcemy zmienia\\u0107 \\u015bwiat i relacje mi\\u0119dzy lud\\u017ami w nim panuj\\u0105ce. Dlatego do naszych projekt\\u00f3w, zapraszamy ludzi \\u015bwiadomych zagro\\u017cenia, jakie niesie obecny kierunek rozwoju cywilizacji.<br/><br/> Uwa\\u017camy, \\u017ce rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka. Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy te\\u017c pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci, a przede wszystkim stworzenie podstaw do tego, by ka\\u017cdy m\\u00f3g\\u0142 mie\\u0107 r\\u00f3wne prawa do decydowania o swoim \\u017cyciu. <br/><br/> Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy. To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia. \\u015awiat konsumpcji doprowadzi\\u0142 nawet do sytuacji, gdzie mo\\u017cemy konsumowa\\u0107 czas i \\u017cycie innych ludzi wyznaczaj\\u0105c za nie cen\\u0119. Demokracja daje r\\u00f3wne prawa r\\u00f3wnie\\u017c g\\u0142upocie, je\\u015bli tylko da si\\u0119 j\\u0105 sprzeda\\u0107. Kiedy od dziecka motywacj\\u0119 wyznaczaj\\u0105 dwa bieguny: kara i nagroda, zysk i strata, kupno i sprzeda\\u017c, tworzymy \\u015bwiat rywalizacji i kariery, ludzi coraz bardziej sobie obcych i podatnych na w\\u0142adz\\u0119. Jest to upadek poni\\u017cej normalno\\u015bci, a prawda o tym mo\\u017ce wystraszy\\u0107. Dlatego boimy si\\u0119 jej i ukrywamy swoj\\u0105 natur\\u0119 wci\\u0105\\u017c nie mog\\u0105c jej odkry\\u0107.<br/><br/> Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Kiedy przemieniamy stare systemy warto\\u015bciowania w nowe, nie potrzebujemy ju\\u017c buntu. Nasze dzia\\u0142ania wywodz\\u0105 si\\u0119 z ekofilozofii i g\\u0142\\u0119bokiej ekologii oraz kultur plemiennych, gdzie Ziemia nigdy nie by\\u0142a w\\u0142asno\\u015bci\\u0105 cz\\u0142owieka. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 w spos\\u00f3b naturalny r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce uczestniczy w tym na r\\u00f3wnych prawach ze wszystkimi. Na tym poziomie r\\u00f3\\u017cnice miedzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny.<br/>U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie.<br/> W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra eliminuje z naszego \\u017cycia konsumpcjonizm jako warto\\u015b\\u0107. Jakakolwiek forma posiadania Ziemi, oparta o struktury w\\u0142adzy cz\\u0142owieka nad cz\\u0142owiekiem, lub jednych ludzi nad drugimi, z naszego punktu widzenia eliminuje ide\\u0119 przestrzeni, gdzie ka\\u017cdy mo\\u017ce by\\u0107 r\\u00f3wny, zar\\u00f3wno wobec miejsca w kt\\u00f3rym \\u017cyje, jak i wobec innych ludzi.</p>", "komentarz_1": "", "komentarz_2": "", "komentarz_3": "", "podsumowanie": ""}	\N	7	2
16	f	2021-02-22 11:20:07.354089+01	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "9337acdf-56ac-42a5-aacb-5ea59c83aa6f", "locale": 1, "title": "Stodo\\u0142a Wymy\\u015blacz", "draft_title": "Stodo\\u0142a Wymy\\u015blacz", "slug": "stodo\\u0142a-wymy\\u015blacz", "content_type": 43, "live": true, "has_unpublished_changes": false, "url_path": "/home/stodo\\u0142a-wymy\\u015blacz/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:30:25.139Z", "last_published_at": "2021-02-22T10:17:40.167Z", "latest_revision_created_at": "2021-02-22T10:17:40.051Z", "live_revision": 15, "alias_of": null, "opis": "<h2><br/><br/>Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.<br/><br/></h2>", "objasnienie": "<p>Stodo\\u0142a Wymy\\u015blacz jest na obrze\\u017cach Lubli\\u0144ca, blisko trasy nr 11 \\u0142\\u0105cz\\u0105cej Katowice z Poznaniem. Nasze miasteczko le\\u017cy 30 km na zach\\u00f3d od Cz\\u0119stochowy. Oddzielone jest od aglomeracji \\u015bl\\u0105skiej du\\u017cym kompleksem las\\u00f3w, kt\\u00f3ry rozpoczyna si\\u0119 kilkaset metr\\u00f3w od naszego budynku. Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.</p>", "komentarz": "", "zaproszenie": "<h2>Nasze zwyczaje<br/> -zaproszenie<br/><br/></h2><p>\\u017beby unikn\\u0105\\u0107 \\u201cprzypadkowo\\u015bci\\u201d ludzi bior\\u0105cych udzia\\u0142 w naszym projekcie, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 z nami wsp\\u00f3\\u0142tworzy\\u0107 rodzin\\u0119 opart\\u0105 na plemiennym kr\\u0119gu. Mamy na uwadze stwarzanie mi\\u0119dzy nami relacji, w kt\\u00f3rej uczymy si\\u0119 nawzajem nie dla samej wiedzy, a dla harmonii ze sob\\u0105 i z ca\\u0142ym \\u017cyciem. Na tym poziomie r\\u00f3\\u017cnice mi\\u0119dzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam naprzeciw przeszkodom i problemom - \\u0142atwiej jest pokonywa\\u0107 je razem. U nas nikt nie jest u kogo\\u015b, wszyscy jeste\\u015bmy u siebie. Organizacja pozarz\\u0105dowa, gdzie zarz\\u0105d jest wy\\u0142\\u0105cznie w\\u0142adz\\u0105 wykonawcz\\u0105 jednog\\u0142o\\u015bnych decyzji daje nam tak\\u0105 mo\\u017cliwo\\u015b\\u0107 r\\u00f3wnie\\u017c na poziomie prawnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce uczestniczy w tym na r\\u00f3wni ze wszystkimi. Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107 mi\\u0119dzy sob\\u0105, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Wsp\\u00f3lnie nie uto\\u017csamiamy si\\u0119 z \\u017cadn\\u0105 religi\\u0105, ani jej nie tworzymy. Jest to koniecznym warunkiem na \\u015bcie\\u017cce \\u017cycia kt\\u00f3r\\u0105 idziemy, w taki spos\\u00f3b chcemy zachowa\\u0107 mo\\u017cliwo\\u015b\\u0107 kontynuacji tego kim jeste\\u015bmy jako ludzie tutaj na Ziemi. Nasz\\u0105 odpowiedzi\\u0105 jest utworzenie kr\\u0119gu, w kt\\u00f3rym mog\\u0105 uczestniczy\\u0107 wyznawcy wielu religii, jednak \\u017cadnej z nich nie stawiamy w centrum. Zdajemy sobie spraw\\u0119, \\u017ce wiara jest cz\\u0119\\u015bci\\u0105 anatomii naszych uczu\\u0107 i nadaje moc tworzenia wszystkiemu co jeste\\u015bmy w stanie uzna\\u0107 za prawdziwe. Kiedy nie jest w sprzeczno\\u015bci z naszym rozumieniem faktycznie staje si\\u0119 coraz bardziej skuteczna w kreowaniu rzeczywisto\\u015bci. \\u017beby to widzie\\u0107, nie potrzebujemy \\u017cadnych \\u201cpo\\u015brednik\\u00f3w\\u201d pomi\\u0119dzy cz\\u0142owiekiem a Tym wszystkim czego manifestacj\\u0105 jeste\\u015bmy. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami.</p>"}	\N	8	2
17	f	2021-02-22 11:25:39.128472+01	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "9337acdf-56ac-42a5-aacb-5ea59c83aa6f", "locale": 1, "title": "Stodo\\u0142a Wymy\\u015blacz", "draft_title": "Stodo\\u0142a Wymy\\u015blacz", "slug": "stodo\\u0142a-wymy\\u015blacz", "content_type": 43, "live": true, "has_unpublished_changes": true, "url_path": "/home/stodo\\u0142a-wymy\\u015blacz/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:30:25.139Z", "last_published_at": "2021-02-22T10:17:40.167Z", "latest_revision_created_at": "2021-02-22T10:20:07.354Z", "live_revision": 15, "alias_of": null, "opis": "<h2><br/><br/>Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.<br/><br/></h2>", "objasnienie": "<p>Stodo\\u0142a Wymy\\u015blacz jest na obrze\\u017cach Lubli\\u0144ca, blisko trasy nr 11 \\u0142\\u0105cz\\u0105cej Katowice z Poznaniem. Nasze miasteczko le\\u017cy 30 km na zach\\u00f3d od Cz\\u0119stochowy. Oddzielone jest od aglomeracji \\u015bl\\u0105skiej du\\u017cym kompleksem las\\u00f3w, kt\\u00f3ry rozpoczyna si\\u0119 kilkaset metr\\u00f3w od naszego budynku. Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.</p>", "komentarz": "", "zaproszenie": "<h2>Nasze zwyczaje<br/> -zaproszenie<br/><br/></h2><p>\\u017beby unikn\\u0105\\u0107 \\u201cprzypadkowo\\u015bci\\u201d ludzi bior\\u0105cych udzia\\u0142 w naszym projekcie, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 z nami wsp\\u00f3\\u0142tworzy\\u0107 rodzin\\u0119 opart\\u0105 na plemiennym kr\\u0119gu. Mamy na uwadze stwarzanie mi\\u0119dzy nami relacji, w kt\\u00f3rej uczymy si\\u0119 nawzajem nie dla samej wiedzy, a dla harmonii ze sob\\u0105 i z ca\\u0142ym \\u017cyciem. Na tym poziomie r\\u00f3\\u017cnice mi\\u0119dzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam naprzeciw przeszkodom i problemom - \\u0142atwiej jest pokonywa\\u0107 je razem. U nas nikt nie jest u kogo\\u015b, wszyscy jeste\\u015bmy u siebie. <br/>Organizacja pozarz\\u0105dowa, gdzie zarz\\u0105d jest wy\\u0142\\u0105cznie w\\u0142adz\\u0105 wykonawcz\\u0105 jednog\\u0142o\\u015bnych decyzji daje nam tak\\u0105 mo\\u017cliwo\\u015b\\u0107 r\\u00f3wnie\\u017c na poziomie prawnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce jego udzia\\u0142 w tym przedsi\\u0119wzi\\u0119ciu jest na r\\u00f3wni ze wszystkimi. <br/>Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107 mi\\u0119dzy sob\\u0105, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Wsp\\u00f3lnie nie uto\\u017csamiamy si\\u0119 z \\u017cadn\\u0105 religi\\u0105, ani jej nie tworzymy. Jest to koniecznym warunkiem na \\u015bcie\\u017cce \\u017cycia kt\\u00f3r\\u0105 idziemy, w taki spos\\u00f3b chcemy zachowa\\u0107 mo\\u017cliwo\\u015b\\u0107 kontynuacji tego kim jeste\\u015bmy jako ludzie tutaj na Ziemi. Nasz\\u0105 odpowiedzi\\u0105 jest utworzenie kr\\u0119gu, w kt\\u00f3rym mog\\u0105 uczestniczy\\u0107 wyznawcy wielu religii, jednak \\u017cadnej z nich nie stawiamy w centrum. Zdajemy sobie spraw\\u0119, \\u017ce wiara jest cz\\u0119\\u015bci\\u0105 anatomii naszych uczu\\u0107 i nadaje moc tworzenia wszystkiemu, co jeste\\u015bmy w stanie uzna\\u0107 za prawdziwe. Kiedy nie jest w sprzeczno\\u015bci z naszym rozumieniem, faktycznie staje si\\u0119 coraz bardziej skuteczna w kreowaniu rzeczywisto\\u015bci. \\u017beby to widzie\\u0107, nie potrzebujemy \\u017cadnych \\u201cpo\\u015brednik\\u00f3w\\u201d pomi\\u0119dzy cz\\u0142owiekiem a tym wszystkim czego manifestacj\\u0105 jeste\\u015bmy. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami.</p>"}	\N	8	2
18	f	2021-02-22 11:29:16.733161+01	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "9337acdf-56ac-42a5-aacb-5ea59c83aa6f", "locale": 1, "title": "Stodo\\u0142a Wymy\\u015blacz", "draft_title": "Stodo\\u0142a Wymy\\u015blacz", "slug": "stodo\\u0142a-wymy\\u015blacz", "content_type": 43, "live": true, "has_unpublished_changes": true, "url_path": "/home/stodo\\u0142a-wymy\\u015blacz/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:30:25.139Z", "last_published_at": "2021-02-22T10:17:40.167Z", "latest_revision_created_at": "2021-02-22T10:25:39.128Z", "live_revision": 15, "alias_of": null, "opis": "<h2><br/><br/>Ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Bardzo wa\\u017cne dla nas jest r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.<br/><br/></h2>", "objasnienie": "<p>Stodo\\u0142a Wymy\\u015blacz jest na obrze\\u017cach Lubli\\u0144ca, blisko trasy nr 11 \\u0142\\u0105cz\\u0105cej Katowice z Poznaniem. Nasze miasteczko le\\u017cy 30 km na zach\\u00f3d od Cz\\u0119stochowy. Oddzielone jest od aglomeracji \\u015bl\\u0105skiej du\\u017cym kompleksem las\\u00f3w, kt\\u00f3ry rozpoczyna si\\u0119 kilkaset metr\\u00f3w od naszego budynku. Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.</p>", "komentarz": "", "zaproszenie": "<h2>Nasze zwyczaje<br/> -zaproszenie<br/><br/></h2><p>\\u017beby unikn\\u0105\\u0107 \\u201cprzypadkowo\\u015bci\\u201d ludzi bior\\u0105cych udzia\\u0142 w naszym projekcie, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 z nami wsp\\u00f3\\u0142tworzy\\u0107 rodzin\\u0119 opart\\u0105 na plemiennym kr\\u0119gu. Mamy na uwadze stwarzanie mi\\u0119dzy nami relacji, w kt\\u00f3rej uczymy si\\u0119 nawzajem nie dla samej wiedzy, a dla harmonii ze sob\\u0105 i z ca\\u0142ym \\u017cyciem. Na tym poziomie r\\u00f3\\u017cnice mi\\u0119dzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam naprzeciw przeszkodom i problemom - \\u0142atwiej jest pokonywa\\u0107 je razem. U nas nikt nie jest u kogo\\u015b, wszyscy jeste\\u015bmy u siebie.<br/> Organizacja pozarz\\u0105dowa, gdzie zarz\\u0105d jest wy\\u0142\\u0105cznie w\\u0142adz\\u0105 wykonawcz\\u0105 jednog\\u0142o\\u015bnych decyzji daje nam tak\\u0105 mo\\u017cliwo\\u015b\\u0107 r\\u00f3wnie\\u017c na poziomie prawnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce jego udzia\\u0142 w tym przedsi\\u0119wzi\\u0119ciu jest na r\\u00f3wni ze wszystkimi.<br/> Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107 mi\\u0119dzy sob\\u0105, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Wsp\\u00f3lnie nie uto\\u017csamiamy si\\u0119 z \\u017cadn\\u0105 religi\\u0105, ani jej nie tworzymy. Jest to koniecznym warunkiem na \\u015bcie\\u017cce \\u017cycia kt\\u00f3r\\u0105 idziemy, w taki spos\\u00f3b chcemy zachowa\\u0107 mo\\u017cliwo\\u015b\\u0107 kontynuacji tego kim jeste\\u015bmy jako ludzie tutaj na Ziemi. Nasz\\u0105 odpowiedzi\\u0105 jest utworzenie kr\\u0119gu, w kt\\u00f3rym mog\\u0105 uczestniczy\\u0107 wyznawcy wielu religii, jednak \\u017cadnej z nich nie stawiamy w centrum. Zdajemy sobie spraw\\u0119, \\u017ce wiara jest cz\\u0119\\u015bci\\u0105 anatomii naszych uczu\\u0107 i nadaje moc tworzenia wszystkiemu, co jeste\\u015bmy w stanie uzna\\u0107 za prawdziwe. Kiedy nie jest w sprzeczno\\u015bci z naszym rozumieniem, faktycznie staje si\\u0119 coraz bardziej skuteczna w kreowaniu rzeczywisto\\u015bci. \\u017beby to widzie\\u0107, nie potrzebujemy \\u017cadnych \\u201cpo\\u015brednik\\u00f3w\\u201d pomi\\u0119dzy cz\\u0142owiekiem a tym wszystkim czego manifestacj\\u0105 jeste\\u015bmy. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami.</p>"}	\N	8	2
19	f	2021-02-22 14:06:23.592599+01	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "9337acdf-56ac-42a5-aacb-5ea59c83aa6f", "locale": 1, "title": "Stodo\\u0142a Wymy\\u015blacz", "draft_title": "Stodo\\u0142a Wymy\\u015blacz", "slug": "stodo\\u0142a-wymy\\u015blacz", "content_type": 43, "live": true, "has_unpublished_changes": true, "url_path": "/home/stodo\\u0142a-wymy\\u015blacz/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:30:25.139Z", "last_published_at": "2021-02-22T10:17:40.167Z", "latest_revision_created_at": "2021-02-22T10:29:16.733Z", "live_revision": 15, "alias_of": null, "opis": "<h2><br/><br/>Ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Bardzo wa\\u017cne dla nas jest r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.<br/><br/></h2>", "objasnienie": "<p>Stodo\\u0142a Wymy\\u015blacz jest na obrze\\u017cach Lubli\\u0144ca, blisko trasy nr 11 \\u0142\\u0105cz\\u0105cej Katowice z Poznaniem. Nasze miasteczko le\\u017cy 30 km na zach\\u00f3d od Cz\\u0119stochowy. Oddzielone jest od aglomeracji \\u015bl\\u0105skiej du\\u017cym kompleksem las\\u00f3w, kt\\u00f3ry rozpoczyna si\\u0119 kilkaset metr\\u00f3w od naszego budynku. Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.</p>", "komentarz": "", "zaproszenie": "<h2>Nasze zwyczaje<br/> -zaproszenie<br/><br/></h2><p>\\u017beby unikn\\u0105\\u0107 \\u201cprzypadkowo\\u015bci\\u201d ludzi bior\\u0105cych udzia\\u0142 w naszym projekcie, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 z nami wsp\\u00f3\\u0142tworzy\\u0107 rodzin\\u0119 opart\\u0105 na plemiennym kr\\u0119gu. Mamy na uwadze stwarzanie mi\\u0119dzy nami relacji, w kt\\u00f3rej uczymy si\\u0119 nawzajem nie dla samej wiedzy, a dla harmonii ze sob\\u0105 i z ca\\u0142ym \\u017cyciem. Na tym poziomie r\\u00f3\\u017cnice mi\\u0119dzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam naprzeciw przeszkodom i problemom - \\u0142atwiej jest pokonywa\\u0107 je razem. U nas nikt nie jest u kogo\\u015b, wszyscy jeste\\u015bmy u siebie.<br/> Organizacja pozarz\\u0105dowa, gdzie zarz\\u0105d jest wy\\u0142\\u0105cznie w\\u0142adz\\u0105 wykonawcz\\u0105 jednog\\u0142o\\u015bnych decyzji daje nam tak\\u0105 mo\\u017cliwo\\u015b\\u0107 r\\u00f3wnie\\u017c na poziomie prawnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce jego udzia\\u0142 w tym przedsi\\u0119wzi\\u0119ciu jest na r\\u00f3wni ze wszystkimi.<br/> Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107 mi\\u0119dzy sob\\u0105, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Wsp\\u00f3lnie nie uto\\u017csamiamy si\\u0119 z \\u017cadn\\u0105 religi\\u0105, ani jej nie tworzymy. Jest to koniecznym warunkiem na \\u015bcie\\u017cce \\u017cycia kt\\u00f3r\\u0105 idziemy, w taki spos\\u00f3b chcemy zachowa\\u0107 mo\\u017cliwo\\u015b\\u0107 kontynuacji tego kim jeste\\u015bmy jako ludzie tutaj na Ziemi. Nasz\\u0105 odpowiedzi\\u0105 jest utworzenie kr\\u0119gu, w kt\\u00f3rym mog\\u0105 uczestniczy\\u0107 wyznawcy wielu religii, jednak \\u017cadnej z nich nie stawiamy w centrum. Zdajemy sobie spraw\\u0119, \\u017ce wiara jest cz\\u0119\\u015bci\\u0105 anatomii naszych uczu\\u0107 i nadaje moc tworzenia wszystkiemu, co jeste\\u015bmy w stanie uzna\\u0107 za prawdziwe. Kiedy nie jest w sprzeczno\\u015bci z naszym rozumieniem, faktycznie staje si\\u0119 coraz bardziej skuteczna w kreowaniu rzeczywisto\\u015bci. \\u017beby to widzie\\u0107, nie potrzebujemy \\u017cadnych \\u201cpo\\u015brednik\\u00f3w\\u201d pomi\\u0119dzy cz\\u0142owiekiem a tym wszystkim czego manifestacj\\u0105 jeste\\u015bmy. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami.</p>"}	\N	8	2
29	f	2021-02-22 15:45:00.502589+01	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "9337acdf-56ac-42a5-aacb-5ea59c83aa6f", "locale": 1, "title": "Stodo\\u0142a Wymy\\u015blacz", "draft_title": "Stodo\\u0142a Wymy\\u015blacz", "slug": "stodo\\u0142a-wymy\\u015blacz", "content_type": 43, "live": true, "has_unpublished_changes": false, "url_path": "/home/stodo\\u0142a-wymy\\u015blacz/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:30:25.139Z", "last_published_at": "2021-02-22T13:06:23.712Z", "latest_revision_created_at": "2021-02-22T13:06:23.592Z", "live_revision": 19, "alias_of": null, "opis": "<h2><br/><br/>Ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Bardzo wa\\u017cne dla nas jest r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.<br/><br/></h2>", "objasnienie": "<p>Stodo\\u0142a Wymy\\u015blacz jest na obrze\\u017cach Lubli\\u0144ca, blisko trasy nr 11 \\u0142\\u0105cz\\u0105cej Katowice z Poznaniem. Nasze miasteczko le\\u017cy 30 km na zach\\u00f3d od Cz\\u0119stochowy. Oddzielone jest od aglomeracji \\u015bl\\u0105skiej du\\u017cym kompleksem las\\u00f3w, kt\\u00f3ry rozpoczyna si\\u0119 kilkaset metr\\u00f3w od naszego budynku. Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.</p>", "komentarz": "<h2>Nasze zwyczaje<br/> -zaproszenie<br/><br/></h2><p>\\u017beby unikn\\u0105\\u0107 \\u201cprzypadkowo\\u015bci\\u201d ludzi bior\\u0105cych udzia\\u0142 w naszym projekcie, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 z nami wsp\\u00f3\\u0142tworzy\\u0107 rodzin\\u0119 opart\\u0105 na plemiennym kr\\u0119gu. Mamy na uwadze stwarzanie mi\\u0119dzy nami relacji, w kt\\u00f3rej uczymy si\\u0119 nawzajem nie dla samej wiedzy, a dla harmonii ze sob\\u0105 i z ca\\u0142ym \\u017cyciem. Na tym poziomie r\\u00f3\\u017cnice mi\\u0119dzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam naprzeciw przeszkodom i problemom - \\u0142atwiej jest pokonywa\\u0107 je razem. U nas nikt nie jest u kogo\\u015b, wszyscy jeste\\u015bmy u siebie.<br/> Organizacja pozarz\\u0105dowa, gdzie zarz\\u0105d jest wy\\u0142\\u0105cznie w\\u0142adz\\u0105 wykonawcz\\u0105 jednog\\u0142o\\u015bnych decyzji daje nam tak\\u0105 mo\\u017cliwo\\u015b\\u0107 r\\u00f3wnie\\u017c na poziomie prawnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce jego udzia\\u0142 w tym przedsi\\u0119wzi\\u0119ciu jest na r\\u00f3wni ze wszystkimi.<br/> Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107 mi\\u0119dzy sob\\u0105, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Wsp\\u00f3lnie nie uto\\u017csamiamy si\\u0119 z \\u017cadn\\u0105 religi\\u0105, ani jej nie tworzymy. Jest to koniecznym warunkiem na \\u015bcie\\u017cce \\u017cycia kt\\u00f3r\\u0105 idziemy, w taki spos\\u00f3b chcemy zachowa\\u0107 mo\\u017cliwo\\u015b\\u0107 kontynuacji tego kim jeste\\u015bmy jako ludzie tutaj na Ziemi. Nasz\\u0105 odpowiedzi\\u0105 jest utworzenie kr\\u0119gu, w kt\\u00f3rym mog\\u0105 uczestniczy\\u0107 wyznawcy wielu religii, jednak \\u017cadnej z nich nie stawiamy w centrum. Zdajemy sobie spraw\\u0119, \\u017ce wiara jest cz\\u0119\\u015bci\\u0105 anatomii naszych uczu\\u0107 i nadaje moc tworzenia wszystkiemu, co jeste\\u015bmy w stanie uzna\\u0107 za prawdziwe. Kiedy nie jest w sprzeczno\\u015bci z naszym rozumieniem, faktycznie staje si\\u0119 coraz bardziej skuteczna w kreowaniu rzeczywisto\\u015bci. \\u017beby to widzie\\u0107, nie potrzebujemy \\u017cadnych \\u201cpo\\u015brednik\\u00f3w\\u201d pomi\\u0119dzy cz\\u0142owiekiem a tym wszystkim czego manifestacj\\u0105 jeste\\u015bmy. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami.</p>", "zaproszenie": ""}	\N	8	2
33	f	2021-02-24 03:46:38.462543+01	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "9337acdf-56ac-42a5-aacb-5ea59c83aa6f", "locale": 1, "title": "Stodo\\u0142a Wymy\\u015blacz", "draft_title": "Stodo\\u0142a Wymy\\u015blacz", "slug": "stodo\\u0142a-wymy\\u015blacz", "content_type": 43, "live": true, "has_unpublished_changes": false, "url_path": "/home/stodo\\u0142a-wymy\\u015blacz/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:30:25.139Z", "last_published_at": "2021-02-22T14:45:00.566Z", "latest_revision_created_at": "2021-02-22T14:45:00.502Z", "live_revision": 29, "alias_of": null, "opis": "<h2><br/><br/>Nasza wsp\\u00f3lnota, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Bardzo wa\\u017cne dla nas jest r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.<br/><br/></h2>", "objasnienie": "<p>Stodo\\u0142a Wymy\\u015blacz jest na obrze\\u017cach Lubli\\u0144ca, blisko trasy nr 11 \\u0142\\u0105cz\\u0105cej Katowice z Poznaniem. Nasze miasteczko le\\u017cy 30 km na zach\\u00f3d od Cz\\u0119stochowy. Oddzielone jest od aglomeracji \\u015bl\\u0105skiej du\\u017cym kompleksem las\\u00f3w, kt\\u00f3ry rozpoczyna si\\u0119 kilkaset metr\\u00f3w od naszego budynku. Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.</p>", "komentarz": "<h2>Nasze zwyczaje<br/> -zaproszenie<br/><br/></h2><p>\\u017beby unikn\\u0105\\u0107 przypadkowo\\u015bci ludzi bior\\u0105cych udzia\\u0142 w naszym projekcie, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 z nami wsp\\u00f3\\u0142tworzy\\u0107 rodzin\\u0119 opart\\u0105 na plemiennym kr\\u0119gu. Mamy na uwadze stwarzanie mi\\u0119dzy nami relacji, w kt\\u00f3rej uczymy si\\u0119 nawzajem nie dla samej wiedzy, a dla harmonii ze sob\\u0105 i z ca\\u0142ym \\u017cyciem. Na tym poziomie r\\u00f3\\u017cnice mi\\u0119dzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam naprzeciw przeszkodom i problemom - \\u0142atwiej jest pokonywa\\u0107 je razem. U nas nikt nie jest u kogo\\u015b, wszyscy jeste\\u015bmy u siebie.<br/> Organizacja pozarz\\u0105dowa, gdzie zarz\\u0105d jest wy\\u0142\\u0105cznie w\\u0142adz\\u0105 wykonawcz\\u0105 jednog\\u0142o\\u015bnych decyzji daje nam tak\\u0105 mo\\u017cliwo\\u015b\\u0107 r\\u00f3wnie\\u017c na poziomie prawnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce jego udzia\\u0142 w tym przedsi\\u0119wzi\\u0119ciu jest na r\\u00f3wni ze wszystkimi.<br/> Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107 mi\\u0119dzy sob\\u0105, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Wsp\\u00f3lnie nie uto\\u017csamiamy si\\u0119 z \\u017cadn\\u0105 religi\\u0105, ani jej nie tworzymy. Jest to koniecznym warunkiem na \\u015bcie\\u017cce \\u017cycia kt\\u00f3r\\u0105 idziemy, w taki spos\\u00f3b chcemy zachowa\\u0107 mo\\u017cliwo\\u015b\\u0107 kontynuacji tego kim jeste\\u015bmy jako ludzie tutaj na Ziemi. Nasz\\u0105 odpowiedzi\\u0105 jest utworzenie kr\\u0119gu, w kt\\u00f3rym mog\\u0105 uczestniczy\\u0107 wyznawcy wielu religii, jednak \\u017cadnej z nich nie stawiamy w centrum. Zdajemy sobie spraw\\u0119, \\u017ce wiara jest cz\\u0119\\u015bci\\u0105 anatomii naszych uczu\\u0107 i nadaje moc tworzenia wszystkiemu, co jeste\\u015bmy w stanie uzna\\u0107 za prawdziwe. Kiedy nie jest w sprzeczno\\u015bci z naszym rozumieniem, faktycznie staje si\\u0119 coraz bardziej skuteczna w kreowaniu rzeczywisto\\u015bci. \\u017beby to widzie\\u0107, nie potrzebujemy \\u017cadnych \\u201cpo\\u015brednik\\u00f3w\\u201d pomi\\u0119dzy cz\\u0142owiekiem a tym wszystkim czego manifestacj\\u0105 jeste\\u015bmy. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami.</p>", "zaproszenie": ""}	\N	8	2
34	f	2021-02-24 03:58:03.990322+01	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "9337acdf-56ac-42a5-aacb-5ea59c83aa6f", "locale": 1, "title": "Stodo\\u0142a Wymy\\u015blacz", "draft_title": "Stodo\\u0142a Wymy\\u015blacz", "slug": "stodo\\u0142a-wymy\\u015blacz", "content_type": 43, "live": true, "has_unpublished_changes": false, "url_path": "/home/stodo\\u0142a-wymy\\u015blacz/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:30:25.139Z", "last_published_at": "2021-02-24T02:46:38.559Z", "latest_revision_created_at": "2021-02-24T02:46:38.462Z", "live_revision": 33, "alias_of": null, "opis": "<h2><br/><br/>Nasza wsp\\u00f3lnota, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Bardzo wa\\u017cne dla nas jest r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.<br/><br/></h2>", "objasnienie": "<p>Stodo\\u0142a Wymy\\u015blacz jest na obrze\\u017cach Lubli\\u0144ca, blisko trasy nr 11 \\u0142\\u0105cz\\u0105cej Katowice z Poznaniem. Nasze miasteczko le\\u017cy 30 km na zach\\u00f3d od Cz\\u0119stochowy. Oddzielone jest od aglomeracji \\u015bl\\u0105skiej du\\u017cym kompleksem las\\u00f3w, kt\\u00f3ry rozpoczyna si\\u0119 kilkaset metr\\u00f3w od naszego budynku.<br/> Jest to gospodarczy budynek z ceg\\u0142y na wapiennej zaprawie. Przebudowa na obiekt mieszkalny, polega na \\u0142\\u0105czeniu technologii nowoczesnych z tradycyjnymi.\\u00a0\\u00a0<br/><br/>Ogrzewanie ca\\u0142ego budynku b\\u0119dzie oparte o zbiornik akumulacyjny, a ciep\\u0142o rozprowadzane za pomoc\\u0105 wody do grzejnik\\u00f3w p\\u0142aszczyznowych zrobionych z gliny i kruszywa akumulacyjnego. Sam zbiornik b\\u0119dzie zasilany z dw\\u00f3ch podk\\u00f3w, baterii s\\u0142onecznych, solarnej i fotowoltaicznej.<br/>Budynek ma dwa pi\\u0119tra. Na parterze mie\\u015bci si\\u0119 sala wyk\\u0142adowa z ma\\u0142\\u0105 scen\\u0105, kuchnia, \\u0142azienka, biuro, warsztat, a za nim cz\\u0119\\u015b\\u0107 szklarni i piwnica z suszarni\\u0105 do warzyw. Na pi\\u0119trze s\\u0105 cztery niewielkie pokoje mieszkalne, szklarnia dzia\\u0142aj\\u0105ca r\\u00f3wnie\\u017c zim\\u0105, balkon i z niego most prowadz\\u0105cy do domku na drzewie.\\u00a0<br/></p><p>Budynek s\\u0105siaduje jednym podw\\u00f3rkiem z glinianym domem Andrzeja. Oba domy tworz\\u0105 jedn\\u0105 wsp\\u00f3lnot\\u0119.\\u00a0<br/> Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.</p>", "komentarz": "<h2>Nasze zwyczaje<br/> -zaproszenie<br/><br/></h2><p>\\u017beby unikn\\u0105\\u0107 przypadkowo\\u015bci ludzi bior\\u0105cych udzia\\u0142 w naszym projekcie, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 z nami wsp\\u00f3\\u0142tworzy\\u0107 rodzin\\u0119 opart\\u0105 na plemiennym kr\\u0119gu. Mamy na uwadze stwarzanie mi\\u0119dzy nami relacji, w kt\\u00f3rej uczymy si\\u0119 nawzajem nie dla samej wiedzy, a dla harmonii ze sob\\u0105 i z ca\\u0142ym \\u017cyciem. Na tym poziomie r\\u00f3\\u017cnice mi\\u0119dzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam naprzeciw przeszkodom i problemom - \\u0142atwiej jest pokonywa\\u0107 je razem. U nas nikt nie jest u kogo\\u015b, wszyscy jeste\\u015bmy u siebie.<br/> Organizacja pozarz\\u0105dowa, gdzie zarz\\u0105d jest wy\\u0142\\u0105cznie w\\u0142adz\\u0105 wykonawcz\\u0105 jednog\\u0142o\\u015bnych decyzji daje nam tak\\u0105 mo\\u017cliwo\\u015b\\u0107 r\\u00f3wnie\\u017c na poziomie prawnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce jego udzia\\u0142 w tym przedsi\\u0119wzi\\u0119ciu jest na r\\u00f3wni ze wszystkimi.<br/> Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107 mi\\u0119dzy sob\\u0105, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Wsp\\u00f3lnie nie uto\\u017csamiamy si\\u0119 z \\u017cadn\\u0105 religi\\u0105, ani jej nie tworzymy. Jest to koniecznym warunkiem na \\u015bcie\\u017cce \\u017cycia kt\\u00f3r\\u0105 idziemy, w taki spos\\u00f3b chcemy zachowa\\u0107 mo\\u017cliwo\\u015b\\u0107 kontynuacji tego kim jeste\\u015bmy jako ludzie tutaj na Ziemi. Nasz\\u0105 odpowiedzi\\u0105 jest utworzenie kr\\u0119gu, w kt\\u00f3rym mog\\u0105 uczestniczy\\u0107 wyznawcy wielu religii, jednak \\u017cadnej z nich nie stawiamy w centrum. Zdajemy sobie spraw\\u0119, \\u017ce wiara jest cz\\u0119\\u015bci\\u0105 anatomii naszych uczu\\u0107 i nadaje moc tworzenia wszystkiemu, co jeste\\u015bmy w stanie uzna\\u0107 za prawdziwe. Kiedy nie jest w sprzeczno\\u015bci z naszym rozumieniem, faktycznie staje si\\u0119 coraz bardziej skuteczna w kreowaniu rzeczywisto\\u015bci. \\u017beby to widzie\\u0107, nie potrzebujemy \\u017cadnych \\u201cpo\\u015brednik\\u00f3w\\u201d pomi\\u0119dzy cz\\u0142owiekiem a tym wszystkim czego manifestacj\\u0105 jeste\\u015bmy. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami.</p>", "zaproszenie": ""}	\N	8	2
35	f	2021-02-24 04:12:25.514483+01	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "9337acdf-56ac-42a5-aacb-5ea59c83aa6f", "locale": 1, "title": "Stodo\\u0142a Wymy\\u015blacz", "draft_title": "Stodo\\u0142a Wymy\\u015blacz", "slug": "stodo\\u0142a-wymy\\u015blacz", "content_type": 43, "live": true, "has_unpublished_changes": false, "url_path": "/home/stodo\\u0142a-wymy\\u015blacz/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:30:25.139Z", "last_published_at": "2021-02-24T02:58:04.081Z", "latest_revision_created_at": "2021-02-24T02:58:03.990Z", "live_revision": 34, "alias_of": null, "opis": "<h2><br/>Chcemy by to miejsce by\\u0142o tworzeniem wsp\\u00f3lnej przestrzeni, kt\\u00f3r\\u0105 mo\\u017cemy razem kszta\\u0142towa\\u0107 dla naszych pasji i potrzeb.<br/>Nasza wsp\\u00f3lnota, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Bardzo wa\\u017cne dla nas jest r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.<br/><br/></h2>", "objasnienie": "<p>Stodo\\u0142a Wymy\\u015blacz jest na obrze\\u017cach Lubli\\u0144ca, blisko trasy nr 11 \\u0142\\u0105cz\\u0105cej Katowice z Poznaniem. Nasze miasteczko le\\u017cy 30 km na zach\\u00f3d od Cz\\u0119stochowy. Oddzielone jest od aglomeracji \\u015bl\\u0105skiej du\\u017cym kompleksem las\\u00f3w, kt\\u00f3ry rozpoczyna si\\u0119 kilkaset metr\\u00f3w od naszego budynku.<br/> Jest to gospodarczy budynek z ceg\\u0142y na wapiennej zaprawie. Przebudowa na obiekt mieszkalny, polega na \\u0142\\u0105czeniu technologii nowoczesnych z tradycyjnymi.\\u00a0\\u00a0<br/><br/>Ogrzewanie ca\\u0142ego budynku b\\u0119dzie oparte o zbiornik akumulacyjny, a ciep\\u0142o rozprowadzane za pomoc\\u0105 wody do grzejnik\\u00f3w p\\u0142aszczyznowych zrobionych z gliny i kruszywa akumulacyjnego. Sam zbiornik b\\u0119dzie zasilany z dw\\u00f3ch podk\\u00f3w, baterii s\\u0142onecznych, solarnej i fotowoltaicznej.<br/>Budynek ma dwa pi\\u0119tra. Na parterze mie\\u015bci si\\u0119 sala wyk\\u0142adowa z ma\\u0142\\u0105 scen\\u0105, kuchnia, \\u0142azienka, biuro, warsztat, a za nim cz\\u0119\\u015b\\u0107 szklarni i piwnica z suszarni\\u0105 do warzyw. Na pi\\u0119trze s\\u0105 cztery niewielkie pokoje mieszkalne, szklarnia dzia\\u0142aj\\u0105ca r\\u00f3wnie\\u017c zim\\u0105, balkon i z niego most prowadz\\u0105cy do domku na drzewie.\\u00a0<br/></p><p>Budynek s\\u0105siaduje jednym podw\\u00f3rkiem z glinianym domem Andrzeja. Oba domy tworz\\u0105 jedn\\u0105 wsp\\u00f3lnot\\u0119.\\u00a0<br/> Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.</p>", "komentarz": "<h2>Nasze zwyczaje<br/> -zaproszenie<br/><br/></h2><p>\\u017beby unikn\\u0105\\u0107 przypadkowo\\u015bci ludzi bior\\u0105cych udzia\\u0142 w naszym projekcie, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 z nami wsp\\u00f3\\u0142tworzy\\u0107 rodzin\\u0119 opart\\u0105 na plemiennym kr\\u0119gu. Mamy na uwadze stwarzanie mi\\u0119dzy nami relacji, w kt\\u00f3rej uczymy si\\u0119 nawzajem nie dla samej wiedzy, a dla harmonii ze sob\\u0105 i z ca\\u0142ym \\u017cyciem. Na tym poziomie r\\u00f3\\u017cnice mi\\u0119dzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam naprzeciw przeszkodom i problemom - \\u0142atwiej jest pokonywa\\u0107 je razem. U nas nikt nie jest u kogo\\u015b, wszyscy jeste\\u015bmy u siebie.<br/> Organizacja pozarz\\u0105dowa, gdzie zarz\\u0105d jest wy\\u0142\\u0105cznie w\\u0142adz\\u0105 wykonawcz\\u0105 jednog\\u0142o\\u015bnych decyzji daje nam tak\\u0105 mo\\u017cliwo\\u015b\\u0107 r\\u00f3wnie\\u017c na poziomie prawnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce jego udzia\\u0142 w tym przedsi\\u0119wzi\\u0119ciu jest na r\\u00f3wni ze wszystkimi.<br/> Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107 mi\\u0119dzy sob\\u0105, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Wsp\\u00f3lnie nie uto\\u017csamiamy si\\u0119 z \\u017cadn\\u0105 religi\\u0105, ani jej nie tworzymy. Jest to koniecznym warunkiem na \\u015bcie\\u017cce \\u017cycia kt\\u00f3r\\u0105 idziemy, w taki spos\\u00f3b chcemy zachowa\\u0107 mo\\u017cliwo\\u015b\\u0107 kontynuacji tego kim jeste\\u015bmy jako ludzie tutaj na Ziemi. Nasz\\u0105 odpowiedzi\\u0105 jest utworzenie kr\\u0119gu, w kt\\u00f3rym mog\\u0105 uczestniczy\\u0107 wyznawcy wielu religii, jednak \\u017cadnej z nich nie stawiamy w centrum. Zdajemy sobie spraw\\u0119, \\u017ce wiara jest cz\\u0119\\u015bci\\u0105 anatomii naszych uczu\\u0107 i nadaje moc tworzenia wszystkiemu, co jeste\\u015bmy w stanie uzna\\u0107 za prawdziwe. Kiedy nie jest w sprzeczno\\u015bci z naszym rozumieniem, faktycznie staje si\\u0119 coraz bardziej skuteczna w kreowaniu rzeczywisto\\u015bci. \\u017beby to widzie\\u0107, nie potrzebujemy \\u017cadnych \\u201cpo\\u015brednik\\u00f3w\\u201d pomi\\u0119dzy cz\\u0142owiekiem a tym wszystkim czego manifestacj\\u0105 jeste\\u015bmy. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami.</p>", "zaproszenie": ""}	\N	8	2
41	f	2021-02-24 11:28:42.724364+01	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "9337acdf-56ac-42a5-aacb-5ea59c83aa6f", "locale": 1, "title": "Stodo\\u0142a Wymy\\u015blacz", "draft_title": "Stodo\\u0142a Wymy\\u015blacz", "slug": "stodo\\u0142a-wymy\\u015blacz", "content_type": 43, "live": true, "has_unpublished_changes": false, "url_path": "/home/stodo\\u0142a-wymy\\u015blacz/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:30:25.139Z", "last_published_at": "2021-02-24T03:12:25.575Z", "latest_revision_created_at": "2021-02-24T03:12:25.514Z", "live_revision": 35, "alias_of": null, "opis": "<h2><br/>      Chcemy by to miejsce by\\u0142o tworzeniem wsp\\u00f3lnej przestrzeni, kt\\u00f3r\\u0105 mo\\u017cemy razem kszta\\u0142towa\\u0107 dla naszych pasji i potrzeb.<br/>Bardzo wa\\u017cne dla nas jest r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.<br/>Nasza wsp\\u00f3lnota, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105.<br/><br/></h2>", "objasnienie": "<p>Stodo\\u0142a Wymy\\u015blacz jest na obrze\\u017cach Lubli\\u0144ca, blisko trasy nr 11 \\u0142\\u0105cz\\u0105cej Katowice z Poznaniem. Nasze miasteczko le\\u017cy 30 km na zach\\u00f3d od Cz\\u0119stochowy. Oddzielone jest od aglomeracji \\u015bl\\u0105skiej du\\u017cym kompleksem las\\u00f3w, kt\\u00f3ry rozpoczyna si\\u0119 kilkaset metr\\u00f3w od naszego budynku.<br/> Jest to gospodarczy budynek z ceg\\u0142y na wapiennej zaprawie. Przebudowa na obiekt mieszkalny, polega na \\u0142\\u0105czeniu technologii nowoczesnych z tradycyjnymi.\\u00a0\\u00a0<br/><br/>Ogrzewanie ca\\u0142ego budynku b\\u0119dzie oparte o zbiornik akumulacyjny, a ciep\\u0142o rozprowadzane za pomoc\\u0105 wody do grzejnik\\u00f3w p\\u0142aszczyznowych zrobionych z gliny i kruszywa akumulacyjnego. Sam zbiornik b\\u0119dzie zasilany z dw\\u00f3ch podk\\u00f3w, baterii s\\u0142onecznych, solarnej i fotowoltaicznej.<br/>Budynek ma dwa pi\\u0119tra. Na parterze mie\\u015bci si\\u0119 sala wyk\\u0142adowa z ma\\u0142\\u0105 scen\\u0105, kuchnia, \\u0142azienka, biuro, warsztat, a za nim cz\\u0119\\u015b\\u0107 szklarni i piwnica z suszarni\\u0105 do warzyw. Na pi\\u0119trze s\\u0105 cztery niewielkie pokoje mieszkalne, szklarnia dzia\\u0142aj\\u0105ca r\\u00f3wnie\\u017c zim\\u0105, balkon i z niego most prowadz\\u0105cy do domku na drzewie.\\u00a0<br/></p><p>Budynek s\\u0105siaduje jednym podw\\u00f3rkiem z glinianym domem Andrzeja. Oba domy tworz\\u0105 jedn\\u0105 wsp\\u00f3lnot\\u0119.\\u00a0<br/> Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.</p>", "komentarz": "<h2>Nasze zwyczaje<br/> -zaproszenie<br/><br/></h2><p>\\u017beby unikn\\u0105\\u0107 przypadkowo\\u015bci ludzi bior\\u0105cych udzia\\u0142 w naszym projekcie, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 z nami wsp\\u00f3\\u0142tworzy\\u0107 rodzin\\u0119 opart\\u0105 na plemiennym kr\\u0119gu. Mamy na uwadze stwarzanie mi\\u0119dzy nami relacji, w kt\\u00f3rej uczymy si\\u0119 nawzajem nie dla samej wiedzy, a dla harmonii ze sob\\u0105 i z ca\\u0142ym \\u017cyciem. Na tym poziomie r\\u00f3\\u017cnice mi\\u0119dzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam naprzeciw przeszkodom i problemom - \\u0142atwiej jest pokonywa\\u0107 je razem. U nas nikt nie jest u kogo\\u015b, wszyscy jeste\\u015bmy u siebie.<br/> Organizacja pozarz\\u0105dowa, gdzie zarz\\u0105d jest wy\\u0142\\u0105cznie w\\u0142adz\\u0105 wykonawcz\\u0105 jednog\\u0142o\\u015bnych decyzji daje nam tak\\u0105 mo\\u017cliwo\\u015b\\u0107 r\\u00f3wnie\\u017c na poziomie prawnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce jego udzia\\u0142 w tym przedsi\\u0119wzi\\u0119ciu jest na r\\u00f3wni ze wszystkimi.<br/> Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107 mi\\u0119dzy sob\\u0105, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Wsp\\u00f3lnie nie uto\\u017csamiamy si\\u0119 z \\u017cadn\\u0105 religi\\u0105, ani jej nie tworzymy. Jest to koniecznym warunkiem na \\u015bcie\\u017cce \\u017cycia kt\\u00f3r\\u0105 idziemy, w taki spos\\u00f3b chcemy zachowa\\u0107 mo\\u017cliwo\\u015b\\u0107 kontynuacji tego kim jeste\\u015bmy jako ludzie tutaj na Ziemi. Nasz\\u0105 odpowiedzi\\u0105 jest utworzenie kr\\u0119gu, w kt\\u00f3rym mog\\u0105 uczestniczy\\u0107 wyznawcy wielu religii, jednak \\u017cadnej z nich nie stawiamy w centrum. Zdajemy sobie spraw\\u0119, \\u017ce wiara jest cz\\u0119\\u015bci\\u0105 anatomii naszych uczu\\u0107 i nadaje moc tworzenia wszystkiemu, co jeste\\u015bmy w stanie uzna\\u0107 za prawdziwe. Kiedy nie jest w sprzeczno\\u015bci z naszym rozumieniem, faktycznie staje si\\u0119 coraz bardziej skuteczna w kreowaniu rzeczywisto\\u015bci. \\u017beby to widzie\\u0107, nie potrzebujemy \\u017cadnych \\u201cpo\\u015brednik\\u00f3w\\u201d pomi\\u0119dzy cz\\u0142owiekiem a tym wszystkim czego manifestacj\\u0105 jeste\\u015bmy. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami.</p>", "zaproszenie": ""}	\N	8	2
7	f	2021-02-14 23:05:22.729116+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-07T14:24:43.085Z", "latest_revision_created_at": "2021-02-07T14:24:43.009Z", "live_revision": 6, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p><b>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</b></p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach. <br/>Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych. <br/>Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze. <br/>Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107. <br/>Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>"}	\N	3	1
42	f	2021-02-26 19:35:58.157695+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 4, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-14T22:14:00.204Z", "latest_revision_created_at": "2021-02-14T22:14:00.145Z", "live_revision": 8, "alias_of": null, "long_name": "<p>Stowarzyszenie Arte Unite<br/>Jeste\\u015bmy organizacj\\u0105 maj\\u0105c\\u0105 na celu uwalnianie Ziemi spod w\\u0142asno\\u015bci indywidualnej dla wsp\\u00f3lnot ekoosadowych, <br/>- na rzecz wolno\\u015bci, m\\u0105dro\\u015bci i sprawiedliwo\\u015bci mi\\u0119dzy lud\\u017ami.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>"}	\N	3	2
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
-- Data for Name: wagtaildocs_uploadeddocument; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtaildocs_uploadeddocument (id, file, uploaded_by_user_id) FROM stdin;
\.


--
-- Data for Name: wagtailembeds_embed; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, thumbnail_url, width, height, last_updated, hash) FROM stdin;
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
1	arek_wyladowal.jpg	original_images/arek_wyladowal.jpg	940	643	2021-02-22 20:36:16.887558+01	\N	\N	\N	\N	1	128171	1	56905505dc044634fc16e12f6ff6937053bcd32e
\.


--
-- Data for Name: wagtailimages_rendition; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailimages_rendition (id, file, width, height, focal_point_key, filter_spec, image_id) FROM stdin;
1	images/arek_wyladowal.max-800x600.jpg	800	547		max-800x600	1
2	images/arek_wyladowal.width-800.jpg	800	547		width-800	1
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
2	t	t	t	2			
\.


--
-- Data for Name: warsztaty_warsztatypage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.warsztaty_warsztatypage (page_ptr_id, beret, comment, milicki, monika, opis, zaproszenie) FROM stdin;
6	<p><b>Adam Mańczuk</b><br/> Jest programistą z ponad 20-letnim doświadczeniem na całym świecie (w tym w Dolinie Krzemowej). Specjalizuje się w Pythonie i Django. Pracował jako lektor programowania na Uniwersytecie Warszawskim. Adam jest także poetą i żeglarzem.</p>	<p><br/></p><p>Kuba Ferenczak<br/> Uczyłem się w Liceum Sztuk Plastycznych w Zakopanem w klasie o profilu rzeźbiarstwo w drewnie, zajęcia jednak również obejmowały rzeźbę w glinie. Z ceramiką i jej wypalaniem w piecu gazowym miałem do czynienia w Grabówce, gdzie eksperymentowałem z lokalną gliną. Dla kilku osób, wspólnie z Anną Ovalle Correa prowadziłem zajęcia z ceramiki we wsi Dziadowice.<br/><br/>Warsztat ceramiczny dla osób dorosłych w oparciu o pracę w glinie z pobliskich cegielni Panoszów i Gwoździany. <br/>Obejmuje wiedzę, dotyczącą przygotowania gliny i podstawowych technik tworzenia prostych przedmiotów użytkowych jak i podstaw rzeźby w glinie. <br/></p><p>Po warsztatach, każdy będzie w stanie zrobić samodzielnie szkliwione naczynie, prostą formę w postaci rzeźby, zabawkę, ozdobę na prezent, lub inne przedmioty wg pomysłu uczestnika. <br/>Zdobyta wiedza, będzie dotyczyć tego, jak przystosować dowolny kształt do materiału, z którego ma być zrobiony, czyli gliny. Będziemy też robić proste narzędzia do kształtowania form, które chcemy uzyskać.</p>	<p><b>Artur Milicki</b><br/> (ur. 1976) – jest praktykiem, nauczycielem rozwoju wewnętrznego i autoterapii. Studiował zarządzanie i informatykę na UWM w Olsztynie (1996-2002) oraz kulturoznawstwo na UJ w Krakowie (1997-1998). Był mnichem w tradycji wisznuizmu gaudia (1999-2004). Po zdjęciu szafranu rozpoczął proces własnej psychoedukacji i autoterapii. Został wolnomyślicielem i aktywistą społecznym działającym na rzecz ruchu ekowioskowego. Współtworzył “Akademię Bosej Stopy” (2012) oraz “Ruch Wolnej Ziemi” (2017). Napisał książkę “Człowiek na Ziemi” (2014). Jest tatą Lubomira (2008) i Anastazji (2009). Oprócz działalności psychoedukacyjnej i społecznej, zawodowo zajmuje się projektowaniem pieców i nauczaniem rzemiosła zduńskiego.<br/>Jest konstruktorem, zdunem i nauczycielem zduństwa specjalizującym się w projektowaniu i budowie wydajnych pieców akumulacyjnych (rakietowych, komorowych) oraz kompleksowych instalacji służących do ogrzewania pomieszczeń mieszkalnych i użytkowych. Ponadto projektuje on i buduje również trzony kuchenne, piece chlebowe, piece do pizzy, suszarnie, sauny, wędzarnie, grille.</p><h3><b>Kurs projektowania i budowy pieców (Kurs Zduński - edycja VI - 2021)<br/><br/></b> Strona z opisem kursu: <a href="https://pieceartura.pl/kurs-zdunski/">https://pieceartura.pl/kurs-zdunski/</a></h3><p>Umiejętności jakie zdobędzie osoba uczestnicząca</p><p>Po ukończeniu tego kursu:</p><p>- będziesz dysponował specjalistyczną wiedzę z zakresu zduństwa, którą</p><p>możesz natychmiast wykorzystać w swojej praktyce budowy pieców,</p><p>- będziesz dysponował wszystkimi narzędziami (wzory, arkusze</p><p>kalkulacyjne, oprogramowanie) niezbędnymi do samodzielnego</p><p>projektowania różnych pieców,</p><p>- będziesz miał stałą możliwość uczestniczenia w praktycznych</p><p>zduńskich warsztatach szkoleniowych na których od początku do końca</p><p>budowane są różnego rodzaju piece (opcjonalnie, na oddzielnie</p><p>określonych warunkach),</p><p>- będziesz mógł odbyć praktykę i uczestniczyć w realizacjach zleceń</p><p>jako pomocnik zduna, lub zdun (opcjonalnie, na indywidualnie</p><p>ustalonych warunkach).</p><h3><b><br/><br/></b>Proces Integracji Emocjonalnej jest metodą samopoznania i autoterapii<br/><b> (9-tygodniowy kurs online)</b></h3><p>która gwałtownie poszerza świadomość własnych emocji, uczuć, myśli i</p><p>przekonań. W skład Procesu wchodzą specjalnie dobrane techniki</p><p>percepcyjno-wglądowe, służące do intencjonalnej zmiany lub korekty</p><p>oprogramowania naszej podświadomości, w taki sposób, aby nasze</p><p>wewnętrzne i zewnętrzne życie przyjęło jak najbardziej życzliwy</p><p>wymiar, dla nas samych, dla naszych bliskich i dla całego otoczenia, w</p><p>którym żyjemy.</p><p>umiejętności jakie zdobędzie osoba uczestnicząca</p><p>Wraz z postępem w praktyce Procesu Integracji Emocjonalnej możemy</p><p>doświadczyć następujących przeobrażeń i trwałych wewnętrznych</p><p>wzrostów:</p><p>wzrost poczucia pewności wobec własnych życiowych priorytetów, celów i wyborów,</p><p>wzrost świadomości i umiejętności dostrzegania i doświadczania źródła</p><p>szczęścia i spełnienia w sobie i zmniejszenie tym samym zależności od</p><p>świata zewnętrznego, jako źródła satysfakcji,</p><p>wzrost możliwości stania się osobą bardziej wspierającą, współczującą,</p><p>motywującą, cierpliwą, tolerancyjną i autentyczną wobec samej /samego</p><p>siebie oraz wobec innych,</p><p>wzrost umiejętności doświadczania życia w chwili obecnej poprzez</p><p>zmniejszenie negatywnego zaabsorbowania przeszłością lub przyszłością,</p><p>wzrost w odczuwaniu wewnętrznej mocy sprawczej, którą wcześniej</p><p>projektowaliśmy na świat,</p><p>wzrost wewnętrznej siły, odporności na zranienie, poczucia własnej</p><p>wartości, wewnętrznego spokoju, radości, spełnienia i ogólnego poziomu</p><p>świadomości.</p>	<p><b>Monika Matis</b><br/><br/> Pracuje jako publicystka, tłumaczka, autorka tekstów żeglarskich oraz pielęgniarka. Posiada różnorodne doświadczenia akademickie, od informatyki i mechaniki po studia medyczne. Z zamiłowania zajmuje się nawigacją tradycyjną, lub jak się ją teraz określa “awaryjną”. Żegluje od piętnastego roku życia, zwykle na jachtach znajomych i przyjaciół, gdy potrzebowali kogoś znającego się na rzeczy i doświadczonego aby popłynąć gdzieś dalej. Prowadziła jachty na Bałtyku, Morzu Północnym i Śródziemnym, Atlantyku, od Afryki po daleką Arktykę. Żeglowała również samotnie i w małych załogach.</p>	<h2>Po całkowitym skończeniu Stodoły, będziemy dysponowali:<br/>-Warsztatem ceramicznym (mamy koło garncarskie, szkliwa i piec gazowy do wypalania)<br/><br/> - Warsztatem rzeźby w drewnie, szklarnią i suszarnią do warzyw, nie tylko produkowanych przez nas, ale również z zaprzyjaźnionych gospodarstw, o których wiemy, że uprawia się tam rośliny w sposób ekologiczny. Będziemy mogli się też zająć pakowaniem tych warzyw.<br/> - Salą do spotkań na około 20 osób, jak również zapleczem umożliwiającym, żeby takie osoby mogły mieszkać w Stodole przez tydzień lub dwa. Nie są to warunki hotelowe, ponieważ spać można na drewnianej podłodze i na antresoli, na materacach lub karimatach.</h2>	
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
-- Name: wagtailadmin_admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailadmin_admin_id_seq', 1, false);


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
-- Name: wagtaildocs_uploadeddocument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtaildocs_uploadeddocument_id_seq', 1, false);


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
-- Name: contact_contactpage contact_contactpage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.contact_contactpage
    ADD CONSTRAINT contact_contactpage_pkey PRIMARY KEY (page_ptr_id);


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
-- Name: miejsca_miejscapage miejsca_miejscapage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.miejsca_miejscapage
    ADD CONSTRAINT miejsca_miejscapage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: misja_misjapage misja_misjapage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.misja_misjapage
    ADD CONSTRAINT misja_misjapage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: rwz_rwzpage rwz_rwzpage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.rwz_rwzpage
    ADD CONSTRAINT rwz_rwzpage_pkey PRIMARY KEY (page_ptr_id);


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
-- Name: wagtailadmin_admin wagtailadmin_admin_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailadmin_admin
    ADD CONSTRAINT wagtailadmin_admin_pkey PRIMARY KEY (id);


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
-- Name: wagtaildocs_uploadeddocument wagtaildocs_uploadeddocument_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtaildocs_uploadeddocument
    ADD CONSTRAINT wagtaildocs_uploadeddocument_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed wagtailembeds_embed_hash_c9bd8c9a_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_hash_c9bd8c9a_uniq UNIQUE (hash);


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
-- Name: warsztaty_warsztatypage warsztaty_warsztatypage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.warsztaty_warsztatypage
    ADD CONSTRAINT warsztaty_warsztatypage_pkey PRIMARY KEY (page_ptr_id);


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

CREATE UNIQUE INDEX unique_in_progress_workflow ON public.wagtailcore_workflowstate USING btree (page_id) WHERE ((status)::text = ANY (ARRAY[('in_progress'::character varying)::text, ('needs_changes'::character varying)::text]));


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
-- Name: wagtaildocs_uploadeddocument_uploaded_by_user_id_8dd61a73; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtaildocs_uploadeddocument_uploaded_by_user_id_8dd61a73 ON public.wagtaildocs_uploadeddocument USING btree (uploaded_by_user_id);


--
-- Name: wagtailembeds_embed_hash_c9bd8c9a_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailembeds_embed_hash_c9bd8c9a_like ON public.wagtailembeds_embed USING btree (hash varchar_pattern_ops);


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
-- Name: contact_contactpage contact_contactpage_page_ptr_id_143c93c1_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.contact_contactpage
    ADD CONSTRAINT contact_contactpage_page_ptr_id_143c93c1_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: miejsca_miejscapage miejsca_miejscapage_page_ptr_id_35a3584d_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.miejsca_miejscapage
    ADD CONSTRAINT miejsca_miejscapage_page_ptr_id_35a3584d_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misja_misjapage misja_misjapage_page_ptr_id_58c92f38_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.misja_misjapage
    ADD CONSTRAINT misja_misjapage_page_ptr_id_58c92f38_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rwz_rwzpage rwz_rwzpage_page_ptr_id_9d95fd1c_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.rwz_rwzpage
    ADD CONSTRAINT rwz_rwzpage_page_ptr_id_9d95fd1c_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: wagtaildocs_uploadeddocument wagtaildocs_uploaded_uploaded_by_user_id_8dd61a73_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtaildocs_uploadeddocument
    ADD CONSTRAINT wagtaildocs_uploaded_uploaded_by_user_id_8dd61a73_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: warsztaty_warsztatypage warsztaty_warsztatyp_page_ptr_id_e5a915c4_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.warsztaty_warsztatypage
    ADD CONSTRAINT warsztaty_warsztatyp_page_ptr_id_e5a915c4_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

