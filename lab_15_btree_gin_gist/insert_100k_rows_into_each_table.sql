INSERT INTO public.lab_indices_on_text_btree
	SELECT i, (random() * 100)::INTEGER || 'text'
	FROM generate_series(1, 100000) as k(i);

INSERT INTO public.lab_indices_on_text_gin
	SELECT i, (random() * 100)::INTEGER || 'text'
	FROM generate_series(1, 100000) as k(i);

INSERT INTO public.lab_indices_on_text_gist
	SELECT i, (random() * 100)::INTEGER || 'text'
	FROM generate_series(1, 100000) as k(i);

