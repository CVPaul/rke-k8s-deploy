##########################################################################
# File Name: expose-mongo-port.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Wed 14 Oct 2020 04:30:02 PM CST
#########################################################################
#!/bin/zsh
# 对于通过rancher安装的mongo-replcaset而言，需要手动暴露端口：https://zhuanlan.zhihu.com/p/265108417
# 暴露端口
# kubectl expose pod/mongo-mongodb-replicaset-0 -n mongo --type="NodePort" --port 27017
# kubectl expose pod/mongo-mongodb-replicaset-1 -n mongo --type="NodePort" --port 27017
# kubectl expose pod/mongo-mongodb-replicaset-2 -n mongo --type="NodePort" --port 27017
# 获取端口并产生访问命令

#kubectl get svc -n mongo|grep NodePort|awk '{print $0}'
#describes=`kubectl get svc -n mongo|grep NodePort|awk '{print $0}'`
#echo ${describes[0]}
mongo_address="mongodb://<username>:<passwd>@"
for line in `kubectl get svc -n mongo|grep NodePort|sed 's/ \+/;/g'`;do
    tokens=(`echo $line|sed 's/;/ /g'`)
    host=`kubectl describe pod ${tokens[0]} -n mongo|grep "^Node:"|head -1|awk -F'/' '{print $2}'`
    mongo_address=${mongo_address}$host:`echo ${tokens[4]}|sed 's/27017://'|sed 's/\/TCP//'`,
done
mongo_address=`echo $mongo_address|sed 's/,$//'`
echo "please visit the db with:"
echo "    $mongo_address/<database>"
