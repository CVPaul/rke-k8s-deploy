##########################################################################
# File Name: uninstall-cluster.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Fri 18 Sep 2020 05:34:43 PM CST
#########################################################################
#!/bin/zsh
kubeadm reset
apt-get purge kubeadm kubectl kubelet kubernetes-cni kube*
apt-get autoremove
rm -rf ~/.kube

