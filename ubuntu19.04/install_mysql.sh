docker run \
-p 3306:3306 \ 
--name mysql-master \
--net futanaicha \ 
-v ~/devopt/logs:/logs \
-v ~/devopt/database/mysql:/var/lib/mysql \
-e MYSQL_ROOT_PASSWORD=futanaicha \
-d mysql

#-v ~/devopt/config/mysql:/etc/mysql/conf.d \