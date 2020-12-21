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

No description available.

.PARAMETER Count
The total number of 'hcl.HyperflexSoftwareCompatibilityInfo' resources matching the request, accross all pages. The 'Count' attribute is included when the HTTP GET request includes the '$inlinecount' parameter.
.PARAMETER Results
The array of 'hcl.HyperflexSoftwareCompatibilityInfo' resources matching the request.
.OUTPUTS

HclHyperflexSoftwareCompatibilityInfoListAllOf<PSCustomObject>
#>

function Initialize-IntersightHclHyperflexSoftwareCompatibilityInfoListAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Results}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightHclHyperflexSoftwareCompatibilityInfoListAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Count" = ${Count}
            "Results" = ${Results}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HclHyperflexSoftwareCompatibilityInfoListAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to HclHyperflexSoftwareCompatibilityInfoListAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HclHyperflexSoftwareCompatibilityInfoListAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToHclHyperflexSoftwareCompatibilityInfoListAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightHclHyperflexSoftwareCompatibilityInfoListAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightHclHyperflexSoftwareCompatibilityInfoListAllOf
        $AllProperties = ("Count", "Results")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Count"))) { #optional property not found
            $Count = $null
        } else {
            $Count = $JsonParameters.PSobject.Properties["Count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Results"))) { #optional property not found
            $Results = $null
        } else {
            $Results = $JsonParameters.PSobject.Properties["Results"].value
        }

        $PSO = [PSCustomObject]@{
            "Count" = ${Count}
            "Results" = ${Results}
        }

        return $PSO
    }

}

