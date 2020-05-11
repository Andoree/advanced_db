CREATE TABLE public.plpgsql_lab(
	id INTEGER,
	name VARCHAR
);

CREATE OR REPLACE FUNCTION plpgsql_lab_sql_function(id_value INTEGER)

RETURNS VARCHAR AS
$$
	SELECT name FROM public.plpgsql_lab
	WHERE id = id_value
	LIMIT 1;
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION plpgsql_lab_plpgsql_function(id_value INTEGER)
RETURNS VARCHAR AS
$$
	BEGIN
	RETURN 
	(SELECT name FROM public.plpgsql_lab
	WHERE id = id_value
	LIMIT 1);
	END;

$$ LANGUAGE PLPGSQL;

