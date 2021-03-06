PGDMP     ,    ;                y            MechanicOnline_Dsie    12.4    12.4 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    51512    MechanicOnline_Dsie    DATABASE     ?   CREATE DATABASE "MechanicOnline_Dsie" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
 %   DROP DATABASE "MechanicOnline_Dsie";
                postgres    false                       1255    84444 ?   sp_insr_administrator(character varying, character varying, character varying, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     Q  CREATE PROCEDURE public.sp_insr_administrator(character varying, character varying, character varying, timestamp without time zone, timestamp without time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
 
 INSERT INTO public.administrator("fullname", "email", "password", "now()", "now()")
 	VALUES ($1, $2, $3, $4, $5);
	
COMMIT;
END;
$_$;
 ?   DROP PROCEDURE public.sp_insr_administrator(character varying, character varying, character varying, timestamp without time zone, timestamp without time zone);
       public          postgres    false                       1255    84472 (   sp_insr_city(character varying, integer) 	   PROCEDURE     ?   CREATE PROCEDURE public.sp_insr_city(character varying, integer)
    LANGUAGE plpgsql
    AS $_$
BEGIN
 
 INSERT INTO public.city("name", department_id)
 	VALUES ($1, $2);
	
COMMIT;
END;
$_$;
 @   DROP PROCEDURE public.sp_insr_city(character varying, integer);
       public          postgres    false            ?            1255    84447 !  sp_insr_client(character varying, character varying, character varying, character varying, integer, integer, character varying, character varying, character varying, character varying, character varying, character varying, integer, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     ~  CREATE PROCEDURE public.sp_insr_client(character varying, character varying, character varying, character varying, integer, integer, character varying, character varying, character varying, character varying, character varying, character varying, integer, timestamp without time zone, timestamp without time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
 
 INSERT INTO public.client("name", "surnama", "email", "password", "identity", phone, "carClient", "profilePicture", "gender", "latitude", "longitude", "rh", "city_id", "now()", "now()")
 	VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15);
	
COMMIT;
END;
$_$;
 9  DROP PROCEDURE public.sp_insr_client(character varying, character varying, character varying, character varying, integer, integer, character varying, character varying, character varying, character varying, character varying, character varying, integer, timestamp without time zone, timestamp without time zone);
       public          postgres    false            ?            1255    84470 +   sp_insr_country(integer, character varying) 	   PROCEDURE     ?   CREATE PROCEDURE public.sp_insr_country(integer, character varying)
    LANGUAGE plpgsql
    AS $_$
BEGIN
 
 INSERT INTO public.country("codeCountry", "nameCountry")
 	VALUES ($1, $2);
	
COMMIT;
END;
$_$;
 C   DROP PROCEDURE public.sp_insr_country(integer, character varying);
       public          postgres    false                       1255    84458 e   sp_insr_country(integer, character varying, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     !  CREATE PROCEDURE public.sp_insr_country(integer, character varying, timestamp without time zone, timestamp without time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
 
 INSERT INTO public.country("codeCountry", "nameCountry", "now()", "now()")
 	VALUES ($1, $2, $3, $4);
	
COMMIT;
END;
$_$;
 }   DROP PROCEDURE public.sp_insr_country(integer, character varying, timestamp without time zone, timestamp without time zone);
       public          postgres    false            ?            1255    84471 .   sp_insr_department(character varying, integer) 	   PROCEDURE     ?   CREATE PROCEDURE public.sp_insr_department(character varying, integer)
    LANGUAGE plpgsql
    AS $_$
BEGIN
 
 INSERT INTO public.department("nameDepartment", "country_id")
 	VALUES ($1, $2);	
COMMIT;
END;
$_$;
 F   DROP PROCEDURE public.sp_insr_department(character varying, integer);
       public          postgres    false            ?            1255    84449 h   sp_insr_department(character varying, integer, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     (  CREATE PROCEDURE public.sp_insr_department(character varying, integer, timestamp without time zone, timestamp without time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
 
 INSERT INTO public.department("nameDepartment", "country_id", "now()", "now()")
 	VALUES ($1, $2, $3, $4);	
COMMIT;
END;
$_$;
 ?   DROP PROCEDURE public.sp_insr_department(character varying, integer, timestamp without time zone, timestamp without time zone);
       public          postgres    false                       1255    84473 ?   sp_insr_mechanic(character varying, character varying, character varying, character varying, integer, integer, character varying, character varying, character varying, character varying, integer) 	   PROCEDURE     ?  CREATE PROCEDURE public.sp_insr_mechanic(character varying, character varying, character varying, character varying, integer, integer, character varying, character varying, character varying, character varying, integer)
    LANGUAGE plpgsql
    AS $_$
BEGIN
 
 INSERT INTO public.mechanics("email", "password", "name", "surname", identity, phone, "profilePicture", "gender", "latitude", "longitude", city_id)
 	VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11);
	
COMMIT;
END;
$_$;
 ?   DROP PROCEDURE public.sp_insr_mechanic(character varying, character varying, character varying, character varying, integer, integer, character varying, character varying, character varying, character varying, integer);
       public          postgres    false            ?            1255    84451 ?   sp_insr_payment(integer, character varying, character varying, integer, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     l  CREATE PROCEDURE public.sp_insr_payment(integer, character varying, character varying, integer, timestamp without time zone, timestamp without time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
 
 INSERT INTO public.payment("confirmCodePayment", "description", "response", "serviceScheduling_id", "now()", "now()")
 	VALUES ($1, $2, $3, $4, $6);
	
COMMIT;
END;
$_$;
 ?   DROP PROCEDURE public.sp_insr_payment(integer, character varying, character varying, integer, timestamp without time zone, timestamp without time zone);
       public          postgres    false            ?            1255    84452 x   sp_insr_service(character varying, character varying, integer, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     C  CREATE PROCEDURE public.sp_insr_service(character varying, character varying, integer, timestamp without time zone, timestamp without time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
 
 INSERT INTO public.service("name", "description", "servicetype_id", "now()", "now()")
 	VALUES ($1, $2, $3, $4, $5);
	
COMMIT;
END;
$_$;
 ?   DROP PROCEDURE public.sp_insr_service(character varying, character varying, integer, timestamp without time zone, timestamp without time zone);
       public          postgres    false                       1255    84453 ?   sp_insr_servicelist(double precision, character varying, integer, integer, integer, integer, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     ?  CREATE PROCEDURE public.sp_insr_servicelist(double precision, character varying, integer, integer, integer, integer, timestamp without time zone, timestamp without time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
 
 INSERT INTO public.servicelist("cost", "previewImageService", "statusService_id", "mechanic_id", "service_id", "servicescheduling_id", "now()", "now()")
 	VALUES ($1, $2, $3, $4, $5, $6, $7, $8);
	
COMMIT;
END;
$_$;
 ?   DROP PROCEDURE public.sp_insr_servicelist(double precision, character varying, integer, integer, integer, integer, timestamp without time zone, timestamp without time zone);
       public          postgres    false            ?            1255    84454 ?   sp_insr_servicescheduling(date, date, integer, character varying, character varying, double precision, double precision, integer, integer, integer, integer, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     ?  CREATE PROCEDURE public.sp_insr_servicescheduling(date, date, integer, character varying, character varying, double precision, double precision, integer, integer, integer, integer, timestamp without time zone, timestamp without time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
 
 INSERT INTO public.servicescheduling("createDataService", "estimetedDateClient", "deleteCodeService", "mechanicCommentService", "clientCommentService", "mechanicReputationService", "clientReputationService", "client_id", "statusService_id", "serviceList_id", "payment_id", "now()", "now()")
 	VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13);
	
COMMIT;
END;
$_$;
 ?   DROP PROCEDURE public.sp_insr_servicescheduling(date, date, integer, character varying, character varying, double precision, double precision, integer, integer, integer, integer, timestamp without time zone, timestamp without time zone);
       public          postgres    false            ?            1255    84442 `   sp_insr_servicetype(character varying, timestamp without time zone, timestamp without time zone) 	   PROCEDURE       CREATE PROCEDURE public.sp_insr_servicetype(character varying, timestamp without time zone, timestamp without time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
 
 INSERT INTO public.servicetype("name", "now()", "now()")
 	VALUES ($1, $2, $3);
	
COMMIT;
END;
$_$;
 x   DROP PROCEDURE public.sp_insr_servicetype(character varying, timestamp without time zone, timestamp without time zone);
       public          postgres    false            ?            1255    84443    sp_insr_statusservicescheduling(character varying, character varying, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     D  CREATE PROCEDURE public.sp_insr_statusservicescheduling(character varying, character varying, timestamp without time zone, timestamp without time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
 
 INSERT INTO public.statusservicescheduling("name", "description", "now()", "now()")
 	VALUES ($1, $2, $3, $4);
	
COMMIT;
END;
$_$;
 ?   DROP PROCEDURE public.sp_insr_statusservicescheduling(character varying, character varying, timestamp without time zone, timestamp without time zone);
       public          postgres    false                       1255    84455 ?   sp_updt_administrator(integer, character varying, character varying, character varying, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     ?  CREATE PROCEDURE public.sp_updt_administrator(_id integer, _fullname character varying, _email character varying, _password character varying, _created_at timestamp without time zone, _updated_at timestamp without time zone)
    LANGUAGE plpgsql
    AS $$
BEGIN

UPDATE public.administrator
	SET  fullname = _fullname, email = _email, password = _password, "created_at" = "_create_at", "update_at" = "_update_at"
	WHERE id = _id;
	
COMMIT;
END;
$$;
 ?   DROP PROCEDURE public.sp_updt_administrator(_id integer, _fullname character varying, _email character varying, _password character varying, _created_at timestamp without time zone, _updated_at timestamp without time zone);
       public          postgres    false                       1255    84456 k   sp_updt_city(integer, character varying, integer, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     x  CREATE PROCEDURE public.sp_updt_city(_id integer, _name character varying, _department_id integer, _created_at timestamp without time zone, _updated_at timestamp without time zone)
    LANGUAGE plpgsql
    AS $$
BEGIN

UPDATE public.city
	SET  name = _name, department = _department, "created_at" = "_create_at", "update_at" = "_update_at"
	WHERE id = _id;
	
COMMIT;
END;
$$;
 ?   DROP PROCEDURE public.sp_updt_city(_id integer, _name character varying, _department_id integer, _created_at timestamp without time zone, _updated_at timestamp without time zone);
       public          postgres    false                       1255    84457 *  sp_updt_client(integer, character varying, character varying, character varying, character varying, integer, integer, character varying, character varying, character varying, character varying, character varying, character varying, integer, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     ?  CREATE PROCEDURE public.sp_updt_client(_id integer, _name character varying, _surname character varying, _email character varying, _password character varying, _identity integer, _phone integer, "_carClient" character varying, "_profilePicture" character varying, _gender character varying, _latitude character varying, _longitude character varying, _rh character varying, _city_id integer, _created_at timestamp without time zone, _updated_at timestamp without time zone)
    LANGUAGE plpgsql
    AS $$
BEGIN

UPDATE public.client
	SET  name = _name, surname = _surname, email = _email, password = _password, identity = _identity,
	phone = _phone, "carClient" = "_carClient", "profilePicture" = "_profilePicture", gender = _gender, 
	latitude = _latitude, longitude = _longitude, rh = _rh, city_id = _city_id,	"created_at" = "_create_at", "update_at" = "_update_at"
	WHERE id = _id;
	
COMMIT;
END;
$$;
 ?  DROP PROCEDURE public.sp_updt_client(_id integer, _name character varying, _surname character varying, _email character varying, _password character varying, _identity integer, _phone integer, "_carClient" character varying, "_profilePicture" character varying, _gender character varying, _latitude character varying, _longitude character varying, _rh character varying, _city_id integer, _created_at timestamp without time zone, _updated_at timestamp without time zone);
       public          postgres    false            	           1255    84462   sp_updt_mechanic(integer, character varying, character varying, character varying, character varying, integer, integer, character varying, character varying, character varying, character varying, integer, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     8  CREATE PROCEDURE public.sp_updt_mechanic(_id integer, _email character varying, _password character varying, _name character varying, _surname character varying, _identity integer, _phone integer, "_profilePicture" character varying, _gender character varying, _latitude character varying, _longitude character varying, _city_id integer, _created_at timestamp without time zone, _updated_at timestamp without time zone)
    LANGUAGE plpgsql
    AS $$
BEGIN

UPDATE public.mechanic
	SET  "email" = "_email", "password" = "_password", name = _name, surname = _surname, identity = _identity, phone = _phone, "profilePicture" = "_profilePicture", gender = _gender,
	latitude = _latitude, longitude = _longitude, "city_id" = "_city_id", "created_at" = "_create_at", "update_at" = "_update_at"
	WHERE id = _id;
	
COMMIT;
END;
$$;
 ?  DROP PROCEDURE public.sp_updt_mechanic(_id integer, _email character varying, _password character varying, _name character varying, _surname character varying, _identity integer, _phone integer, "_profilePicture" character varying, _gender character varying, _latitude character varying, _longitude character varying, _city_id integer, _created_at timestamp without time zone, _updated_at timestamp without time zone);
       public          postgres    false            
           1255    84463 ?   sp_updt_payment(integer, integer, character varying, character varying, integer, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     0  CREATE PROCEDURE public.sp_updt_payment(_id integer, "_confirmCodePayment" integer, _description character varying, _responde character varying, "_serviceScheduling_id" integer, _created_at timestamp without time zone, _updated_at timestamp without time zone)
    LANGUAGE plpgsql
    AS $$
BEGIN

UPDATE public.payment
	SET  "confirmCodePayment" = "_confirmCodePayment", description = _description, response = _response, "serviceScheduling" = "_serviceScheduling", 
	"created_at" = "_create_at", "update_at" = "_update_at"
	WHERE id = _id;
	
COMMIT;
END;
$$;
   DROP PROCEDURE public.sp_updt_payment(_id integer, "_confirmCodePayment" integer, _description character varying, _responde character varying, "_serviceScheduling_id" integer, _created_at timestamp without time zone, _updated_at timestamp without time zone);
       public          postgres    false                       1255    84464 ?   sp_updt_service(integer, character varying, character varying, character varying, integer, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     ?  CREATE PROCEDURE public.sp_updt_service(_id integer, _name character varying, _description character varying, _responde character varying, _servicetype_id integer, _created_at timestamp without time zone, _updated_at timestamp without time zone)
    LANGUAGE plpgsql
    AS $$
BEGIN

UPDATE public.service
	SET  name = _name, description = _description, "servicetype_id" = "servicetype_id",	"created_at" = "_create_at", "update_at" = "_update_at"
	WHERE id = _id;
	
COMMIT;
END;
$$;
 ?   DROP PROCEDURE public.sp_updt_service(_id integer, _name character varying, _description character varying, _responde character varying, _servicetype_id integer, _created_at timestamp without time zone, _updated_at timestamp without time zone);
       public          postgres    false                       1255    84465 ?   sp_updt_servicelist(integer, double precision, character varying, integer, integer, integer, integer, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     ?  CREATE PROCEDURE public.sp_updt_servicelist(_id integer, _cost double precision, "_previewImageService" character varying, "_statusService_id" integer, _mechanic_id integer, _service_id integer, servicescheduling_id integer, _created_at timestamp without time zone, _updated_at timestamp without time zone)
    LANGUAGE plpgsql
    AS $$
BEGIN

UPDATE public.servicelist
	SET  cost = _cost, "previewImageService" = "_previewImageService", "statusService_id" = "_statusService_id", mechanic_id = _mechanic_id, service_id = _service_id,
	"servicescheduling_id" = "_servicescheduling_id",
	"created_at" = "_create_at", "update_at" = "_update_at"
	WHERE id = _id;
	
COMMIT;
END;
$$;
 2  DROP PROCEDURE public.sp_updt_servicelist(_id integer, _cost double precision, "_previewImageService" character varying, "_statusService_id" integer, _mechanic_id integer, _service_id integer, servicescheduling_id integer, _created_at timestamp without time zone, _updated_at timestamp without time zone);
       public          postgres    false                       1255    84466 ?   sp_updt_servicescheduling(integer, character varying, date, integer, character varying, character varying, double precision, double precision, integer, integer, integer, integer, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     ?  CREATE PROCEDURE public.sp_updt_servicescheduling(_id integer, "_createDateService" character varying, "_estimatedDateClient" date, "_deleteCodeService" integer, "_mechanicCommentService" character varying, "_clientCommentService" character varying, "_mechanicReputationService" double precision, "_clientReputationService" double precision, _client_id integer, "_serviceList_id" integer, "_statusService_id" integer, _payment_id integer, _created_at timestamp without time zone, _updated_at timestamp without time zone)
    LANGUAGE plpgsql
    AS $$
BEGIN

UPDATE public.servicescheduling
	SET  "createDateService" = "_createDateService", "estimatedDateClient" = "_estimatedDateClient", "deleteCodeService" = "_deleteCodeService",
	"mechanicCommentService" = "_mechanicCommentService", "clientCommentService" = "_clientCommentService", "mechanicReputationService" = "_mechanicReputationService",
	"clientReputationService" = "_clientReputationService", client_id = _client_id, "serviceList_id" = "_serviceList_id", "statusService_id" = "_statusService_id", 
	payment_id = _payment_id, "created_at" = "_create_at", "update_at" = "_update_at"
	WHERE id = _id;
	
COMMIT;
END;
$$;
   DROP PROCEDURE public.sp_updt_servicescheduling(_id integer, "_createDateService" character varying, "_estimatedDateClient" date, "_deleteCodeService" integer, "_mechanicCommentService" character varying, "_clientCommentService" character varying, "_mechanicReputationService" double precision, "_clientReputationService" double precision, _client_id integer, "_serviceList_id" integer, "_statusService_id" integer, _payment_id integer, _created_at timestamp without time zone, _updated_at timestamp without time zone);
       public          postgres    false                       1255    84467 i   sp_updt_servicetype(integer, character varying, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     W  CREATE PROCEDURE public.sp_updt_servicetype(_id integer, _name character varying, _created_at timestamp without time zone, _updated_at timestamp without time zone)
    LANGUAGE plpgsql
    AS $$
BEGIN

UPDATE public.servicetype
	SET   name = _name, 
	"created_at" = "_create_at", "update_at" = "_update_at"
	WHERE id = _id;
	
COMMIT;
END;
$$;
 ?   DROP PROCEDURE public.sp_updt_servicetype(_id integer, _name character varying, _created_at timestamp without time zone, _updated_at timestamp without time zone);
       public          postgres    false                       1255    84468 ?   sp_updt_statusservicescheduling(integer, character varying, character varying, timestamp without time zone, timestamp without time zone) 	   PROCEDURE     ?  CREATE PROCEDURE public.sp_updt_statusservicescheduling(_id integer, _name character varying, _description character varying, _created_at timestamp without time zone, _updated_at timestamp without time zone)
    LANGUAGE plpgsql
    AS $$
BEGIN

UPDATE public.statusservicescheduling
	SET   name = _name, description = _description,
	"created_at" = "_create_at", "update_at" = "_update_at"
	WHERE id = _id;
	
COMMIT;
END;
$$;
 ?   DROP PROCEDURE public.sp_updt_statusservicescheduling(_id integer, _name character varying, _description character varying, _created_at timestamp without time zone, _updated_at timestamp without time zone);
       public          postgres    false            ?            1259    76294    administrator    TABLE     $  CREATE TABLE public.administrator (
    id integer NOT NULL,
    fullname character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.administrator;
       public         heap    postgres    false            ?            1259    76292    administrator_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.administrator_id_seq;
       public          postgres    false    223            ?           0    0    administrator_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.administrator_id_seq OWNED BY public.administrator.id;
          public          postgres    false    222            ?            1259    59871 
   categories    TABLE     ?   CREATE TABLE public.categories (
    id integer NOT NULL,
    category text NOT NULL,
    route text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.categories;
       public         heap    postgres    false            ?            1259    59869    categories_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    211            ?           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    210            ?            1259    76265    city    TABLE     ?   CREATE TABLE public.city (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    department_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.city;
       public         heap    postgres    false            ?            1259    76263    city_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.city_id_seq;
       public          postgres    false    219            ?           0    0    city_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.city_id_seq OWNED BY public.city.id;
          public          postgres    false    218            ?            1259    76278    client    TABLE     ?  CREATE TABLE public.client (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    surname character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    identity integer NOT NULL,
    phone integer NOT NULL,
    "carClient" character varying(255) NOT NULL,
    "profilePicture" character varying(255) NOT NULL,
    gender character varying(255) NOT NULL,
    latitude character varying(255) NOT NULL,
    longitude character varying(255) NOT NULL,
    rh character varying(255) NOT NULL,
    city_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.client;
       public         heap    postgres    false            ?            1259    76276    client_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.client_id_seq;
       public          postgres    false    221            ?           0    0    client_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;
          public          postgres    false    220            ?            1259    76244    country    TABLE     ?   CREATE TABLE public.country (
    id integer NOT NULL,
    "codeCountry" integer NOT NULL,
    "nameCountry" character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.country;
       public         heap    postgres    false            ?            1259    76242    country_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public          postgres    false    215            ?           0    0    country_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;
          public          postgres    false    214            ?            1259    76252 
   department    TABLE     ?   CREATE TABLE public.department (
    id integer NOT NULL,
    "nameDepartment" character varying(255) NOT NULL,
    country_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.department;
       public         heap    postgres    false            ?            1259    76250    department_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.department_id_seq;
       public          postgres    false    217            ?           0    0    department_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.department_id_seq OWNED BY public.department.id;
          public          postgres    false    216            ?            1259    59727    failed_jobs    TABLE     ?   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            ?            1259    59725    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    207            ?           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    206            ?            1259    76318 	   mechanics    TABLE     a  CREATE TABLE public.mechanics (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    surname character varying(255) NOT NULL,
    identity integer NOT NULL,
    phone integer NOT NULL,
    "profilePicture" character varying(255) NOT NULL,
    gender character varying(255) NOT NULL,
    latitude character varying(255) NOT NULL,
    longitude character varying(255) NOT NULL,
    city_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.mechanics;
       public         heap    postgres    false            ?            1259    76316    mechanic_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.mechanic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.mechanic_id_seq;
       public          postgres    false    225            ?           0    0    mechanic_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public.mechanic_id_seq OWNED BY public.mechanics.id;
          public          postgres    false    224            ?            1259    59706 
   migrations    TABLE     ?   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            ?            1259    59704    migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    203            ?           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    202            ?            1259    76476    payment    TABLE     N  CREATE TABLE public.payment (
    id integer NOT NULL,
    "confirmCodePayment" integer NOT NULL,
    description character varying(255) NOT NULL,
    response character varying(255) NOT NULL,
    "serviceScheduling_id" integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.payment;
       public         heap    postgres    false            ?            1259    76474    payment_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.payment_id_seq;
       public          postgres    false    227                        0    0    payment_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.payment_id_seq OWNED BY public.payment.id;
          public          postgres    false    226            ?            1259    76495    service    TABLE       CREATE TABLE public.service (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    servicetype_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.service;
       public         heap    postgres    false            ?            1259    76493    service_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.service_id_seq;
       public          postgres    false    231                       0    0    service_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.service_id_seq OWNED BY public.service.id;
          public          postgres    false    230            ?            1259    76807    servicelist    TABLE     ?  CREATE TABLE public.servicelist (
    id integer NOT NULL,
    cost double precision NOT NULL,
    "previewImageService" character varying(255) NOT NULL,
    "statusService_id" integer NOT NULL,
    mechanic_id integer NOT NULL,
    service_id integer NOT NULL,
    servicescheduling_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.servicelist;
       public         heap    postgres    false            ?            1259    76805    servicelist_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.servicelist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.servicelist_id_seq;
       public          postgres    false    237                       0    0    servicelist_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.servicelist_id_seq OWNED BY public.servicelist.id;
          public          postgres    false    236            ?            1259    76748    servicescheduling    TABLE     ?  CREATE TABLE public.servicescheduling (
    id integer NOT NULL,
    "createDateService" date NOT NULL,
    "estimatedDateClient" date NOT NULL,
    "deleteCodeService" integer NOT NULL,
    "mechanicCommentService" character varying(255) NOT NULL,
    "clientCommentService" character varying(255) NOT NULL,
    "mechanicReputationService" double precision NOT NULL,
    "clientReputationService" double precision NOT NULL,
    client_id integer NOT NULL,
    "serviceList_id" integer NOT NULL,
    "statusService_id" integer NOT NULL,
    payment_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE public.servicescheduling;
       public         heap    postgres    false            ?            1259    76746    servicescheduling_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.servicescheduling_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.servicescheduling_id_seq;
       public          postgres    false    235                       0    0    servicescheduling_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.servicescheduling_id_seq OWNED BY public.servicescheduling.id;
          public          postgres    false    234            ?            1259    76487    servicetype    TABLE     ?   CREATE TABLE public.servicetype (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.servicetype;
       public         heap    postgres    false            ?            1259    76485    servicetype_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.servicetype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.servicetype_id_seq;
       public          postgres    false    229                       0    0    servicetype_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.servicetype_id_seq OWNED BY public.servicetype.id;
          public          postgres    false    228            ?            1259    76574    statusservicescheduling    TABLE       CREATE TABLE public.statusservicescheduling (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 +   DROP TABLE public.statusservicescheduling;
       public         heap    postgres    false            ?            1259    76572    statusservicescheduling_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.statusservicescheduling_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.statusservicescheduling_id_seq;
       public          postgres    false    233                       0    0    statusservicescheduling_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.statusservicescheduling_id_seq OWNED BY public.statusservicescheduling.id;
          public          postgres    false    232            ?            1259    59882    subcategories    TABLE     ?   CREATE TABLE public.subcategories (
    id integer NOT NULL,
    "subCategory" text NOT NULL,
    category_id bigint NOT NULL,
    route text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.subcategories;
       public         heap    postgres    false            ?            1259    59880    subcategories_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.subcategories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.subcategories_id_seq;
       public          postgres    false    213                       0    0    subcategories_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.subcategories_id_seq OWNED BY public.subcategories.id;
          public          postgres    false    212            ?            1259    59841 	   templates    TABLE     g  CREATE TABLE public.templates (
    id integer NOT NULL,
    "topBar" text NOT NULL,
    "topText" text NOT NULL,
    "backgroundColor" text NOT NULL,
    "textColor" text NOT NULL,
    logo text NOT NULL,
    icon text NOT NULL,
    "socialMedia" text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.templates;
       public         heap    postgres    false            ?            1259    59839    templates_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.templates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.templates_id_seq;
       public          postgres    false    209                       0    0    templates_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.templates_id_seq OWNED BY public.templates.id;
          public          postgres    false    208            ?            1259    59714    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    59712    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    205                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    204                       2604    76297    administrator id    DEFAULT     t   ALTER TABLE ONLY public.administrator ALTER COLUMN id SET DEFAULT nextval('public.administrator_id_seq'::regclass);
 ?   ALTER TABLE public.administrator ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223                       2604    59874    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211                       2604    76268    city id    DEFAULT     b   ALTER TABLE ONLY public.city ALTER COLUMN id SET DEFAULT nextval('public.city_id_seq'::regclass);
 6   ALTER TABLE public.city ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219                       2604    76281 	   client id    DEFAULT     f   ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);
 8   ALTER TABLE public.client ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221                       2604    76247 
   country id    DEFAULT     h   ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);
 9   ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215                       2604    76255    department id    DEFAULT     n   ALTER TABLE ONLY public.department ALTER COLUMN id SET DEFAULT nextval('public.department_id_seq'::regclass);
 <   ALTER TABLE public.department ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217                       2604    59730    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207                       2604    76321    mechanics id    DEFAULT     k   ALTER TABLE ONLY public.mechanics ALTER COLUMN id SET DEFAULT nextval('public.mechanic_id_seq'::regclass);
 ;   ALTER TABLE public.mechanics ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            	           2604    59709    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203                       2604    76479 
   payment id    DEFAULT     h   ALTER TABLE ONLY public.payment ALTER COLUMN id SET DEFAULT nextval('public.payment_id_seq'::regclass);
 9   ALTER TABLE public.payment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227                       2604    76498 
   service id    DEFAULT     h   ALTER TABLE ONLY public.service ALTER COLUMN id SET DEFAULT nextval('public.service_id_seq'::regclass);
 9   ALTER TABLE public.service ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231                       2604    76810    servicelist id    DEFAULT     p   ALTER TABLE ONLY public.servicelist ALTER COLUMN id SET DEFAULT nextval('public.servicelist_id_seq'::regclass);
 =   ALTER TABLE public.servicelist ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237                       2604    76751    servicescheduling id    DEFAULT     |   ALTER TABLE ONLY public.servicescheduling ALTER COLUMN id SET DEFAULT nextval('public.servicescheduling_id_seq'::regclass);
 C   ALTER TABLE public.servicescheduling ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235                       2604    76490    servicetype id    DEFAULT     p   ALTER TABLE ONLY public.servicetype ALTER COLUMN id SET DEFAULT nextval('public.servicetype_id_seq'::regclass);
 =   ALTER TABLE public.servicetype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229                       2604    76577    statusservicescheduling id    DEFAULT     ?   ALTER TABLE ONLY public.statusservicescheduling ALTER COLUMN id SET DEFAULT nextval('public.statusservicescheduling_id_seq'::regclass);
 I   ALTER TABLE public.statusservicescheduling ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233                       2604    59885    subcategories id    DEFAULT     t   ALTER TABLE ONLY public.subcategories ALTER COLUMN id SET DEFAULT nextval('public.subcategories_id_seq'::regclass);
 ?   ALTER TABLE public.subcategories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213                       2604    59844    templates id    DEFAULT     l   ALTER TABLE ONLY public.templates ALTER COLUMN id SET DEFAULT nextval('public.templates_id_seq'::regclass);
 ;   ALTER TABLE public.templates ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            
           2604    59717    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            ?          0    76294    administrator 
   TABLE DATA           ^   COPY public.administrator (id, fullname, email, password, created_at, updated_at) FROM stdin;
    public          postgres    false    223   ?      ?          0    59871 
   categories 
   TABLE DATA           Q   COPY public.categories (id, category, route, created_at, updated_at) FROM stdin;
    public          postgres    false    211         ?          0    76265    city 
   TABLE DATA           O   COPY public.city (id, name, department_id, created_at, updated_at) FROM stdin;
    public          postgres    false    219   5      ?          0    76278    client 
   TABLE DATA           ?   COPY public.client (id, name, surname, email, password, identity, phone, "carClient", "profilePicture", gender, latitude, longitude, rh, city_id, created_at, updated_at) FROM stdin;
    public          postgres    false    221   d      ?          0    76244    country 
   TABLE DATA           [   COPY public.country (id, "codeCountry", "nameCountry", created_at, updated_at) FROM stdin;
    public          postgres    false    215   ?      ?          0    76252 
   department 
   TABLE DATA           ^   COPY public.department (id, "nameDepartment", country_id, created_at, updated_at) FROM stdin;
    public          postgres    false    217   ?      ?          0    59727    failed_jobs 
   TABLE DATA           [   COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    207   ?      ?          0    76318 	   mechanics 
   TABLE DATA           ?   COPY public.mechanics (id, email, password, name, surname, identity, phone, "profilePicture", gender, latitude, longitude, city_id, created_at, updated_at) FROM stdin;
    public          postgres    false    225         ?          0    59706 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    203   J      ?          0    76476    payment 
   TABLE DATA           ?   COPY public.payment (id, "confirmCodePayment", description, response, "serviceScheduling_id", created_at, updated_at) FROM stdin;
    public          postgres    false    227   ?      ?          0    76495    service 
   TABLE DATA           `   COPY public.service (id, name, description, servicetype_id, created_at, updated_at) FROM stdin;
    public          postgres    false    231   ?      ?          0    76807    servicelist 
   TABLE DATA           ?   COPY public.servicelist (id, cost, "previewImageService", "statusService_id", mechanic_id, service_id, servicescheduling_id, created_at, updated_at) FROM stdin;
    public          postgres    false    237   ?      ?          0    76748    servicescheduling 
   TABLE DATA           /  COPY public.servicescheduling (id, "createDateService", "estimatedDateClient", "deleteCodeService", "mechanicCommentService", "clientCommentService", "mechanicReputationService", "clientReputationService", client_id, "serviceList_id", "statusService_id", payment_id, created_at, updated_at) FROM stdin;
    public          postgres    false    235   ?      ?          0    76487    servicetype 
   TABLE DATA           G   COPY public.servicetype (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    229         ?          0    76574    statusservicescheduling 
   TABLE DATA           `   COPY public.statusservicescheduling (id, name, description, created_at, updated_at) FROM stdin;
    public          postgres    false    233   3      ?          0    59882    subcategories 
   TABLE DATA           f   COPY public.subcategories (id, "subCategory", category_id, route, created_at, updated_at) FROM stdin;
    public          postgres    false    213   P      ?          0    59841 	   templates 
   TABLE DATA           ?   COPY public.templates (id, "topBar", "topText", "backgroundColor", "textColor", logo, icon, "socialMedia", created_at, updated_at) FROM stdin;
    public          postgres    false    209   m      ?          0    59714    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    205   d      	           0    0    administrator_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.administrator_id_seq', 1, false);
          public          postgres    false    222            
           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    210                       0    0    city_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.city_id_seq', 68, true);
          public          postgres    false    218                       0    0    client_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.client_id_seq', 1, false);
          public          postgres    false    220                       0    0    country_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.country_id_seq', 2, true);
          public          postgres    false    214                       0    0    department_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.department_id_seq', 1, true);
          public          postgres    false    216                       0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    206                       0    0    mechanic_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.mechanic_id_seq', 9, true);
          public          postgres    false    224                       0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 28, true);
          public          postgres    false    202                       0    0    payment_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.payment_id_seq', 1, false);
          public          postgres    false    226                       0    0    service_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.service_id_seq', 1, false);
          public          postgres    false    230                       0    0    servicelist_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.servicelist_id_seq', 1, false);
          public          postgres    false    236                       0    0    servicescheduling_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.servicescheduling_id_seq', 1, false);
          public          postgres    false    234                       0    0    servicetype_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.servicetype_id_seq', 1, false);
          public          postgres    false    228                       0    0    statusservicescheduling_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.statusservicescheduling_id_seq', 1, false);
          public          postgres    false    232                       0    0    subcategories_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.subcategories_id_seq', 1, false);
          public          postgres    false    212                       0    0    templates_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.templates_id_seq', 3, true);
          public          postgres    false    208                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    204            3           2606    76302     administrator administrator_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.administrator
    ADD CONSTRAINT administrator_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.administrator DROP CONSTRAINT administrator_pkey;
       public            postgres    false    223            '           2606    59879    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    211            /           2606    76270    city city_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    219            1           2606    76286    client client_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    221            +           2606    76249    country country_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    215            -           2606    76257    department department_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.department DROP CONSTRAINT department_pkey;
       public            postgres    false    217            #           2606    59736    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    207            5           2606    76326    mechanics mechanic_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.mechanics
    ADD CONSTRAINT mechanic_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.mechanics DROP CONSTRAINT mechanic_pkey;
       public            postgres    false    225                       2606    59711    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    203            7           2606    76484    payment payment_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    227            ;           2606    76503    service service_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.service DROP CONSTRAINT service_pkey;
       public            postgres    false    231            A           2606    76812    servicelist servicelist_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.servicelist
    ADD CONSTRAINT servicelist_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.servicelist DROP CONSTRAINT servicelist_pkey;
       public            postgres    false    237            ?           2606    76756 (   servicescheduling servicescheduling_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.servicescheduling
    ADD CONSTRAINT servicescheduling_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.servicescheduling DROP CONSTRAINT servicescheduling_pkey;
       public            postgres    false    235            9           2606    76492    servicetype servicetype_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.servicetype
    ADD CONSTRAINT servicetype_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.servicetype DROP CONSTRAINT servicetype_pkey;
       public            postgres    false    229            =           2606    76582 4   statusservicescheduling statusservicescheduling_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.statusservicescheduling
    ADD CONSTRAINT statusservicescheduling_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.statusservicescheduling DROP CONSTRAINT statusservicescheduling_pkey;
       public            postgres    false    233            )           2606    59890     subcategories subcategories_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_pkey;
       public            postgres    false    213            %           2606    59849    templates templates_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.templates
    ADD CONSTRAINT templates_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.templates DROP CONSTRAINT templates_pkey;
       public            postgres    false    209                       2606    59724    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    205            !           2606    59722    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    205            D           2606    76271    city city_department_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_department_id_foreign FOREIGN KEY (department_id) REFERENCES public.department(id);
 I   ALTER TABLE ONLY public.city DROP CONSTRAINT city_department_id_foreign;
       public          postgres    false    217    2861    219            E           2606    76287    client client_city_id_foreign    FK CONSTRAINT     {   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_city_id_foreign FOREIGN KEY (city_id) REFERENCES public.city(id);
 G   ALTER TABLE ONLY public.client DROP CONSTRAINT client_city_id_foreign;
       public          postgres    false    219    2863    221            C           2606    76258 (   department department_country_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_country_id_foreign FOREIGN KEY (country_id) REFERENCES public.country(id);
 R   ALTER TABLE ONLY public.department DROP CONSTRAINT department_country_id_foreign;
       public          postgres    false    217    215    2859            F           2606    76327 "   mechanics mechanic_city_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mechanics
    ADD CONSTRAINT mechanic_city_id_foreign FOREIGN KEY (city_id) REFERENCES public.city(id);
 L   ALTER TABLE ONLY public.mechanics DROP CONSTRAINT mechanic_city_id_foreign;
       public          postgres    false    2863    219    225            G           2606    76504 &   service service_servicetype_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_servicetype_id_foreign FOREIGN KEY (servicetype_id) REFERENCES public.servicetype(id);
 P   ALTER TABLE ONLY public.service DROP CONSTRAINT service_servicetype_id_foreign;
       public          postgres    false    229    231    2873            K           2606    76813 +   servicelist servicelist_mechanic_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.servicelist
    ADD CONSTRAINT servicelist_mechanic_id_foreign FOREIGN KEY (mechanic_id) REFERENCES public.mechanics(id);
 U   ALTER TABLE ONLY public.servicelist DROP CONSTRAINT servicelist_mechanic_id_foreign;
       public          postgres    false    2869    225    237            L           2606    76818 *   servicelist servicelist_service_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.servicelist
    ADD CONSTRAINT servicelist_service_id_foreign FOREIGN KEY (service_id) REFERENCES public.service(id);
 T   ALTER TABLE ONLY public.servicelist DROP CONSTRAINT servicelist_service_id_foreign;
       public          postgres    false    2875    231    237            M           2606    76823 4   servicelist servicelist_servicescheduling_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.servicelist
    ADD CONSTRAINT servicelist_servicescheduling_id_foreign FOREIGN KEY (servicescheduling_id) REFERENCES public.servicescheduling(id);
 ^   ALTER TABLE ONLY public.servicelist DROP CONSTRAINT servicelist_servicescheduling_id_foreign;
       public          postgres    false    237    235    2879            N           2606    76828 0   servicelist servicelist_statusservice_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.servicelist
    ADD CONSTRAINT servicelist_statusservice_id_foreign FOREIGN KEY ("statusService_id") REFERENCES public.statusservicescheduling(id);
 Z   ALTER TABLE ONLY public.servicelist DROP CONSTRAINT servicelist_statusservice_id_foreign;
       public          postgres    false    237    233    2877            H           2606    76757 5   servicescheduling servicescheduling_client_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.servicescheduling
    ADD CONSTRAINT servicescheduling_client_id_foreign FOREIGN KEY (client_id) REFERENCES public.client(id);
 _   ALTER TABLE ONLY public.servicescheduling DROP CONSTRAINT servicescheduling_client_id_foreign;
       public          postgres    false    2865    235    221            J           2606    76772 6   servicescheduling servicescheduling_payment_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.servicescheduling
    ADD CONSTRAINT servicescheduling_payment_id_foreign FOREIGN KEY (payment_id) REFERENCES public.payment(id);
 `   ALTER TABLE ONLY public.servicescheduling DROP CONSTRAINT servicescheduling_payment_id_foreign;
       public          postgres    false    2871    227    235            I           2606    76767 <   servicescheduling servicescheduling_statusservice_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.servicescheduling
    ADD CONSTRAINT servicescheduling_statusservice_id_foreign FOREIGN KEY ("statusService_id") REFERENCES public.statusservicescheduling(id);
 f   ALTER TABLE ONLY public.servicescheduling DROP CONSTRAINT servicescheduling_statusservice_id_foreign;
       public          postgres    false    2877    233    235            B           2606    59891 /   subcategories subcategories_category_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_category_id_foreign FOREIGN KEY (category_id) REFERENCES public.categories(id);
 Y   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_category_id_foreign;
       public          postgres    false    2855    211    213            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?3??M?ˬJ?I-?4???"?=... ]1      ?      x?????? ? ?      ?   )   x?3?4?t????M?L???".#N#? נó??=... Ց	?      ?      x?3?tN?II,?4???"?=... ?7?      ?      x?????? ? ?      ?   7  x??һn?0????ۢ??1l?:tI/J2f9ة????6o??%(S?H a[??[?4?·??1־ƥ???a?lK??f?jXT?????\??aԿ??D|??xo?nPi????v??c6???v??.?P???^?!?0p
????梸?????~???9???HD????d?I?`????:??`???#?2????????~??w???#L0?N';???-?;?D?*???.?!?1je{?OU?~¬?^?BW?????l??E????S??t)I??R:v?f*??ͬ?C???y??(?????      ?   H  x?u?[n? ?ﲘ????TBӄ?/a\)?/?l????s?1?!??j@Mm?3??}sa??\F?Pi*?c???????r)\&????Ti\q??ٛ??=1?1?TS'?nZ??rbF ?N?9???mZ?K??sXs?y?m???`G?? ??0'???1?+???,???&??ͱp?p?Y.??Sݮ???v??W5??2Z?&??-?P?I ??%??}?i??ަO{s?>??ZҪI#????#H????ܟ?????????????o|??L)?????˅%?z? (?f?1????`?x|9??.@	?SA?? ??N??'5      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?   x????n?0?gx
??GM?*c?0f?С?`?a???QT????V??8Yg??~??F?M???}?V?8??|?6Oї?S?u?8A?I?*?Z??c?D;2a??ͭo?X/Xji؎Ur]?
?O???????L?k?	<?۟??D????FVbÙ+\Ҡ???$>;|a??N???§a?/,R(De`ݚ??i&?L|?D۞??d3S????^?#r?]Xw?$(?ۉE???V?Q      ?      x?????? ? ?     