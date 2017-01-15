#!/bin/bash

docker run -it  --rm \
                --name googlecloud-cli \
                appsoa/docker-centos-googlecloud-cli:latest \
                /bin/bash
