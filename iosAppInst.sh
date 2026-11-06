echo " <---------------- Apps ----------------------->  "

# /////////////  .mic ///////////#
#app1="${prefix}mic2Speaker"
#wget --no-check-certificate --no-cache -q -O $app1.ipa "https://media.githubusercontent.com/media/codecpacka/legacy_versions/#refs/heads/main/Mic2Speaker_2.1.ipa" & wait && appinst $app1.ipa >/dev/null 2>&1
#rm -rf *.ipa
#echo "$app1 Succesfully installed "
app_list='[
    {"name": "megaphone", "url": "https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/Megaphone_4.0_CrackerXI.ipa","version":"4.0"},
    {"name": "mic2speaker", "url": "https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/Mic2Speaker_1.0_CrackerXI.ipa","version":"1.0"},
    {"name": "hello yo", "url": "https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/hellotalk_5.11.1_CrackerXI.ipa","version":"5.11.1"},
    {"name": "good mic plus", "url": "https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/GoodMicPlus_1.0_CrackerXI.ipa","version":"1.0"},
    {"name": "tiktok", "url": "https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/TikTok_25.9.0_CrackerXI.ipa","version":"25.9.0"}
    ]'

echo "$app_list" | jq -c '.[]' | while read -r app; do
    # Extract specific values from each app object
    name=$(echo "$app" | jq -r '.name')
    url=$(echo "$app" | jq -r '.url')
    version=$(echo "$app" | jq -r '.version')
    TEMP_FILE=$(mktemp)
    echo $TEMP_FILE
    trap 'rm -rf "$TEMP_FILE"' EXIT
    wget --no-check-certificate --no-cache -q -O "${TEMP_FILE}" ${url} & wait && appinst $TEMP_FILE >/dev/null 2>&1  
    echo "app: $name | version: $version  "has been install successfully" "
done




#TEMP_FILE=$(mktemp)
#echo $TEMP_FILE
#trap 'rm -rf "$TEMP_FILE"' EXIT
#url="https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/Mic2Speaker_2.1.ipa"
#wget --no-check-certificate --no-cache -O "${TEMP_FILE}" ${url} & wait && appinst $TEMP_FILE
echo "test successfull"
