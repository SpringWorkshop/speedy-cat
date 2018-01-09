#!/usr/bin/env bash

wait_for_service_ready() {
    local uri=$1
    local service_name=$2
    service_ready=-1
    while [ $service_ready -ne 0 ]; do
        curl --silent $uri
        service_ready=$?
        sleep 3
        echo "Waiting for $service_name startup"
    done
}

start_registry_cluster() {
    docker-compose -f ./registry-service/buildtask/docker-compose.yml up --build -d
    wait_for_service_ready http://localhost:8760/health registry-service
}

start_config_cluster() {
    docker-compose -f ./config-service/buildtask/docker-compose.yml up --build -d
    wait_for_service_ready http://localhost:8781/health config-service
}

start_other_services() {
    docker-compose \
     -f ./service-monitor/buildtask/docker-compose.yml \
     up --build -d
}

start_registry_cluster
start_config_cluster
start_other_services