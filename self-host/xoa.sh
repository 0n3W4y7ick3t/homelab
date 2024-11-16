#!/bin/bash

docker run -itd \
  --name xoa \
  --network host \
  -v xoa-data:/var/lib/xo-server \
  -v xoa-redis:/var/lib/redis \
  --restart unless-stopped \
  ronivay/xen-orchestra
