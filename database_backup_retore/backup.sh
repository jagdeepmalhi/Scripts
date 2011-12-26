#!/bin/bash
source config.sh

datum=`/bin/date +%Y%m%d-%H%M%S`

echo "Wait.........."
##############################
 #FOR ALL DATABASES
##############################

#/usr/bin/mysqldump --user=$DATABASE_USER --password=$DATABASE_PASSWORD --lock-all-tables \ --all-databases > $DESTINATION_FOLDER/backup_all-${datum}.sql

###############################
#FOR SINGLE DATABASE
###############################

/usr/bin/mysqldump --user=$DATABASE_USER --password=$DATABASE_PASSWORD --databases $DATABASE_NAME > $DESTINATION_FOLDER/backup_$DATABASE_NAME-${datum}.sql

for file in "$( /usr/bin/find $DESTINATION_FOLDER -type f -mtime +2 )"
do
  /bin/rm -f $file
done

echo "Done"

