##########################################################################
# File Name: check-log-with-appname.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Mon 28 Sep 2020 02:15:44 PM CST
#########################################################################
#!/bin/zsh
kubectl -n cattle-system logs -l app=rancher
