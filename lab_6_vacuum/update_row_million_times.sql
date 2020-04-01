\set text_id random(1, 1000000)
BEGIN;

SELECT * FROM public.vacuum_task
SET text = 'text_' || :text_id:: VARCHAR
WHERE id = 1;
COMMIT;