# Get the organization.
$organization = Get-IntersightOrganizationOrganization -Name 'default'

# Get the VnicEthNetworkPolicy  to Update
$VnicEthNetworkPolicy = Get-IntersightVnicEthNetworkPolicy -Name VnicEthNetworkPolicyName

# Update the VnicEthNetworkPolicy
$v_eth_network1 = $VnicEthNetworkPolicy | Set-IntersightVnicEthNetworkPolicy -Description 'Update demo vnic eth network policy'