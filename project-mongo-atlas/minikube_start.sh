#!/bin/bash
# save as setup-minikube-mounts.sh

# Start Minikube with mounts
minikube start --driver=docker \
  --disk-size=50g \
  --ports=80:80

# Verify mounts
echo "Verifying mounts..."
minikube ssh "ls -la /data"


# # GUIDE
# kubectl apply -f mongo-namespaces.yml
# kubens mongo
# kubectl apply -f mongo-config.yml
# kubectl apply -f mongo-secret.yml
# kubectl apply -f mongodb-deploy.yml
# kubectl apply -f mongoexpress-deploy.yml
# kubectl get all