# Get the organization.
$organization = Get-IntersightOrganizationOrganization -Moid '<Replace with Moid>'

# Get the SoftwarerepositoryCategoryMapper  to Update
$SoftwarerepositoryCategoryMapper = Get-IntersightSoftwarerepositoryCategoryMapper -Name SoftwarerepositoryCategoryMapperName

# Update the SoftwarerepositoryCategoryMapper
$category_mapper1 = $SoftwarerepositoryCategoryMapper | Set-IntersightSoftwarerepositoryCategoryMapper -FileType 'Distributable'