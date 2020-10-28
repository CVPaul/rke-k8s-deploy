##########################################################################
# File Name: install-mongo.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Tue 22 Sep 2020 02:17:54 PM CST
#########################################################################
#!/bin/zsh
#kubectl create namespace mongo
#helm repo add bitnami https://charts.bitnami.com/bitnami
#helm repo update
## installing
helm install mongo bitnami/mongodb \
	--namespace mongo \
	--set architecture=replicaset \
	--set auth.rootPassword=ssqt3201 \
	--set replicaCount=3 \
	--set persistence.storageClass=longhorn \
	--set persistence.size=3Gi \
	--set externalAccess.enabled=true \
    --set externalAccess.service.type=NodePort \
    --set externalAccess.service.nodePorts[0]=31010 \
    --set externalAccess.service.nodePorts[1]=31020 \
	--set externalAccess.service.nodePorts[2]=31030

# Read more about the installation in the Bitnami MongoDB Stack Chart Github repository
# https://github.com/bitnami/charts/tree/master/bitnami/mongodb/#installing-the-chart
# 获取端口并产生访问命令
mongo_address="mongodb://<username>:<passwd>@"
for line in `kubectl get svc -n mongo|grep NodePort|sed 's/ \+/;/g'`;do
    tokens=(`echo $line|sed 's/;/ /g'`)
    host=`kubectl describe pod ${tokens[0]} -n mongo|grep "^Node:"|head -1|awk -F'/' '{print $2}'`
    mongo_address=${mongo_address}$host:`echo ${tokens[4]}|sed 's/27017://'|sed 's/\/TCP//'`,
done
mongo_address=`echo $mongo_address|sed 's/,$//'`
echo "please visit the db with:"
echo "    $mongo_address/<database>"
