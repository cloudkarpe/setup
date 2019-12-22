whoami:
	aws sts get-caller-identity

get_aws-auth:
	curl -o aws-auth-cm.yaml https://amazon-eks.s3-us-west-2.amazonaws.com/cloudformation/2019-11-15/aws-auth-cm.yaml
	echo "Get NodeInstanceRole"
	echo "Use Cloudformation Template - https://amazon-eks.s3-us-west-2.amazonaws.com/cloudformation/2018-11-07/amazon-eks-nodegroup.yaml"
	read
	vim aws-auth-cm.yaml
	kubectl create -f aws-auth-cm.yaml
	kubectl get node -w


set_config:
	aws eks --region $region update-kubeconfig --name $cluster_name --kubeconfig ~/.kube/config2

cluster-info:
	kubectl cluster-info
	kubectl get node
	kubectl get svc
