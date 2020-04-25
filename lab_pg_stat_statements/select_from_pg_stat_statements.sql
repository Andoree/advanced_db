SELECT query, calls, total_time, rows,
100.0 * shared_blks_read / nullif(shared_blks_hit + shared_blks_read) AS read_percent,
1000 * calls / total_time as TPS
FROM pg_stat_statements
ORDER BY total_time DESC
LIMIT 20;