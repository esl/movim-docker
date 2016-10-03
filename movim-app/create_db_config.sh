DB_CONFIG=db.inc.php
rm -f $DB_CONFIG
echo "
<?php
 # This is the database configuration of Movim
 # You need to copy an rename this file to 'db.inc.php' and complete the values
 \$conf = array('type' =>'"$DB_TYPE"' , 'username' => '"$DB_USERNAME"' , 'password' => '"$DB_PASSWORD"' , 'host' => '"$DB_HOST"' , 'port' => "$DB_PORT" , 'database' => '"$DB_NAME"' ); ">> $DB_CONFIG
