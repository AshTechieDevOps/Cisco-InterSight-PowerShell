$organization = Get-IntersightOrganizationOrganization -Moid '<Replace with Moid>'

$vnic_lan1 = New-IntersightVnicLanConnectivityPolicy -Organization $organization -Name 'vnic_lan1' -Description 'demo vnic lan connectivity policy' -IqnAllocationType 'None' -PlacementMode 'auto' -TargetPlatform 'FIAttached'