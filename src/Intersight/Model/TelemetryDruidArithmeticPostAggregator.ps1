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

The arithmetic post-aggregator applies the provided function to the given fields from left to right. The fields can be aggregators or other post aggregators. Supported functions are +, -, *, /, and quotient. / division always returns 0 if dividing by 0, regardless of the numerator. quotient division behaves like regular floating point division.

.PARAMETER Type
The post-aggregator type.
.PARAMETER Name
Output name for the minimum/maximum timestamp value.
.PARAMETER Fn
null
.PARAMETER Fields
null
.PARAMETER Ordering
Arithmetic post-aggregators may specify an ordering, which defines the order of resulting values when sorting results. This can be useful for topN queries for instance. If no ordering (or null) is specified, the default floating point ordering is used. numericFirst ordering always returns finite values first, followed by NaN, and infinite values last.
.OUTPUTS

TelemetryDruidArithmeticPostAggregator<PSCustomObject>
#>

function Initialize-IntersightTelemetryDruidArithmeticPostAggregator {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("arithmetic", "fieldAccess", "finalizingFieldAccess", "constant", "doubleGreatest", "longGreatest", "doubleLeast", "longLeast", "hyperUniqueCardinality", "thetaSketchEstimate", "thetaSketchSetOp")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("+", "-", "*", "/", "quotient")]
        [String]
        ${Fn},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Fields},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Ordering}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightTelemetryDruidArithmeticPostAggregator' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        
        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "name" = ${Name}
            "fn" = ${Fn}
            "fields" = ${Fields}
            "ordering" = ${Ordering}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TelemetryDruidArithmeticPostAggregator<PSCustomObject>

.DESCRIPTION

Convert from JSON to TelemetryDruidArithmeticPostAggregator<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TelemetryDruidArithmeticPostAggregator<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToTelemetryDruidArithmeticPostAggregator {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightTelemetryDruidArithmeticPostAggregator' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightTelemetryDruidArithmeticPostAggregator
        $AllProperties = ("type", "name", "fn", "fields", "ordering")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property `type` missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property `type` missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fn"))) { #optional property not found
            $Fn = $null
        } else {
            $Fn = $JsonParameters.PSobject.Properties["fn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fields"))) { #optional property not found
            $Fields = $null
        } else {
            $Fields = $JsonParameters.PSobject.Properties["fields"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ordering"))) { #optional property not found
            $Ordering = $null
        } else {
            $Ordering = $JsonParameters.PSobject.Properties["ordering"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "name" = ${Name}
            "fn" = ${Fn}
            "fields" = ${Fields}
            "ordering" = ${Ordering}
        }

        return $PSO
    }

}

