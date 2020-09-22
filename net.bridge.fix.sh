##########################################################################
# File Name: net.bridge.fix.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Fri 18 Sep 2020 03:04:10 PM CST
#########################################################################
#!/bin/zsh
echo "fix the net.bridge.bridge-nf-call-iptables=1 with fllowing lines"
echo "cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF
sudo sysctl --system"
