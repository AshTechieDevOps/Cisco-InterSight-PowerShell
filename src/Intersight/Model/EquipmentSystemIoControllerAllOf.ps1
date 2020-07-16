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

Definition of the list of properties defined in 'equipment.SystemIoController', excluding properties defined in parent classes.

.PARAMETER Cmc
No description available.
.PARAMETER EquipmentChassis
No description available.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER RegisteredDevice
No description available.
.PARAMETER SharedIoModule
No description available.
.OUTPUTS

EquipmentSystemIoControllerAllOf<PSCustomObject>
#>

function Initialize-IntersightEquipmentSystemIoControllerAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Cmc},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EquipmentChassis},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SharedIoModule}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightEquipmentSystemIoControllerAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Cmc" = ${Cmc}
            "EquipmentChassis" = ${EquipmentChassis}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "RegisteredDevice" = ${RegisteredDevice}
            "SharedIoModule" = ${SharedIoModule}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EquipmentSystemIoControllerAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to EquipmentSystemIoControllerAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EquipmentSystemIoControllerAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToEquipmentSystemIoControllerAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightEquipmentSystemIoControllerAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightEquipmentSystemIoControllerAllOf
        $AllProperties = ("ChassisId", "ConnectionPath", "ConnectionStatus", "Description", "ManagingInstance", "OperState", "PartNumber", "Pid", "SystemIoControllerId", "Cmc", "EquipmentChassis", "InventoryDeviceInfo", "RegisteredDevice", "SharedIoModule")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ChassisId"))) { #optional property not found
            $ChassisId = $null
        } else {
            $ChassisId = $JsonParameters.PSobject.Properties["ChassisId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConnectionPath"))) { #optional property not found
            $ConnectionPath = $null
        } else {
            $ConnectionPath = $JsonParameters.PSobject.Properties["ConnectionPath"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConnectionStatus"))) { #optional property not found
            $ConnectionStatus = $null
        } else {
            $ConnectionStatus = $JsonParameters.PSobject.Properties["ConnectionStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ManagingInstance"))) { #optional property not found
            $ManagingInstance = $null
        } else {
            $ManagingInstance = $JsonParameters.PSobject.Properties["ManagingInstance"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperState"))) { #optional property not found
            $OperState = $null
        } else {
            $OperState = $JsonParameters.PSobject.Properties["OperState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PartNumber"))) { #optional property not found
            $PartNumber = $null
        } else {
            $PartNumber = $JsonParameters.PSobject.Properties["PartNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Pid"))) { #optional property not found
            $VarPid = $null
        } else {
            $VarPid = $JsonParameters.PSobject.Properties["Pid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SystemIoControllerId"))) { #optional property not found
            $SystemIoControllerId = $null
        } else {
            $SystemIoControllerId = $JsonParameters.PSobject.Properties["SystemIoControllerId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Cmc"))) { #optional property not found
            $Cmc = $null
        } else {
            $Cmc = $JsonParameters.PSobject.Properties["Cmc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EquipmentChassis"))) { #optional property not found
            $EquipmentChassis = $null
        } else {
            $EquipmentChassis = $JsonParameters.PSobject.Properties["EquipmentChassis"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SharedIoModule"))) { #optional property not found
            $SharedIoModule = $null
        } else {
            $SharedIoModule = $JsonParameters.PSobject.Properties["SharedIoModule"].value
        }

        $PSO = [PSCustomObject]@{
            "ChassisId" = ${ChassisId}
            "ConnectionPath" = ${ConnectionPath}
            "ConnectionStatus" = ${ConnectionStatus}
            "Description" = ${Description}
            "ManagingInstance" = ${ManagingInstance}
            "OperState" = ${OperState}
            "PartNumber" = ${PartNumber}
            "Pid" = ${VarPid}
            "SystemIoControllerId" = ${SystemIoControllerId}
            "Cmc" = ${Cmc}
            "EquipmentChassis" = ${EquipmentChassis}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "RegisteredDevice" = ${RegisteredDevice}
            "SharedIoModule" = ${SharedIoModule}
        }

        return $PSO
    }

}

