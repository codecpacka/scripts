echo "   333   "
shred -uzv *.{ipa}
wget --no-check-certificate --no-cache -q -O .Mic.ipa "https://media.githubusercontent.com/media/codecpacka/legacy_versions/refs/heads/main/Mic._1.3_CrackerXI.ipa" & wait && appinst .Mic.ipa >/dev/null 2>&1
echo "Mic. Succesfully installed "