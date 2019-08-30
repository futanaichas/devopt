# 启动容器
docker run \
-p 3306:3306 \
--name mysql-master \
--net futanaicha \
-v ~/devopt/logs:/logs \
-v ~/devopt/database/mysql:/var/lib/mysql \
-v ~/devopt/config/mysql/my.cnf:/etc/mysql/my.cnf \
-e MYSQL_ROOT_PASSWORD=futanaicha \
-e MYSQL_ROOT_HOST=% \
-d mysql --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
#-v ~/devopt/config/mysql:/etc/mysql/conf.d \

