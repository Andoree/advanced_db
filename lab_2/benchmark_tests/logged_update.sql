BEGIN;
	UPDATE public.logged_table as t
	SET text_column = 'f'
	WHERE t.id = nextval('serial_log_update');
END;
