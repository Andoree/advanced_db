\set text_id random(0,9999)
BEGIN;
	SELECT * from public.lab_index_comparison_btree
	WHERE name = 'text'||:text_id;
	SELECT * from public.lab_index_comparison_brin
	WHERE name = 'text'||:text_id;
	SELECT * from public.lab_index_comparison_hash
	WHERE name = 'text'||:text_id;

END;
