INSERT INTO public.shared_buffers_lab_table_1
	SELECT i, (random() * 10)::INTEGER || 't'
	FROM generate_series(1, 1000) as k(i);


INSERT INTO public.shared_buffers_lab_table_2
	SELECT i, (random() * 10)::INTEGER || 't'
	FROM generate_series(1, 10000) as k(i);

INSERT INTO public.shared_buffers_lab_table_3
	SELECT i, (random() * 10)::INTEGER || 't'
	FROM generate_series(1, 100000) as k(i);
