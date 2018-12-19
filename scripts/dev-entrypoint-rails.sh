#!/bin/bash
if [ -f tmp/pids/server.pid ]; then
  rm -rf tmp/pids/server.pid
fi

./bin/rails s
