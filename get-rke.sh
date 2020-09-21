##########################################################################
# File Name: rke-download.sh
# Author: amoscykl
# mail: amoscykl980629@163.com
# Created Time: Wed 16 Sep 2020 03:53:37 PM CST
#########################################################################
#!/bin/zsh
# other version/latest please visit: https://github.com/rancher/rke/releases
wget -c http://github.com/rancher/rke/releases/download/v1.1.7/rke_linux-amd64
mv rke_linux_amd64 rke
chmod u+x rke
# 关于国内下载慢的问题可以考虑：https://d.serctl.com/
