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

Definition of the list of properties defined in 'compute.Blade', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER BiosBootmode
No description available.
.PARAMETER Bmc
No description available.
.PARAMETER Board
No description available.
.PARAMETER BootDeviceBootmode
No description available.
.PARAMETER EquipmentChassis
No description available.
.PARAMETER GraphicsCards
An array of relationships to graphicsCard resources.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER LocatorLed
No description available.
.PARAMETER MemoryArrays
An array of relationships to memoryArray resources.
.PARAMETER Processors
An array of relationships to processorUnit resources.
.PARAMETER RegisteredDevice
No description available.
.PARAMETER StorageControllers
An array of relationships to storageController resources.
.PARAMETER TopSystem
No description available.
.OUTPUTS

ComputeBladeAllOf<PSCustomObject>
#>

function Initialize-IntersightComputeBladeAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("compute.Blade")]
        [String]
        ${ClassId} = "compute.Blade",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("compute.Blade")]
        [String]
        ${ObjectType} = "compute.Blade",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${BiosBootmode},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Bmc},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Board},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${BootDeviceBootmode},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EquipmentChassis},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${GraphicsCards},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LocatorLed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${MemoryArrays},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Processors},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${StorageControllers},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TopSystem}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightComputeBladeAllOf' | Write-Debug
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
            "BiosBootmode" = ${BiosBootmode}
            "Bmc" = ${Bmc}
            "Board" = ${Board}
            "BootDeviceBootmode" = ${BootDeviceBootmode}
            "EquipmentChassis" = ${EquipmentChassis}
            "GraphicsCards" = ${GraphicsCards}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "LocatorLed" = ${LocatorLed}
            "MemoryArrays" = ${MemoryArrays}
            "Processors" = ${Processors}
            "RegisteredDevice" = ${RegisteredDevice}
            "StorageControllers" = ${StorageControllers}
            "TopSystem" = ${TopSystem}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ComputeBladeAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to ComputeBladeAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ComputeBladeAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToComputeBladeAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightComputeBladeAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightComputeBladeAllOf
        $AllProperties = ("ClassId", "ObjectType", "ChassisId", "ScaledMode", "SlotId", "Adapters", "BiosBootmode", "BiosUnits", "Bmc", "Board", "BootDeviceBootmode", "EquipmentChassis", "EquipmentIoExpanders", "GenericInventoryHolders", "GraphicsCards", "InventoryDeviceInfo", "LocatorLed", "MemoryArrays", "PciDevices", "Processors", "RegisteredDevice", "StorageControllers", "StorageEnclosures", "TopSystem")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ChassisId"))) { #optional property not found
            $ChassisId = $null
        } else {
            $ChassisId = $JsonParameters.PSobject.Properties["ChassisId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ScaledMode"))) { #optional property not found
            $ScaledMode = $null
        } else {
            $ScaledMode = $JsonParameters.PSobject.Properties["ScaledMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SlotId"))) { #optional property not found
            $SlotId = $null
        } else {
            $SlotId = $JsonParameters.PSobject.Properties["SlotId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Adapters"))) { #optional property not found
            $Adapters = $null
        } else {
            $Adapters = $JsonParameters.PSobject.Properties["Adapters"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BiosBootmode"))) { #optional property not found
            $BiosBootmode = $null
        } else {
            $BiosBootmode = $JsonParameters.PSobject.Properties["BiosBootmode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BiosUnits"))) { #optional property not found
            $BiosUnits = $null
        } else {
            $BiosUnits = $JsonParameters.PSobject.Properties["BiosUnits"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Bmc"))) { #optional property not found
            $Bmc = $null
        } else {
            $Bmc = $JsonParameters.PSobject.Properties["Bmc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Board"))) { #optional property not found
            $Board = $null
        } else {
            $Board = $JsonParameters.PSobject.Properties["Board"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BootDeviceBootmode"))) { #optional property not found
            $BootDeviceBootmode = $null
        } else {
            $BootDeviceBootmode = $JsonParameters.PSobject.Properties["BootDeviceBootmode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EquipmentChassis"))) { #optional property not found
            $EquipmentChassis = $null
        } else {
            $EquipmentChassis = $JsonParameters.PSobject.Properties["EquipmentChassis"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EquipmentIoExpanders"))) { #optional property not found
            $EquipmentIoExpanders = $null
        } else {
            $EquipmentIoExpanders = $JsonParameters.PSobject.Properties["EquipmentIoExpanders"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "GenericInventoryHolders"))) { #optional property not found
            $GenericInventoryHolders = $null
        } else {
            $GenericInventoryHolders = $JsonParameters.PSobject.Properties["GenericInventoryHolders"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "GraphicsCards"))) { #optional property not found
            $GraphicsCards = $null
        } else {
            $GraphicsCards = $JsonParameters.PSobject.Properties["GraphicsCards"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InventoryDeviceInfo"))) { #optional property not found
            $InventoryDeviceInfo = $null
        } else {
            $InventoryDeviceInfo = $JsonParameters.PSobject.Properties["InventoryDeviceInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LocatorLed"))) { #optional property not found
            $LocatorLed = $null
        } else {
            $LocatorLed = $JsonParameters.PSobject.Properties["LocatorLed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MemoryArrays"))) { #optional property not found
            $MemoryArrays = $null
        } else {
            $MemoryArrays = $JsonParameters.PSobject.Properties["MemoryArrays"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PciDevices"))) { #optional property not found
            $PciDevices = $null
        } else {
            $PciDevices = $JsonParameters.PSobject.Properties["PciDevices"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Processors"))) { #optional property not found
            $Processors = $null
        } else {
            $Processors = $JsonParameters.PSobject.Properties["Processors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StorageControllers"))) { #optional property not found
            $StorageControllers = $null
        } else {
            $StorageControllers = $JsonParameters.PSobject.Properties["StorageControllers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StorageEnclosures"))) { #optional property not found
            $StorageEnclosures = $null
        } else {
            $StorageEnclosures = $JsonParameters.PSobject.Properties["StorageEnclosures"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TopSystem"))) { #optional property not found
            $TopSystem = $null
        } else {
            $TopSystem = $JsonParameters.PSobject.Properties["TopSystem"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "ChassisId" = ${ChassisId}
            "ScaledMode" = ${ScaledMode}
            "SlotId" = ${SlotId}
            "Adapters" = ${Adapters}
            "BiosBootmode" = ${BiosBootmode}
            "BiosUnits" = ${BiosUnits}
            "Bmc" = ${Bmc}
            "Board" = ${Board}
            "BootDeviceBootmode" = ${BootDeviceBootmode}
            "EquipmentChassis" = ${EquipmentChassis}
            "EquipmentIoExpanders" = ${EquipmentIoExpanders}
            "GenericInventoryHolders" = ${GenericInventoryHolders}
            "GraphicsCards" = ${GraphicsCards}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "LocatorLed" = ${LocatorLed}
            "MemoryArrays" = ${MemoryArrays}
            "PciDevices" = ${PciDevices}
            "Processors" = ${Processors}
            "RegisteredDevice" = ${RegisteredDevice}
            "StorageControllers" = ${StorageControllers}
            "StorageEnclosures" = ${StorageEnclosures}
            "TopSystem" = ${TopSystem}
        }

        return $PSO
    }

}

