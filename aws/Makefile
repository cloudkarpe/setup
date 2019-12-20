awsconfig:
	echo region as us-east-1
	aws configure
	
cloud9:
	aws cloud9 create-environment-ec2 --name test --instance-type t2.micro | tee -a /tmp/cloud9.log
	sleep 10
	aws cloud9 list-environments


awscli:
	pip3 install awscli --upgrade --user
