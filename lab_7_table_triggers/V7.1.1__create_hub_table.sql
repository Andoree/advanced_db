CREATE TABLE public.hub_table_triggers_lab(
	id INTEGER,
	text_column VARCHAR,
	UNIQUE (id, text_column)
);
