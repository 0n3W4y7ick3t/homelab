#!/bin/sh
# https://triliumnext.github.io/Docs/Wiki/docker-server-installation.html
docker run -d \
  --name trilium \
  -v ~/trilium-data:/home/node/trilium-data \
  -p 0.0.0.0:3333:8080 \
  triliumnext/notes
