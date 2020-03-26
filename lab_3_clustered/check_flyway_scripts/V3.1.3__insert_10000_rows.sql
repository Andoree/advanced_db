INSERT INTO public.clustered_table
	SELECT i, 'text_column' || // может, не надо?(i + 1):: VARCHAR
	FROM generate_series(1, 10000) as k(i);
	ANALYZE public.clustered_table;
COMMIT;