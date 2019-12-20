init:
	terraform init

validate:
	terraform validate -var project_name=la-terraform

setaws:
	export AWS_ACCESS_KEY_ID="AKIAQGHIEUZKC3MECCVO"
	export AWS_SECRET_ACCESS_KEY="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"
	export AWS_DEFAULT_REGION="us-east-1"


plan:
	terraform plan -out=tfplan -var project_name=la-terraform

apply:
	terraform apply tfplan

destroy:
	terraform destroy -auto-approve -var project_name=la-terraform

install:
	curl -kLo /tmp/terraform.zip "https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip"
	sudo unzip -d /usr/local/bin/ /tmp/terraform.zip
	sudo chmod +x /usr/local/bin/terraform
	terraform version

