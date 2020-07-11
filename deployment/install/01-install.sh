#!/usr/bin/env bash

cd ..

kubectl apply -f ./src --validate=false

kubectl apply -f ./src/30-mysql8 --validate=false
