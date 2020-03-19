BEGIN;

INSERT INTO public.fillfactor_100
	SELECT i, 'ABCDEABCDEABCDEABCDEABCDEABCDEABCDEABCDEABCDEABCDE', '2020-07-07'
		FROM generate_series(1, 10000) AS k(i);

INSERT INTO public.fillfactor_90
	SELECT i, 'ABCDEABCDEABCDEABCDEABCDEABCDEABCDEABCDEABCDEABCDE', '2020-07-07'
		FROM generate_series(1, 10000) AS k(i);

INSERT INTO public.fillfactor_75
	SELECT i, 'ABCDEABCDEABCDEABCDEABCDEABCDEABCDEABCDEABCDEABCDE', '2020-07-07'
		FROM generate_series(1, 10000) AS k(i);

INSERT INTO public.fillfactor_50
	SELECT i, 'ABCDEABCDEABCDEABCDEABCDEABCDEABCDEABCDEABCDEABCDE', '2020-07-07'
		FROM generate_series(1, 10000) AS k(i);

COMMIT;