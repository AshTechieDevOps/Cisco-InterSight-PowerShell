
#Get the FirmwareStorageControllerDescriptor to Update
$FirmwareStorageControllerDescriptor = Get-IntersightFirmwareStorageControllerDescriptor -Name FirmwareStorageControllerDescriptorName
$FirmwareStorageControllerDescriptor | Set-IntersightFirmwareStorageControllerDescriptor -Description 'Updated description'
