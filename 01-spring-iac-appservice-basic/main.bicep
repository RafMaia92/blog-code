
param location string = 'westeurope'
param appName string
param appServicePlanName string
param sku string = 'F1'


resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: appServicePlanName
  location: location
  properties: {
    reserved: true
  }
  sku: {
    name: sku
    tier: 'Free'
    size: sku
    family: 'F'
    capacity: 1
  }
  
}

resource appService 'Microsoft.Web/sites@2022-03-01' = {
  name: appName
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      linuxFxVersion: 'JAVA|17-java17'    
    }
  }
}
