# Get the organization.
$organization = Get-IntersightOrganizationOrganization -Name 'default'

# Get the TamAdvisoryCount to Update
$TamAdvisoryCount = Get-IntersightTamAdvisoryCount -Name TamAdvisoryCountName

# Update the TamAdvisoryCount
$tam_count1 = $TamAdvisoryCount | Set-IntersightTamAdvisoryCount -AdvisoryCount 4