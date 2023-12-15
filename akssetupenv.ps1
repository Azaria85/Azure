$subscriptionId = (az account show | ConvertFrom-Json).id
$tenantId = (az account show | ConvertFrom-Json).tenantId
$location = "westeurope" 
$resourceGroupName = "AKS"
$aksName = "aks-aad-kubenet"
$aksVersion = "1.19.11"
$keyVaultName = "aks-aad-kubenet"
$secret1Name = "secret3"                  #This is the secret in your key vault.
$secret2Name = "secret4"
$secret1Alias = "secret3_alias"           #This will be the alias to mount secret in the container
$secret2Alias = "secret4_alias"
$acrName = "aksaadacr"

#No need to change these variables, unless you want to align it with your naming convention

$identityName = "identity-aks-kv-kube"
$identitySelector = "azure-kv-kube"
$secretProviderClassName = "secret-provider-kv-kube"
$isAKSWithManagedIdentity = "true"
