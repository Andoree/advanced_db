BEGIN;
create table fillfactor_100(
	id int PRIMARY KEY,
	text_column VARCHAR(100),
	date_column date
) WITH(FILLFACTOR=100);

create table fillfactor_90(
	id int PRIMARY KEY,
	text_column VARCHAR(100),
	date_column date
) WITH(FILLFACTOR=90);

create table fillfactor_75(
	id int PRIMARY KEY,
	text_column VARCHAR(100),
	date_column date
) WITH(FILLFACTOR=75);

create table fillfactor_50(
	id int PRIMARY KEY,
	text_column VARCHAR(100),
	date_column date
) WITH(FILLFACTOR=50);
COMMIT;
