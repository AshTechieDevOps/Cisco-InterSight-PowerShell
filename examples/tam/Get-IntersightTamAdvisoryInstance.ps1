#Get the TamAdvisoryInstance by Name
$TamAdvisoryInstanceByName = Get-IntersightTamAdvisoryInstance -Name TamAdvisoryInstanceName

#Get the List of TamAdvisoryInstance
$TamAdvisoryInstanceList = Get-IntersightTamAdvisoryInstance

#Get the list of TamAdvisoryInstance under particular organization.
$org = Get-IntersightOrganizationOrganization -Name 'default'

$TamAdvisoryInstanceByOrg = Get-IntersightTamAdvisoryInstance -Organization $org

#Get the TamAdvisoryInstance based on query Parameter
$TamAdvisoryInstanceByQueryParam = Get-IntersightTamAdvisoryInstance -Filter Name eq TamAdvisoryInstanceName

#Note :- The output returns by the ParameterSet "QueryParam" cannot be piped to the New or Set cmdlet due to different property structure .