##########################################################################
# File Name: del-cert.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Mon 28 Sep 2020 02:39:20 PM CST
#########################################################################
#!/bin/zsh
kubectl -n cattle-system delete secret tls-rancher-ingress
