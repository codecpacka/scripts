echo "<=======  icd: -14=======>"
#
# <============server configuration==============>
#
PERSON_NAME="rudra"
REMOTE_HOST="eu-central-1.sftpcloud.io"
REMOTE_USER="2259d91e93f342ed87e065fdb1468736"
REMOTE_PASS="xFeBzFsXWNrJj1zJqO13J8yqx01X9MCP"
REMOTE_PATH="/home"
REMOTE_DEST="/"




cd $home
echo $pwd
#mega=$(grep -rl --include=".iTunesMetadata.plist" "com.smudgeapps.megaphonefree" .| cut -d/ -f2 | sort -u)
#echo $mega
#cd $mega
#archeiving files
#echo "archiving silently"
#zip -qr "$ARCHIVE_NAME" mega && echo "000000000"






# --- Upload Command ---
# -p specifies the password
# -o StrictHostKeyChecking=no prevents the script from hanging on new host prompts
// uncommit #sshpass -p "$REMOTE_PASS" scp -o StrictHostKeyChecking=no "$ARCHIVE_NAME" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DEST"
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
