#!/usr/bin/env bash

docker-compose \
     -f ./registry-service/buildtask/docker-compose.yml \
     -f ./service-monitor/buildtask/docker-compose.yml \
     -f ./config-service/buildtask/docker-compose.yml \
     -f ./log-service/buildtask/docker-compose.yml \
     down
