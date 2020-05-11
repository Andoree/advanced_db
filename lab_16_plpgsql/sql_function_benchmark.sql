\set id random(0, 100000)
BEGIN;

SELECT plpgsql_lab_sql_function(id_value => :id);

END;