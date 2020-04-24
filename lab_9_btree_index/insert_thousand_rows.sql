INSERT INTO public.index_lab_1_table
	SELECT (random() * 10)::INTEGER,
	(random() * 10)::INTEGER,
	(random() * 10)::INTEGER
FROM generate_series(1, 1000) as k(i);
