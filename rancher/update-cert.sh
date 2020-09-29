##########################################################################
# File Name: update-cert.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Mon 28 Sep 2020 02:07:59 PM CST
#########################################################################
#!/bin/zsh
src=arthur@192.168.1.100:/srv/nginx/cert
scp -P22222 ${src}/fullchain.pem tls.crt
scp -P22222 ${src}/privkey.pem tls.key
