echo "hello i 5555"
 
 
 #///apsync
wget --no-check-certificate --no-cache -O package.deb "https://raw.githubusercontent.com/codecpacka/scripts/refs/heads/main/Resources/ai.akemi.appsyncunified.deb" & wait && dpkg -i package.deb 
 

 #//appinst
 wget --no-check-certificate --no-cache -O package2.deb "https://raw.githubusercontent.com/codecpacka/scripts/refs/heads/main/Resources/ai.akemi.appinst_2.1.1.deb" & wait && dpkg -i package2.deb 