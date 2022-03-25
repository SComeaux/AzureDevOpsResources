#Using this script we will fetch stoage key which is required in terraform file to authenticate backend stoage account

$key = (Get-AzureRmStorageAccountKey -ResourceGroupName $(terraformstoragerg) -AccountName $(terraformstorageaccount)).Value[0]

Write-Host "##vso[task.setvariable variable=storagekey]$key"

# Use Replace tokens Task to Replace Tokens in Terraform file : https://www.azuredevopslabs.com/labs/vstsextend/terraform/

# Now look in Variables tab -> Pipeline variables -> check variable names & values match