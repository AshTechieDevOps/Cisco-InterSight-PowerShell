#Get the SoftwarerepositoryCategorySupportConstraint by Name
$SoftwarerepositoryCategorySupportConstraintByName = Get-IntersightSoftwarerepositoryCategorySupportConstraint -Name SoftwarerepositoryCategorySupportConstraintName

#Get the List of SoftwarerepositoryCategorySupportConstraint
$SoftwarerepositoryCategorySupportConstraintList = Get-IntersightSoftwarerepositoryCategorySupportConstraint

#Get the list of SoftwarerepositoryCategorySupportConstraint under particular organization.
$org = Get-IntersightOrganizationOrganization -Name 'default'

$SoftwarerepositoryCategorySupportConstraintByOrg = Get-IntersightSoftwarerepositoryCategorySupportConstraint -Organization $org

#Get the SoftwarerepositoryCategorySupportConstraint based on query Parameter
$SoftwarerepositoryCategorySupportConstraintByQueryParam = Get-IntersightSoftwarerepositoryCategorySupportConstraint -Filter Name eq SoftwarerepositoryCategorySupportConstraintName

#Note :- The output returns by the ParameterSet "QueryParam" cannot be piped to the New or Set cmdlet due to different property structure .