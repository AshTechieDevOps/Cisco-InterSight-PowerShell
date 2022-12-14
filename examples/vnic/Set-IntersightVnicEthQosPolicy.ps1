# Get the organization.
$organization = Get-IntersightOrganizationOrganization -Name 'default'

# Get the VnicEthQosPolicy to Update
$VnicEthQosPolicy = Get-IntersightVnicEthQosPolicy -Name VnicEthQosPolicyName

# Update the VnicEthQosPolicy
$v_eth_qos1 = $VnicEthQosPolicy | Set-IntersightVnicEthQosPolicy -Description 'Update demo vnic eth qos policy'