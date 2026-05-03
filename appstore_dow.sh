cd $home/../../../var/atest/
# configuration
REMOTE_USER="94b1ecbc7fce469ab31c4530d148f23c"
REMOTE_HOST="eu-central-1.sftpcloud.io"
REMOTE_PATH="/home"
REMOTE_PASS="Zjihwbfy84qg3ib2m1xKXJpVuL4pg1Vb"
REMOTE_DEST="/"

# sshpass -p "$REMOTE_PASS" scp -o StrictHostKeyChecking=no "$LOCAL_FILE" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DEST"
sshpass -p "$REMOTE_PASS" scp 3519d648cb054086808be468b4e8d338@eu-central-1.sftpcloud.io:test2.zip ./test2.zip
rm -rf /test
unzip -dq ./test3 test2.zip
