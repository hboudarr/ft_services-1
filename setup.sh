#! /bin/bash
minikube start
sleep 5
eval $(minikube docker-env)

Kubectl apply -f metallb/metallb.yaml
kubectl apply -f metallb/configmap.yaml

docker build -t nginx nginx/.
docker build -t mysql mysql/.
docker build -t pma phpmyadmin/.
docker build -t wp wordpress/.
docker build -t ftps ftps/.

kubectl apply -f nginx/nginx-pod.yaml
kubectl apply -f phpmyadmin/phpmyadmin-pod.yaml
kubectl apply -f mysql/mysql-pod.yaml
kubectl apply -f wordpress/wp-pod.yaml
kubectl apply -f ftps/ftps-pod.yaml
#minikube dashboard