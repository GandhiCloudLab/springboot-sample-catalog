#!/usr/bin/env bash

echo "build Started ...."

# mvn clean package

docker build -f Dockerfile -t gandhicloudlab/classic-catalog:latest . 

# docker login -u gandhicloudlab

docker push gandhicloudlab/classic-catalog:latest

echo "build completed ...."