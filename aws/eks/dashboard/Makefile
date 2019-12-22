get:
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v1.10.1/src/deploy/recommended/kubernetes-dashboard.yaml
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/heapster/master/deploy/kube-config/influxdb/heapster.yaml
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/heapster/master/deploy/kube-config/influxdb/influxdb.yaml
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/heapster/master/deploy/kube-config/rbac/heapster-rbac.yaml
	kubectl apply -f eks-admin-service-account.yaml
	kubectl apply -f eks-admin-cluster-role-binding.yaml

proxy:
	echo aws-iam-authenticator -i $cluster_name token
	aws-iam-authenticator -i $cluster_name token | jq -r .status.token
