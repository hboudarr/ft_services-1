#! bin/bash

minikube start
minikube dashboard				# Accéder à l'interface web d'administration Kubernetes
minikube ip						# Récupérer l'adresse IP du cluster en cours d'exécution


	# LES PODS #
kubectl create -f <name.yaml>		#creation d'un pod
kubectl get pods (-o wide)			#affiche les pod du cluster
kubectl delete pods <POD NAME>		#supprimer un pod
kubectl apply -f <filename.yaml>	#appliquer nouveaux changement pod
kubectl describe pods <POD NAME>	# Afficher les détails d'un pod
kubectl exec -ti <POD NAME> -c <CONTAINER NAME> <COMMAND>	# Exécuter une commande d'un conteneur de votre pod

	# REPLICASET # garantissent que le nombre de repliques des pods soit respecté

	# DEPLOYMENT #
# Afficher la liste des Deployments
kubectl get deployment [En option <DEPLOYMENT NAME>]
(-o wide) : récupérer en plus, le nom de limage et le sélecteur

# Créer un Deployment
kubectl create -f <template.yaml>

# Supprimer un Deployment
kubectl delete deployment <DEPLOYMENT NAME>

# Appliquer des nouveaux changements à votre Deployment sans le détruire
kubectl apply -f <template.yaml>

# Modifier et appliquer les changements de votre Deployment instantanément sans le détruire
kubectl edit deployment <DEPLOYMENT NAME>

# Afficher les détails d'un Deployment
kubectl describe deployment <DEPLOYMENT NAME>

# Mettre à jour l'image des Pods de votre Deployment
kubectl set image deployment/<DEPLOYMENT NAME> <CONTAINER NAME>=<NEW IMAGE NAME>

# Afficher le status du rolling update de votre Deployment
kubectl rollout status deployment/<DEPLOYMENT NAME>

# Afficher l'historique des révisions de votre Deployment
kubectl rollout history deployment/<DEPLOYMENT NAME>

# Revenir à une version précédente
kubectl rollout undo deployment/nginx-deployment --to-revision=<REVISION NUMBER>
