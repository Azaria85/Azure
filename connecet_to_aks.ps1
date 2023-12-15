#Get the resource group information
$resourceGroup = az group show -n $resourceGroupName | ConvertFrom-Json

#Get the ACR information and login
$acr = az acr show --name $acrName | ConvertFrom-Json
az acr login -n $acrName --expose-token

#Get AKS information and connect to the cluster
$aks = az aks show -n $aksName -g $resourceGroupName | ConvertFrom-Json

#Connect to AKS cluster
az aks get-credentials -n $aksName -g $resourceGroupName --overwrite-existing

#Get the keyvault information for use in the next steps
$keyVault = az keyvault show -n $keyVaultName -g $resourceGroupName | ConvertFrom-Json
