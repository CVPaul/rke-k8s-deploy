##########################################################################
# File Name: install-mongo.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Tue 22 Sep 2020 02:17:54 PM CST
#########################################################################
#!/bin/zsh
kubectl create namespace database
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
# installing
helm install mongo bitnami/mongodb \
	--namespace database \
	--set architecture=replicaset \
	--set clusterDomain=database.shengtamg.ai
# Read more about the installation in the Bitnami MongoDB Stack Chart Github repository
# https://github.com/bitnami/charts/tree/master/bitnami/mongodb/#installing-the-chart
