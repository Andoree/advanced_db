INSERT INTO public.hub_table_triggers_lab
	SELECT (random() * 100000)::INTEGER, 'text' 
	FROM generate_series(1, 1000000) as k(i);
