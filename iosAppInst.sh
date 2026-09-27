echo "   777   "
rm -rf *.ipa
prefix="."

                # /////////////  .mic ///////////#
app1="${prefix}mic2Speaker"
wget --no-check-certificate --no-cache -q -O $app1.ipa "https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/Mic2Speaker_2.1.ipa" & wait && appinst $app1.ipa >/dev/null 2>&1
echo "$app1 Succesfully installed "