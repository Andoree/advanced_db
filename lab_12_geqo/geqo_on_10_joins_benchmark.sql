
BEGIN;
SET geqo=on;
SET geqo_threshold = 3;
SELECT * FROM
geqo_t1
	INNER JOIN geqo_t2 ON geqo_t1.id = geqo_t2.id
	INNER JOIN geqo_t3 ON geqo_t2.id = geqo_t3.id
	INNER JOIN geqo_t4 ON geqo_t3.id = geqo_t4.id
	INNER JOIN geqo_t5 ON geqo_t4.id = geqo_t5.id
	INNER JOIN geqo_t6 ON geqo_t5.id = geqo_t6.id
	INNER JOIN geqo_t7 ON geqo_t6.id = geqo_t7.id
	INNER JOIN geqo_t8 ON geqo_t7.id = geqo_t8.id
	INNER JOIN geqo_t9 ON geqo_t8.id = geqo_t9.id
	INNER JOIN geqo_t10 ON geqo_t9.id = geqo_t10.id
	INNER JOIN geqo_t11 ON geqo_t10.id = geqo_t11.id;

END;
