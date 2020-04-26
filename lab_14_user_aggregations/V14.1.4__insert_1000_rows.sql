INSERT INTO public.table_with_complex_number
	SELECT  i MOD 10, random() * 10
	FROM generate_series(1, 1000) as k(i);