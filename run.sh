#!/bin/bash

docker rm -f googlecloud-cli

docker run -it  -e CONF_VNC_PASS=changeme \
                -e CONF_CONTROLLER_PORT=4440 \
                -e CONF_API_PORT=4100 \
                -e CONF_TRADING_MODE=paper \
                -e CONF_IB_USER=john \
                -e CONF_IB_PASS=doeauto \
                -e CONF_IB_READ_ONLY=no \
                -p 8081:8080 -p 50001:50000 \
                --name googlecloud-cli \
                appsoa/docker-centos-googlecloud-cli:latest \
                /bin/bash
