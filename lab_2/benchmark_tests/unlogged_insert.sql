BEGIN;
	INSERT INTO public.unlogged_table
		SELECT nextval('serial_unlog_insert'), 't';
END;
