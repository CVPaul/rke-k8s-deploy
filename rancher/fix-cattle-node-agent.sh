##########################################################################
# File Name: fix-cattle-node-agent.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Tue 22 Sep 2020 03:57:30 PM CST
#########################################################################
#!/bin/zsh
kubectl -n cattle-system patch  daemonsets cattle-node-agent --patch '{
 "spec": {
     "template": {
         "spec": {
             "hostAliases": [
                 {
                     "hostnames":
                        [
                            "rancher.shengtang.ai"
                        ],
                        "ip": "192.168.1.100"
                 }
             ]
         }
     }
 }
}'
