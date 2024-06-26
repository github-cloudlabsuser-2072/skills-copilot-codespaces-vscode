# Variables
$resourceGroupName = "example-resources"
$location = "East US"
$storageAccountName = "examplestoraccount"
$skuName = "Standard_LRS" # Standard Locally Redundant Storage

# Create a new resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a new storage account
New-AzStorageAccount -Name $storageAccountName `
                     -ResourceGroupName $resourceGroupName `
                     -Location $location `
                     -SkuName $skuName `
                     -Kind "StorageV2" # General-purpose v2 accounts

# Output the storage account keys
Get-AzStorageAccountKey -Name $storageAccountName -ResourceGroupName $resourceGroupName