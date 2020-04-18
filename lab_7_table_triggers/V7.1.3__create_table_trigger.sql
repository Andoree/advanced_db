CREATE OR REPLACE FUNCTION redirect_rows_to_childs()
RETURNS TRIGGER AS
$BODY$
DECLARE
new_child_id INTEGER := DIV(NEW.id, 10000);
partition_name VARCHAR := 'inherited_child_with_trigger_' || new_child_id;
BEGIN

IF NOT EXISTS
	(SELECT 1 FROM information_schema.tables
		WHERE  table_name = partition_name) 
THEN
EXECUTE format(E'CREATE TABLE %I() INHERITS (public.hub_table_triggers_lab)', partition_name, );

EXECUTE format('ALTER TABLE %I ADD CONSTRAINT partition_check
	CHECK(id >= %s * 10000 and id < (%s + 1) * 10000)', partition_name, new_child_id, new_child_id);
EXECUTE format('INSERT INTO %I VALUES($1,$2)', partition_name) using NEW.id, NEW.text_column;

RETURN NULL;

END;
$BODY$
LANGUAGE plpgsql;

CREATE TRIGGER redirect_traffic_to_childs
BEFORE INSERT ON
	public.hub_table_triggers_lab
	FOR EACH ROW
EXECUTE redirect_rows_to_childs();




