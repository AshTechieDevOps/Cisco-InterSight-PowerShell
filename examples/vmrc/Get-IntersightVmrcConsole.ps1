#Get the VmrcConsole by Name
$VmrcConsoleByName = Get-IntersightVmrcConsole -Name VmrcConsoleName

#Get the List of VmrcConsole
$VmrcConsoleList = Get-IntersightVmrcConsole

#Get the list of VmrcConsole under particular organization.
$org = Get-IntersightOrganizationOrganization -Name 'default'

$VmrcConsoleByOrg = Get-IntersightVmrcConsole -Organization $org

#Get the VmrcConsole based on query Parameter
$VmrcConsoleByQueryParam = Get-IntersightVmrcConsole -Filter Name eq VmrcConsoleName

#Note :- The output returns by the ParameterSet "QueryParam" cannot be piped to the New or Set cmdlet due to different property structure .