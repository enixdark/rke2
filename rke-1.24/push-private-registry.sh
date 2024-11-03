#!/bin/bash

REGISTRY_HOST="registry:5000"
images=`cat image_list.txt`

for img in $images; do
  NEW_HOST=${REGISTRY_HOST}/$img
  echo "push $img $NEW_HOST... to $REGISTRY_HOST"
  docker tag $img $NEW_HOST
  docker push $NEW_HOST
done