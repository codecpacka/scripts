cd $home/../../../var/Keychains/
DB="keychain-2.db"
sqlite3 "$DB" "select * from genp;"
echo $pwd
ls
$SHELL
