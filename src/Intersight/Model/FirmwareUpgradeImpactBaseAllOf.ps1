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

Definition of the list of properties defined in 'firmware.UpgradeImpactBase', excluding properties defined in parent classes.

.PARAMETER Components
No description available.
.PARAMETER ComputationState
Captures the status of an upgrade impact calculation. Indicates whether the calculation is complete, in progress or the calculation is impossible due to the absence of the target image on the endpoint.
.PARAMETER ExcludeComponents
No description available.
.PARAMETER Impacts
No description available.
.PARAMETER Summary
The summary on the component or components getting impacted by the upgrade.
.OUTPUTS

FirmwareUpgradeImpactBaseAllOf<PSCustomObject>
#>

function Initialize-IntersightFirmwareUpgradeImpactBaseAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ALL", "None", "NXOS", "IOM", "PSU", "CIMC", "BIOS", "PCIE", "Drive", "DIMM", "BoardController", "StorageController", "HBA", "GPU", "SasExpander", "MSwitch", "CMC")]
        [String[]]
        ${Components},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Inprogress", "Completed", "Unavailable")]
        [String]
        ${ComputationState} = "Inprogress",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ALL", "None", "NXOS", "IOM", "PSU", "CIMC", "BIOS", "PCIE", "Drive", "DIMM", "BoardController", "StorageController", "HBA", "GPU", "SasExpander", "MSwitch", "CMC")]
        [String[]]
        ${ExcludeComponents},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Impacts},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Basic", "Detail")]
        [String]
        ${Summary} = "Basic"
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightFirmwareUpgradeImpactBaseAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Components" = ${Components}
            "ComputationState" = ${ComputationState}
            "ExcludeComponents" = ${ExcludeComponents}
            "Impacts" = ${Impacts}
            "Summary" = ${Summary}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FirmwareUpgradeImpactBaseAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to FirmwareUpgradeImpactBaseAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FirmwareUpgradeImpactBaseAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToFirmwareUpgradeImpactBaseAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightFirmwareUpgradeImpactBaseAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightFirmwareUpgradeImpactBaseAllOf
        $AllProperties = ("Components", "ComputationState", "ExcludeComponents", "Impacts", "Summary")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Components"))) { #optional property not found
            $Components = $null
        } else {
            $Components = $JsonParameters.PSobject.Properties["Components"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ComputationState"))) { #optional property not found
            $ComputationState = $null
        } else {
            $ComputationState = $JsonParameters.PSobject.Properties["ComputationState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExcludeComponents"))) { #optional property not found
            $ExcludeComponents = $null
        } else {
            $ExcludeComponents = $JsonParameters.PSobject.Properties["ExcludeComponents"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Impacts"))) { #optional property not found
            $Impacts = $null
        } else {
            $Impacts = $JsonParameters.PSobject.Properties["Impacts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Summary"))) { #optional property not found
            $Summary = $null
        } else {
            $Summary = $JsonParameters.PSobject.Properties["Summary"].value
        }

        $PSO = [PSCustomObject]@{
            "Components" = ${Components}
            "ComputationState" = ${ComputationState}
            "ExcludeComponents" = ${ExcludeComponents}
            "Impacts" = ${Impacts}
            "Summary" = ${Summary}
        }

        return $PSO
    }

}

