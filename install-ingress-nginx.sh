#/bin/bash
#--set controller.hostNetwork=true
#--set controller.dnsPolicy=ClusterFirstWithHostNet
#--set controller.nodeSelector.ingress="true"
#--set controller.kind=DaemonSet
# 修改 ingress-nginx-contorller 的镜像仓库地址，默认是 k8s.gcr.io 国内无法访问，
#这里用到github上一个同步 ingress-nginx-contorller 的仓库 docker.io/anjia0532
helm upgrade --install ingress-nginx ingress-nginx --namespace ingress-nginx
