#!/bin/sh
docker run -d \
  --name alist \
  -e PUID=1000 \
  -e PGID=1000 \
  -e UMASK=022 \
  -v alist-data:/opt/alist/data \
  -v /mnt/share:/opt/alist/data/root \
  -p 5244:5244 \
  xhofe/alist:latest
