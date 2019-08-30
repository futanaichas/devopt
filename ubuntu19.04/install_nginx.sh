docker run \
-p 80:80 \
-p 443:443 \
--name nginx-master \
--net futanaicha \
-v ~/devopt/config/nginx/default.conf:/etc/nginx/conf.d/default.conf \
-v ~/devopt/wwwroot:/var/www/html \
-d nginx