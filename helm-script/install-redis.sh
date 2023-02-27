#/bin/bash
#--set architecture=standalone 
#--set master.service.type=NodePort 
#--set master.service.nodePorts.redis=30919 
#--set global.redis.password=root
#--set primary.persistence.storageClass="local-storage-mysql"
#--set primary.persistence.size=1Gi
#--set primary.persistence.existingClaim="mysql-pvc"
helm upgrade --install redis /root/mydata/cicd/charts/redis --namespace db-system
