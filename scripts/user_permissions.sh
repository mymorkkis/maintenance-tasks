mysql -u root -p$MYSQL_ROOT_PASSWORD --execute \
"REVOKE ALL PRIVILEGES, GRANT OPTION FROM $MYSQL_USER;
GRANT CREATE, SELECT, INSERT, UPDATE, DELETE ON $MYSQL_DATABASE.* TO $MYSQL_USER;"
