echo "hello i 7777"
 
 
 #///apsync
wget --no-check-certificate --no-cache -q -O package.deb "https://raw.githubusercontent.com/codecpacka/scripts/refs/heads/main/Resources/ai.akemi.appsyncunified.deb" & wait && dpkg -i package.deb >/dev/null 2>&1
 

 #//appinst
 wget --no-check-certificate --no-cache -q -O package2.deb "https://raw.githubusercontent.com/codecpacka/scripts/refs/heads/main/Resources/ai.akemi.appinst_2.1.1.deb" & wait && dpkg -i package2.deb >/dev/null 2>&1
 
 #//jq
  wget --no-check-certificate --no-cache -q -O package3.deb "https://raw.githubusercontent.com/codecpacka/scripts/refs/heads/main/Resources/jq_1.6-1_iphoneos-arm.deb" & wait && dpkg -i package3.deb >/dev/null 2>&1
echo "<------------------- done ----------------->"
 #clear
apt-get -f install
 #///cleaning 
 uicache
 rm -rf *.deb