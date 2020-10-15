##########################################################################
# File Name: upgrade-rancher.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Tue 22 Sep 2020 02:17:54 PM CST
#########################################################################
#!/bin/zsh
# installing(--set tls=external # 使用外部终止的TLS)
helm upgrade rancher rancher-stable/rancher \
  --namespace cattle-system \
  --set hostname=rancher.shengtang.ai \
  --set tls=external \
  --set ingress.tls.source=secret
