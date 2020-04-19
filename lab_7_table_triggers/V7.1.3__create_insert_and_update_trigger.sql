CREATE OR REPLACE FUNCTION redirect_inserts_to_childs()
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
EXECUTE format(E'CREATE TABLE %I () INHERITS (public.hub_table_triggers_lab)', partition_name );
EXECUTE format('ALTER TABLE %I ADD CONSTRAINT partition_check
	CHECK(id >= %s * 10000 AND id < (%s + 1) * 10000) ', partition_name, new_child_id, new_child_id);
EXECUTE format('CREATE TRIGGER manage_child_updates
	BEFORE UPDATE OF id ON
	%I FOR EACH ROW
	WHEN(OLD.id IS DISTINCT FROM NEW.id)
	EXECUTE FUNCTION manage_child_updates()', partition_name);
END IF;
EXECUTE format('INSERT INTO %I VALUES($1,$2)', partition_name) using NEW.id, NEW.text_column;

RETURN NULL;

END;
$BODY$
LANGUAGE plpgsql;

CREATE TRIGGER redirect_insert_traffic_to_childs
BEFORE INSERT ON
	public.hub_table_triggers_lab
	FOR EACH ROW
EXECUTE FUNCTION redirect_inserts_to_childs();



CREATE OR REPLACE FUNCTION manage_child_updates()
RETURNS TRIGGER AS
$BODY$
DECLARE
old_child_id INTEGER := DIV(OLD.id, 10000);
new_child_id INTEGER := DIV(NEW.id, 10000);
new_partition_name VARCHAR := 'inherited_child_with_trigger_' || new_child_id;
old_partition_name VARCHAR := 'inherited_child_with_trigger_' || old_child_id;

BEGIN

IF NOT EXISTS
	(SELECT 1 FROM information_schema.tables
		WHERE  table_name = new_partition_name) 
THEN
EXECUTE format(E'CREATE TABLE %I () INHERITS (public.hub_table_triggers_lab)', new_partition_name);
EXECUTE format('ALTER TABLE %I ADD CONSTRAINT partition_check
	CHECK(id >= %s * 10000 AND id < (%s + 1) * 10000)', new_partition_name, new_child_id, new_child_id);
EXECUTE format('CREATE TRIGGER manage_child_updates
	BEFORE UPDATE OF id ON
	%I FOR EACH ROW
	WHEN(OLD.id IS DISTINCT FROM NEW.id)
	EXECUTE FUNCTION manage_child_updates()', new_partition_name);
END IF;
EXECUTE format('INSERT INTO %I VALUES($1, $2)', new_partition_name) using NEW.id, NEW.text_column;
EXECUTE format(E'DELETE FROM %I WHERE id = $1 AND text_column = $2', old_partition_name) using OLD.id, OLD.text_column;


RETURN NULL;

END;
$BODY$
LANGUAGE plpgsql;
