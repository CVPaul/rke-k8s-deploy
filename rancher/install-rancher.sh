##########################################################################
# File Name: install-rancher.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Tue 22 Sep 2020 02:17:54 PM CST
#########################################################################
#!/bin/zsh
kubectl create namespace cattle-system
helm repo add rancher-stable https://releases.rancher.com/server-charts/stable
helm repo update
# installing(--set tls=external # 使用外部终止的TLS)
helm install rancher rancher-stable/rancher \
  --namespace cattle-system \
  --set hostname=rancher.cluster.st \
  --set tls=external \
  --set ingress.tls.source=secret
