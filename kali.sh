#!/bin/bash

if [ $# -eq 0 ]
  then
    docker-compose -f /opt/kali/docker-compose.yml run --rm kali
  else
    docker-compose -f /opt/kali/docker-compose.yml run --rm kali -c "$*"
fi

