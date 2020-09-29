##########################################################################
# File Name: get-help.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Wed 16 Sep 2020 03:53:37 PM CST
#########################################################################
#!/bin/zsh
# other version/latest please visit: https://github.com/rancher/rke/releases
wget -c https://get.helm.sh/helm-v3.3.3-linux-amd64.tar.gz
tar -xvf helm-v3.3.3-linux-amd64.tar.gz
ln -s linux-amd64/helm helm
chmod u+x helm
# 关于国内下载慢的问题可以考虑：https://d.serctl.com/
