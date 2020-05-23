CREATE EXTENSION pg_prewarm;
SELECT pg_prewarm('public.shared_buffers_lab_table_1');
SELECT pg_prewarm('public.shared_buffers_lab_table_2');
SELECT pg_prewarm('public.shared_buffers_lab_table_3');

