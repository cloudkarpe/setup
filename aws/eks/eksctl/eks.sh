curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator
sudo mv aws-iam-authenticator /usr/local/bin

curl -o kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/kubectl
#curl -o kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.13.8/2019-08-14/bin/linux/amd64/kubectl
#curl -o kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.12.10/2019-08-14/bin/linux/amd64/kubectl

sudo mv kubectl /usr/local/bin


curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_Linux_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin

echo ". <(eksctl completion bash)" >> ~/.profile
echo ". <(kubectl completion bash)" >> ~/.profile

sudo chmod +x /usr/local/bin/*
