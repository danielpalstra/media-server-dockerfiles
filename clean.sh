#!/bin/bash
echo 'Cleaning up stopped containers...'
docker ps -a | grep "Exit" | awk '{print $1}' | while read -r id ; do
  docker rm $id
done

echo 'Cleaning up untagged images...'
docker images | grep "^<none>" | head -n 1 | awk 'BEGIN { FS = "[ \t]+" } { print $3 }'  | while read -r id ; do
  docker rmi $id
done
