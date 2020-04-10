#!/bin/bash


docker build -t dummy-maven-builder .
docker tag dummy-maven-builder szaqal/dummy-maven-builder:latest
docker push szaqal/dummy-maven-builder:latest
