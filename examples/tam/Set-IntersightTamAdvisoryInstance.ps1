# Get the organization.
$organization = Get-IntersightOrganizationOrganization -Name 'default'

# Get the TamAdvisoryInstance to Update
$TamAdvisoryInstance = Get-IntersightTamAdvisoryInstance -Name TamAdvisoryInstanceName

# Update the TamAdvisoryInstance
$tam_instance1 = $TamAdvisoryInstance | Set-IntersightTamAdvisoryInstance -State 'cleared'