#!/bin/bash 


killall -9 postgres

chmod a+w . -R 

username='postgresql'


if id "$username" &>/dev/null; then
    echo 'user found'
    deluser $username
fi

echo "Create new user(postgresql)..."
useradd $username
echo "Add password for postgresql..."
passwd $username


d="/var/lib/postgresql"
if [  -d "${d}" ]
then
       rm ${d}/* -rf	
else
    mkdir -p ${d}
    touch ${d}/logfile
    chown $username /var/lib/postgresql/ -R 
fi


su $username -c "initdb -D /var/lib/postgresql/data"


su $username -c "pg_ctl -D /var/lib/postgresql/data -l /var/lib/postgresql/logfile start"

