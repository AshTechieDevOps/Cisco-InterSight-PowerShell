
#Get the HyperflexServerFirmwareVersionEntry to delete
$HyperflexServerFirmwareVersionEntry = Get-IntersightHyperflexServerFirmwareVersionEntry -Name HyperflexServerFirmwareVersionEntryName
$HyperflexServerFirmwareVersionEntry | Remove-IntersightHyperflexServerFirmwareVersionEntry

#Remove the HyperflexServerFirmwareVersionEntry by Moid.
Remove-IntersightHyperflexServerFirmwareVersionEntry -Moid '<Replace with Moid>'
