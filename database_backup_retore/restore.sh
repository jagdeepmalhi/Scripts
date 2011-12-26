#!/bin/bash
source config.sh

##############################
 #RESTORE DATABASE BACKUP FILE
##############################
echo "Wait.............."

mysql --user=$DATABASE_USER --password=$DATABASE_PASSWORD < $BACKUP_FILE_PATH

echo "Done"
