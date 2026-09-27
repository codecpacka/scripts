echo "   rayz ----------------------->  "

# /////////////  .mic ///////////#
#app1="${prefix}mic2Speaker"
#wget --no-check-certificate --no-cache -q -O $app1.ipa "https://media.githubusercontent.com/media/codecpacka/legacy_versions/#refs/heads/main/Mic2Speaker_2.1.ipa" & wait && appinst $app1.ipa >/dev/null 2>&1
#rm -rf *.ipa
#echo "$app1 Succesfully installed "
app_list='[
    {"name": "rayz", "url": "https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/com.appcessori.rayz_1.8.1_und3fined.ipa","version":"1.1"}
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
