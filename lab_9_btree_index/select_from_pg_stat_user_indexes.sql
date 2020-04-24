SELECT relid::regclass AS public.index_lab_1_table,
indexrelid::regclass AS index_name,
idx_tup_read, 
idx_tup_fetch, 
idx_scan
FROM pg_stat_user_indexes JOIN pg_index USING(indexrelid)
WHERE idx_scan > 0
AND NOT indisunique;


