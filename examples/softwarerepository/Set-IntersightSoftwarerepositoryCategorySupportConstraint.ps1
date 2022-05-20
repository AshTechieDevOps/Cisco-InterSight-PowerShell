# Get the organization.
$organization = Get-IntersightOrganizationOrganization -Moid '<Replace with Moid>'

# Get the SoftwarerepositoryCategorySupportConstraint  to Update
$SoftwarerepositoryCategorySupportConstraint = Get-IntersightSoftwarerepositoryCategorySupportConstraint -Name SoftwarerepositoryCategorySupportConstraintName

# Update the SoftwarerepositoryCategorySupportConstraint
$category_support_constraint1 = $SoftwarerepositoryCategorySupportConstraint | Set-IntersightSoftwarerepositoryCategorySupportConstraint -ConstraintId 3