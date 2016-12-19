#!/bin/sh

[ "$(/cockroach/cockroach sql --execute='show users;' | grep -w ${POSTGRES_USER:=stoic})" ] && exit 0;

# Initialise the cockroach users and databases
# Meant to be executed via docker exec in a systemd PostStart section
cat >/tmp/create.sql <<EOL
CREATE DATABASE IF NOT EXISTS ${POSTGRES_DB:=stoic};
CREATE USER ${POSTGRES_USER:=stoic} WITH PASSWORD '${POSTGRES_PASSWORD:=stoic}';
GRANT ALL ON DATABASE ${POSTGRES_DB:=stoic} TO ${POSTGRES_USER:=stoic};
EOL

/cockroach/cockroach sql < /tmp/create.sql && rm /tmp/create.sql
