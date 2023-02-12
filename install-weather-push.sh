#/bin/bash
if [ -z "$1" ];then
    echo "请输入镜像版本！"
    exit 0
fi
helm install weather-push weather-push --set image.tag="$1"
