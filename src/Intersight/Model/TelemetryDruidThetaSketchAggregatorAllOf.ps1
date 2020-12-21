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

.PARAMETER Name
A String for the output (result) name of the calculation.
.PARAMETER FieldName
A String for the name of the aggregator used at ingestion time.
.PARAMETER Size
Must be a power of 2. Internally, size refers to the maximum number of entries sketch object will retain. Higher size means higher accuracy but more space to store sketches. Note that after you index with a particular size, druid will persist sketch in segments and you will use size greater or equal to that at query time. In general, We recommend just sticking to default size.
.OUTPUTS

TelemetryDruidThetaSketchAggregatorAllOf<PSCustomObject>
#>

function Initialize-IntersightTelemetryDruidThetaSketchAggregatorAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FieldName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Size} = 16384
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightTelemetryDruidThetaSketchAggregatorAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$FieldName) {
            throw "invalid value for 'FieldName', 'FieldName' cannot be null."
        }

        
        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "fieldName" = ${FieldName}
            "size" = ${Size}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TelemetryDruidThetaSketchAggregatorAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to TelemetryDruidThetaSketchAggregatorAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TelemetryDruidThetaSketchAggregatorAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToTelemetryDruidThetaSketchAggregatorAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightTelemetryDruidThetaSketchAggregatorAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightTelemetryDruidThetaSketchAggregatorAllOf
        $AllProperties = ("name", "fieldName", "size")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property `name` missing."
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "size"))) { #optional property not found
            $Size = $null
        } else {
            $Size = $JsonParameters.PSobject.Properties["size"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "fieldName" = ${FieldName}
            "size" = ${Size}
        }

        return $PSO
    }

}

