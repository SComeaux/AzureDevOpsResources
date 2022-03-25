# Azure CLI Inline script for Terraform Release pipeline (demo documentation)

# this will create Azure resource group
call az group create --location centralus --name $(terraformstoragerg)

# this will create storage account
call az storage account create --name $(terraformstorageaccount) --resource-group $(terraformstoragerg) --location centralus --sku Standard_LRS

# create storage container
call az storage container create --name terraform --account-name $(terraformstorageaccount)

# list keys in storage account
call az storage account keys list -g $(terraformstoragerg) -n $(terraformstorageaccount)
