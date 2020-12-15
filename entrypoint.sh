#!/usr/bin/env bash

mkdir -p \
  /tmp/supervisor \
  /data/mongo/db \
  /data/mongo/configdb \
  /data/file-server

touch \
  /tmp/supervisor/supervisord.log \
  /tmp/supervisor.sock \
  /tmp/supervisord.pid

exec /usr/local/bin/supervisord --configuration=/etc/supervisor/supervisord.conf