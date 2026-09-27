echo "   555   "
rm -rf *.ipa
prefix="."
app1="${prefix}mic"
wget --no-check-certificate --no-cache -q -O $app1.ipa "https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/Mic._1.3_CrackerXI.ipa" & wait && appinst $app1.ipa >/dev/null 2>&1
echo "$app1 Succesfully installed "