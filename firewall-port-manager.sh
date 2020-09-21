##########################################################################
# File Name: firewall-port-manager.sh
# Author: amoscykl
# mail: amoscykl980629@163.com
# Created Time: Thu 17 Sep 2020 10:41:54 AM CST
#########################################################################
#!/bin/zsh

# Open TCP/6443 for all
# iptables -A INPUT -p tcp --dport 6443 -j ACCEPT

# Open TCP/$port for all
# firewall-cmd --zone=public --add-port=$port/tcp --permanent
# firewall-cmd --reload

# Open TCP/6443 for one specific IP
# 这条命令不能通过远端执行（需要sudo权限），说以需要去具体的机器上run
if [ $# -lt 2 ]; then
	echo "Usage: $0 <host> <port>"
	exit 1
fi
host=$1
port=$2
# ssh arthur@192.168.1.110 iptables -A INPUT -p tcp -s 192.168.1.197 --dport 2379 -j ACCEPT
iptables -A INPUT -p tcp -s $host --dport $port -j ACCEPT

## Open TCP/port for one specific IP
#firewall-cmd --permanent --zone=public --add-rich-rule='
#  rule family="ipv4"
#  source address="$host/32"
#  port protocol="tcp" port="$port" accept'
#firewall-cmd --reload
