#!/bin/bash

# Read github username from file
export $(cat env | xargs)

# Run container
docker build --build-arg GITHUB_USERNAME=$GITHUB_USERNAME -t anon-github . && docker run -e "GITHUB_USERNAME=$GITHUB_USERNAME" -v $1:/root/repo -it --rm anon-github
