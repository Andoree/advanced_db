INSERT INTO public.table_with_complex_number
	SELECT  MOD(i,10),
	(random() * 10,random() * 10)::public.complex_number
	FROM generate_series(1, 1000) as k(i);
