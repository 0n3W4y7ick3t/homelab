#!/bin/sh
docker run -d \
  --name alist \
  -v alist-data:/opt/alist/data \
  -v /mnt/share:/opt/alist/data/root \
  -p 5244:5244 \
  xhofe/alist:latest
