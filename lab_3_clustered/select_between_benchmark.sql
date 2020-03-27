\set left_border random(0, 4999)
\set right_border random(5001, 10001)
BEGIN;
	SELECT * from public.clustered_table
	WHERE id > :left_border and id < :right_border;
END;
