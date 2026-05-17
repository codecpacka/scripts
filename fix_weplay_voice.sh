cd $home/../../../var/mobile/containers/Data/Application/
weJoy=$(grep -rl --include=".com.apple.mobile_container_manager.metadata.plist" "com.wejoy.weplay.ar" .| cut -d/ -f2 | sort -u)
echo "$weJoy"
if [ $weJoy -eq 0 ];; then

    wget driver link
    7z x eav_driver.7z -pRats@9033
  #  shred -u -z *.7z 
else
echo "App not installed please try after installing the App" 

fi
echo "6566"


echo "suer"
$SHELL