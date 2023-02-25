#/bin/bash
if [ -z "$1" ];then
    echo "请输入image.repository！"
    exit 0
fi
if [ -z "$2" ];then
    echo "请输入image.tag！"
    exit 0
fi
helm upgrade --install hexo-blog /root/mydata/cicd/charts/hexo-blog --set image.repository="$1" --set image.tag="$2"
