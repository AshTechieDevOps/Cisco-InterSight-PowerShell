
#Get the CapabilityPsuManufacturingDef to Update
$CapabilityPsuManufacturingDef = Get-IntersightCapabilityPsuManufacturingDef -Name CapabilityPsuManufacturingDefName
$CapabilityPsuManufacturingDef | Set-IntersightCapabilityPsuManufacturingDef -Description 'Updated description'
