BEGIN;
	UPDATE public.unlogged_table as t
	SET text_column = 'f'
	WHERE t.id = nextval('serial_unlog_update');
END;
