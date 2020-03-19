BEGIN;
	CREATE SEQUENCE serial_unlog_insert START 1;
	CREATE SEQUENCE serial_unlog_update START 1;
	CREATE SEQUENCE serial_unlog_delete START 1;
	CREATE SEQUENCE serial_log_insert START 1;
	CREATE SEQUENCE serial_log_update START 1;
	CREATE SEQUENCE serial_log_delete START 1;
END;
