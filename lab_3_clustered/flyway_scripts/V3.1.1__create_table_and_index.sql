CREATE TABLE public.clustered_table(
	id INTEGER,
	name VARCHAR
) WITH (FILLFACTOR=90);
CREATE INDEX id_index ON public.clustered_table(id);

