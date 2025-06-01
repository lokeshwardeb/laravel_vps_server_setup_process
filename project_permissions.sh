#!/bin/bash

PROJECT_PATH="/var/www/html"  # Change if your path differs
USER="triodev"                # Replace with your VPS user
WEBGROUP="www-data"

echo "Fixing Laravel permissions in $PROJECT_PATH..."

sudo chown -R $USER:$WEBGROUP $PROJECT_PATH
sudo find $PROJECT_PATH -type d -exec chmod 755 {} \;
sudo find $PROJECT_PATH -type f -exec chmod 644 {} \;
sudo chmod -R ug+rwx $PROJECT_PATH/storage $PROJECT_PATH/bootstrap/cache

echo "✅ Permissions fixed successfully!"

# chmod +x project_permissions.sh
# ./project_permissions.sh
