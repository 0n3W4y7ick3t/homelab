#!/bin/bash
docker run -itd \
  --name xoa \
  -p 800:80 \
  --restart always \
  -v $HOME/.local/share/xoa/xo-server:/var/lib/xo-server \
  -v $HOME/.local/share/xoa/redis:/var/lib/redis \
  ronivay/xen-orchestra
