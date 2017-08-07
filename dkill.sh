#!/bin/bash

# Removes all running containers and then removes the old containers
# Removes containers made months, days and weeks ago
docker ps -q | xargs docker kill
docker ps -a -q | xargs docker rm
