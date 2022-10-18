#!/bin/bash
set -e
# gunzip -c /docker-entrypoint-initdb.d/auto-2022-09-07.gz | psql $PG_DB
psql -v ON_ERROR_STOP=1 --username "postgres" -d "postgres" <<-EOSQL
    CREATE USER "$PG_USER" WITH SUPERUSER PASSWORD '$POSTGRES_PASSWORD';
    CREATE DATABASE "$PG_DB" WITH OWNER "$PG_USER" ENCODING 'UTF8' LC_COLLATE 'C' LC_CTYPE 'C' CONNECTION LIMIT -1 TEMPLATE template0;
EOSQL