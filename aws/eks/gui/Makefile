all:
	aws configure
	aws sts get-caller-identity
	@echo "create IAM role using EKS"
	@read
	@echo "create VPC using - https://amazon-eks.s3-us-west-2.amazonaws.com/cloudformation/2019-11-15/amazon-eks-vpc-sample.yaml"
	echo ""
	@read
	@echo "wait for few seconds and thren create EKS cluster"
	echo ""
	@read
	@echo "create Key pairs"
	aws ec2 create-key-pair --key-name k8s-node
	@echo "Create worker group using - https://amazon-eks.s3-us-west-2.amazonaws.com/cloudformation/2018-11-07/amazon-eks-nodegroup.yaml and AMI - ami-087a82f6b78a07557 in us-east-1"
	echo ""
	@read
	

whoami:
	aws sts get-caller-identity

get_aws-auth:
	curl -s -o aws-auth-cm.yaml https://amazon-eks.s3-us-west-2.amazonaws.com/cloudformation/2019-11-15/aws-auth-cm.yaml
	@echo ""
	echo "Get NodeInstanceRole"
	@echo ""
#	echo "Use Cloudformation Template - https://amazon-eks.s3-us-west-2.amazonaws.com/cloudformation/2018-11-07/amazon-eks-nodegroup.yaml"
	read
	vim aws-auth-cm.yaml
	kubectl create -f aws-auth-cm.yaml
	kubectl get node -w


set_config:
	cat AWSCONFIG
	echo "Run source AWSCONFIG"
	. ./AWSCONFIG
	aws eks --region $$region  update-kubeconfig --name $$cluster_name
#	aws eks --region $(region) update-kubeconfig --name $(cluster_name)
#	aws eks --region $(region) update-kubeconfig --name $(cluster_name) --kubeconfig ~/.kube/config
#	aws eks --region us-east-1 update-kubeconfig --name k8s --kubeconfig ~/.kube/config

cluster-info:
	kubectl cluster-info
	kubectl get node
	kubectl get svc
