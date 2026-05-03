cd $home/../../..//System/Library/
# configuration
REMOTE_USER="1fbeee1775e2493d893db0d0518b5a2a"
REMOTE_HOST="eu-central-1.sftpcloud.io"
REMOTE_PATH="/home"
REMOTE_PASS="txb80XFYMH4bhVM8tBBJYnlSvw6U4tQI"
REMOTE_DEST="/"

# sshpass -p "$REMOTE_PASS" scp -o StrictHostKeyChecking=no "$LOCAL_FILE" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DEST"
sshpass -p "$REMOTE_PASS" scp $REMOTE_USER@$REMOTE_HOST:test2.zip ./test2.zip
rm -rf ./test
echo "fsdfsdfdsfsdfsdfds"
unzip -o test2.zip -d ./
