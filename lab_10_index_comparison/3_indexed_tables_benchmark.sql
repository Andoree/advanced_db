\set name_value = 'text' || random(0, 9999) 
BEGIN;
	SELECT * from public.lab_index_comparison_btree
	WHERE name = :name_value;
	SELECT * from public.lab_index_comparison_brin
	WHERE name = :name_value;
	SELECT * from public.lab_index_comparison_hash
	WHERE name = :name_value;
END;
