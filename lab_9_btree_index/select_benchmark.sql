BEGIN;

SELECT min(A) OVER(PARTITION BY B,C ORDER BY B,C)
FROM public.index_lab_1_table
ORDER BY C, B;

END;

