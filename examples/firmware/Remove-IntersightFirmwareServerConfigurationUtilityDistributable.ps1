
#Get the FirmwareServerConfigurationUtilityDistributable to delete
$FirmwareServerConfigurationUtilityDistributable = Remove-IntersightFirmwareServerConfigurationUtilityDistributable -Name FirmwareServerConfigurationUtilityDistributableName
$FirmwareServerConfigurationUtilityDistributable | Remove-IntersightFirmwareServerConfigurationUtilityDistributable

#Remove the server profile by Moid.
Remove-IntersightFirmwareServerConfigurationUtilityDistributable -Moid 123bc2222287wee