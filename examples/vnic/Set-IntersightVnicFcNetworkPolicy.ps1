# Get the organization.
$organization = Get-IntersightOrganizationOrganization -Name 'default'

# Get the VnicFcNetworkPolicy to Update
$VnicFcNetworkPolicy = Get-IntersightVnicFcNetworkPolicy -Name VnicFcNetworkPolicyName

# Update the VnicFcNetworkPolicy
$v_fc_network1 = $VnicFcNetworkPolicy | Set-IntersightVnicFcNetworkPolicy -Description 'Update demo vnic fc network policy'