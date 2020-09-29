##########################################################################
# File Name: fix-cattle-cluster-agent.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Tue 22 Sep 2020 03:56:07 PM CST
#########################################################################
#!/bin/zsh
kubectl -n cattle-system patch  deployments cattle-cluster-agent --patch '{
    "spec": {
        "template": {
            "spec": {
                "hostAliases": [
                    {
                        "hostnames":
                        [
                            "rancher.shengtang.ai"
                        ],
                        "ip": "192.168.1.106"
                    }
                ]
            }
        }
    }
}'
