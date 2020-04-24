CREATE OR REPLACE FUNCTION manage_view_dml_traffic()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $BODY$
	BEGIN
		IF TG_OP = 'INSERT' THEN
			INSERT INTO public.instead_of_trigger_lab_table VALUES(NEW.type_name, NEW.value);
			RETURN NEW;
		ELSIF TG_OP = 'UPDATE' OR TG_OP = 'DELETE' THEN
			RAISE NOTICE 'Operation % is not supported on view %' TG_OP, TG_TABLE_NAME;
			RETURN NULL;
		END IF;
		RETURN NEW;
	END;
$BODY$




CREATE TRIGGER trg_manage_view_dml_traffic
INSTEAD OF INSERT OR UPDATE OR DELETE ON public.instead_of_trigger_lab_table
FOR EACH ROW EXECUTE FUNCTION manage_view_dml_traffic();