BIN_PATH=/usr/local/bin
CLUSTER_HOST=127.0.0.1
CONTAINER_IP=`hostname -I`
PORT=30000
NODES=$(cat /proc/cpuinfo| grep cores | wc -l)
REPLICAS=1
PROTECTED_MODE=no
ADDITIONAL_OPTIONS="--cluster-announce-ip $CONTAINER_IP --loadmodule /usr/lib/redis/modules/redisai.so --loadmodule /var/opt/redislabs/lib/modules/redisgears.so CreateVenv 1 DownloadDeps 1"
