#! /bin/bash

# docker build -f 
SCRIPT=$(realpath "$0")
PROJECT_ROOT=$(dirname $(dirname "$SCRIPT"))
pushd $PROJECT_ROOT
echo "building rosbridge dev_docker in path `$pwd`"

docker build . -f docker/Dockerfile -t rosbridge-dev:latest

popd
