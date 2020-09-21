##########################################################################
# File Name: set-hostname.sh
# Author: amoscykl
# mail: amoscykl980629@163.com
# Created Time: Mon 21 Sep 2020 01:36:36 PM CST
#########################################################################
#!/bin/zsh
hostnamectl set-hostname $1
# 并将如下代码加入 sudo vim etc/hosts中
# 127.0.0.1					your.host.name
# 192.your.ip.address			your.host.name
# 192.other.nodes.address		other.node.name
# ...

