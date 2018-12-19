#!/bin/bash
# Docker Compose で DB コンテナの起動を待つために利用する
# see also: https://docs.docker.com/compose/startup-order/
function db_ready() {
  mysqladmin ping -h db -u app -papp > /dev/null 2>&1
}

while !(db_ready)
do
  echo "waiting DB setup..."
  sleep 5
done
