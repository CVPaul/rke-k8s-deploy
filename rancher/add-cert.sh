##########################################################################
# File Name: add-cert.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Mon 28 Sep 2020 02:36:47 PM CST
#########################################################################
#!/bin/zsh
kubectl -n cattle-system create secret tls tls-rancher-ingress \
  --cert=tls.crt \
  --key=tls.key
