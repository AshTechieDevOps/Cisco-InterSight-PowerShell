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

Definition of the list of properties defined in 'equipment.SwitchCard', excluding properties defined in parent classes.

.PARAMETER FcPortChannels
An array of relationships to fcPortChannel resources.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER NetworkElement
No description available.
.PARAMETER PortChannels
An array of relationships to etherPortChannel resources.
.PARAMETER RegisteredDevice
No description available.
.OUTPUTS

EquipmentSwitchCardAllOf<PSCustomObject>
#>

function Initialize-IntersightEquipmentSwitchCardAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FcPortChannels},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${NetworkElement},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${PortChannels},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightEquipmentSwitchCardAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "FcPortChannels" = ${FcPortChannels}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "NetworkElement" = ${NetworkElement}
            "PortChannels" = ${PortChannels}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EquipmentSwitchCardAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to EquipmentSwitchCardAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EquipmentSwitchCardAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToEquipmentSwitchCardAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightEquipmentSwitchCardAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightEquipmentSwitchCardAllOf
        $AllProperties = ("Description", "NumPorts", "OutOfBandIpAddress", "OutOfBandIpGateway", "Presence", "SlotId", "State", "SwitchId", "FcPortChannels", "InventoryDeviceInfo", "NetworkElement", "PortChannels", "PortGroups", "RegisteredDevice")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumPorts"))) { #optional property not found
            $NumPorts = $null
        } else {
            $NumPorts = $JsonParameters.PSobject.Properties["NumPorts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpAddress"))) { #optional property not found
            $OutOfBandIpAddress = $null
        } else {
            $OutOfBandIpAddress = $JsonParameters.PSobject.Properties["OutOfBandIpAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpGateway"))) { #optional property not found
            $OutOfBandIpGateway = $null
        } else {
            $OutOfBandIpGateway = $JsonParameters.PSobject.Properties["OutOfBandIpGateway"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Presence"))) { #optional property not found
            $Presence = $null
        } else {
            $Presence = $JsonParameters.PSobject.Properties["Presence"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SlotId"))) { #optional property not found
            $SlotId = $null
        } else {
            $SlotId = $JsonParameters.PSobject.Properties["SlotId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "State"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["State"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SwitchId"))) { #optional property not found
            $SwitchId = $null
        } else {
            $SwitchId = $JsonParameters.PSobject.Properties["SwitchId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FcPortChannels"))) { #optional property not found
            $FcPortChannels = $null
        } else {
            $FcPortChannels = $JsonParameters.PSobject.Properties["FcPortChannels"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InventoryDeviceInfo"))) { #optional property not found
            $InventoryDeviceInfo = $null
        } else {
            $InventoryDeviceInfo = $JsonParameters.PSobject.Properties["InventoryDeviceInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NetworkElement"))) { #optional property not found
            $NetworkElement = $null
        } else {
            $NetworkElement = $JsonParameters.PSobject.Properties["NetworkElement"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortChannels"))) { #optional property not found
            $PortChannels = $null
        } else {
            $PortChannels = $JsonParameters.PSobject.Properties["PortChannels"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortGroups"))) { #optional property not found
            $PortGroups = $null
        } else {
            $PortGroups = $JsonParameters.PSobject.Properties["PortGroups"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        $PSO = [PSCustomObject]@{
            "Description" = ${Description}
            "NumPorts" = ${NumPorts}
            "OutOfBandIpAddress" = ${OutOfBandIpAddress}
            "OutOfBandIpGateway" = ${OutOfBandIpGateway}
            "Presence" = ${Presence}
            "SlotId" = ${SlotId}
            "State" = ${State}
            "SwitchId" = ${SwitchId}
            "FcPortChannels" = ${FcPortChannels}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "NetworkElement" = ${NetworkElement}
            "PortChannels" = ${PortChannels}
            "PortGroups" = ${PortGroups}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }

}

