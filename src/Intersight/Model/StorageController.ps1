#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2020-07-16T08:45:19Z.
# Version: 1.0.9-2020
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Storage Controller present in a server.

.PARAMETER Moid
The unique identifier of this Managed Object instance.
.PARAMETER Owners
No description available.
.PARAMETER Tags
No description available.
.PARAMETER VersionContext
No description available.
.PARAMETER Parent
No description available.
.PARAMETER ForeignConfigPresent
Storage controller has detected disks in foreign config.
.PARAMETER InterfaceType
Interface types are Sas, Sata, PCH.
.PARAMETER MaxVolumesSupported
Maximum virtual drives that can be created on this Storage Controller.
.PARAMETER SelfEncryptEnabled
Storage controller disk self encryption state.
.PARAMETER ComputeBlade
No description available.
.PARAMETER ComputeBoard
No description available.
.PARAMETER ComputeRackUnit
No description available.
.PARAMETER DiskGroup
An array of relationships to storageDiskGroup resources.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER RegisteredDevice
No description available.
.OUTPUTS

StorageController<PSCustomObject>
#>

function Initialize-IntersightStorageController {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Moid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Owners},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Tags},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VersionContext},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Parent},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ForeignConfigPresent},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InterfaceType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MaxVolumesSupported},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SelfEncryptEnabled},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ComputeBlade},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ComputeBoard},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ComputeRackUnit},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${DiskGroup},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightStorageController' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "ForeignConfigPresent" = ${ForeignConfigPresent}
            "InterfaceType" = ${InterfaceType}
            "MaxVolumesSupported" = ${MaxVolumesSupported}
            "SelfEncryptEnabled" = ${SelfEncryptEnabled}
            "ComputeBlade" = ${ComputeBlade}
            "ComputeBoard" = ${ComputeBoard}
            "ComputeRackUnit" = ${ComputeRackUnit}
            "DiskGroup" = ${DiskGroup}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StorageController<PSCustomObject>

.DESCRIPTION

Convert from JSON to StorageController<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StorageController<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToStorageController {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightStorageController' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightStorageController
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "DeviceMoId", "Dn", "Rn", "Model", "Revision", "Serial", "Vendor", "ControllerFlags", "ControllerId", "ControllerStatus", "ForeignConfigPresent", "HwRevision", "InterfaceType", "MaxVolumesSupported", "OobInterfaceSupported", "OperState", "Operability", "PciAddr", "PciSlot", "Presence", "RaidSupport", "RebuildRate", "SelfEncryptEnabled", "Type", "ComputeBlade", "ComputeBoard", "ComputeRackUnit", "DiskGroup", "InventoryDeviceInfo", "PhysicalDiskExtensions", "PhysicalDisks", "RegisteredDevice", "RunningFirmware", "VirtualDriveExtensions", "VirtualDrives")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AccountMoid"))) { #optional property not found
            $AccountMoid = $null
        } else {
            $AccountMoid = $JsonParameters.PSobject.Properties["AccountMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CreateTime"))) { #optional property not found
            $CreateTime = $null
        } else {
            $CreateTime = $JsonParameters.PSobject.Properties["CreateTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DomainGroupMoid"))) { #optional property not found
            $DomainGroupMoid = $null
        } else {
            $DomainGroupMoid = $JsonParameters.PSobject.Properties["DomainGroupMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ModTime"))) { #optional property not found
            $ModTime = $null
        } else {
            $ModTime = $JsonParameters.PSobject.Properties["ModTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Moid"))) { #optional property not found
            $Moid = $null
        } else {
            $Moid = $JsonParameters.PSobject.Properties["Moid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Owners"))) { #optional property not found
            $Owners = $null
        } else {
            $Owners = $JsonParameters.PSobject.Properties["Owners"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SharedScope"))) { #optional property not found
            $SharedScope = $null
        } else {
            $SharedScope = $JsonParameters.PSobject.Properties["SharedScope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["Tags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VersionContext"))) { #optional property not found
            $VersionContext = $null
        } else {
            $VersionContext = $JsonParameters.PSobject.Properties["VersionContext"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Ancestors"))) { #optional property not found
            $Ancestors = $null
        } else {
            $Ancestors = $JsonParameters.PSobject.Properties["Ancestors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Parent"))) { #optional property not found
            $Parent = $null
        } else {
            $Parent = $JsonParameters.PSobject.Properties["Parent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PermissionResources"))) { #optional property not found
            $PermissionResources = $null
        } else {
            $PermissionResources = $JsonParameters.PSobject.Properties["PermissionResources"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DisplayNames"))) { #optional property not found
            $DisplayNames = $null
        } else {
            $DisplayNames = $JsonParameters.PSobject.Properties["DisplayNames"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeviceMoId"))) { #optional property not found
            $DeviceMoId = $null
        } else {
            $DeviceMoId = $JsonParameters.PSobject.Properties["DeviceMoId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Dn"))) { #optional property not found
            $Dn = $null
        } else {
            $Dn = $JsonParameters.PSobject.Properties["Dn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Rn"))) { #optional property not found
            $Rn = $null
        } else {
            $Rn = $JsonParameters.PSobject.Properties["Rn"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ControllerFlags"))) { #optional property not found
            $ControllerFlags = $null
        } else {
            $ControllerFlags = $JsonParameters.PSobject.Properties["ControllerFlags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ControllerId"))) { #optional property not found
            $ControllerId = $null
        } else {
            $ControllerId = $JsonParameters.PSobject.Properties["ControllerId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ControllerStatus"))) { #optional property not found
            $ControllerStatus = $null
        } else {
            $ControllerStatus = $JsonParameters.PSobject.Properties["ControllerStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ForeignConfigPresent"))) { #optional property not found
            $ForeignConfigPresent = $null
        } else {
            $ForeignConfigPresent = $JsonParameters.PSobject.Properties["ForeignConfigPresent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HwRevision"))) { #optional property not found
            $HwRevision = $null
        } else {
            $HwRevision = $JsonParameters.PSobject.Properties["HwRevision"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InterfaceType"))) { #optional property not found
            $InterfaceType = $null
        } else {
            $InterfaceType = $JsonParameters.PSobject.Properties["InterfaceType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MaxVolumesSupported"))) { #optional property not found
            $MaxVolumesSupported = $null
        } else {
            $MaxVolumesSupported = $JsonParameters.PSobject.Properties["MaxVolumesSupported"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OobInterfaceSupported"))) { #optional property not found
            $OobInterfaceSupported = $null
        } else {
            $OobInterfaceSupported = $JsonParameters.PSobject.Properties["OobInterfaceSupported"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperState"))) { #optional property not found
            $OperState = $null
        } else {
            $OperState = $JsonParameters.PSobject.Properties["OperState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Operability"))) { #optional property not found
            $Operability = $null
        } else {
            $Operability = $JsonParameters.PSobject.Properties["Operability"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PciAddr"))) { #optional property not found
            $PciAddr = $null
        } else {
            $PciAddr = $JsonParameters.PSobject.Properties["PciAddr"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PciSlot"))) { #optional property not found
            $PciSlot = $null
        } else {
            $PciSlot = $JsonParameters.PSobject.Properties["PciSlot"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Presence"))) { #optional property not found
            $Presence = $null
        } else {
            $Presence = $JsonParameters.PSobject.Properties["Presence"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RaidSupport"))) { #optional property not found
            $RaidSupport = $null
        } else {
            $RaidSupport = $JsonParameters.PSobject.Properties["RaidSupport"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RebuildRate"))) { #optional property not found
            $RebuildRate = $null
        } else {
            $RebuildRate = $JsonParameters.PSobject.Properties["RebuildRate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SelfEncryptEnabled"))) { #optional property not found
            $SelfEncryptEnabled = $null
        } else {
            $SelfEncryptEnabled = $JsonParameters.PSobject.Properties["SelfEncryptEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["Type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ComputeBlade"))) { #optional property not found
            $ComputeBlade = $null
        } else {
            $ComputeBlade = $JsonParameters.PSobject.Properties["ComputeBlade"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ComputeBoard"))) { #optional property not found
            $ComputeBoard = $null
        } else {
            $ComputeBoard = $JsonParameters.PSobject.Properties["ComputeBoard"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ComputeRackUnit"))) { #optional property not found
            $ComputeRackUnit = $null
        } else {
            $ComputeRackUnit = $JsonParameters.PSobject.Properties["ComputeRackUnit"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DiskGroup"))) { #optional property not found
            $DiskGroup = $null
        } else {
            $DiskGroup = $JsonParameters.PSobject.Properties["DiskGroup"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InventoryDeviceInfo"))) { #optional property not found
            $InventoryDeviceInfo = $null
        } else {
            $InventoryDeviceInfo = $JsonParameters.PSobject.Properties["InventoryDeviceInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PhysicalDiskExtensions"))) { #optional property not found
            $PhysicalDiskExtensions = $null
        } else {
            $PhysicalDiskExtensions = $JsonParameters.PSobject.Properties["PhysicalDiskExtensions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PhysicalDisks"))) { #optional property not found
            $PhysicalDisks = $null
        } else {
            $PhysicalDisks = $JsonParameters.PSobject.Properties["PhysicalDisks"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RunningFirmware"))) { #optional property not found
            $RunningFirmware = $null
        } else {
            $RunningFirmware = $JsonParameters.PSobject.Properties["RunningFirmware"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VirtualDriveExtensions"))) { #optional property not found
            $VirtualDriveExtensions = $null
        } else {
            $VirtualDriveExtensions = $JsonParameters.PSobject.Properties["VirtualDriveExtensions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VirtualDrives"))) { #optional property not found
            $VirtualDrives = $null
        } else {
            $VirtualDrives = $JsonParameters.PSobject.Properties["VirtualDrives"].value
        }

        $PSO = [PSCustomObject]@{
            "AccountMoid" = ${AccountMoid}
            "ClassId" = ${ClassId}
            "CreateTime" = ${CreateTime}
            "DomainGroupMoid" = ${DomainGroupMoid}
            "ModTime" = ${ModTime}
            "Moid" = ${Moid}
            "ObjectType" = ${ObjectType}
            "Owners" = ${Owners}
            "SharedScope" = ${SharedScope}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Ancestors" = ${Ancestors}
            "Parent" = ${Parent}
            "PermissionResources" = ${PermissionResources}
            "DisplayNames" = ${DisplayNames}
            "DeviceMoId" = ${DeviceMoId}
            "Dn" = ${Dn}
            "Rn" = ${Rn}
            "Model" = ${Model}
            "Revision" = ${Revision}
            "Serial" = ${Serial}
            "Vendor" = ${Vendor}
            "ControllerFlags" = ${ControllerFlags}
            "ControllerId" = ${ControllerId}
            "ControllerStatus" = ${ControllerStatus}
            "ForeignConfigPresent" = ${ForeignConfigPresent}
            "HwRevision" = ${HwRevision}
            "InterfaceType" = ${InterfaceType}
            "MaxVolumesSupported" = ${MaxVolumesSupported}
            "OobInterfaceSupported" = ${OobInterfaceSupported}
            "OperState" = ${OperState}
            "Operability" = ${Operability}
            "PciAddr" = ${PciAddr}
            "PciSlot" = ${PciSlot}
            "Presence" = ${Presence}
            "RaidSupport" = ${RaidSupport}
            "RebuildRate" = ${RebuildRate}
            "SelfEncryptEnabled" = ${SelfEncryptEnabled}
            "Type" = ${Type}
            "ComputeBlade" = ${ComputeBlade}
            "ComputeBoard" = ${ComputeBoard}
            "ComputeRackUnit" = ${ComputeRackUnit}
            "DiskGroup" = ${DiskGroup}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "PhysicalDiskExtensions" = ${PhysicalDiskExtensions}
            "PhysicalDisks" = ${PhysicalDisks}
            "RegisteredDevice" = ${RegisteredDevice}
            "RunningFirmware" = ${RunningFirmware}
            "VirtualDriveExtensions" = ${VirtualDriveExtensions}
            "VirtualDrives" = ${VirtualDrives}
        }

        return $PSO
    }

}

