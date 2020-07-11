#!/usr/bin/env bash

echo "build Started ...."
pwd
ls -l

cd ..

mvn clean package

docker build -f config/Dockerfile -t gandhicloudlab/cpro-bankweb:latest .  --no-cache
# docker login -u gandigit
docker push gandhicloudlab/cpro-bankweb:latest

echo "build completed ...."