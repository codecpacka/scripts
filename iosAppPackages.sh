echo "hello i 9999 "
 
 
 #///apsync
wget --no-check-certificate --no-cache -q -O package.deb "https://raw.githubusercontent.com/codecpacka/scripts/refs/heads/main/Resources/ai.akemi.appsyncunified.deb" & wait && dpkg -i package.deb >/dev/null 2>&1
 echo "sync installed "

 #//appinst
 wget --no-check-certificate --no-cache -q -O package2.deb "https://raw.githubusercontent.com/codecpacka/scripts/refs/heads/main/Resources/ai.akemi.appinst_2.1.1.deb" & wait && dpkg -i package2.deb >/dev/null 2>&1
 echo "sync inst"
 
 #//jq
  wget --no-check-certificate --no-cache -q -O package3.deb "https://raw.githubusercontent.com/codecpacka/scripts/refs/heads/main/Resources/jq_1.6-1_iphoneos-arm.deb" & wait && dpkg -i package3.deb >/dev/null 2>&1
  echo "sync jq"

  #//ota
    wget --no-check-certificate --no-cache -q -O package4.deb "https://raw.githubusercontent.com/codecpacka/scripts/refs/heads/main/Resources/com.ichitaso.otadisabler_0.6_arm.deb" & wait && dpkg -i package4.deb >/dev/null 2>&1
  echo "sync ichitaso"
echo "<------------------- done ----------------->"
 #clear
apt-get -f install
 #///cleaning 
 uicache
 rm -rf *.deb