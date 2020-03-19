BEGIN;
	DELETE FROM public.logged_table AS t
	WHERE text_column = 't';
END;
