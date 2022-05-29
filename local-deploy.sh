#!/bin/bash

docker run -it --rm -v ${PWD}:/app --user $(id -u) composer update
USER_ID=$(id -u) docker-compose -f docker-compose.local.yml up -d
