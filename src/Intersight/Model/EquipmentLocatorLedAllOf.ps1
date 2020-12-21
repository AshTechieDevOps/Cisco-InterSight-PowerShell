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

Definition of the list of properties defined in 'equipment.LocatorLed', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER ComputeBlade
No description available.
.PARAMETER ComputeRackUnit
No description available.
.PARAMETER EquipmentChassis
No description available.
.PARAMETER EquipmentFex
No description available.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER RegisteredDevice
No description available.
.PARAMETER StoragePhysicalDisk
No description available.
.OUTPUTS

EquipmentLocatorLedAllOf<PSCustomObject>
#>

function Initialize-IntersightEquipmentLocatorLedAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("equipment.LocatorLed")]
        [String]
        ${ClassId} = "equipment.LocatorLed",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("equipment.LocatorLed")]
        [String]
        ${ObjectType} = "equipment.LocatorLed",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ComputeBlade},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ComputeRackUnit},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EquipmentChassis},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EquipmentFex},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StoragePhysicalDisk}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightEquipmentLocatorLedAllOf' | Write-Debug
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
            "ComputeBlade" = ${ComputeBlade}
            "ComputeRackUnit" = ${ComputeRackUnit}
            "EquipmentChassis" = ${EquipmentChassis}
            "EquipmentFex" = ${EquipmentFex}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "RegisteredDevice" = ${RegisteredDevice}
            "StoragePhysicalDisk" = ${StoragePhysicalDisk}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EquipmentLocatorLedAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to EquipmentLocatorLedAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EquipmentLocatorLedAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToEquipmentLocatorLedAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightEquipmentLocatorLedAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightEquipmentLocatorLedAllOf
        $AllProperties = ("ClassId", "ObjectType", "Color", "OperState", "ComputeBlade", "ComputeRackUnit", "EquipmentChassis", "EquipmentFex", "InventoryDeviceInfo", "RegisteredDevice", "StoragePhysicalDisk")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Color"))) { #optional property not found
            $Color = $null
        } else {
            $Color = $JsonParameters.PSobject.Properties["Color"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperState"))) { #optional property not found
            $OperState = $null
        } else {
            $OperState = $JsonParameters.PSobject.Properties["OperState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ComputeBlade"))) { #optional property not found
            $ComputeBlade = $null
        } else {
            $ComputeBlade = $JsonParameters.PSobject.Properties["ComputeBlade"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ComputeRackUnit"))) { #optional property not found
            $ComputeRackUnit = $null
        } else {
            $ComputeRackUnit = $JsonParameters.PSobject.Properties["ComputeRackUnit"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EquipmentChassis"))) { #optional property not found
            $EquipmentChassis = $null
        } else {
            $EquipmentChassis = $JsonParameters.PSobject.Properties["EquipmentChassis"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EquipmentFex"))) { #optional property not found
            $EquipmentFex = $null
        } else {
            $EquipmentFex = $JsonParameters.PSobject.Properties["EquipmentFex"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StoragePhysicalDisk"))) { #optional property not found
            $StoragePhysicalDisk = $null
        } else {
            $StoragePhysicalDisk = $JsonParameters.PSobject.Properties["StoragePhysicalDisk"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Color" = ${Color}
            "OperState" = ${OperState}
            "ComputeBlade" = ${ComputeBlade}
            "ComputeRackUnit" = ${ComputeRackUnit}
            "EquipmentChassis" = ${EquipmentChassis}
            "EquipmentFex" = ${EquipmentFex}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "RegisteredDevice" = ${RegisteredDevice}
            "StoragePhysicalDisk" = ${StoragePhysicalDisk}
        }

        return $PSO
    }

}

