##########################################################################
# File Name: module-checker.sh
# Author: amoscykl
# mail: amoscykl980629@163.com
# Created Time: Wed 16 Sep 2020 02:20:32 PM CST
#########################################################################
#!/bin/zsh
for module in br_netfilter ip6_udp_tunnel ip_set ip_set_hash_ip ip_set_hash_net iptable_filter iptable_nat iptable_mangle iptable_raw nf_conntrack_netlink nf_conntrack nf_conntrack_ipv4   nf_defrag_ipv4 nf_nat nf_nat_ipv4 nf_nat_masquerade_ipv4 nfnetlink udp_tunnel veth vxlan x_tables xt_addrtype xt_conntrack xt_comment xt_mark xt_multiport xt_nat xt_recent xt_set  xt_statistic xt_tcpudp; do
    if ! lsmod | grep -q $module; then
        echo "module $module is not present, try to install...";
		modprobe $module
		if [ $? -eq 0 ]; then
			echo -e "\033[32;1mSuccessfully installed $module!\033[0m"
		else
			echo -e "\033[31;1mInstall $module failed!!!\033[0m"
		fi
	fi;
done
