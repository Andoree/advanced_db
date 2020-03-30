INSERT INTO public.part_hub
	SELECT (random() * 1000000)::INTEGER, 'text' 
	FROM generate_series(1, 1000000) as k(i);