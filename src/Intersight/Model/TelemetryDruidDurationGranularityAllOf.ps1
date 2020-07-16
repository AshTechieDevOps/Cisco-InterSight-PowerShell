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

No description available.

.PARAMETER Duration
The duration in milliseconds.
.PARAMETER Origin
An optional value specifying when to start counting time buckets from. The default value is 1970-01-01T00:00:00Z.
.OUTPUTS

TelemetryDruidDurationGranularityAllOf<PSCustomObject>
#>

function Initialize-IntersightTelemetryDruidDurationGranularityAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${Duration},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Origin}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightTelemetryDruidDurationGranularityAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Duration) {
            throw "invalid value for 'Duration', 'Duration' cannot be null."
        }

        
        $PSO = [PSCustomObject]@{
            "duration" = ${Duration}
            "origin" = ${Origin}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TelemetryDruidDurationGranularityAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to TelemetryDruidDurationGranularityAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TelemetryDruidDurationGranularityAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToTelemetryDruidDurationGranularityAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightTelemetryDruidDurationGranularityAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightTelemetryDruidDurationGranularityAllOf
        $AllProperties = ("duration", "origin")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property `duration` missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "duration"))) {
            throw "Error! JSON cannot be serialized due to the required property `duration` missing."
        } else {
            $Duration = $JsonParameters.PSobject.Properties["duration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "origin"))) { #optional property not found
            $Origin = $null
        } else {
            $Origin = $JsonParameters.PSobject.Properties["origin"].value
        }

        $PSO = [PSCustomObject]@{
            "duration" = ${Duration}
            "origin" = ${Origin}
        }

        return $PSO
    }

}

