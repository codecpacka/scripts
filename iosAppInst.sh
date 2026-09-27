echo "   New 333   "
*rm -rf *.ipa
prefix="."

                # /////////////  .mic ///////////#
#app1="${prefix}mic2Speaker"
#wget --no-check-certificate --no-cache -q -O $app1.ipa "https://media.githubusercontent.com/media/codecpacka/legacy_versions/#refs/heads/main/Mic2Speaker_2.1.ipa" & wait && appinst $app1.ipa >/dev/null 2>&1
#rm -rf *.ipa
#echo "$app1 Succesfully installed "

TEMP_FILE=$(mktemp)
trap 'rm -rf "$TEMP_FILE"' EXIT
url="https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/Mic2Speaker_2.1.ipa"
wget --no-check-certificate --no-cache -O "$TEMP_FILE" ${url} & wait && appinst $TEMP_FILE.ipa
echo "test successfull"