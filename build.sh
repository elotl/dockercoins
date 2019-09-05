#!/bin/bash

set -e

# make sure we have the correct arguments
if [ $# -lt 1 ]; then
    script_name=`basename $0`
    echo "Usage: $script_name image_name"
    echo "e.g. $script_name webui"
    exit 1
fi

app=$1
image="dockercoins-$app"
docker login
docker_repo=elotl
pushd $app
docker build -t $docker_repo/$image:latest .
docker push $docker_repo/$image:latest
popd
