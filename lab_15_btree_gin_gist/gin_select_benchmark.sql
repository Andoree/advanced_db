BEGIN;

SELECT * FROM
public.lab_indices_on_text_gin
WHERE content LIKE '2%';

END;
