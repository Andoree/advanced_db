CREATE TABLE public.clustered_table(
	id INT PRIMARY KEY,
	name VARCHAR
) WITH (FILLFACTOR=90);

