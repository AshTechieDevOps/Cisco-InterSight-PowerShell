
#Get the HyperflexClusterNetworkPolicy to Update
$HyperflexClusterNetworkPolicy = Get-IntersightHyperflexClusterNetworkPolicy -Name HyperflexClusterNetworkPolicyName
$HyperflexClusterNetworkPolicy | Set-IntersightHyperflexClusterNetworkPolicy -Description 'Updated description'
