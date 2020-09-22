##########################################################################
# File Name: close_swap.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Wed 16 Sep 2020 02:54:32 PM CST
#########################################################################
#!/bin/zsh
swapoff -a # close all swap devices
# 修改/etc/fstab，注释掉swap那行，持久化生效
# sudo vim /etc/fstab
