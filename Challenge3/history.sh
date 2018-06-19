docker pull dotnetcore
docker run --name mynginx4 -P -d nginxminecraftstats
docker ps
docker-machine env openhack
docker images
docker push openhackacsreg nginxminecraftstats:v1
docker push openhackacsreg nginxminecraftstats:latest
docker login openhackacsreg.azurecr.io --username OpenHackACSReg --password XXXXXXX
az acr repository --list
az acr repository list
az acr repository openhackacsreg
docker push OpenHackACSReg/nginxminecraftstats:latest
docker tag nginxminecraftstats:latest OpenHackACSReg/nginxminecraftstats:latest
docker tag nginxminecraftstats:latest ppenhackacsreg/nginxminecraftstats:latest
docker tag nginxminecraftstats:latest openhackacsreg/nginxminecraftstats:latest
docker push openhackacsreg/nginxminecraftstats:latest
docker push --help
docker push -h
history | grep io
docker tag nginxminecraftstats:latest openhackacsreg.azurecr.io/nginxminecraftstats:latest
docker push openhackacsreg.azurecr.io/nginxminecraftstats:latest
kubectrl create secret docker-registry OpenHackACSReg --docker-server openhackacsreg.azurecr.io --docker-email  --docker-username=OpenHackACSReg --docker-password XXXXXXX
kubectl create secret docker-registry OpenHackACSReg --docker-server openhackacsreg.azurecr.io --docker-email XXX@gmail.com --docker-username=OpenHackACSReg --docker-password XXXXXXX
kubectl create secret docker-registry OpenHackACSReg --docker-server openhackacsreg.azurecr.io --docker-email XXX@gmail.com --docker-username OpenHackACSReg --docker-password XXXXXXX
kubectl create secret docker-registry OpenHackACSReg.azureacr.io --docker-server openhackacsreg.azurecr.io --docker-email XXX@gmail.com --docker-username OpenHackACSReg --docker-password XXXXXXX
kubectl create secret docker-registry openhackacsreg.azurecr.io --docker-server openhackacsreg.azurecr.io --docker-email XXX@gmail.com --docker-username OpenHackACSReg --docker-password XXXXXXX
cd ..
ls
cd nginx-acr-pod
ll
kubectl delete -f nginx-acr-pod.yaml
kubectl apply -f nginx-acr-pod.yaml
kubectl get pods
kubectl get pods -w
kubectl get events
kubectl get services -w