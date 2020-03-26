BEGIN;
CLUSTER public.clustered_table USING id_index;
ANALYZE public.clustered_table;
END;