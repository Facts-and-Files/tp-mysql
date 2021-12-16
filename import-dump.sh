#!/bin/bash

export $(grep -v '^#' .env | xargs)

sudo docker exec -i tp_mysql mysql -u"$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" <<< "source /root/live-transcribathon-2021-11-26.sql"
