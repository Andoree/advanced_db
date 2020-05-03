CREATE TABLE public.lab_indices_on_text_btree(
	id INTEGER,
	content VARCHAR
);

CREATE TABLE public.lab_indices_on_text_gin(
	id INTEGER,
	content VARCHAR
);

CREATE TABLE public.lab_indices_on_text_gist(
	id INTEGER,
	content VARCHAR
);
CREATE EXTENSION pg_trgm;


CREATE INDEX b_tree_index_on_text_lab ON public.lab_indices_on_text_btree(content gin_trgm_ops);
CREATE INDEX gin_index_on_text_lab ON public.lab_indices_on_text_gin USING GIN(content gin_trgm_ops);
CREATE INDEX gist_index_on_text_lab ON public.lab_indices_on_text_gist USING GIST(content gist_trgm_ops);