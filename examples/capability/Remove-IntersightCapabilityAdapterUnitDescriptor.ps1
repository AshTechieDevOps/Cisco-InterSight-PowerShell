
#Get the CapabilityAdapterUnitDescriptor to delete
$CapabilityAdapterUnitDescriptor = Remove-IntersightCapabilityAdapterUnitDescriptor -Name CapabilityAdapterUnitDescriptorName
$CapabilityAdapterUnitDescriptor | Remove-IntersightCapabilityAdapterUnitDescriptor

#Remove the server profile by Moid.
Remove-IntersightCapabilityAdapterUnitDescriptor -Moid 123bc2222287wee