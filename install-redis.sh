#/bin/bash
helm install redis bitnami/redis --set architecture=standalone --set master.service.type=NodePort --set master.service.nodePorts.redis=30919 --set global.redis.password=root
