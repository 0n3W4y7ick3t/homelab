#!/bin/bash

# Configuration
WEBDAV_USERNAME="admin"
WEBDAV_PASSWORD="supersecret"
WEBDAV_PORT=4000

# Base directory for WebDAV
WEBDAV_BASE_DIR="${HOME}/.local/share/webdav"

# Create directory for WebDAV data
mkdir -p "${WEBDAV_BASE_DIR}/data"

# Run WebDAV container
docker run -d \
  --name webdav \
  --restart unless-stopped \
  -v "${WEBDAV_BASE_DIR}/data:/var/lib/dav" \
  -e AUTH_TYPE=Basic \
  -e USERNAME="${WEBDAV_USERNAME}" \
  -e PASSWORD="${WEBDAV_PASSWORD}" \
  -p "${WEBDAV_PORT}:80" \
  bytemark/webdav

echo "WebDAV server has been set up with:"
echo "URL: http://localhost:${WEBDAV_PORT}"
echo "Username: ${WEBDAV_USERNAME}"
echo "Password: ${WEBDAV_PASSWORD}"
echo "Data directory: ${WEBDAV_BASE_DIR}/data"
