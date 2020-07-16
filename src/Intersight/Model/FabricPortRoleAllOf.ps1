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

Definition of the list of properties defined in 'fabric.PortRole', excluding properties defined in parent classes.

.PARAMETER AggregatePortId
Breakout port Identifier of the Switch Interface.
.PARAMETER PortId
Port Identifier of the Switch/FEX/Chassis Interface.
.PARAMETER SlotId
Slot Identifier of the Switch/FEX/Chassis Interface.
.PARAMETER PortPolicy
No description available.
.OUTPUTS

FabricPortRoleAllOf<PSCustomObject>
#>

function Initialize-IntersightFabricPortRoleAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${AggregatePortId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${PortId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${SlotId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PortPolicy}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightFabricPortRoleAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$AggregatePortId -and $AggregatePortId -gt 108) {
          throw "invalid value for 'AggregatePortId', must be smaller than or equal to 108."
        }

        if (!$AggregatePortId -and $AggregatePortId -lt 1) {
          throw "invalid value for 'AggregatePortId', must be greater than or equal to 1."
        }

        if (!$PortId -and $PortId -gt 108) {
          throw "invalid value for 'PortId', must be smaller than or equal to 108."
        }

        if (!$PortId -and $PortId -lt 1) {
          throw "invalid value for 'PortId', must be greater than or equal to 1."
        }

        if (!$SlotId -and $SlotId -gt 5) {
          throw "invalid value for 'SlotId', must be smaller than or equal to 5."
        }

        if (!$SlotId -and $SlotId -lt 1) {
          throw "invalid value for 'SlotId', must be greater than or equal to 1."
        }

        
        $PSO = [PSCustomObject]@{
            "AggregatePortId" = ${AggregatePortId}
            "PortId" = ${PortId}
            "SlotId" = ${SlotId}
            "PortPolicy" = ${PortPolicy}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FabricPortRoleAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to FabricPortRoleAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FabricPortRoleAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToFabricPortRoleAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightFabricPortRoleAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightFabricPortRoleAllOf
        $AllProperties = ("AggregatePortId", "PortId", "SlotId", "PortPolicy")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AggregatePortId"))) { #optional property not found
            $AggregatePortId = $null
        } else {
            $AggregatePortId = $JsonParameters.PSobject.Properties["AggregatePortId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortId"))) { #optional property not found
            $PortId = $null
        } else {
            $PortId = $JsonParameters.PSobject.Properties["PortId"].value
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
            "AggregatePortId" = ${AggregatePortId}
            "PortId" = ${PortId}
            "SlotId" = ${SlotId}
            "PortPolicy" = ${PortPolicy}
        }

        return $PSO
    }

}

