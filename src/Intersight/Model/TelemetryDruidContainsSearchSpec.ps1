#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2021-02-05T15:05:56Z.
# Version: 1.0.9-3562
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

The specification for a Druid 'insensitive_contains' search

.PARAMETER Type
null
.PARAMETER Value
The value to match.  If any part of a dimension value contains the value specified in this search query spec, regardless of case, a ""match"" occurs.
.PARAMETER CaseSensitive
Whether or not search is case sensitive
.OUTPUTS

TelemetryDruidContainsSearchSpec<PSCustomObject>
#>

function Initialize-IntersightTelemetryDruidContainsSearchSpec {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("insensitive_contains", "fragment", "contains", "regex")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${CaseSensitive}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightTelemetryDruidContainsSearchSpec' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Value) {
            throw "invalid value for 'Value', 'Value' cannot be null."
        }

        
        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "value" = ${Value}
            "case_sensitive" = ${CaseSensitive}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TelemetryDruidContainsSearchSpec<PSCustomObject>

.DESCRIPTION

Convert from JSON to TelemetryDruidContainsSearchSpec<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TelemetryDruidContainsSearchSpec<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToTelemetryDruidContainsSearchSpec {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightTelemetryDruidContainsSearchSpec' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightTelemetryDruidContainsSearchSpec
        $AllProperties = ("type", "value", "case_sensitive")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) {
            throw "Error! JSON cannot be serialized due to the required property 'value' missing."
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "case_sensitive"))) { #optional property not found
            $CaseSensitive = $null
        } else {
            $CaseSensitive = $JsonParameters.PSobject.Properties["case_sensitive"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "value" = ${Value}
            "case_sensitive" = ${CaseSensitive}
        }

        return $PSO
    }

}

