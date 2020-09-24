#! /bin/bash
minikube delete
minikube start
minikube addons enable metrics-server
sleep 5
eval $(minikube docker-env)

Kubectl apply -f srcs/metallb/metallb.yaml
kubectl apply -f srcs/metallb/configmap.yaml

docker build -t nginx srcs/nginx/.
docker build -t mysql srcs/mysql/.
docker build -t pma srcs/phpmyadmin/.
docker build -t wp srcs/wordpress/.
docker build -t ftps srcs/ftps/.
docker build -t grafana srcs/grafana/.
docker build -t telegraf srcs/telegraf/.
docker build -t influxdb srcs/influxdb/.

kubectl apply -f srcs/mysql/mysql-pod.yaml
kubectl apply -f srcs/influxdb/influxdb-pod.yaml
sleep 40
kubectl apply -f srcs/phpmyadmin/phpmyadmin-pod.yaml
kubectl apply -f srcs/wordpress/wp-pod.yaml
kubectl apply -f srcs/nginx/nginx-pod.yaml
kubectl apply -f srcs/ftps/ftps-pod.yaml
kubectl apply -f srcs/grafana/grafana-pod.yaml
kubectl apply -f srcs/telegraf/telegraf-pod.yaml
kubectl apply -f srcs/telegraf/adm-pod.yaml
# minikube dashboard