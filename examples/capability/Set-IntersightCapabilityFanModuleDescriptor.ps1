
#Get the CapabilityFanModuleDescriptor to Update
$CapabilityFanModuleDescriptor = Get-IntersightCapabilityFanModuleDescriptor -Name CapabilityFanModuleDescriptorName
$CapabilityFanModuleDescriptor | Set-IntersightCapabilityFanModuleDescriptor -Description 'Updated description'
