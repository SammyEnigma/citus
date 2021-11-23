
SET citus.next_shard_id TO 390000;


-- ===================================================================
-- get ready for the foreign data wrapper tests
-- ===================================================================

-- create fake fdw for use in tests
CREATE FUNCTION fake_fdw_handler()
RETURNS fdw_handler
AS 'citus'
LANGUAGE C STRICT;

set citus.enable_ddl_propagation to off;
CREATE FOREIGN DATA WRAPPER fake_fdw HANDLER fake_fdw_handler;
CREATE SERVER fake_fdw_server FOREIGN DATA WRAPPER fake_fdw;
set citus.enable_ddl_propagation to on;
