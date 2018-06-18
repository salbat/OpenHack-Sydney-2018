#Challenge 2 Group7:
az group create --name Challenge2G7 --location eastus
az aks create --resource-group Challenge2G7 --name AKSClusterG7 --node-count 2 --generate-ssh-keys

az aks get-credentials --resource-group Challenge2G7 --name AKSClusterG7
az group delete --name Challenge2G7 --yes --no-wait


#AU:
az aks create --resource-group Challenge2G7MinecraftAU --name AKSClusterG7AU --node-count 2 --generate-ssh-keys
az aks get-credentials --resource-group Challenge2G7MinecraftAU --name AKSClusterG7AU