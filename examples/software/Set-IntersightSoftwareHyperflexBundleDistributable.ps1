# Get the organization.
$organization = Get-IntersightOrganizationOrganization -Moid '<Replace with Moid>'

# Get the SoftwareHyperflexBundleDistributable to Update
$SoftwareHyperflexBundleDistributable = Get-IntersightSoftwareHyperflexBundleDistributable -Name SoftwareHyperflexBundleDistributableName

# Update the SoftwareHyperflexBundleDistributable
$hyperflex1 = $SoftwareHyperflexBundleDistributable | Set-IntersightSoftwareHyperflexBundleDistributable -Description 'update demo software hyperflex bundle distributable'