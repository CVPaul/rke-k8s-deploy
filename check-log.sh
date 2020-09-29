##########################################################################
# File Name: check-log-with-appname.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Mon 28 Sep 2020 02:15:44 PM CST
#########################################################################
#!/bin/zsh
echo "example: sh $0 cattle-system rancher"
kubectl -n $1 logs -l app=$2
