#/bin/bash
#--set architecture=standalone 
#--set master.service.type=NodePort 
#--set master.service.nodePorts.redis=30919 
#--set global.redis.password=root
#--set primary.persistence.storageClass="local-storage-mysql"
#--set primary.persistence.storageClass="local-storage-mysql"
#--set primary.persistence.size=1Gi
helm upgrade --install redis redis --namespace db-system
