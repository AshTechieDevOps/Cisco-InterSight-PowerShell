#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2020-12-08T20:53:20Z.
# Version: 1.0.9-2908
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Definition of the list of properties defined in 'equipment.Base', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data. The enum values provides the list of concrete types that can be instantiated from this abstract type.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property. The enum values provides the list of concrete types that can be instantiated from this abstract type.
.OUTPUTS

EquipmentBaseAllOf<PSCustomObject>
#>

function Initialize-IntersightEquipmentBaseAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("adapter.HostFcInterface", "adapter.HostIscsiInterface", "adapter.Unit", "bios.Unit", "boot.CddDevice", "boot.HddDevice", "boot.IscsiDevice", "boot.NvmeDevice", "boot.PchStorageDevice", "boot.PxeDevice", "boot.SanDevice", "boot.SdDevice", "boot.UefiShellDevice", "boot.UsbDevice", "boot.VmediaDevice", "compute.Blade", "compute.Board", "compute.RackUnit", "equipment.Chassis", "equipment.Fan", "equipment.FanModule", "equipment.Fex", "equipment.IoCard", "equipment.IoExpander", "equipment.Psu", "equipment.PsuControl", "equipment.RackEnclosure", "equipment.RackEnclosureSlot", "equipment.SharedIoModule", "equipment.SwitchCard", "equipment.SystemIoController", "equipment.Tpm", "equipment.Transceiver", "graphics.Card", "graphics.Controller", "memory.Array", "memory.PersistentMemoryUnit", "memory.Unit", "network.Element", "pci.CoprocessorCard", "pci.Device", "pci.Link", "pci.Switch", "processor.Unit", "security.Unit", "storage.Controller", "storage.Enclosure", "storage.EnclosureDisk", "storage.FlexFlashController", "storage.FlexFlashControllerProps", "storage.FlexFlashPhysicalDrive", "storage.FlexFlashVirtualDrive", "storage.FlexUtilPhysicalDrive", "storage.HitachiArray", "storage.HitachiController", "storage.HitachiDisk", "storage.PhysicalDisk", "storage.PhysicalDiskExtension", "storage.PureArray", "storage.PureController", "storage.PureDisk", "storage.SasExpander", "storage.VirtualDrive", "storage.VirtualDriveContainer")]
        [String]
        ${ClassId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("adapter.HostFcInterface", "adapter.HostIscsiInterface", "adapter.Unit", "bios.Unit", "boot.CddDevice", "boot.HddDevice", "boot.IscsiDevice", "boot.NvmeDevice", "boot.PchStorageDevice", "boot.PxeDevice", "boot.SanDevice", "boot.SdDevice", "boot.UefiShellDevice", "boot.UsbDevice", "boot.VmediaDevice", "compute.Blade", "compute.Board", "compute.RackUnit", "equipment.Chassis", "equipment.Fan", "equipment.FanModule", "equipment.Fex", "equipment.IoCard", "equipment.IoExpander", "equipment.Psu", "equipment.PsuControl", "equipment.RackEnclosure", "equipment.RackEnclosureSlot", "equipment.SharedIoModule", "equipment.SwitchCard", "equipment.SystemIoController", "equipment.Tpm", "equipment.Transceiver", "graphics.Card", "graphics.Controller", "memory.Array", "memory.PersistentMemoryUnit", "memory.Unit", "network.Element", "pci.CoprocessorCard", "pci.Device", "pci.Link", "pci.Switch", "processor.Unit", "security.Unit", "storage.Controller", "storage.Enclosure", "storage.EnclosureDisk", "storage.FlexFlashController", "storage.FlexFlashControllerProps", "storage.FlexFlashPhysicalDrive", "storage.FlexFlashVirtualDrive", "storage.FlexUtilPhysicalDrive", "storage.HitachiArray", "storage.HitachiController", "storage.HitachiDisk", "storage.PhysicalDisk", "storage.PhysicalDiskExtension", "storage.PureArray", "storage.PureController", "storage.PureDisk", "storage.SasExpander", "storage.VirtualDrive", "storage.VirtualDriveContainer")]
        [String]
        ${ObjectType}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightEquipmentBaseAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        
        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EquipmentBaseAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to EquipmentBaseAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EquipmentBaseAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToEquipmentBaseAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightEquipmentBaseAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightEquipmentBaseAllOf
        $AllProperties = ("ClassId", "ObjectType", "Model", "Revision", "Serial", "Vendor")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property `ClassId` missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClassId"))) {
            throw "Error! JSON cannot be serialized due to the required property `ClassId` missing."
        } else {
            $ClassId = $JsonParameters.PSobject.Properties["ClassId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ObjectType"))) {
            throw "Error! JSON cannot be serialized due to the required property `ObjectType` missing."
        } else {
            $ObjectType = $JsonParameters.PSobject.Properties["ObjectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Model"))) { #optional property not found
            $Model = $null
        } else {
            $Model = $JsonParameters.PSobject.Properties["Model"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Revision"))) { #optional property not found
            $Revision = $null
        } else {
            $Revision = $JsonParameters.PSobject.Properties["Revision"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Serial"))) { #optional property not found
            $Serial = $null
        } else {
            $Serial = $JsonParameters.PSobject.Properties["Serial"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Vendor"))) { #optional property not found
            $Vendor = $null
        } else {
            $Vendor = $JsonParameters.PSobject.Properties["Vendor"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Model" = ${Model}
            "Revision" = ${Revision}
            "Serial" = ${Serial}
            "Vendor" = ${Vendor}
        }

        return $PSO
    }

}

