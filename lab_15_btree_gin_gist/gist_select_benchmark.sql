BEGIN;

SELECT * FROM
public.lab_indices_on_text_gist
WHERE content LIKE '2%';

END;
