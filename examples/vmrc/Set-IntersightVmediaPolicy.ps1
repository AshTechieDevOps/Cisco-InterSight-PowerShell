# Get the organization.
$organization = Get-IntersightOrganizationOrganization -Name 'default'

# Get the VmrcConsole to Update
$VmrcConsole = Get-IntersightVmrcConsole -Name VmrcConsoleName

# Update the VmrcConsole
$vmrc1 = $VmrcConsole | Set-IntersightVmrcConsole -Description 'Update demo vmrc console'