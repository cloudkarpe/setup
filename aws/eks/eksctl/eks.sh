dir=~/.local/bin
mkdir -p ${dir}
curl -o ${dir}/aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator
#sudo cp ~/.local/bin/aws-iam-authenticator /usr/local/bin
#cp aws-iam-authenticator ~/.local/bin

curl -o ${dir}/kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/kubectl
#curl -o kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.13.8/2019-08-14/bin/linux/amd64/kubectl
#curl -o kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.12.10/2019-08-14/bin/linux/amd64/kubectl

#sudo cp kubectl /usr/local/bin
#cp kubectl ~/.local/bin

curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_Linux_amd64.tar.gz" | tar xz -C ${dir}/
#sudo cp /tmp/eksctl /usr/local/bin
#cp eksctl ~/.local/bin

echo ". <(eksctl completion bash)" >> ~/.profile
echo ". <(kubectl completion bash)" >> ~/.profile

#sudo chmod +x /usr/local/bin/*
chmod +x ~/.local/bin/* 
