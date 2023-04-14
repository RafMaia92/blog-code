## Create resource group 
`az group create --location westeurope --resource-group todo-rg`

## Create App Service
`az deployment group create --resource-group 'todo-rg' --template-file main.bicep --parameters appName='todo-app-as' appServicePlanName='todo-app-asp'`
`

## deploy Java 
`az webapp deploy --resource-group  'todo-rg' --name 'todo-app-as' --src-path ./target/todo-0.0.1-SNAPSHOT.jar --type 'jar'`
`

