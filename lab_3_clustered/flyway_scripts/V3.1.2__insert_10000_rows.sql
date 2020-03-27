INSERT INTO public.clustered_table
	SELECT (random() * 10000)::INTEGER, 'text_#' || (i + 1):: VARCHAR
	FROM generate_series(1, 10000) as k(i);
ANALYZE public.clustered_table;

