CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS role_list (
	role_name text PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS film_genre_list (
	film_genre text PRIMARY KEY
);

CREATE TABLE country_list (
	country_name text PRIMARY KEY
);

CREATE OR REPLACE FUNCTION init_film_genre_list() RETURNS void AS $$
	BEGIN
		INSERT INTO film_genre_list ("film_genre") VALUES ('Action');
		INSERT INTO film_genre_list ("film_genre") VALUES ('Scifi');
		INSERT INTO film_genre_list ("film_genre") VALUES ('Adventure');
		INSERT INTO film_genre_list ("film_genre") VALUES ('Comedy');
		INSERT INTO film_genre_list ("film_genre") VALUES ('Drama');
		INSERT INTO film_genre_list ("film_genre") VALUES ('Fantasy');
		INSERT INTO film_genre_list ("film_genre") VALUES ('Horror');
		INSERT INTO film_genre_list ("film_genre") VALUES ('Mystery');
		INSERT INTO film_genre_list ("film_genre") VALUES ('Romance');
		INSERT INTO film_genre_list ("film_genre") VALUES ('Thriller');
		INSERT INTO film_genre_list ("film_genre") VALUES ('Western');
		INSERT INTO film_genre_list ("film_genre") VALUES ('Documentary');
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION init_role_list() RETURNS void AS $$
	BEGIN
		INSERT INTO role_list ("role_name") VALUES ('Producer');
		INSERT INTO role_list ("role_name") VALUES ('Director');
		INSERT INTO role_list ("role_name") VALUES ('Screenwriter');
		INSERT INTO role_list ("role_name") VALUES ('Editor');
		INSERT INTO role_list ("role_name") VALUES ('Cast');
		INSERT INTO role_list ("role_name") VALUES ('Other Role(s)');
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION init_country_list() RETURNS void AS $$
  BEGIN
    INSERT INTO country_list ("country_name") VALUES ('Afghanistan');
	INSERT INTO country_list ("country_name") VALUES ('Albania');
	INSERT INTO country_list ("country_name") VALUES ('Algeria');
	INSERT INTO country_list ("country_name") VALUES ('Andorra');
	INSERT INTO country_list ("country_name") VALUES ('Angola');
	INSERT INTO country_list ("country_name") VALUES ('Anguilla');
	INSERT INTO country_list ("country_name") VALUES ('Antigua & Barbuda');
	INSERT INTO country_list ("country_name") VALUES ('Argentina');
	INSERT INTO country_list ("country_name") VALUES ('Armenia');
	INSERT INTO country_list ("country_name") VALUES ('Aruba');
	INSERT INTO country_list ("country_name") VALUES ('Australia');
	INSERT INTO country_list ("country_name") VALUES ('Austria');
	INSERT INTO country_list ("country_name") VALUES ('Azerbaijan');
	INSERT INTO country_list ("country_name") VALUES ('Bahamas');
	INSERT INTO country_list ("country_name") VALUES ('Bahrain');
	INSERT INTO country_list ("country_name") VALUES ('Bangladesh');
	INSERT INTO country_list ("country_name") VALUES ('Barbados');
	INSERT INTO country_list ("country_name") VALUES ('Belarus');
	INSERT INTO country_list ("country_name") VALUES ('Belgium');
	INSERT INTO country_list ("country_name") VALUES ('Belize');
	INSERT INTO country_list ("country_name") VALUES ('Benin');
	INSERT INTO country_list ("country_name") VALUES ('Bermuda');
	INSERT INTO country_list ("country_name") VALUES ('Bhutan');
	INSERT INTO country_list ("country_name") VALUES ('Bolivia');
	INSERT INTO country_list ("country_name") VALUES ('Bosnia & Herzegovina');
	INSERT INTO country_list ("country_name") VALUES ('Botswana');
	INSERT INTO country_list ("country_name") VALUES ('Brazil');
	INSERT INTO country_list ("country_name") VALUES ('Brunei');
	INSERT INTO country_list ("country_name") VALUES ('Bulgaria');
	INSERT INTO country_list ("country_name") VALUES ('Burkina Faso');
	INSERT INTO country_list ("country_name") VALUES ('Burundi');
	INSERT INTO country_list ("country_name") VALUES ('Cambodia');
	INSERT INTO country_list ("country_name") VALUES ('Cameroon');
	INSERT INTO country_list ("country_name") VALUES ('Canada');
	INSERT INTO country_list ("country_name") VALUES ('Cape Verde');
	INSERT INTO country_list ("country_name") VALUES ('Central African Republic');
	INSERT INTO country_list ("country_name") VALUES ('Chad');
	INSERT INTO country_list ("country_name") VALUES ('Chile');
	INSERT INTO country_list ("country_name") VALUES ('China PR');
	INSERT INTO country_list ("country_name") VALUES ('Colombia');
	INSERT INTO country_list ("country_name") VALUES ('Comoros');
	INSERT INTO country_list ("country_name") VALUES ('Republic of Congo');
	INSERT INTO country_list ("country_name") VALUES ('DR Congo');
	INSERT INTO country_list ("country_name") VALUES ('Costa Rica');
	INSERT INTO country_list ("country_name") VALUES ('Côte d’Ivoire');
	INSERT INTO country_list ("country_name") VALUES ('Croatia');
	INSERT INTO country_list ("country_name") VALUES ('Cuba');
	INSERT INTO country_list ("country_name") VALUES ('Curaçao');
	INSERT INTO country_list ("country_name") VALUES ('Cyprus');
	INSERT INTO country_list ("country_name") VALUES ('Czechia');
	INSERT INTO country_list ("country_name") VALUES ('Denmark');
	INSERT INTO country_list ("country_name") VALUES ('Djibouti');
	INSERT INTO country_list ("country_name") VALUES ('Dominica');
	INSERT INTO country_list ("country_name") VALUES ('Dominican Republic');
	INSERT INTO country_list ("country_name") VALUES ('Ecuador');
	INSERT INTO country_list ("country_name") VALUES ('Egypt');
	INSERT INTO country_list ("country_name") VALUES ('El Salvador');
	INSERT INTO country_list ("country_name") VALUES ('Equatorial Guinea');
	INSERT INTO country_list ("country_name") VALUES ('Eritrea');
	INSERT INTO country_list ("country_name") VALUES ('Estonia');
	INSERT INTO country_list ("country_name") VALUES ('Eswatini');
	INSERT INTO country_list ("country_name") VALUES ('Ethiopia');
	INSERT INTO country_list ("country_name") VALUES ('Falkland Islands');
	INSERT INTO country_list ("country_name") VALUES ('Faroe Islands');
	INSERT INTO country_list ("country_name") VALUES ('Fiji');
	INSERT INTO country_list ("country_name") VALUES ('Finland');
	INSERT INTO country_list ("country_name") VALUES ('France');
	INSERT INTO country_list ("country_name") VALUES ('French Guiana');
	INSERT INTO country_list ("country_name") VALUES ('French Polynesia');
	INSERT INTO country_list ("country_name") VALUES ('French Southern Territories');
	INSERT INTO country_list ("country_name") VALUES ('Gabon');
	INSERT INTO country_list ("country_name") VALUES ('Gambia');
	INSERT INTO country_list ("country_name") VALUES ('Georgia');
	INSERT INTO country_list ("country_name") VALUES ('Germany');
	INSERT INTO country_list ("country_name") VALUES ('Ghana');
	INSERT INTO country_list ("country_name") VALUES ('Gibraltar');
	INSERT INTO country_list ("country_name") VALUES ('Greece');
	INSERT INTO country_list ("country_name") VALUES ('Greenland');
	INSERT INTO country_list ("country_name") VALUES ('Grenada');
	INSERT INTO country_list ("country_name") VALUES ('Guadeloupe');
	INSERT INTO country_list ("country_name") VALUES ('Guam');
	INSERT INTO country_list ("country_name") VALUES ('Guatemala');
	INSERT INTO country_list ("country_name") VALUES ('Guinea');
	INSERT INTO country_list ("country_name") VALUES ('Guinea-Bissau');
	INSERT INTO country_list ("country_name") VALUES ('Guyana');
	INSERT INTO country_list ("country_name") VALUES ('Haiti');
	INSERT INTO country_list ("country_name") VALUES ('Honduras');
	INSERT INTO country_list ("country_name") VALUES ('Hong Kong SAR China');
	INSERT INTO country_list ("country_name") VALUES ('Hungary');
	INSERT INTO country_list ("country_name") VALUES ('Iceland');
	INSERT INTO country_list ("country_name") VALUES ('India');
	INSERT INTO country_list ("country_name") VALUES ('Indonesia');
	INSERT INTO country_list ("country_name") VALUES ('Iran');
	INSERT INTO country_list ("country_name") VALUES ('Iraq');
	INSERT INTO country_list ("country_name") VALUES ('Ireland');
	INSERT INTO country_list ("country_name") VALUES ('Israel');
	INSERT INTO country_list ("country_name") VALUES ('Italy');
	INSERT INTO country_list ("country_name") VALUES ('Jamaica');
	INSERT INTO country_list ("country_name") VALUES ('Japan');
	INSERT INTO country_list ("country_name") VALUES ('Jordan');
	INSERT INTO country_list ("country_name") VALUES ('Kazakhstan');
	INSERT INTO country_list ("country_name") VALUES ('Kenya');
	INSERT INTO country_list ("country_name") VALUES ('Kiribati');
	INSERT INTO country_list ("country_name") VALUES ('Kosovo');
	INSERT INTO country_list ("country_name") VALUES ('Kuwait');
	INSERT INTO country_list ("country_name") VALUES ('Kyrgyzstan');
	INSERT INTO country_list ("country_name") VALUES ('Laos');
	INSERT INTO country_list ("country_name") VALUES ('Latvia');
	INSERT INTO country_list ("country_name") VALUES ('Lebanon');
	INSERT INTO country_list ("country_name") VALUES ('Lesotho');
	INSERT INTO country_list ("country_name") VALUES ('Liberia');
	INSERT INTO country_list ("country_name") VALUES ('Libya');
	INSERT INTO country_list ("country_name") VALUES ('Liechtenstein');
	INSERT INTO country_list ("country_name") VALUES ('Lithuania');
	INSERT INTO country_list ("country_name") VALUES ('Luxembourg');
	INSERT INTO country_list ("country_name") VALUES ('Macao SAR China');
	INSERT INTO country_list ("country_name") VALUES ('Madagascar');
	INSERT INTO country_list ("country_name") VALUES ('Malawi');
	INSERT INTO country_list ("country_name") VALUES ('Malaysia');
	INSERT INTO country_list ("country_name") VALUES ('Maldives');
	INSERT INTO country_list ("country_name") VALUES ('Mali');
	INSERT INTO country_list ("country_name") VALUES ('Malta');
	INSERT INTO country_list ("country_name") VALUES ('Marshall Islands');
	INSERT INTO country_list ("country_name") VALUES ('Mauritania');
	INSERT INTO country_list ("country_name") VALUES ('Mauritius');
	INSERT INTO country_list ("country_name") VALUES ('Mexico');
	INSERT INTO country_list ("country_name") VALUES ('Micronesia');
	INSERT INTO country_list ("country_name") VALUES ('Moldova');
	INSERT INTO country_list ("country_name") VALUES ('Monaco');
	INSERT INTO country_list ("country_name") VALUES ('Mongolia');
	INSERT INTO country_list ("country_name") VALUES ('Montenegro');
	INSERT INTO country_list ("country_name") VALUES ('Montserrat');
	INSERT INTO country_list ("country_name") VALUES ('Morocco');
	INSERT INTO country_list ("country_name") VALUES ('Mozambique');
	INSERT INTO country_list ("country_name") VALUES ('Myanmar');
	INSERT INTO country_list ("country_name") VALUES ('Namibia');
	INSERT INTO country_list ("country_name") VALUES ('Nauru');
	INSERT INTO country_list ("country_name") VALUES ('Nepal');
	INSERT INTO country_list ("country_name") VALUES ('Netherlands');
	INSERT INTO country_list ("country_name") VALUES ('New Caledonia');
	INSERT INTO country_list ("country_name") VALUES ('New Zealand');
	INSERT INTO country_list ("country_name") VALUES ('Nicaragua');
	INSERT INTO country_list ("country_name") VALUES ('Niger');
	INSERT INTO country_list ("country_name") VALUES ('Nigeria');
	INSERT INTO country_list ("country_name") VALUES ('North Korea');
	INSERT INTO country_list ("country_name") VALUES ('North Macedonia');
	INSERT INTO country_list ("country_name") VALUES ('Norway');
	INSERT INTO country_list ("country_name") VALUES ('Oman');
	INSERT INTO country_list ("country_name") VALUES ('Pakistan');
	INSERT INTO country_list ("country_name") VALUES ('Palau');
	INSERT INTO country_list ("country_name") VALUES ('Palestinian Territories');
	INSERT INTO country_list ("country_name") VALUES ('Panama');
	INSERT INTO country_list ("country_name") VALUES ('Papua New Guinea');
	INSERT INTO country_list ("country_name") VALUES ('Paraguay');
	INSERT INTO country_list ("country_name") VALUES ('Peru');
	INSERT INTO country_list ("country_name") VALUES ('Philippines');
	INSERT INTO country_list ("country_name") VALUES ('Poland');
	INSERT INTO country_list ("country_name") VALUES ('Portugal');
	INSERT INTO country_list ("country_name") VALUES ('Qatar');
	INSERT INTO country_list ("country_name") VALUES ('Romania');
	INSERT INTO country_list ("country_name") VALUES ('Russia');
	INSERT INTO country_list ("country_name") VALUES ('Rwanda');
	INSERT INTO country_list ("country_name") VALUES ('Samoa');
	INSERT INTO country_list ("country_name") VALUES ('Film8 Marino');
	INSERT INTO country_list ("country_name") VALUES ('São Tomé & Príncipe');
	INSERT INTO country_list ("country_name") VALUES ('Saudi Arabia');
	INSERT INTO country_list ("country_name") VALUES ('Senegal');
	INSERT INTO country_list ("country_name") VALUES ('Serbia');
	INSERT INTO country_list ("country_name") VALUES ('Seychelles');
	INSERT INTO country_list ("country_name") VALUES ('Sierra Leone');
	INSERT INTO country_list ("country_name") VALUES ('Singapore');
	INSERT INTO country_list ("country_name") VALUES ('Slovakia');
	INSERT INTO country_list ("country_name") VALUES ('Slovenia');
	INSERT INTO country_list ("country_name") VALUES ('Solomon Islands');
	INSERT INTO country_list ("country_name") VALUES ('Somalia');
	INSERT INTO country_list ("country_name") VALUES ('South Africa');
	INSERT INTO country_list ("country_name") VALUES ('South Korea');
	INSERT INTO country_list ("country_name") VALUES ('South Sudan');
	INSERT INTO country_list ("country_name") VALUES ('Spain');
	INSERT INTO country_list ("country_name") VALUES ('Sri Lanka');
	INSERT INTO country_list ("country_name") VALUES ('St. Kitts & Nevis');
	INSERT INTO country_list ("country_name") VALUES ('St. Lucia');
	INSERT INTO country_list ("country_name") VALUES ('St. Martin');
	INSERT INTO country_list ("country_name") VALUES ('St. Vincent & Grenadines');
	INSERT INTO country_list ("country_name") VALUES ('Sudan');
	INSERT INTO country_list ("country_name") VALUES ('Suriname');
	INSERT INTO country_list ("country_name") VALUES ('Sweden');
	INSERT INTO country_list ("country_name") VALUES ('Switzerland');
	INSERT INTO country_list ("country_name") VALUES ('Syria');
	INSERT INTO country_list ("country_name") VALUES ('Taiwan');
	INSERT INTO country_list ("country_name") VALUES ('Tajikistan');
	INSERT INTO country_list ("country_name") VALUES ('Tanzania');
	INSERT INTO country_list ("country_name") VALUES ('Thailand');
	INSERT INTO country_list ("country_name") VALUES ('Timor-Leste');
	INSERT INTO country_list ("country_name") VALUES ('Togo');
	INSERT INTO country_list ("country_name") VALUES ('Tonga');
	INSERT INTO country_list ("country_name") VALUES ('Trinidad & Tobago');
	INSERT INTO country_list ("country_name") VALUES ('Tunisia');
	INSERT INTO country_list ("country_name") VALUES ('Turkey');
	INSERT INTO country_list ("country_name") VALUES ('Turkmenistan');
	INSERT INTO country_list ("country_name") VALUES ('Tuvalu');
	INSERT INTO country_list ("country_name") VALUES ('Uganda');
	INSERT INTO country_list ("country_name") VALUES ('Ukraine');
	INSERT INTO country_list ("country_name") VALUES ('United Arab Emirates');
	INSERT INTO country_list ("country_name") VALUES ('United Kingdom');
	INSERT INTO country_list ("country_name") VALUES ('United States');
	INSERT INTO country_list ("country_name") VALUES ('Uruguay');
	INSERT INTO country_list ("country_name") VALUES ('Uzbekistan');
	INSERT INTO country_list ("country_name") VALUES ('Vanuatu');
	INSERT INTO country_list ("country_name") VALUES ('Vatican City');
	INSERT INTO country_list ("country_name") VALUES ('Venezuela');
	INSERT INTO country_list ("country_name") VALUES ('Vietnam');
	INSERT INTO country_list ("country_name") VALUES ('Western Sahara');
	INSERT INTO country_list ("country_name") VALUES ('Yemen');
	INSERT INTO country_list ("country_name") VALUES ('Zambia');
	INSERT INTO country_list ("country_name") VALUES ('Zimbabwe');
  END;
$$ LANGUAGE plpgsql;

SELECT init_film_genre_list();
SELECT init_role_list();
SELECT init_country_list();

CREATE DOMAIN name_type_check as text check (value IS NOT NULL AND value != '');

CREATE TYPE name_type AS (
	forename name_type_check,
	surname name_type_check
);

CREATE TABLE IF NOT EXISTS film_related_persons (
	id uuid PRIMARY KEY,
	name name_type,
	date_of_birth date,
	sex text,
	nationality text REFERENCES country_list(country_name),
	CONSTRAINT accepted_date_of_birth CHECK (date_of_birth < '2020-01-01 00:00:00'::timestamp AND date_of_birth >= '1900-01-01 00:00:00'::timestamp)
);

CREATE TABLE IF NOT EXISTS film (
	id uuid PRIMARY KEY,
	title text CHECK (title IS NOT NULL AND title != ''), -- changeable,
	release_year integer CHECK (release_year > 1887 AND release_year <= 2022), -- changeable,
	genre text CHECK (genre IS NOT NULL AND genre != ''), -- changeable,
	min_age_of_audience integer CHECK (min_age_of_audience > 0 AND min_age_of_audience < 22), -- changeable,
	country_of_production text,  -- changeable,
	subordinated_to uuid REFERENCES film(id), -- changeable,
	film_total_rating integer CHECK (film_total_rating >= 0),
	number_of_raters integer CHECK (number_of_raters >= 0),
	FOREIGN KEY (country_of_production) REFERENCES country_list(country_name),
	CONSTRAINT no_self_link CHECK (id <> subordinated_to)
);

CREATE DOMAIN film_rating_range AS integer CHECK (VALUE > 0 and VALUE <= 10);

CREATE TABLE IF NOT EXISTS film_rater (
	id uuid PRIMARY KEY,
	username text CHECK (username IS NOT NULL AND username != ''),
	UNIQUE(username)
);

CREATE TABLE IF NOT EXISTS film_persons_link (
	film_id uuid,
	person_id uuid,
	role text CHECK (role IS NOT NULL AND role != ''),
	FOREIGN KEY (film_id) REFERENCES film(id), 
	FOREIGN KEY (person_id) REFERENCES film_related_persons(id),
	PRIMARY KEY (film_id, person_id)
);

CREATE TABLE IF NOT EXISTS film_user_link (
	film_id uuid,
	user_id uuid,
	film_rating film_rating_range,
	FOREIGN KEY (film_id) REFERENCES film(id), 
	FOREIGN KEY (user_id) REFERENCES film_rater(id),
	PRIMARY KEY (film_id, user_id)
);


CREATE TYPE film_rating_type AS (
	film_id uuid,
	film_rating film_rating_range
);

CREATE TYPE recommendation_score_type AS (
	film_id uuid,
	score decimal
);

CREATE OR REPLACE FUNCTION forbidden() RETURNS TRIGGER AS $$
  BEGIN
    IF TG_LEVEL = 'STATEMENT' THEN
      RAISE feature_not_supported;
    END IF;
    RETURN NULL;
  END;  
$$ LANGUAGE plpgsql;

CREATE TRIGGER stop_truncate_film BEFORE TRUNCATE ON film
  WHEN (pg_trigger_depth() = 0)
    EXECUTE PROCEDURE forbidden();  

CREATE TRIGGER stop_truncate_film_related_persons BEFORE TRUNCATE ON film_related_persons
  WHEN (pg_trigger_depth() = 0)
    EXECUTE PROCEDURE forbidden();   

CREATE TRIGGER stop_truncate_film_rater BEFORE TRUNCATE ON film_rater
  WHEN (pg_trigger_depth() = 0)
    EXECUTE PROCEDURE forbidden();       

CREATE TRIGGER stop_operations_country_list BEFORE INSERT OR UPDATE OR DELETE OR TRUNCATE ON country_list
	EXECUTE PROCEDURE forbidden();

CREATE TRIGGER stop_operations_film_genre_list BEFORE INSERT OR UPDATE OR DELETE OR TRUNCATE ON film_genre_list
	EXECUTE PROCEDURE forbidden();

CREATE TRIGGER stop_operations_role_list BEFORE INSERT OR UPDATE OR DELETE OR TRUNCATE ON role_list
	EXECUTE PROCEDURE forbidden();  		  	  

CREATE OR REPLACE FUNCTION add_update_film_person_relation(fid uuid, pid uuid, roles text) RETURNS VOID AS $$
	BEGIN
		IF roles is NULL OR roles = '' THEN
			RAISE EXCEPTION 'role(s) cannot be an empty string!';
		END IF; 
		IF is_film_person_relation_exists(fid, pid) IS FALSE THEN
			INSERT INTO film_persons_link ("film_id", "person_id", "role") VALUES (fid, pid, roles);
		ELSE 
			UPDATE film_persons_link SET role = roles WHERE film_persons_link.film_id = fid AND film_persons_link.person_id = pid;
		END IF;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION add_people_film_relation(film_id uuid, person_ids uuid[], roles text[]) RETURNS VOID AS $$
	DECLARE
		arr_length int = array_length(person_ids, 1);
	BEGIN
		FOR i in 1..arr_length LOOP
			INSERT INTO film_persons_link ("film_id", "person_id", "role") 
			VALUES (film_id, person_ids[i], roles[i]);
		END LOOP;
	END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION add_films_person_relation(film_ids uuid[], person_id uuid, roles text[]) RETURNS VOID AS $$
	DECLARE
		arr_length int = array_length(film_ids, 1);
	BEGIN
		FOR i in 1..arr_length LOOP
			INSERT INTO film_persons_link ("film_id", "person_id", "role") 
			VALUES (film_ids[i], person_id, roles[i]);
		END LOOP;
	END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_film_people_relation(film_id_update uuid, person_id_update uuid, roles text) RETURNS VOID AS $$
	BEGIN
		UPDATE film_persons_link SET role = roles WHERE film_id = film_id_update AND person_id = person_id_update;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_film_people_relation(film_id_delete uuid, person_id_delete uuid) RETURNS VOID AS $$
	BEGIN
		DELETE FROM film_persons_link WHERE film_id = film_id_delete AND person_id = person_id_delete;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION is_film_person_relation_exists(film_id_e uuid, person_id_e uuid) RETURNS Boolean AS $$
	DECLARE
		is_exist boolean;
	BEGIN
		SELECT EXISTS(SELECT 1 FROM film_persons_link WHERE film_persons_link.film_id = film_id_e AND film_persons_link.person_id = person_id_e) INTO is_exist;
		RETURN is_exist;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION retrieve_film_people_relation_by_film_id(id uuid) RETURNS SETOF film_persons_link AS $$
	BEGIN
		RETURN QUERY
			SELECT * FROM film_persons_link WHERE film_persons_link.film_id = id;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION retrieve_film_people_relation_by_person_id(id uuid) RETURNS SETOF film_persons_link AS $$
	BEGIN
		RETURN QUERY
			SELECT * FROM film_persons_link WHERE film_persons_link.person_id = id;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION add_film_related_person(name name_type, date_of_birth date, sex text, nat text, film_lists uuid[], roles text[]) RETURNS uuid AS $$
	DECLARE
		id uuid = uuid_generate_v4();
		is_exist boolean;
		arr_length integer = array_length(film_lists, 1);
	BEGIN
		IF (name).forename IS NULL OR (name).forename = '' OR (name).surname IS NULL OR (name).surname = '' THEN
			RAISE EXCEPTION 'Invalid name! Forename and surname has to be filled.';
		END IF;

		IF date_of_birth >= '2020-01-01 00:00:00'::timestamp OR date_of_birth < '1900-01-01 00:00:00'::timestamp THEN
			RAISE EXCEPTION 'Acceptable range for date of birth: 1900-01-01 to 2019-12-31!';
		END IF;

		IF sex != 'male' and sex != 'female' THEN
			sex = 'N/A';
		END IF;
		SELECT EXISTS(SELECT 1 FROM country_list WHERE country_name = nat) INTO is_exist;
		IF is_exist IS FALSE THEN -- check if nationality input is valid
			RAISE EXCEPTION 'Invalid nationality!';
		END IF;
		INSERT INTO film_related_persons ("id", "name", "date_of_birth", "sex", "nationality")
		VALUES (id, name, date_of_birth, sex, nat);
		-- FOR CV (what films this particular person play in)
		IF arr_length IS NOT NULL THEN
			FOR i in 1..arr_length LOOP
				INSERT INTO film_persons_link ("film_id", "person_id", "role") VALUES (film_lists[i], id, roles[i]); 
			END LOOP;
		END IF;
		RETURN id;
	END
$$ LANGUAGE plpgsql;

-- when a particular field is not going to be edited, the func. parameter is set to NULL.
CREATE OR REPLACE FUNCTION update_film_related_person_by_id(person_id uuid, new_name name_type, new_date_of_birth date, new_sex text, new_nat text) RETURNS SETOF film_related_persons AS $$
	DECLARE
		is_exist boolean;
	BEGIN
		IF (new_name).forename IS NULL OR (new_name).forename = '' OR (new_name).surname IS NULL OR (new_name).surname = '' THEN
			RAISE EXCEPTION 'Invalid name! Forename and surname has to be filled.';
		END IF;

		IF new_date_of_birth >= '2020-01-01 00:00:00'::timestamp OR new_date_of_birth < '1900-01-01 00:00:00'::timestamp THEN
			RAISE EXCEPTION 'Acceptable range for date of birth: 1900-01-01 to 2019-12-31!';
		END IF;

		IF new_sex != 'male' and new_sex != 'female' THEN
			new_sex = 'N/A';
		END IF;

		SELECT EXISTS(SELECT 1 FROM country_list WHERE country_name = new_nat) INTO is_exist;
		IF is_exist IS FALSE THEN -- check if nationality input is valid
			RAISE EXCEPTION 'Invalid nationality!';
		END IF;

		UPDATE film_related_persons 
		SET name = new_name, date_of_birth = new_date_of_birth, sex = new_sex, nationality = new_nat 
		WHERE id = person_id;
		RETURN QUERY
			SELECT * FROM film_related_persons WHERE id = person_id;
	END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_film_related_person_cv_by_id(person_id uuid, film_ids uuid[], roles text[]) RETURNS SETOF film_persons_link AS $$
	DECLARE
		arr_length int = array_length(film_ids, 1);
		is_exist boolean;
	BEGIN
		-- film_ids array contains the film ID for all films in which the particular film related person wih ID person_id has a role in.
		-- remove rows in film_people_relation where film_persons_link.person_id = person_id, and film_persons_link.film_id IS NOT inside film_ids[]
		DELETE FROM film_persons_link WHERE person_id = person_id AND film_id != ALL(film_ids);
		-- loop over the array
		FOR i in 1..arr_length LOOP
			SELECT EXISTS(SELECT 1 FROM film_persons_link WHERE film_id = film_ids[i] AND person_id = person_id) INTO is_exist; 
			IF is_exist IS FALSE THEN
				-- a new movie
				INSERT INTO film_persons_link ("film_id", "person_id", "role") VALUES (film_ids[i], person_id, roles[i]);
			ELSE
				-- this relation already exists, use update instead (maybe there is/are changes in roles)
				UPDATE film_persons_link SET role = roles[i] WHERE film_id = film_ids[i] AND person_id = person_id;
			END IF;
		END LOOP;
		RETURN QUERY
			SELECT * FROM film_persons_link WHERE person_id = person_id;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION remove_film_related_person_by_id(person_id uuid) RETURNS VOID AS $$
	BEGIN
		DELETE FROM film_related_persons WHERE id = person_id;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION before_remove_film_related_person_func() RETURNS TRIGGER AS $$
	DECLARE
		affected_film_ids uuid[];
		arr_length integer;
	BEGIN
		SELECT ARRAY(SELECT film_id FROM film_persons_link WHERE person_id = OLD.id) INTO affected_film_ids; -- retrieve all of the affected film IDs
		DELETE FROM film_persons_link WHERE person_id = OLD.id; -- delete all of film-persons relations involving this specific person
		arr_length = array_length(affected_film_ids, 1); -- get array length
		IF arr_length IS NOT NULL THEN
			FOR i in 1..arr_length LOOP
				-- DELETE FROM film_user_link WHERE film_id = affected_film_ids[i];
				-- DELETE FROM film_persons_link WHERE film_id = affected_film_ids[i];
				DELETE FROM film WHERE id = affected_film_ids[i]; -- delete affected films
			END LOOP;
		END IF;
		RETURN OLD;
	END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION is_film_related_person_exists(person_id uuid) RETURNS boolean AS $$
	DECLARE
		is_exist boolean;
	BEGIN
		SELECT EXISTS(SELECT 1 FROM film_related_persons WHERE id = person_id) INTO is_exist;
		RETURN is_exist;
	END
$$ LANGUAGE plpgsql;

CREATE TRIGGER before_remove_film_related_person_trigger BEFORE DELETE ON film_related_persons
  FOR EACH ROW
    WHEN (pg_trigger_depth() = 0)
      EXECUTE PROCEDURE before_remove_film_related_person_func();   

CREATE OR REPLACE FUNCTION retrieve_all_film_related_persons() RETURNS SETOF film_related_persons AS $$
	BEGIN
		RETURN QUERY
			SELECT * FROM film_related_persons;
	END
$$ LANGUAGE plpgsql;

SELECT add_film_related_person(('Dimitris', 'Mihalis'), '1960-07-06', 'male', 'Greece', NULL, NULL);
SELECT add_film_related_person(('Anna', 'Gomez'), '1988-01-12', 'female', 'United States', NULL, NULL);
SELECT add_film_related_person(('Pierre', 'Augustin'), '1983-08-22', 'male', 'France', NULL, NULL);
SELECT add_film_related_person(('Catherine', 'Jones'), '1970-04-15', 'female', 'United States', NULL, NULL);
SELECT add_film_related_person(('Jacob', 'Nicholson'), '1983-11-22', 'male', 'United States', NULL, NULL);
SELECT add_film_related_person(('Mohamed', 'Khalil'), '1945-04-15', 'male', 'Egypt', NULL, NULL);
SELECT add_film_related_person(('Isabella', 'Martinez'), '1997-12-10', 'female', 'Argentina', NULL, NULL);
SELECT add_film_related_person(('Vika', 'Susanti'), '1986-04-16', 'female', 'Indonesia', NULL, NULL);
SELECT add_film_related_person(('Bella', 'Rossi'), '1983-11-22', 'female', 'Italy', NULL, NULL);
SELECT add_film_related_person(('Marcus', 'Antonio'), '1954-08-03', 'male', 'Canada', NULL, NULL);
SELECT add_film_related_person(('Emmanuel', 'Victoire'), '1987-03-11', 'male', 'France', NULL, NULL);
SELECT add_film_related_person(('Paul', 'Simpson'), '1979-12-01', 'male', 'United Kingdom', NULL, NULL);
SELECT add_film_related_person(('Tamayo', 'Imamoto'), '1986-05-13', 'female', 'Japan', NULL, NULL);
SELECT add_film_related_person(('Anton', 'Howard'), '1978-06-14', 'male', 'Singapore', NULL, NULL);
SELECT add_film_related_person(('Aaron', 'Ferguson'), '1961-01-29', 'male', 'United Kingdom', NULL, NULL);
SELECT add_film_related_person(('Wang', 'Yu'), '1989-07-23', 'male', 'Taiwan', NULL, NULL);
SELECT add_film_related_person(('Han', 'Sin-Woo'), '1979-06-04', 'male', 'South Korea', NULL, NULL);
SELECT add_film_related_person(('Walter', 'Weiß'), '1993-10-11', 'male', 'Germany', NULL, NULL);
SELECT add_film_related_person(('Angelina', 'Perez'), '1996-11-19', 'female', 'Colombia', NULL, NULL);
SELECT add_film_related_person(('Elizabeth', 'Harmon'), '2001-02-12', 'female', 'United States', NULL, NULL);
SELECT add_film_related_person(('Boris', 'Johnson'), '1964-06-19', 'male', 'United Kingdom', NULL, NULL);
SELECT add_film_related_person(('Henry', 'Wilkinson'), '1976-02-09', 'male', 'United States', NULL, NULL);

CREATE OR REPLACE FUNCTION create_user(username text) RETURNS uuid AS $$
	DECLARE
		user_id uuid = uuid_generate_v4();
	BEGIN
		INSERT INTO film_rater ("id", "username") VALUES (user_id, username);
		RETURN user_id;
	END	
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION rename_user_by_id(user_id uuid, new_name text) RETURNS text AS $$
	BEGIN
		UPDATE film_rater SET username = new_name WHERE id = user_id;
		RETURN new_name;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION rate_film_by_id(film_id_v uuid, user_id_v uuid, rating film_rating_range) RETURNS SETOF film_user_link AS $$
	DECLARE
		is_exist boolean;
	BEGIN
		-- add error checking
		IF (SELECT EXISTS(SELECT 1 FROM film_rater WHERE film_rater.id = user_id_v)) IS FALSE THEN
			RAISE EXCEPTION 'Invalid User ID!';
		END IF;
		IF (SELECT EXISTS(SELECT 1 FROM film WHERE film.id = film_id_v)) IS FALSE THEN
			RAISE EXCEPTION 'Invalid Film ID!';
		END IF;
		-- check whether the rating from particular user x to particular film y is already in the table or not
		SELECT EXISTS(SELECT 1 FROM film_user_link WHERE film_user_link.film_id = film_id_v AND film_user_link.user_id = user_id_v) INTO is_exist;
		IF is_exist is FALSE THEN
			INSERT INTO film_user_link ("film_id", "user_id", "film_rating") VALUES (film_id_v, user_id_v, rating);
		ELSE
			UPDATE film_user_link SET film_rating = rating WHERE film_user_link.film_id = film_id_v AND film_user_link.user_id = user_id_v;
		END IF;
		RETURN QUERY
			SELECT * FROM film_user_link WHERE film_user_link.film_id = film_id_v AND film_user_link.user_id = user_id_v;
	END	
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION retrieve_user_film_ratings_by_id(id uuid) RETURNS SETOF film_user_link AS $$
	BEGIN
		RETURN QUERY
			SELECT * FROM film_user_link WHERE film_user_link.user_id = id;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION remove_film_rating_by_id(user_id_d uuid, film_id_d uuid) RETURNS VOID AS $$
	BEGIN
		DELETE FROM film_user_link WHERE user_id = user_id_d AND film_id = film_id_d;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION is_film_rating_exists(user_id_e uuid, film_id_e uuid) RETURNS boolean AS $$
	DECLARE
		is_exist boolean;
	BEGIN
		SELECT EXISTS(SELECT 1 FROM film_user_link WHERE film_user_link.film_id = film_id_e AND film_user_link.user_id = user_id_e) INTO is_exist;
		RETURN is_exist;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION remove_film_rater_by_id(user_id_d uuid) RETURNS VOID AS $$
	BEGIN
		DELETE FROM film_user_link WHERE user_id = user_id_d;
		DELETE FROM film_rater WHERE film_rater.id = user_id_d;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION is_film_rater_exists(user_id uuid) RETURNS boolean AS $$
	DECLARE
		is_exist boolean;
	BEGIN
		SELECT EXISTS(SELECT 1 FROM film_rater WHERE id = user_id) INTO is_exist;
		RETURN is_exist;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_film_overall_rating() RETURNS TRIGGER AS $$
	BEGIN
		IF TG_OP = 'INSERT' THEN
			UPDATE film
			SET film_total_rating = film_total_rating + NEW.film_rating, number_of_raters = number_of_raters + 1
			WHERE id = NEW.film_id;
		ELSIF TG_OP = 'UPDATE' THEN
			UPDATE film
			SET film_total_rating = film_total_rating + NEW.film_rating - OLD.film_rating
			WHERE id = NEW.film_id;
		ELSIF TG_OP = 'DELETE' THEN
			UPDATE film
			SET film_total_rating = film_total_rating - OLD.film_rating, number_of_raters = number_of_raters - 1
			WHERE id = OLD.film_id;
		END IF;
		RETURN NULL;		
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION get_username_from_user_ids(user_ids uuid[]) RETURNS TABLE(username text) AS $$
	BEGIN
		RETURN QUERY
			SELECT username FROM film_rater WHERE film_rater.id = ANY(user_ids);
	END
$$ LANGUAGE plpgsql;


CREATE TRIGGER update_film_overall_rating_trigger AFTER INSERT OR UPDATE OR DELETE ON film_user_link
	FOR EACH ROW
		WHEN (pg_trigger_depth() = 0)
      		EXECUTE PROCEDURE update_film_overall_rating(); 

CREATE OR REPLACE FUNCTION add_film(title text, release_year integer, genres text, age_of_audience integer, 
	country_of_production text, subordinated_to_id uuid, crew_members uuid[], roles text[]) RETURNS uuid AS $$
	DECLARE
		film_id uuid = uuid_generate_v4(); 
		is_exist boolean;
		genre_arr text[];
		genre_iter text;
		valid_genres text = '';
		arr_length integer = array_length(crew_members, 1);
	BEGIN
		IF title IS NULL OR title = '' THEN
			RAISE EXCEPTION 'title not valid!';
		END IF;

		IF release_year < 1888 or release_year > 2022 THEN 	-- any other value not between 1888 ~ 2022 is an invalid value, set to NULL
			RAISE EXCEPTION 'age of audience must be an integer in range of 1888 to 2022'; 
		END IF;

		IF subordinated_to_id IS NOT NULL AND release_year < (SELECT film.release_year FROM film WHERE id = subordinated_to) THEN
			-- rule: the release year of a subordinated film should be later or the same year as the "parent" film!
			RAISE EXCEPTION 'release year for this film should be later than its parent film!';
		END IF;

		IF age_of_audience = 0 THEN
			age_of_audience = NULL;
		END IF;
		IF age_of_audience IS NOT NULL AND (age_of_audience < 1 OR age_of_audience > 21) THEN 	-- any other value not between 1 ~ 21 is an invalid value, set to NULL
			RAISE EXCEPTION 'age of audience must be an integer in range of 1 to 21'; 
		END IF;

		SELECT EXISTS(SELECT 1 FROM country_list WHERE country_name = country_of_production) INTO is_exist;
		IF is_exist IS FALSE THEN
			RAISE EXCEPTION 'invalid nationality!';
		END IF;

		SELECT EXISTS(SELECT 1 FROM film WHERE id = subordinated_to_id) INTO is_exist;
		IF is_exist IS FALSE THEN -- check the validity of subordinated_to id 
			subordinated_to_id = NULL;
		END IF;

		SELECT string_to_array(genres, '&') INTO genre_arr;
		IF array_length(genre_arr, 1) IS NOT NULL THEN
			FOREACH genre_iter in ARRAY genre_arr LOOP
				SELECT EXISTS(SELECT 1 FROM film_genre_list WHERE film_genre = genre_iter) INTO is_exist; -- check film genre validity
				IF is_exist is TRUE THEN
					valid_genres = valid_genres || '&' || genre_iter;
				END IF;
			END LOOP;
		END IF;
		SELECT substr(valid_genres, 2) INTO valid_genres; -- remove first char

		INSERT INTO film ("id", "title", "release_year", "genre", "min_age_of_audience", "country_of_production", "subordinated_to", "film_total_rating", "number_of_raters")
		VALUES (film_id, title, release_year, valid_genres, age_of_audience, country_of_production, subordinated_to_id, 0, 0);
		-- add the crew members for this particular film into a different table
		IF arr_length IS NOT NULL THEN
			FOR i in 1..arr_length LOOP
				INSERT INTO film_persons_link ("film_id", "person_id", "role") VALUES (film_id, crew_members[i], roles[i]);
			END LOOP;
		END IF;
		RETURN film_id;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION remove_film_by_id(film_id uuid) RETURNS VOID AS $$
	BEGIN
		DELETE FROM film WHERE id = film_id;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION is_film_exists(film_id uuid) RETURNS Boolean AS $$
	DECLARE
		is_exist boolean;
	BEGIN
		SELECT EXISTS(SELECT 1 FROM film WHERE film.id = film_id) INTO is_exist;
		RETURN is_exist;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_film_by_id(film_id uuid, new_title text, new_release_year integer, genres text, new_age_of_audience integer, new_country_of_production text, subordinated_to_id uuid) RETURNS SETOF film AS $$
	DECLARE
		old_data film;
		is_exist boolean;
		genre_arr text[];
		genre_iter text;
		valid_genres text = '';
		subordinated_films_ry int[];
		arr_length int;
	BEGIN
		SELECT * FROM film WHERE id = film_id INTO old_data;
		-- get the film release year for film(s) subordinated to film with id "film_id".
		SELECT ARRAY(SELECT release_year FROM film WHERE subordinated_to = film_id)::int[] INTO subordinated_films_ry;
		
		SELECT EXISTS(SELECT 1 FROM film WHERE id = subordinated_to_id) INTO is_exist;
		IF is_exist IS FALSE THEN -- check the validity of subordinated_to id 
			subordinated_to_id = NULL;
		END IF;
		arr_length = array_length(subordinated_films_ry, 1); -- get arr length
		IF arr_length IS NOT NULL THEN
			FOR i in 1..arr_length LOOP
				-- rule: the release year for a particular film x should not be later than film(s) subordinated to x.
				IF new_release_year > subordinated_films_ry[i] THEN
					RAISE EXCEPTION 'release year for this film should not be later than its subordinated film(s)!';
				END IF;
			END LOOP;
		END IF;

		IF subordinated_to_id IS NOT NULL AND new_release_year < (SELECT release_year FROM film WHERE id = subordinated_to_id) THEN
			-- rule: the release year of a subordinated film should be later or the same year as the "parent" film!
			RAISE EXCEPTION 'release year for this film should be later than its parent film!';
		END IF;

		IF new_release_year < 1888 or new_release_year > 2022 THEN 	-- any other value not between 1888 ~ 2022 is an invalid value, set to old value
			new_release_year = old_data.release_year; 
		END IF;

		IF new_age_of_audience < 1 or new_age_of_audience > 21 THEN 	-- any other value not between 1 ~ 21 is an invalid value, set to old value
			new_age_of_audience = old_data.min_age_of_audience; 
		END IF;

		SELECT EXISTS(SELECT 1 FROM country_list WHERE country_name = new_country_of_production) INTO is_exist;
		IF is_exist IS FALSE THEN
			new_country_of_production = old_data.country_of_production; -- in case of invalid value, set to old value
		END IF;

		SELECT string_to_array(genres, '&') INTO genre_arr;

		IF array_length(genre_arr, 1) IS NOT NULL THEN
			FOREACH genre_iter in ARRAY genre_arr LOOP
				SELECT EXISTS(SELECT 1 FROM film_genre_list WHERE film_genre = genre_iter) INTO is_exist; -- check film genre validity
				-- if genre is valid, add it into valid genre string
				IF is_exist is TRUE THEN
					valid_genres = valid_genres || '&' || genre_iter;
				END IF;
			END LOOP;
		END IF;

		SELECT substr(valid_genres, 2) INTO valid_genres; -- remove first char
		UPDATE film SET title = new_title, release_year = new_release_year, 
		genre = valid_genres, min_age_of_audience = new_age_of_audience, 
		country_of_production = new_country_of_production, subordinated_to = subordinated_to_id WHERE id = film_id;
		RETURN QUERY
			SELECT * FROM film WHERE id = film_id; -- get the updated film
	END
$$ LANGUAGE plpgsql;

-- Utility functions, not really needed for the implementation
CREATE OR REPLACE FUNCTION update_film_title_by_id(film_id uuid, new_title text) RETURNS VOID AS $$
	BEGIN
		UPDATE film SET title = new_title WHERE id = film_id;
	END
$$ LANGUAGE plpgsql; 

CREATE OR REPLACE FUNCTION update_film_release_year_by_id(film_id uuid, new_release_year text, subordinated_to_id uuid) RETURNS VOID AS $$
	DECLARE
		subordinated_films_ry int[];
		arr_length int;
	BEGIN
		SELECT ARRAY(SELECT release_year FROM film WHERE subordinated_to = film_id)::int[] INTO subordinated_films_ry;
		-- get the film release year for film(s) subordinated to film with id "film_id".
		arr_length = array_length(subordinated_films_ry, 1);
		IF arr_length > 0 THEN
			FOR i in 1..arr_length LOOP
				-- rule: the release year for a particular film x should not be later than film(s) subordinated to x.
				IF new_release_year < subordinated_films_ry[i] THEN
					RAISE EXCEPTION 'release year for this film should not be later than its subordinated film(s)!';
				END IF;
			END LOOP;
		END IF;
		IF subordinated_to_id IS NOT NULL AND new_release_year < (SELECT release_year FROM film WHERE id = subordinated_to_id) THEN
			-- rule: the release year of a subordinated film should be later or the same year as the "parent" film!
			RAISE EXCEPTION 'release year for this film should be later than its parent film!';
		END IF;
		UPDATE film SET release_year = new_release_year WHERE id = film_id;
	END
$$ LANGUAGE plpgsql; 

CREATE OR REPLACE FUNCTION update_film_age_of_audience_by_id(film_id uuid, new_age_of_audience int) RETURNS VOID AS $$
	BEGIN
		IF new_age_of_audience >= 1 AND new_age_of_audience <= 21 THEN 	-- only update when any value is between 1 ~ 21. Otherwise, don't update!
			UPDATE film SET age_of_audience = new_age_of_audience WHERE id = film_id;
		END IF;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_film_country_of_production_by_id(film_id uuid, new_country_of_production text) RETURNS VOID AS $$
	DECLARE
		is_exist boolean;
	BEGIN
		SELECT EXISTS(SELECT 1 FROM country_list WHERE country_name = new_country_of_production) INTO is_exist;
		IF is_exist IS TRUE THEN
			UPDATE film SET country_of_production = new_country_of_production WHERE id = film_id;
		END IF;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_film_genres_by_id(film_id uuid, genres text) RETURNS VOID AS $$
	DECLARE
		genre_arr text[];
		genre_iter text;
		valid_genres text = '';
		is_exist boolean;
	BEGIN
		SELECT string_to_array(genres, '&') INTO genre_arr;
		FOREACH genre_iter in ARRAY genre_arr LOOP
			SELECT EXISTS(SELECT 1 FROM film_genre_list WHERE film_genre = genre_iter) INTO is_exist; -- check film genre validity
			-- if genre is valid, add it into valid genre string
			IF is_exist is TRUE THEN
				valid_genres = valid_genres || '&' || genre_iter;
			END IF;
		END LOOP;
		UPDATE film SET genre = genres WHERE id = film_id;
	END
$$ LANGUAGE plpgsql;

-- SELECT * FROM update_film_by_id((SELECT id FROM film WHERE title='Film1'), 'Film1', 2000, 'Drama&Horror&Mystery', 17, 'Greece', NULL);

CREATE OR REPLACE FUNCTION update_film_crew_members_by_id(id uuid, crew_members_ids uuid[], roles text[]) RETURNS SETOF film_persons_link AS $$
	DECLARE
		arr_length int = array_length(crew_members_ids, 1);
		is_exist boolean;
	BEGIN
		-- crew_members_ids array contains the ID for all crew members that have role(s) in the film wih ID {id}.
		-- remove rows in film_people_relation where film_persons_link.film_id = id and film_persons_link.person_id IS NOT inside crew_members_ids[]
		DELETE FROM film_persons_link WHERE film_persons_link.film_id = id AND person_id != ALL(crew_members_ids);
		-- loop over the array
		FOR i in 1..arr_length LOOP
			SELECT EXISTS(SELECT 1 FROM film_persons_link WHERE film_id = id AND person_id = crew_member_ids[i]) INTO is_exist; 
			IF is_exist IS FALSE THEN
				-- a new crew member for this particular film
				INSERT INTO film_persons_link ("film_id", "person_id", "role") VALUES (id, crew_members_ids[i], roles[i]);
			ELSE
				-- the relation between this film and person already exists, do update in case there is a change in role
				UPDATE film_persons_link SET role = roles[i] WHERE film_id = id AND person_id = crew_members_ids[i];
			END IF;
		END LOOP;
		RETURN QUERY
			SELECT * FROM film_persons_link WHERE person_id = person_id;
	END

$$ LANGUAGE plpgsql; 

CREATE OR REPLACE FUNCTION detect_film_cycle() RETURNS TRIGGER AS $$
  BEGIN
    IF EXISTS (
      WITH RECURSIVE search_graph (parentid, path, cycle) AS (
        SELECT NEW.subordinated_to, ARRAY[NEW.id, NEW.subordinated_to], (NEW.id = NEW.subordinated_to) FROM film WHERE id = NEW.subordinated_to
        UNION ALL
        SELECT film.subordinated_to, path || film.subordinated_to, film.subordinated_to = ANY(path) FROM search_graph JOIN film ON id = search_graph.parentid WHERE NOT cycle
      )
      SELECT 1 FROM search_graph WHERE cycle LIMIT 1
    ) THEN
    	RAISE EXCEPTION 'Prevent film cycle!';
		RETURN NULL;
    END IF;
    RETURN NEW;
  END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION find_all_subordinated_films(rootid uuid) RETURNS uuid[] AS $$
	DECLARE
		subordinated_films uuid[];
	BEGIN
		-- get all subordinated films (children & grandchildren)
		WITH RECURSIVE all_subordinated_films (id, parent_id, root_id) AS (
			SELECT s.id, s.subordinated_to AS parent_id, s.id AS root_id FROM film s
			UNION ALL
			SELECT c.id, c.subordinated_to AS parentid, p.root_id FROM film c
			JOIN all_subordinated_films p ON p.id = c.subordinated_to
		)
		SELECT ARRAY(SELECT id FROM all_subordinated_films WHERE root_id = rootid)::uuid[] INTO subordinated_films;
		RETURN subordinated_films;
	END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION retrieve_films_rated_by_user(user_id_s uuid) RETURNS SETOF film AS $$
	DECLARE
		film_ids uuid[];
	BEGIN
		SELECT ARRAY(SELECT film_id FROM film_user_link WHERE film_user_link.user_id = user_id_s)::uuid[] INTO film_ids;
		RETURN QUERY
			SELECT * FROM film WHERE film.id = ANY(film_ids);
	END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION before_remove_film_func() RETURNS TRIGGER AS $$
	DECLARE
		subordinated_films uuid[];

	BEGIN
		SELECT * FROM find_all_subordinated_films(OLD.id) INTO subordinated_films;
		DELETE FROM film_persons_link WHERE film_id = ANY(subordinated_films);
		DELETE FROM film_user_link WHERE film_id = ANY(subordinated_films);
		DELETE FROM film WHERE id = ANY(subordinated_films[2:]);
    	-- DELETE FROM film_overall_rating WHERE id = ANY(subordinated_films);
    	RETURN OLD;
	END
$$ LANGUAGE plpgsql;

-- CREATE OR REPLACE FUNCTION after_remove_film_func() RETURNS TRIGGER AS $$
-- 	DECLARE
-- 		subordinated_films uuid[];
-- 	BEGIN
-- 		SELECT * FROM find_all_subordinated_films(OLD.id) INTO subordinated_films;
--     	-- special case for film table, does not need to delete the root film, as it is already deleted before the trigger function
--     	DELETE FROM film WHERE id = ANY(subordinated_films[2:]);
--     	RETURN NULL;
-- 	END;
-- $$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION retrieve_film_ratings_by_film_id(id uuid) RETURNS SETOF film_user_link AS $$
	BEGIN
		RETURN QUERY
			SELECT * FROM film_user_link WHERE film_user_link.film_id = id;
	END
$$ LANGUAGE plpgsql;

-- WHY are 2 triggers (before and after film removal) necessary? 
-- => the entry inside the table "film" can't be deleted before the entry(s) with the same id / film-id inside the table "film_overall_rating" and "film_persons_link" 
-- are deleted since the id of the table "film" acts as the foreign key for aforementioned tables. On the other side, the trigger function for after delete 
-- is necessary in case that the delete query would delete multiple rows, where the rows include at least a film and its subordinated film(s). 
-- The subordinated film(s) should be deleted after the query, otherwise by the time the query executes, these rows would already be deleted and this would 
-- result in "tuple was already modified" error.

CREATE TRIGGER prevent_cycle BEFORE UPDATE ON film
  	FOR EACH ROW
    	EXECUTE PROCEDURE detect_film_cycle(); 

CREATE TRIGGER before_remove_film_trigger BEFORE DELETE ON film
  	FOR EACH ROW
		EXECUTE PROCEDURE before_remove_film_func();    	

-- CREATE TRIGGER after_remove_film_trigger AFTER DELETE ON film
--   	FOR EACH ROW
--     	WHEN (pg_trigger_depth() = 0)
--       		EXECUTE PROCEDURE after_remove_film_func();
 
-- CREATE TRIGGER after_insert_film_trigger AFTER INSERT ON film
--   	FOR EACH ROW
--     	WHEN (pg_trigger_depth() = 0)
--      		EXECUTE PROCEDURE after_insert_film_func();

CREATE OR REPLACE FUNCTION retrieve_root_films() RETURNS SETOF film AS $$
	BEGIN
		RETURN QUERY
			SELECT * FROM film WHERE subordinated_to IS NULL;
	END
$$ LANGUAGE plpgsql;   
     
CREATE OR REPLACE FUNCTION retrieve_films_by_parent_id(parentid uuid) RETURNS SETOF film AS $$
	BEGIN
		RETURN QUERY
			SELECT * FROM film WHERE subordinated_to = parentid;
	END
$$ LANGUAGE plpgsql; 

CREATE OR REPLACE FUNCTION retrieve_film_details_by_id(film_id uuid) RETURNS SETOF film AS $$
	BEGIN
		RETURN QUERY
			SELECT * FROM film WHERE film.id = film_id;
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION retrieve_film_details_by_ids(film_ids uuid[]) RETURNS SETOF film AS $$
	BEGIN
		RETURN QUERY
			SELECT * FROM film WHERE film.id = ANY(film_ids);
	END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION retrieve_film_crew_members_by_id(film_id uuid) RETURNS SETOF film_persons_link AS $$
	BEGIN
		RETURN QUERY
			SELECT * FROM film_persons_link WHERE film.id = film_id;
	END
$$ LANGUAGE plpgsql;

-- INSERT SOME DATA
SELECT add_film(
	'Film1', 1998, 'Drama&Horror&Mystery', 
	17, 'Greece', NULL, 
	ARRAY[
		(SELECT id FROM film_related_persons WHERE (name).forename='Dimitris'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Anna'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Pierre'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Catherine'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Jacob'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Mohamed')
 	],
 	ARRAY['Director', 'Cast', 'Cast', 'Producer', 'Cast', 'Screenwriter&Cast']
);

SELECT add_film(
	'Film2', 1998, 'Drama&Horror&Mystery', 
	17, 'Greece', (SELECT id FROM film WHERE title='Film1'),
	ARRAY[
		(SELECT id FROM film_related_persons WHERE (name).forename='Dimitris'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Anna'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Pierre'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Isabella'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Jacob'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Vika')
 	],
 	ARRAY['Director', 'Cast&Producer', 'Cast', 'Producer', 'Cast', 'Screenwriter&Cast']
);

SELECT add_film(
	'Film3', 2001, 'Drama&Horror&Mystery',
	 17, 'Greece', (SELECT id FROM film WHERE title='Film1'),
	 ARRAY[
		(SELECT id FROM film_related_persons WHERE (name).forename='Dimitris'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Bella'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Pierre'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Isabella'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Jacob'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Vika')
 	],
 	ARRAY['Director', 'Producer', 'Cast', 'Cast', 'Cast', 'Screenwriter']
);

SELECT add_film(
	'Film4', 2005, 'Drama&Horror&Mystery', 
	17, 'Greece', (SELECT id FROM film WHERE title='Film1'),
	ARRAY[
		(SELECT id FROM film_related_persons WHERE (name).forename='Dimitris'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Bella'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Pierre'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Isabella'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Jacob'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Paul')
 	],
 	ARRAY['Director', 'Producer', 'Cast', 'Cast', 'Cast', 'Cast']
);

SELECT add_film(
	'Film5', 2007, 'Drama&Horror&Mystery', 
	17, 'Greece', (SELECT id FROM film WHERE title='Film4'),
	ARRAY[
		(SELECT id FROM film_related_persons WHERE (name).forename='Marcus'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Catherine'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Anna'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Emmanuel'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Jacob'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Paul'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Isabella'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Walter')
 	],
 	ARRAY['Director', 'Producer', 'Cast&Producer', 'Cast', 'Cast', 'Cast', 'Cast', 'Screenwriter']
);

SELECT add_film(
	'Film6', 1995, 'Action&Comedy&Romance', 
	13, 'Germany', NULL,
	ARRAY[
		(SELECT id FROM film_related_persons WHERE (name).forename='Mohamed'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Marcus'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Anton'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Emmanuel'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Elizabeth'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Bella'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Isabella')
 	],
 	ARRAY['Screenwriter&Producer&Cast', 'Director', 'Cast', 'Cast', 'Cast', 'Producer', 'Cast']
);

SELECT add_film(
	'Film7', 1998, 'Fantasy&Mystery&Horror&Comedy', 
	17, 'Malaysia', NULL,
	ARRAY[
		(SELECT id FROM film_related_persons WHERE (name).forename='Walter'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Han'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Catherine'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Anna'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Emmanuel'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Angelina')
 	],
 	ARRAY['Screenwriter', 'Director', 'Producer', 'Cast', 'Cast', 'Editor']
);

SELECT add_film(
	'Film8', 2005, 'Horror&Romance&Drama', 
	13, 'Japan', NULL,
	ARRAY[
		(SELECT id FROM film_related_persons WHERE (name).forename='Tamayo'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Han'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Anton'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Emmanuel'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Elizabeth'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Jacob'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Isabella'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Angelina')
 	],
 	ARRAY['Screenwriter', 'Director', 'Producer', 'Cast', 'Cast', 'Cast', 'Cast', 'Editor']
);

SELECT add_film(
	'Film9', 2007, 'Horror&Mystery&Thriller', 
	13, 'Japan', (SELECT id FROM film WHERE title='Film8'),
	ARRAY[
		(SELECT id FROM film_related_persons WHERE (name).forename='Tamayo'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Han'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Anton'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Emmanuel'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Elizabeth'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Anna'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Paul'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Wang')
 	],
 	ARRAY['Screenwriter', 'Director', 'Producer', 'Cast', 'Cast', 'Cast', 'Cast', 'Editor']
);

SELECT add_film(
	'Film10', 2012, 'Scifi&Adventure&Romance', 
	NULL, 'France', NULL, 
	ARRAY[
		(SELECT id FROM film_related_persons WHERE (name).forename='Mohamed'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Marcus'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Elizabeth'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Pierre'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Isabella'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Paul')
 	],
 	ARRAY['Screenwriter', 'Producer&Director&Editor', 'Cast', 'Cast', 'Cast', 'Cast']
 );

SELECT add_film(
	'Film11', 2005, 'Documentary', 
	NULL, 'China PR', NULL, 
	ARRAY[
		(SELECT id FROM film_related_persons WHERE (name).forename='Bella'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Aaron'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Wang'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Pierre'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Tamayo')
 	],
 	ARRAY['Director', 'Producer', 'Editor', 'Screenwriter', 'Cast']
 );

SELECT add_film(
	'Film12', 2008, 'Drama&Adventure&Comedy', 
	13, 'Germany', NULL, 
	ARRAY[
		(SELECT id FROM film_related_persons WHERE (name).forename='Aaron'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Walter'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Tamayo'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Bella'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Henry'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Isabella'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Elizabeth'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Angelina')
 	],
 	ARRAY['Director', 'Screenwriter', 'Screenwriter', 'Producer', 'Cast', 'Cast', 'Cast', 'Editor']
 );

SELECT add_film(
	'Film13', 2008, 'Action&Fantasy&Romance', 
	13, 'United States', NULL, 
	ARRAY[
		(SELECT id FROM film_related_persons WHERE (name).forename='Aaron'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Dimitris'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Bella'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Henry'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Jacob'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Anna')
 	],
 	ARRAY['Director', 'Screenwriter', 'Producer', 'Editor', 'Cast', 'Cast']
 );

SELECT add_film(
	'Film14', 2008, 'Mystery&Thriller&Romance', 
	NULL, 'Austria', NULL, 
	ARRAY[
		(SELECT id FROM film_related_persons WHERE (name).forename='Marcus'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Vika'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Wang'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Elizabeth'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Anton'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Emmanuel')
 	],
 	ARRAY['Director', 'Screenwriter&Producer&Cast', 'Editor', 'Cast', 'Cast', 'Cast']
 );

SELECT add_film(
	'Film15', 2020, 'Horror&Drama&Documentary', 
	17, 'United Kingdom', NULL, 
	ARRAY[
		(SELECT id FROM film_related_persons WHERE (name).forename='Aaron'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Henry'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Catherine'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Paul'),
		(SELECT id FROM film_related_persons WHERE (name).forename='Boris')
 	],
 	ARRAY['Editor', 'Screenwriter', 'Producer', 'Cast', 'Director&Cast']
 );

CREATE OR REPLACE FUNCTION recommend_film_for_user_by_id(id uuid) RETURNS SETOF film AS $$
	DECLARE
		user_film_ratings film_rating_type[];
		user_rated_films_uuid uuid[];
		user_rated_films film[];
		user_unrated_films film[];
		rated_film film;
		unrated_film film;
		cursor_user_film_ratings CURSOR FOR SELECT film_id, film_rating FROM film_user_link WHERE film_user_link.user_id = id;
		cursor_user_rated_films REFCURSOR;
		cursor_user_unrated_films REFCURSOR;
		target_film_type film_rating_type;
		target_film film;
		target_crews uuid[];
		recommended_film_list_ids uuid[];
		temp int;
		avrg_score decimal;
		arr_length int;
		divider int;
		films_recommendation_score recommendation_score_type[];
		cur_rec_score decimal;
	BEGIN
		-- get the list of film ratings and its id where this particular user has rated.
		OPEN cursor_user_film_ratings;
		LOOP
			FETCH cursor_user_film_ratings INTO target_film_type;
			EXIT WHEN NOT FOUND;
			user_film_ratings = array_append(user_film_ratings, target_film_type);
			user_rated_films_uuid = array_append(user_rated_films_uuid, (target_film_type.film_id)::uuid);
			-- SELECT ARRAY(SELECT film_persons_link.person_id FROM film_persons_link WHERE film_persons_link.film_id = target_film_type.film_id)::uuid[] INTO target_crews;
			-- convert the list of film related persons' UUIDs into a string first for ease of storing data
			-- rated_films_person_ids = array_append(rated_films_person_ids, array_to_string(target_crews, '&'));
		END LOOP;
		CLOSE cursor_user_film_ratings;

		-- get the details of those rated films
		OPEN cursor_user_rated_films FOR SELECT * FROM film WHERE film.id = ANY(user_rated_films_uuid);
		LOOP 
			FETCH cursor_user_rated_films INTO target_film;
			EXIT WHEN NOT FOUND;
			user_rated_films = array_append(user_rated_films, target_film);
		END LOOP;
		CLOSE cursor_user_rated_films;

		-- get the details of unrated films
		OPEN cursor_user_unrated_films FOR SELECT * FROM film 
		WHERE film.id != ALL(user_rated_films_uuid) AND (film.number_of_raters < 5 OR (film.film_total_rating)::decimal / film.number_of_raters >= 6);
		LOOP 
			FETCH cursor_user_unrated_films INTO target_film;
			EXIT WHEN NOT FOUND;
			user_unrated_films = array_append(user_unrated_films, target_film);
		END LOOP;
		CLOSE cursor_user_unrated_films;

		-- Special case 1: user has rated no films
		IF array_length(user_rated_films, 1) IS NULL THEN
			RETURN QUERY
				SELECT * FROM (SELECT * from film WHERE film.number_of_raters > 0) AS rated_films ORDER BY ((rated_films.film_total_rating)::decimal / rated_films.number_of_raters) DESC LIMIT 3;
			-- SELECT ARRAY(SELECT film.id FROM film 			
			-- ORDER BY ((film.film_total_rating)::decimal / film.number_of_raters) DESC LIMIT 3)::uuid[] INTO recommended_film_list_ids;

		-- Special case 2: user has rated all films
		ELSIF array_length(user_rated_films, 1) = (SELECT COUNT(1) FROM film) THEN
			-- SELECT ARRAY (SELECT film_user_link.film_id FROM film_user_link WHERE film_user_link.user_id = id
			-- 	ORDER BY film_user_link.film_rating DESC LIMIT 3)::uuid[] INTO recommended_film_list_ids;
			-- RETURN QUERY
			-- 	SELECT * FROM film WHERE film.id = ANY(recommended_film_list_ids);
			RETURN;
			-- SELECT ARRAY(SELECT film_user_link.film_id FROM film_user_link WHERE film_user_link.user_id = id
			-- ORDER BY film_user_link.film_rating DESC LIMIT 3)::uuid[] INTO recommended_film_list_ids;
		-- General case
		ELSE
			arr_length = array_length(user_unrated_films, 1);
			FOREACH unrated_film in ARRAY user_unrated_films LOOP
				divider = 2;
				IF unrated_film.number_of_raters > 0 THEN
					cur_rec_score = ((unrated_film.film_total_rating)::decimal / unrated_film.number_of_raters) * 2;
				ELSE
					-- set default 6
					cur_rec_score = 6*2;
				END IF;	
				-- randomize the order of user_rated_films
				SELECT array_agg(urf ORDER BY random()) FROM UNNEST(user_rated_films) urf INTO user_rated_films;
				FOREACH rated_film in ARRAY user_rated_films LOOP
					avrg_score = (rated_film.film_total_rating)::decimal / rated_film.number_of_raters;
					-- check whether these films are related
					IF unrated_film.id = ANY((find_all_subordinated_films(unrated_film.id))) OR
						rated_film.id = ANY((find_all_subordinated_films(rated_film.id))) THEN
						divider = divider + 3;
						cur_rec_score = cur_rec_score + avrg_score * 3;
					END IF;
					-- get the length of the array for intersecting genres
					temp = cardinality((SELECT ARRAY(SELECT UNNEST(string_to_array(unrated_film.genre, '&')) INTERSECT SELECT UNNEST(string_to_array(rated_film.genre, '&')))::text[]));
					divider = divider + temp;
					cur_rec_score = cur_rec_score + avrg_score * temp;

					-- for intersecting crew members
					temp = cardinality((SELECT ARRAY(SELECT UNNEST((SELECT ARRAY(SELECT film_persons_link.person_id FROM film_persons_link WHERE film_persons_link.film_id = unrated_film.id))::uuid[])
					INTERSECT SELECT UNNEST((SELECT ARRAY(SELECT film_persons_link.person_id FROM film_persons_link WHERE film_persons_link.film_id = rated_film.id))::uuid[]))::uuid[]));
					IF temp > 3 THEN
						divider = divider + 3;
						cur_rec_score = cur_rec_score + avrg_score * 3;
					ELSIF temp > 1 THEN
						divider = divider + 2;
						cur_rec_score = cur_rec_score + avrg_score * 2;
					ELSIF temp = 1 THEN
						divider = divider + 1;
						cur_rec_score = cur_rec_score + avrg_score;
					END IF;
					EXIT WHEN divider >= 50;		
				END LOOP;
				films_recommendation_score = array_append(films_recommendation_score, (unrated_film.id, cur_rec_score / divider)::recommendation_score_type);
			END LOOP;
		END IF;

		SELECT ARRAY(SELECT film_id FROM UNNEST(films_recommendation_score) ORDER BY score DESC LIMIT 3)::uuid[] INTO recommended_film_list_ids; 

		RETURN QUERY
			SELECT * FROM film WHERE film.id = ANY(recommended_film_list_ids);
	END
$$ LANGUAGE plpgsql;

SELECT create_user('Alli');
SELECT create_user('Robert');
SELECT create_user('Katarina');
SELECT create_user('Judy');
SELECT create_user('Marco');
SELECT create_user('Jerome');
SELECT create_user('Nuno');
SELECT create_user('Voll');
SELECT create_user('Nice');

SELECT rate_film_by_id((SELECT id from film WHERE title='Film1'),(SELECT id from film_rater WHERE username='Alli'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film2'),(SELECT id from film_rater WHERE username='Alli'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film3'),(SELECT id from film_rater WHERE username='Alli'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film4'),(SELECT id from film_rater WHERE username='Alli'), 10);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film5'),(SELECT id from film_rater WHERE username='Alli'), 6);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film6'),(SELECT id from film_rater WHERE username='Alli'), 6);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film7'),(SELECT id from film_rater WHERE username='Alli'), 9);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film8'),(SELECT id from film_rater WHERE username='Alli'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film9'),(SELECT id from film_rater WHERE username='Alli'), 9);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film10'),(SELECT id from film_rater WHERE username='Alli'), 5);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film11'),(SELECT id from film_rater WHERE username='Alli'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film12'),(SELECT id from film_rater WHERE username='Alli'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film14'),(SELECT id from film_rater WHERE username='Alli'), 10);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film13'),(SELECT id from film_rater WHERE username='Alli'), 5);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film15'),(SELECT id from film_rater WHERE username='Alli'), 8);

SELECT rate_film_by_id((SELECT id from film WHERE title='Film1'),(SELECT id from film_rater WHERE username='Voll'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film2'),(SELECT id from film_rater WHERE username='Voll'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film3'),(SELECT id from film_rater WHERE username='Voll'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film4'),(SELECT id from film_rater WHERE username='Voll'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film5'),(SELECT id from film_rater WHERE username='Voll'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film6'),(SELECT id from film_rater WHERE username='Voll'), 5);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film7'),(SELECT id from film_rater WHERE username='Voll'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film8'),(SELECT id from film_rater WHERE username='Voll'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film9'),(SELECT id from film_rater WHERE username='Voll'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film10'),(SELECT id from film_rater WHERE username='Voll'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film11'),(SELECT id from film_rater WHERE username='Voll'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film12'),(SELECT id from film_rater WHERE username='Voll'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film14'),(SELECT id from film_rater WHERE username='Voll'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film13'),(SELECT id from film_rater WHERE username='Voll'), 6);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film15'),(SELECT id from film_rater WHERE username='Voll'), 5);

SELECT rate_film_by_id((SELECT id from film WHERE title='Film1'),(SELECT id from film_rater WHERE username='Nice'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film2'),(SELECT id from film_rater WHERE username='Nice'), 9);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film3'),(SELECT id from film_rater WHERE username='Nice'), 10);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film4'),(SELECT id from film_rater WHERE username='Nice'), 10);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film5'),(SELECT id from film_rater WHERE username='Nice'), 9);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film6'),(SELECT id from film_rater WHERE username='Nice'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film7'),(SELECT id from film_rater WHERE username='Nice'), 9);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film8'),(SELECT id from film_rater WHERE username='Nice'), 10);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film9'),(SELECT id from film_rater WHERE username='Nice'), 9);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film10'),(SELECT id from film_rater WHERE username='Nice'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film11'),(SELECT id from film_rater WHERE username='Nice'), 9);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film12'),(SELECT id from film_rater WHERE username='Nice'), 9);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film14'),(SELECT id from film_rater WHERE username='Nice'), 10);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film13'),(SELECT id from film_rater WHERE username='Nice'), 9);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film15'),(SELECT id from film_rater WHERE username='Nice'), 9);

SELECT rate_film_by_id((SELECT id from film WHERE title='Film1'),(SELECT id from film_rater WHERE username='Robert'), 6);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film2'),(SELECT id from film_rater WHERE username='Robert'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film3'),(SELECT id from film_rater WHERE username='Robert'), 6);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film4'),(SELECT id from film_rater WHERE username='Robert'), 5);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film5'),(SELECT id from film_rater WHERE username='Robert'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film6'),(SELECT id from film_rater WHERE username='Robert'), 9);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film7'),(SELECT id from film_rater WHERE username='Robert'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film8'),(SELECT id from film_rater WHERE username='Robert'), 7);

SELECT rate_film_by_id((SELECT id from film WHERE title='Film8'),(SELECT id from film_rater WHERE username='Katarina'), 6);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film9'),(SELECT id from film_rater WHERE username='Katarina'), 9);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film10'),(SELECT id from film_rater WHERE username='Katarina'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film11'),(SELECT id from film_rater WHERE username='Katarina'), 4);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film12'),(SELECT id from film_rater WHERE username='Katarina'), 6);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film14'),(SELECT id from film_rater WHERE username='Katarina'), 9);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film13'),(SELECT id from film_rater WHERE username='Katarina'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film15'),(SELECT id from film_rater WHERE username='Katarina'), 7);

SELECT rate_film_by_id((SELECT id from film WHERE title='Film1'),(SELECT id from film_rater WHERE username='Judy'), 10);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film2'),(SELECT id from film_rater WHERE username='Judy'), 6);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film13'),(SELECT id from film_rater WHERE username='Judy'), 9);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film15'),(SELECT id from film_rater WHERE username='Judy'), 6);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film3'),(SELECT id from film_rater WHERE username='Judy'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film4'),(SELECT id from film_rater WHERE username='Judy'), 9);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film12'),(SELECT id from film_rater WHERE username='Judy'), 6);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film14'),(SELECT id from film_rater WHERE username='Judy'), 8);

SELECT rate_film_by_id((SELECT id from film WHERE title='Film4'),(SELECT id from film_rater WHERE username='Marco'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film5'),(SELECT id from film_rater WHERE username='Marco'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film6'),(SELECT id from film_rater WHERE username='Marco'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film7'),(SELECT id from film_rater WHERE username='Marco'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film8'),(SELECT id from film_rater WHERE username='Marco'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film9'),(SELECT id from film_rater WHERE username='Marco'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film10'),(SELECT id from film_rater WHERE username='Marco'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film11'),(SELECT id from film_rater WHERE username='Marco'), 10);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film12'),(SELECT id from film_rater WHERE username='Marco'), 6);

SELECT rate_film_by_id((SELECT id from film WHERE title='Film1'),(SELECT id from film_rater WHERE username='Jerome'), 5);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film3'),(SELECT id from film_rater WHERE username='Jerome'), 6);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film5'),(SELECT id from film_rater WHERE username='Jerome'), 8);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film7'),(SELECT id from film_rater WHERE username='Jerome'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film9'),(SELECT id from film_rater WHERE username='Jerome'), 10);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film11'),(SELECT id from film_rater WHERE username='Jerome'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film14'),(SELECT id from film_rater WHERE username='Jerome'), 7);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film15'),(SELECT id from film_rater WHERE username='Jerome'), 6);

SELECT rate_film_by_id((SELECT id from film WHERE title='Film1'),(SELECT id from film_rater WHERE username='Robert'), 5);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film2'),(SELECT id from film_rater WHERE username='Robert'), 6);
SELECT rate_film_by_id((SELECT id from film WHERE title='Film11'),(SELECT id from film_rater WHERE username='Marco'), 7);
