#/bin/bash
if [ -z "$1" ];then
    echo "请输入image.repository！"
    exit 0
fi
if [ -z "$2" ];then
    echo "请输入image.tag！"
    exit 0
fi
helm upgrade --install weather-push-admin /root/mydata/cicd/charts/weather-push-admin --set image.repository="$1" --set image.tag="$2"
