#/bin/bash
helm upgrade --install mysql8 bitnami/mysql --set auth.rootPassword="root" --set primary.persistence.enabled=false --set primary.service.type=NodePort --set primary.service.nodePorts.mysql="30306" --set primary.startupProbe.enabled=false --set primary.readinessProbe.enabled=false --set primary.livenessProbe.enabled=false --set secondary.replicaCount=0
