$organization1 = Get-IntersightOrganizationOrganization -Name 'default'

$registered_devices1 = Get-IntersightAssetDeviceregistrations -Moid '<Replace with Moid>'

$kubernetes_cluster1 = New-IntersightKubernetesCluster -Organization $organization1 -RegisteredDevices $registered_devices1 -ConnectionStatus 'Connected'