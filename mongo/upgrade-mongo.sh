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
export MONGODB_REPLICA_SET_KEY=$(kubectl get secret --namespace mongo mongo-mongodb -o jsonpath="{.data.mongodb-replica-set-key}" | base64 --decode)
helm upgrade mongo bitnami/mongodb \
	--namespace mongo \
	--set architecture=replicaset \
	--set auth.rootPassword=ssqt3201 \
	--set replicaCount=3 \
	--set persistence.storageClass=longhorn \
	--set persistence.size=3Ti \
	--set auth.replicaSetKey=$MONGODB_REPLICA_SET_KEY \
	--set arbiter.enabled=false

# Read more about the installation in the Bitnami MongoDB Stack Chart Github repository
# https://github.com/bitnami/charts/tree/master/bitnami/mongodb/#installing-the-chart
