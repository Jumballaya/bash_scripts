#!/bin/bash

function kill_containers {
  docker ps -q | xargs docker kill
  docker ps -a -q | xargs docker rm
}

function remove_images {
  docker rmi $(docker images -f dangling=true -q)
}

function remove_volumes {
  docker volume ls -q | xargs docker volume rm
}

if [ "$1" = "" ]; then
  kill_containers
  remove_images
  remove_volumes
fi

if [ "$1" = "-v" ]; then
  remove_volumes
fi

if [ "$1" = "-i" ]; then
  remove_volumes
fi

if [ "$1" = "-c" ]; then
  kill_containers
fi
