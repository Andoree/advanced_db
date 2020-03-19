BEGIN;
	INSERT INTO public.logged_table
		SELECT nextval('serial_log_insert'), 't';
END;
