
#Get the HyperflexSoftwareVersionPolicy to delete
$HyperflexSoftwareVersionPolicy = Remove-IntersightHyperflexSoftwareVersionPolicy -Name HyperflexSoftwareVersionPolicyName
$HyperflexSoftwareVersionPolicy | Remove-IntersightHyperflexSoftwareVersionPolicy

#Remove the server profile by Moid.
Remove-IntersightHyperflexSoftwareVersionPolicy -Moid 123bc2222287wee
