

CREATE TABLE IF NOT EXISTS public.ddl_log(
	event_date TIMESTAMP,
	username VARCHAR,
	table_name VARCHAR
);

CREATE OR REPLACE FUNCTION log_changes()
RETURNS event_trigger
LANGUAGE plpgsql AS
$$
DECLARE 
obj record;
BEGIN;
	FOR obj IN SELECT * FROM pg_event_trigger_ddl_commands()
	LOOP
		INSERT INTO public.ddl_log
		VALUES(current_timestamp, user, obj.object_identity);
	END LOOP;
END
$$;



CREATE EVENT TRIGGER log_table_creation ON ddl_command_end
WHEN tag IN ('CREATE TABLE')
EXECUTE FUNCTION log_changes();

