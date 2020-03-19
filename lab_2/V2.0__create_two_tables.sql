BEGIN;
CREATE TABLE logged_table(
	id int PRIMARY KEY,
	text_column varchar(128)
);

CREATE UNLOGGED TABLE unlogged_table(
	id int PRIMARY KEY,
	text_column varchar(128)
);
COMMIT;