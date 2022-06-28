resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: 'ASP-PoCSkillingUp-Plan'
  location: '${resourceGroup().location}'
  sku: {
    name: 'F1'
    capacity: 1
  }
}
resource webApplication 'Microsoft.Web/sites@2018-11-01' = {
  name: 'pocskillingupfc'
  dependsOn:[
    appServicePlan
  ]
  location: '${resourceGroup().location}'
  tags: {
    'hidden-related:${resourceGroup().id}/providers/Microsoft.Web/serverfarms/${appServicePlan.name}': 'Resource'
  }
  properties: {
    serverFarmId: '${resourceGroup().id}/providers/Microsoft.Web/serverfarms/${appServicePlan.name}'
  }
}
