#!/bin/bash

# Configuration
WEBDAV_USERNAME="admin"
WEBDAV_PASSWORD="changeme"
SP_DATA_DIR="${HOME}/.local/share/super-productivity"
WEBDAV_BASE_DIR="${HOME}/.local/share/webdav"

# Create directories
mkdir -p "${WEBDAV_BASE_DIR}/data"
mkdir -p "${SP_DATA_DIR}"

# Create WebDAV config
cat > "${WEBDAV_BASE_DIR}/config.yml" << EOL
address: 0.0.0.0
port: 80
users:
  - username: ${WEBDAV_USERNAME}
    password: ${WEBDAV_PASSWORD}
    directory: /data
EOL

# Set proper permissions
chmod 600 "${WEBDAV_BASE_DIR}/config.yml"
chmod -R 755 "${WEBDAV_BASE_DIR}/data"
chmod -R 755 "${SP_DATA_DIR}"

echo "Setup completed. Directories created:"
echo "WebDAV data: ${WEBDAV_BASE_DIR}"
echo "Super Productivity data: ${SP_DATA_DIR}"
echo "You can now run docker-compose up -d"
