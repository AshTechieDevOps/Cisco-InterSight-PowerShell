#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2021-02-05T15:05:56Z.
# Version: 1.0.9-3562
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Flex flash controller properties.

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
.PARAMETER Var0ClusterReplicationNetworkPolicy
No description available.
.PARAMETER Parent
No description available.
.PARAMETER CardsManageable
Manageable card on the flex flash controller.
.PARAMETER ConfiguredMode
Mode configured on the flex flash controller.
.PARAMETER ControllerName
The current name of the flex flash controller.
.PARAMETER ControllerStatus
The current status of the flex flash controller.
.PARAMETER FwVersion
Firmware version of the flex flash controller.
.PARAMETER InternalState
Internal state of the flex flash controller.
.PARAMETER OperatingMode
Operating mode of flex flash controller.
.PARAMETER PhysicalDriveCount
Number of connected physical drives to a specific Flex flash controller.
.PARAMETER ProductName
Product name of the flex flash controller.
.PARAMETER StartupFwVersion
Startup firmware version of the Flex flash controller.
.PARAMETER VirtualDriveCount
Number of virtual drives for a specific Flex flash controller.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER RegisteredDevice
No description available.
.PARAMETER StorageFlexFlashController
No description available.
.OUTPUTS

StorageFlexFlashControllerProps<PSCustomObject>
#>

function Initialize-IntersightStorageFlexFlashControllerProps {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("storage.FlexFlashControllerProps")]
        [String]
        ${ClassId} = "storage.FlexFlashControllerProps",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("storage.FlexFlashControllerProps")]
        [String]
        ${ObjectType} = "storage.FlexFlashControllerProps",
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
        ${Var0ClusterReplicationNetworkPolicy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Parent},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CardsManageable},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConfiguredMode},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ControllerName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ControllerStatus},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FwVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InternalState},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OperatingMode},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PhysicalDriveCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProductName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StartupFwVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VirtualDriveCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StorageFlexFlashController}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightStorageFlexFlashControllerProps' | Write-Debug
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
            "_0_ClusterReplicationNetworkPolicy" = ${Var0ClusterReplicationNetworkPolicy}
            "Parent" = ${Parent}
            "CardsManageable" = ${CardsManageable}
            "ConfiguredMode" = ${ConfiguredMode}
            "ControllerName" = ${ControllerName}
            "ControllerStatus" = ${ControllerStatus}
            "FwVersion" = ${FwVersion}
            "InternalState" = ${InternalState}
            "OperatingMode" = ${OperatingMode}
            "PhysicalDriveCount" = ${PhysicalDriveCount}
            "ProductName" = ${ProductName}
            "StartupFwVersion" = ${StartupFwVersion}
            "VirtualDriveCount" = ${VirtualDriveCount}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "RegisteredDevice" = ${RegisteredDevice}
            "StorageFlexFlashController" = ${StorageFlexFlashController}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StorageFlexFlashControllerProps<PSCustomObject>

.DESCRIPTION

Convert from JSON to StorageFlexFlashControllerProps<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StorageFlexFlashControllerProps<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToStorageFlexFlashControllerProps {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightStorageFlexFlashControllerProps' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightStorageFlexFlashControllerProps
        $AllProperties = ("ClassId", "ObjectType", "AccountMoid", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "Owners", "SharedScope", "Tags", "VersionContext", "_0_ClusterReplicationNetworkPolicy", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "DeviceMoId", "Dn", "Rn", "Model", "Revision", "Serial", "Vendor", "CardsManageable", "ConfiguredMode", "ControllerName", "ControllerStatus", "FwVersion", "InternalState", "OperatingMode", "PhysicalDriveCount", "ProductName", "StartupFwVersion", "VirtualDriveCount", "InventoryDeviceInfo", "RegisteredDevice", "StorageFlexFlashController")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'ClassId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClassId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'ClassId' missing."
        } else {
            $ClassId = $JsonParameters.PSobject.Properties["ClassId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ObjectType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'ObjectType' missing."
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_0_ClusterReplicationNetworkPolicy"))) { #optional property not found
            $Var0ClusterReplicationNetworkPolicy = $null
        } else {
            $Var0ClusterReplicationNetworkPolicy = $JsonParameters.PSobject.Properties["_0_ClusterReplicationNetworkPolicy"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CardsManageable"))) { #optional property not found
            $CardsManageable = $null
        } else {
            $CardsManageable = $JsonParameters.PSobject.Properties["CardsManageable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConfiguredMode"))) { #optional property not found
            $ConfiguredMode = $null
        } else {
            $ConfiguredMode = $JsonParameters.PSobject.Properties["ConfiguredMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ControllerName"))) { #optional property not found
            $ControllerName = $null
        } else {
            $ControllerName = $JsonParameters.PSobject.Properties["ControllerName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ControllerStatus"))) { #optional property not found
            $ControllerStatus = $null
        } else {
            $ControllerStatus = $JsonParameters.PSobject.Properties["ControllerStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FwVersion"))) { #optional property not found
            $FwVersion = $null
        } else {
            $FwVersion = $JsonParameters.PSobject.Properties["FwVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InternalState"))) { #optional property not found
            $InternalState = $null
        } else {
            $InternalState = $JsonParameters.PSobject.Properties["InternalState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperatingMode"))) { #optional property not found
            $OperatingMode = $null
        } else {
            $OperatingMode = $JsonParameters.PSobject.Properties["OperatingMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PhysicalDriveCount"))) { #optional property not found
            $PhysicalDriveCount = $null
        } else {
            $PhysicalDriveCount = $JsonParameters.PSobject.Properties["PhysicalDriveCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProductName"))) { #optional property not found
            $ProductName = $null
        } else {
            $ProductName = $JsonParameters.PSobject.Properties["ProductName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StartupFwVersion"))) { #optional property not found
            $StartupFwVersion = $null
        } else {
            $StartupFwVersion = $JsonParameters.PSobject.Properties["StartupFwVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VirtualDriveCount"))) { #optional property not found
            $VirtualDriveCount = $null
        } else {
            $VirtualDriveCount = $JsonParameters.PSobject.Properties["VirtualDriveCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InventoryDeviceInfo"))) { #optional property not found
            $InventoryDeviceInfo = $null
        } else {
            $InventoryDeviceInfo = $JsonParameters.PSobject.Properties["InventoryDeviceInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StorageFlexFlashController"))) { #optional property not found
            $StorageFlexFlashController = $null
        } else {
            $StorageFlexFlashController = $JsonParameters.PSobject.Properties["StorageFlexFlashController"].value
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
            "_0_ClusterReplicationNetworkPolicy" = ${Var0ClusterReplicationNetworkPolicy}
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
            "CardsManageable" = ${CardsManageable}
            "ConfiguredMode" = ${ConfiguredMode}
            "ControllerName" = ${ControllerName}
            "ControllerStatus" = ${ControllerStatus}
            "FwVersion" = ${FwVersion}
            "InternalState" = ${InternalState}
            "OperatingMode" = ${OperatingMode}
            "PhysicalDriveCount" = ${PhysicalDriveCount}
            "ProductName" = ${ProductName}
            "StartupFwVersion" = ${StartupFwVersion}
            "VirtualDriveCount" = ${VirtualDriveCount}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "RegisteredDevice" = ${RegisteredDevice}
            "StorageFlexFlashController" = ${StorageFlexFlashController}
        }

        return $PSO
    }

}

