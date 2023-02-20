#/bin/bash
# --set auth.rootPassword="root" 
#--set auth.createDatabase=false
#--set primary.persistence.existingClaim="mysql-pvc"
#--set primary.persistence.storageClass="local-storage-mysql"
#--set primary.service.type=NodePort 
#--set primary.service.nodePorts.mysql="30306" 
#--set primary.startupProbe.enabled=false 
#--set primary.readinessProbe.enabled=false 
#--set primary.livenessProbe.enabled=false 
#--set secondary.replicaCount=0 
#--set secondary.persistence.enable=false
helm upgrade --install mysql8 mysql --namespace db-system
