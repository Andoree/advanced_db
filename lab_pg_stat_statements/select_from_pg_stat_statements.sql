SELECT query, calls,mean_time, total_time, rows,
100.0 * shared_blks_read / nullif(shared_blks_hit + shared_blks_read, 0) AS read_percent,
 calls / (total_time / 1000) as TPS
FROM pg_stat_statements
ORDER BY total_time DESC
LIMIT 20;
