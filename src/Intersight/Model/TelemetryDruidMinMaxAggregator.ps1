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

Computes the min or max of values.

.PARAMETER Type
The aggregator type.
.PARAMETER Name
Output name for the min/max value.
.PARAMETER FieldName
Name of the metric column.
.OUTPUTS

TelemetryDruidMinMaxAggregator<PSCustomObject>
#>

function Initialize-IntersightTelemetryDruidMinMaxAggregator {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("count", "longSum", "doubleSum", "floatSum", "doubleMin", "doubleMax", "floatMin", "floatMax", "longMin", "longMax", "doubleFirst", "doubleLast", "floatFirst", "floatLast", "longFirst", "longLast", "stringFirst", "stringLast", "doubleAny", "floatAny", "longAny", "stringAny", "thetaSketch", "filtered")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FieldName}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightTelemetryDruidMinMaxAggregator' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$FieldName) {
            throw "invalid value for 'FieldName', 'FieldName' cannot be null."
        }

        
        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "name" = ${Name}
            "fieldName" = ${FieldName}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TelemetryDruidMinMaxAggregator<PSCustomObject>

.DESCRIPTION

Convert from JSON to TelemetryDruidMinMaxAggregator<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TelemetryDruidMinMaxAggregator<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToTelemetryDruidMinMaxAggregator {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightTelemetryDruidMinMaxAggregator' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightTelemetryDruidMinMaxAggregator
        $AllProperties = ("type", "name", "fieldName")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property `name` missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fieldName"))) {
            throw "Error! JSON cannot be serialized due to the required property `fieldName` missing."
        } else {
            $FieldName = $JsonParameters.PSobject.Properties["fieldName"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "name" = ${Name}
            "fieldName" = ${FieldName}
        }

        return $PSO
    }

}

