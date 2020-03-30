\set id random(1, 1000000)
BEGIN;

SELECT * FROM public.part_hub
WHERE id = :id;

COMMIT;