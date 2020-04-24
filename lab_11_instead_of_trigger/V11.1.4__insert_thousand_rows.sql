INSERT INTO public.instead_of_trigger_lab_table
	SELECT 'text' || (random() * 10)::INTEGER, (random() * 100)::INTEGER
	FROM generate_series(1, 1000) as k(i);