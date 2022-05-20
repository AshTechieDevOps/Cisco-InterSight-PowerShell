# Get the organization.
$organization = Get-IntersightOrganizationOrganization -Moid '<Replace with Moid>'

# Get the SoftwareApplianceDistributable to Update
$SoftwareApplianceDistributable = Get-IntersightSoftwareApplianceDistributable -Name SoftwareApplianceDistributableName

# Update the SoftwareApplianceDistributable
$appliance1 = $SoftwareApplianceDistributable | Set-IntersightSoftwareApplianceDistributable -Description 'update demo software appliance distributable'