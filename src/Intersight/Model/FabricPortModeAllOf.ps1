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

Definition of the list of properties defined in 'fabric.PortMode', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER CustomMode
Custom Port Mode specified for the port range. * `FibreChannel` - Fibre Channel Port Types. * `BreakoutEthernet10G` - Breakout Ethernet 10G Port Type. * `BreakoutEthernet25G` - Breakout Ethernet 25G Port Type.
.PARAMETER PortIdEnd
Ending range of the Port Identifier.
.PARAMETER PortIdStart
Starting range of the Port Identifier.
.PARAMETER SlotId
Slot Identifier of the switch.
.PARAMETER PortPolicy
No description available.
.OUTPUTS

FabricPortModeAllOf<PSCustomObject>
#>

function Initialize-IntersightFabricPortModeAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("fabric.PortMode")]
        [String]
        ${ClassId} = "fabric.PortMode",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("fabric.PortMode")]
        [String]
        ${ObjectType} = "fabric.PortMode",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("FibreChannel", "BreakoutEthernet10G", "BreakoutEthernet25G")]
        [String]
        ${CustomMode} = "FibreChannel",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${PortIdEnd},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${PortIdStart},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${SlotId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PortPolicy}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightFabricPortModeAllOf' | Write-Debug
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
            "CustomMode" = ${CustomMode}
            "PortIdEnd" = ${PortIdEnd}
            "PortIdStart" = ${PortIdStart}
            "SlotId" = ${SlotId}
            "PortPolicy" = ${PortPolicy}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FabricPortModeAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to FabricPortModeAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FabricPortModeAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToFabricPortModeAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightFabricPortModeAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightFabricPortModeAllOf
        $AllProperties = ("ClassId", "ObjectType", "CustomMode", "PortIdEnd", "PortIdStart", "SlotId", "PortPolicy")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CustomMode"))) { #optional property not found
            $CustomMode = $null
        } else {
            $CustomMode = $JsonParameters.PSobject.Properties["CustomMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortIdEnd"))) { #optional property not found
            $PortIdEnd = $null
        } else {
            $PortIdEnd = $JsonParameters.PSobject.Properties["PortIdEnd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortIdStart"))) { #optional property not found
            $PortIdStart = $null
        } else {
            $PortIdStart = $JsonParameters.PSobject.Properties["PortIdStart"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SlotId"))) { #optional property not found
            $SlotId = $null
        } else {
            $SlotId = $JsonParameters.PSobject.Properties["SlotId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortPolicy"))) { #optional property not found
            $PortPolicy = $null
        } else {
            $PortPolicy = $JsonParameters.PSobject.Properties["PortPolicy"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "CustomMode" = ${CustomMode}
            "PortIdEnd" = ${PortIdEnd}
            "PortIdStart" = ${PortIdStart}
            "SlotId" = ${SlotId}
            "PortPolicy" = ${PortPolicy}
        }

        return $PSO
    }

}

