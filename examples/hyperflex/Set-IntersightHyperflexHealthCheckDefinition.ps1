
#Get the HyperflexHealthCheckDefinition to Update
$HyperflexHealthCheckDefinition = Get-IntersightHyperflexHealthCheckDefinition -Name HyperflexHealthCheckDefinitionName
$HyperflexHealthCheckDefinition | Set-IntersightHyperflexHealthCheckDefinition -Description 'Updated description'
