$vsan_settings1 = Initialize-IntersightVnicVsansettings -Id 100

$organization = Get-IntersightOrganizationOrganization -Moid '<Replace with Moid>'

$v_fc_network1 = New-IntersightVnicFcNetworkPolicy -VsanSettings $vsan_settings1 -Organization $organization -Name 'v_fc_network1'