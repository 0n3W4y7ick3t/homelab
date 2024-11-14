#!/bin/bash
docker run -d \
  --name clipcascade \
  -p 8080:8080 \
  --restart always \
  -e CC_USERNAME=username \
  -e CC_PASSWORD='topscret' \
  -e CC_MAX_MESSAGE_SIZE=1 \
  sathvikrao/clipcascade:latest
