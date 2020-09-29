##########################################################################
# File Name: install-cert-manager.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Tue 22 Sep 2020 03:30:10 PM CST
#########################################################################
#!/bin/zsh
# more details: https://cert-manager.io/docs/installation/kubernetes/
kubectl create namespace cert-manager
helm repo add jetstack https://charts.jetstack.io
helm repo update
# Helm v3+
helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --version v1.0.1 \
  --set installCRDs=true # 如果没有使用kubectl安装CRDs的话这个是必要的

## Helm v2
#$ helm install \
#  --name cert-manager \
#  --namespace cert-manager \
#  --version v1.0.1 \
#  jetstack/cert-manager \
#  # --set installCRDs=true
