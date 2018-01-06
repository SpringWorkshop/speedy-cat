#!/usr/bin/env bash

java -Djava.security.egd=file:/dev/./urandom -jar ./registry-service-0.0.1.jar --spring.profiles.active=$APP_ENV