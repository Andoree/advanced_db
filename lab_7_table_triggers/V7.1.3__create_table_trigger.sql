CREATE OR REPLACE FUNCTION redirect_rows_to_childs()
RETURNS TRIGGER AS
$BODY$
DECLARE
new_child_id INTEGER := DIV(NEW.id, 10000);
old_child_id INTEGER := DIV(OLD.id, 10000);
BEGIN;

EXECUTE format('CREATE TABLE IF NOT EXISTS public.inherited_child_with_trigger_%s INHERITS public.hub_table_triggers_lab', new_child_id );

EXECUTE format('ALTER TABLE public.inherited_child_with_trigger_%s
ADD CONSTRAINT partition_check CHECK(id >= new_child_id * 10000 and id < (new_child_id + 1) * 10000)', new_child_id );

IF (TG_OP = 'INSERT') THEN
	EXECUTE format('INSERT INTO public.inherited_child_with_trigger_%s VALUES (NEW.id, NEW.text_column)', new_child_id );
ELSIF (TG_OP = 'UPDATE' AND new_child_id != old_child_id) THEN
	EXECUTE format('INSERT INTO public.inherited_child_with_trigger_%s VALUES (NEW.id, NEW.text_column)', new_child_id );
	EXECUTE format('DELETE FROM public.inherited_child_with_trigger_%s WHERE id=OLD.id', new_child_id );
END IF;

RETURN NULL;

END;
$BODY$
LANGUAGE plpgsql;

CREATE TRIGGER redirect_traffic_to_childs
BEFORE INSERT OR UPDATE FOR id
	ON public.hub_table_triggers_lab
	FOR EACH ROW
	WHEN (OLD.id IS DISTINCT FROM NEW.id)
EXECUTE redirect_rows_to_childs();




