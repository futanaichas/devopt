docker run \
-p 6379:6379 \
--name redis-master \
--net futanaicha \
-v ~/devopt/config/redis/redis.conf:/usr/local/etc/redis/redis.conf \
-v ~/devopt/database/redis:/data \
-d redis redis-server /usr/local/etc/redis/redis.conf --appendonly yes