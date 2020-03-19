BEGIN;
	DELETE FROM public.unlogged_table AS t
	WHERE text_column = 't';
END;
