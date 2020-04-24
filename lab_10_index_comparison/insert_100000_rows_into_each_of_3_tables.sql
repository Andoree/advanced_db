INSERT INTO public.lab_index_comparison_btree
	SELECT (random() * 10000)::INTEGER, 'text' || i
	FROM generate_series(1, 100000) as k(i);

INSERT INTO public.lab_index_comparison_brin
	SELECT (random() * 10000)::INTEGER, 'text' || i
	FROM generate_series(1, 100000) as k(i);

INSERT INTO public.lab_index_comparison_hash
	SELECT (random() * 10000)::INTEGER, 'text' || i
	FROM generate_series(1, 100000) as k(i);
