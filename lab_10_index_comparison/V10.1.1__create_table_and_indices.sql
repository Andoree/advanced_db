CREATE TABLE public.lab_index_comparison_btree(
	id INTEGER,
	name VARCHAR
);

CREATE TABLE public.lab_index_comparison_brin(
	id INTEGER,
	name VARCHAR
);

CREATE TABLE public.lab_index_comparison_hash(
	id INTEGER,
	name VARCHAR
);

CREATE INDEX b_tree_index_comparison_lab ON public.lab_index_comparison_btree(name);
CREATE INDEX brin_index_comparison_lab ON public.lab_index_comparison_brin USING BRIN(name);
CREATE INDEX hash_index_comparison_lab ON public.lab_index_comparison_hash USING HASH(name);

