# Replace datasources connector parameters before execution.
sed -i -r -e "s/(\"host\":).*/\1 \"$MYSQLD_PORT_3306_TCP_ADDR\",/" \
   -e "s/(\"database\":).*/\1 \"matrixdb\",/" \
   -e "s/(\"username\":).*/\1 \"root\",/" \
   -e "s/(\"password\":).*/\1 \"$MYSQLD_ENV_MYSQL_ROOT_PASSWORD\",/" \
   /app/server/datasources.json
sed -r "s/(masterIP *= *\").*/\1$hostIP\";/" mv/main.js.org > mv/main.js
sed -r "s/(masterIP *= *\").*/\1$hostIP\";/" mv/Editor/main.js.org > mv/Editor/main.js

