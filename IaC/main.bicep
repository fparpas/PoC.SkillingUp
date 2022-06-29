param locationToDeploy string = 'France Central'

@description('Generated from /subscriptions/cf7315f7-8ab2-4194-9bc7-dfe186b74e24/resourceGroups/PoC.SkillingUp/providers/Microsoft.Web/serverfarms/ASP-PoCSkillingUp-Plan')
resource ASPPoCSkillingUpPlan 'Microsoft.Web/serverfarms@2021-03-01' = {
  name: 'ASP-PoCSkillingUp-Plan'
  kind: 'app'
  location: locationToDeploy
  tags: {
  }
  properties: {
    serverFarmId: 29542
    name: 'ASP-PoCSkillingUp-Plan'
    workerSize: 'Default'
    workerSizeId: 0
    numberOfWorkers: 1
    currentWorkerSize: 'Default'
    currentWorkerSizeId: 0
    currentNumberOfWorkers: 1
    webSpace: 'PoC.SkillingUp-FranceCentralwebspace'
    planName: 'VirtualDedicatedPlan'
    computeMode: 'Dedicated'
    perSiteScaling: false
    elasticScaleEnabled: false
    maximumElasticWorkerCount: 1
    isSpot: false
    tags: {
    }
    kind: 'app'
    reserved: false
    isXenon: false
    hyperV: false
    mdmId: 'waws-prod-par-021_29542'
    targetWorkerCount: 0
    targetWorkerSizeId: 0
    zoneRedundant: false
  }
  sku: {
    name: 'S1'
    tier: 'Standard'
    size: 'S1'
    family: 'S'
    capacity: 1
  }
}


@description('Generated from /subscriptions/cf7315f7-8ab2-4194-9bc7-dfe186b74e24/resourceGroups/PoC.SkillingUp/providers/Microsoft.Web/sites/pocskillingup')
resource pocskillingup 'Microsoft.Web/sites@2021-03-01' = {
  name: 'pocskillingup'
  kind: 'app'
  location: locationToDeploy
  tags: {
  }
  properties: {
    name: 'pocskillingup'
    webSpace: 'PoC.SkillingUp-FranceCentralwebspace'
    selfLink: 'https://waws-prod-par-021.api.azurewebsites.windows.net:454/subscriptions/cf7315f7-8ab2-4194-9bc7-dfe186b74e24/webspaces/PoC.SkillingUp-FranceCentralwebspace/sites/pocskillingup'
    enabled: true
    adminEnabled: true
    siteProperties: {
      metadata: null
      properties: [
        {
          name: 'LinuxFxVersion'
          value: ''
        }
        {
          name: 'WindowsFxVersion'
          value: null
        }
      ]
      appSettings: null
    }
    csrs: []
    hostNameSslStates: [
      {
        name: 'pocskillingup.azurewebsites.net'
        sslState: 'Disabled'
        ipBasedSslState: 'NotConfigured'
        hostType: 'Standard'
      }
      {
        name: 'pocskillingup.scm.azurewebsites.net'
        sslState: 'Disabled'
        ipBasedSslState: 'NotConfigured'
        hostType: 'Repository'
      }
    ]
    serverFarmId: '/subscriptions/cf7315f7-8ab2-4194-9bc7-dfe186b74e24/resourceGroups/PoC.SkillingUp/providers/Microsoft.Web/serverfarms/ASP-PoCSkillingUp-Plan'
    reserved: false
    isXenon: false
    hyperV: false
    storageRecoveryDefaultState: 'Running'
    contentAvailabilityState: 'Normal'
    runtimeAvailabilityState: 'Normal'
    vnetRouteAllEnabled: false
    siteConfig: {
      numberOfWorkers: 1
      linuxFxVersion: ''
      acrUseManagedIdentityCreds: false
      alwaysOn: true
      http20Enabled: false
      functionAppScaleLimit: 0
      minimumElasticInstanceCount: 0
    }
    deploymentId: 'pocskillingup'
    sku: 'Standard'
    scmSiteAlsoStopped: false
    clientAffinityEnabled: true
    clientCertEnabled: false
    clientCertMode: 'Required'
    hostNamesDisabled: false
    customDomainVerificationId: 'BC785632A970CD569A79ABCA4EDE39D643833C7E31E48B853627AECDE2D4C7EC'
    kind: 'app'
    inboundIpAddress: '20.43.43.36'
    possibleInboundIpAddresses: '20.43.43.36'
    ftpUsername: 'pocskillingup\\$pocskillingup'
    ftpsHostName: 'ftps://waws-prod-par-021.ftp.azurewebsites.windows.net/site/wwwroot'
    containerSize: 0
    dailyMemoryTimeQuota: 0
    siteDisabledReason: 0
    homeStamp: 'waws-prod-par-021'
    tags: {
    }
    httpsOnly: true
    redundancyMode: 'None'
    privateEndpointConnections: []
    eligibleLogCategories: 'AppServiceAppLogs,AppServiceAuditLogs,AppServiceConsoleLogs,AppServiceHTTPLogs,AppServiceIPSecAuditLogs,AppServicePlatformLogs,ScanLogs'
    storageAccountRequired: false
    keyVaultReferenceIdentity: 'SystemAssigned'
  }
}

