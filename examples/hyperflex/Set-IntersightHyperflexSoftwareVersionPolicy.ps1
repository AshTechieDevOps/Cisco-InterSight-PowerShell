
#Get the HyperflexSoftwareVersionPolicy to Update
$HyperflexSoftwareVersionPolicy = Get-IntersightHyperflexSoftwareVersionPolicy -Name HyperflexSoftwareVersionPolicyName
$HyperflexSoftwareVersionPolicy | Set-IntersightHyperflexSoftwareVersionPolicy -Description 'Updated description'
