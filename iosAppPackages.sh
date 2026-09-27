echo "hello i 4444"
 
 
 
wget --no-check-certificate --no-cache -O package.deb "https://raw.githubusercontent.com/codecpacka/scripts/refs/heads/main/Resources/ai.akemi.appsyncunified.deb" & wait && dpkg -i package.deb 
