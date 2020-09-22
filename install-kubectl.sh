##########################################################################
# File Name: install-kubectl.sh
# Author: amoscykl
# mail: amoscykl980629@163.com
# Created Time: Tue 22 Sep 2020 11:10:43 AM CST
#########################################################################
#!/bin/zsh
echo "虽然Ubuntu默认的安装方式snap，但是安装不成功，所以还是推荐apt"
apt-get update
apt-get install -y ca-certificates curl software-properties-common apt-transport-https curl
curl -s https://mirrors.aliyun.com/kubernetes/apt/doc/apt-key.gpg | apt-key add -

tee /etc/apt/sources.list.d/kubernetes.list <<EOF 
deb https://mirrors.aliyun.com/kubernetes/apt/ kubernetes-xenial main
EOF

apt-get update
apt-get install -y kubectl # kubelet kubeadm
apt-mark hold kubectl # kubelet kubeadm 
