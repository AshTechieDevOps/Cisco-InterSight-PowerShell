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

A Virtual Disk Drive or Logical Unit Number.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
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
.PARAMETER DiskGroup
No description available.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER PhysicalDiskUsages
An array of relationships to storagePhysicalDiskUsage resources.
.PARAMETER RegisteredDevice
No description available.
.PARAMETER StorageController
No description available.
.PARAMETER StorageVirtualDriveContainer
No description available.
.PARAMETER VirtualDriveExtension
No description available.
.OUTPUTS

StorageVirtualDrive<PSCustomObject>
#>

function Initialize-IntersightStorageVirtualDrive {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("storage.VirtualDrive")]
        [String]
        ${ClassId} = "storage.VirtualDrive",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("storage.VirtualDrive")]
        [String]
        ${ObjectType} = "storage.VirtualDrive",
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
        [PSCustomObject]
        ${DiskGroup},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${PhysicalDiskUsages},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StorageController},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StorageVirtualDriveContainer},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VirtualDriveExtension}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightStorageVirtualDrive' | Write-Debug
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
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "DiskGroup" = ${DiskGroup}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "PhysicalDiskUsages" = ${PhysicalDiskUsages}
            "RegisteredDevice" = ${RegisteredDevice}
            "StorageController" = ${StorageController}
            "StorageVirtualDriveContainer" = ${StorageVirtualDriveContainer}
            "VirtualDriveExtension" = ${VirtualDriveExtension}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StorageVirtualDrive<PSCustomObject>

.DESCRIPTION

Convert from JSON to StorageVirtualDrive<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StorageVirtualDrive<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToStorageVirtualDrive {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightStorageVirtualDrive' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightStorageVirtualDrive
        $AllProperties = ("ClassId", "ObjectType", "AccountMoid", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "DeviceMoId", "Dn", "Rn", "Model", "Revision", "Serial", "Vendor", "AccessPolicy", "ActualWriteCachePolicy", "AvailableSize", "BlockSize", "Bootable", "ConfigState", "ConfiguredWriteCachePolicy", "ConnectionProtocol", "DriveCache", "DriveSecurity", "DriveState", "IoPolicy", "Name", "NumBlocks", "OperState", "Operability", "PhysicalBlockSize", "Presence", "ReadPolicy", "SecurityFlags", "Size", "StripSize", "Type", "Uuid", "VendorUuid", "VirtualDriveId", "DiskGroup", "InventoryDeviceInfo", "PhysicalDiskUsages", "RegisteredDevice", "StorageController", "StorageVirtualDriveContainer", "VdMemberEps", "VirtualDriveExtension")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AccessPolicy"))) { #optional property not found
            $AccessPolicy = $null
        } else {
            $AccessPolicy = $JsonParameters.PSobject.Properties["AccessPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ActualWriteCachePolicy"))) { #optional property not found
            $ActualWriteCachePolicy = $null
        } else {
            $ActualWriteCachePolicy = $JsonParameters.PSobject.Properties["ActualWriteCachePolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AvailableSize"))) { #optional property not found
            $AvailableSize = $null
        } else {
            $AvailableSize = $JsonParameters.PSobject.Properties["AvailableSize"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BlockSize"))) { #optional property not found
            $BlockSize = $null
        } else {
            $BlockSize = $JsonParameters.PSobject.Properties["BlockSize"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Bootable"))) { #optional property not found
            $Bootable = $null
        } else {
            $Bootable = $JsonParameters.PSobject.Properties["Bootable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConfigState"))) { #optional property not found
            $ConfigState = $null
        } else {
            $ConfigState = $JsonParameters.PSobject.Properties["ConfigState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConfiguredWriteCachePolicy"))) { #optional property not found
            $ConfiguredWriteCachePolicy = $null
        } else {
            $ConfiguredWriteCachePolicy = $JsonParameters.PSobject.Properties["ConfiguredWriteCachePolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConnectionProtocol"))) { #optional property not found
            $ConnectionProtocol = $null
        } else {
            $ConnectionProtocol = $JsonParameters.PSobject.Properties["ConnectionProtocol"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DriveCache"))) { #optional property not found
            $DriveCache = $null
        } else {
            $DriveCache = $JsonParameters.PSobject.Properties["DriveCache"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DriveSecurity"))) { #optional property not found
            $DriveSecurity = $null
        } else {
            $DriveSecurity = $JsonParameters.PSobject.Properties["DriveSecurity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DriveState"))) { #optional property not found
            $DriveState = $null
        } else {
            $DriveState = $JsonParameters.PSobject.Properties["DriveState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IoPolicy"))) { #optional property not found
            $IoPolicy = $null
        } else {
            $IoPolicy = $JsonParameters.PSobject.Properties["IoPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumBlocks"))) { #optional property not found
            $NumBlocks = $null
        } else {
            $NumBlocks = $JsonParameters.PSobject.Properties["NumBlocks"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PhysicalBlockSize"))) { #optional property not found
            $PhysicalBlockSize = $null
        } else {
            $PhysicalBlockSize = $JsonParameters.PSobject.Properties["PhysicalBlockSize"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Presence"))) { #optional property not found
            $Presence = $null
        } else {
            $Presence = $JsonParameters.PSobject.Properties["Presence"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ReadPolicy"))) { #optional property not found
            $ReadPolicy = $null
        } else {
            $ReadPolicy = $JsonParameters.PSobject.Properties["ReadPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SecurityFlags"))) { #optional property not found
            $SecurityFlags = $null
        } else {
            $SecurityFlags = $JsonParameters.PSobject.Properties["SecurityFlags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Size"))) { #optional property not found
            $Size = $null
        } else {
            $Size = $JsonParameters.PSobject.Properties["Size"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StripSize"))) { #optional property not found
            $StripSize = $null
        } else {
            $StripSize = $JsonParameters.PSobject.Properties["StripSize"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["Type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Uuid"))) { #optional property not found
            $Uuid = $null
        } else {
            $Uuid = $JsonParameters.PSobject.Properties["Uuid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VendorUuid"))) { #optional property not found
            $VendorUuid = $null
        } else {
            $VendorUuid = $JsonParameters.PSobject.Properties["VendorUuid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VirtualDriveId"))) { #optional property not found
            $VirtualDriveId = $null
        } else {
            $VirtualDriveId = $JsonParameters.PSobject.Properties["VirtualDriveId"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PhysicalDiskUsages"))) { #optional property not found
            $PhysicalDiskUsages = $null
        } else {
            $PhysicalDiskUsages = $JsonParameters.PSobject.Properties["PhysicalDiskUsages"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StorageController"))) { #optional property not found
            $StorageController = $null
        } else {
            $StorageController = $JsonParameters.PSobject.Properties["StorageController"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StorageVirtualDriveContainer"))) { #optional property not found
            $StorageVirtualDriveContainer = $null
        } else {
            $StorageVirtualDriveContainer = $JsonParameters.PSobject.Properties["StorageVirtualDriveContainer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VdMemberEps"))) { #optional property not found
            $VdMemberEps = $null
        } else {
            $VdMemberEps = $JsonParameters.PSobject.Properties["VdMemberEps"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VirtualDriveExtension"))) { #optional property not found
            $VirtualDriveExtension = $null
        } else {
            $VirtualDriveExtension = $JsonParameters.PSobject.Properties["VirtualDriveExtension"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AccountMoid" = ${AccountMoid}
            "CreateTime" = ${CreateTime}
            "DomainGroupMoid" = ${DomainGroupMoid}
            "ModTime" = ${ModTime}
            "Moid" = ${Moid}
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
            "AccessPolicy" = ${AccessPolicy}
            "ActualWriteCachePolicy" = ${ActualWriteCachePolicy}
            "AvailableSize" = ${AvailableSize}
            "BlockSize" = ${BlockSize}
            "Bootable" = ${Bootable}
            "ConfigState" = ${ConfigState}
            "ConfiguredWriteCachePolicy" = ${ConfiguredWriteCachePolicy}
            "ConnectionProtocol" = ${ConnectionProtocol}
            "DriveCache" = ${DriveCache}
            "DriveSecurity" = ${DriveSecurity}
            "DriveState" = ${DriveState}
            "IoPolicy" = ${IoPolicy}
            "Name" = ${Name}
            "NumBlocks" = ${NumBlocks}
            "OperState" = ${OperState}
            "Operability" = ${Operability}
            "PhysicalBlockSize" = ${PhysicalBlockSize}
            "Presence" = ${Presence}
            "ReadPolicy" = ${ReadPolicy}
            "SecurityFlags" = ${SecurityFlags}
            "Size" = ${Size}
            "StripSize" = ${StripSize}
            "Type" = ${Type}
            "Uuid" = ${Uuid}
            "VendorUuid" = ${VendorUuid}
            "VirtualDriveId" = ${VirtualDriveId}
            "DiskGroup" = ${DiskGroup}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "PhysicalDiskUsages" = ${PhysicalDiskUsages}
            "RegisteredDevice" = ${RegisteredDevice}
            "StorageController" = ${StorageController}
            "StorageVirtualDriveContainer" = ${StorageVirtualDriveContainer}
            "VdMemberEps" = ${VdMemberEps}
            "VirtualDriveExtension" = ${VirtualDriveExtension}
        }

        return $PSO
    }

}

