##########################################################################
# File Name: auth-helm.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Tue 22 Sep 2020 01:21:31 PM CST
#########################################################################
#!/bin/zsh
kubectl -n kube-system create serviceaccount tiller
kubectl create clusterrolebinding tiller \
  --clusterrole=cluster-admin \
  --serviceaccount=kube-system:tiller
