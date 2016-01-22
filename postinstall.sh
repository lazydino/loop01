# Replace datasources connector parameters before execution.
#echo "MYSQLD_PORT_3306_TCP_ADDR is "$MYSQLD_PORT_3306_TCP_ADDR
sed -i -r -e "0,/host/ s/(\"host\":).*/\1 \"$MYSQLD_PORT_3306_TCP_ADDR\",/" \
   -e "0,/database/ s/(\"database\":).*/\1 \"matrixdb\",/" \
   -e "0,/password/ s/(\"password\":).*/\1 \"$MYSQLD_ENV_MYSQL_ROOT_PASSWORD\",/" \
   server/datasources.json
#cat server/datasources.json
#grunt


