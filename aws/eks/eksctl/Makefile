setup:
	sh eks.sh

create:
	eksctl create cluster -f cluster.yaml

get:
	eksctl get cluster
	eksctl get nodegroup --cluster=basic-cluster

awsget:
	aws eks describe-cluster --name basic-cluster

gethelm:
	curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > /tmp/get_helm.sh
	chmod 700 /tmp/get_helm.sh
	DESIRED_VERSION=v2.8.2 /tmp/get_helm.sh
	helm init --wait
	helm ls

prometheus:
	helm ls
	cp prometheus-values.yml /tmp
	cd ~/
	git clone https://github.com/kubernetes/charts
	cd charts
	git checkout efdcffe0b6973111ec6e5e83136ea74cdbe6527d
	cd ../
	helm install -f /tmp/prometheus-values.yml charts/stable/prometheus --name prometheus --namespace prometheus


grafana:
	helm ls
	cp grafana-ext.yml /tmp/
	cp grafana-values.yml /tmp/
	cp /tmp/grafana-values.yml .
	cp /tmp/grafana-ext.yml .
	helm install -f /tmp/grafana-values.yml charts/stable/grafana/ --name grafana --namespace grafana
	kubectl apply -f grafana-ext.yml
	sleep 10
	kubectl get pods -n prometheus
	kubectl get pods -n grafana	
	
