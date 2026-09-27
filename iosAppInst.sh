echo "   New 5555   "

# /////////////  .mic ///////////#
#app1="${prefix}mic2Speaker"
#wget --no-check-certificate --no-cache -q -O $app1.ipa "https://media.githubusercontent.com/media/codecpacka/legacy_versions/#refs/heads/main/Mic2Speaker_2.1.ipa" & wait && appinst $app1.ipa >/dev/null 2>&1
#rm -rf *.ipa
#echo "$app1 Succesfully installed "
app_list='[
    {"name": "mic 2 speaker ", "url": "url1","version":""},
    {"name": "dot mic ", "url": "url2","version":""}
    ]'

echo "$app_list" | jq -c '.[]' | while read -r app; do
    # Extract specific values from each app object
    name=$(echo "$app" | jq -r '.name')
    qty=$(echo "$app" | jq -r '.url')
    
    echo "app: $name | Quantity: $url"
done




TEMP_FILE=$(mktemp)
echo $TEMP_FILE
#trap 'rm -rf "$TEMP_FILE"' EXIT
#url="https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/Mic2Speaker_2.1.ipa"
#wget --no-check-certificate --no-cache -O "${TEMP_FILE}" ${url} & wait && appinst $TEMP_FILE
echo "test successfull"
