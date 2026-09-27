echo "   final versions added all apps    "

# /////////////  .mic ///////////#
#app1="${prefix}mic2Speaker"
#wget --no-check-certificate --no-cache -q -O $app1.ipa "https://media.githubusercontent.com/media/codecpacka/legacy_versions/#refs/heads/main/Mic2Speaker_2.1.ipa" & wait && appinst $app1.ipa >/dev/null 2>&1
#rm -rf *.ipa
#echo "$app1 Succesfully installed "
app_list='[
    {"name": "mic 2 speaker ", "url:"https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/Mic2Speaker_2.1.ipa","version":"2.1"},
    {"name": "dot mic ", "url": "https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/Mic._1.3_CrackerXI.ipa","version":"1.3"},
    {"name": "bigo live ", "url": "https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/BIGO%20LIVE_4.10.0_CrackerXI.ipa","version":"4.10.0"},
    {"name": "funkie", "url": "https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/funkie.ipa","version":"2.8.2"},
    {"name": "hello yo", "url": "https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/hellotalk_5.10.3_CrackerXI.ipa","version":"5.10.3"},
    {"name": "third ear", "url": "https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/RemoteEar_1.1.0_.ipa","version":"1.1.0"}
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
