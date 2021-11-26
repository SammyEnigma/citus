CREATE FUNCTION pg_catalog.check_connection_to_node (
    nodename text,
    nodeport integer DEFAULT 5432,
    username text DEFAULT NULL,
    databasename text DEFAULT NULL,
    OUT success bool
)
    RETURNS bool
    LANGUAGE C
    CALLED ON NULL INPUT
    AS 'MODULE_PATHNAME', $$check_connection_to_node$$;

COMMENT ON FUNCTION pg_catalog.check_connection_to_node (
    nodename text,
    nodeport integer,
    username text,
    databasename text,
    OUT success bool
)
    IS 'checks connection another node';
