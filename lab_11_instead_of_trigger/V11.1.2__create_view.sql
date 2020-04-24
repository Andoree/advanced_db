CREATE OR REPLACE VIEW instead_of_trigger_lab_view AS
SELECT type_name, sum(value)
FROM public.instead_of_trigger_lab_table
GROUP BY type_name;
