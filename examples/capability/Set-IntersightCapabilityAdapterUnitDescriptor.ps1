#Get the CapabilityAdapterUnitDescriptor to Update
$CapabilityAdapterUnitDescriptor = Get-IntersightCapabilityAdapterUnitDescriptor -Name CapabilityAdapterUnitDescriptorName
$CapabilityAdapterUnitDescriptor | Set-IntersightCapabilityAdapterUnitDescriptor -Description 'Updated description'