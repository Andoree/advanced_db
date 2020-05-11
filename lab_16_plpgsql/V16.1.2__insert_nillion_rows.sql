INSERT INTO public.plpgsql_lab
	SELECT (random() * 100000)::INTEGER, 'text' || i
	FROM generate_series(1, 1000000) as k(i);
