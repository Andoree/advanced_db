\set text_id random(1, 1000000)
BEGIN;

UPDATE public.vacuum_task
SET text_col = 'text_' || :text_id:: VARCHAR
WHERE id = 1;
COMMIT;
