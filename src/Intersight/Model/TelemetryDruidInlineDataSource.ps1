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

Inline datasources allow you to query a small amount of data that is embedded in the query itself. They are useful when you want to write a query on a small amount of data without loading it first. They are also useful as inputs into a join. Druid also uses them internally to handle subqueries that need to be inlined on the Broker. There are two fields in an inline datasource, an array of columnNames and an array of rows. Each row is an array that must be exactly as long as the list of columnNames. The first element in each row corresponds to the first column in columnNames, and so on.

.PARAMETER Type
The type of data source.
.PARAMETER ColumnNames
the column names.
.PARAMETER Rows
an array of rows.
.OUTPUTS

TelemetryDruidInlineDataSource<PSCustomObject>
#>

function Initialize-IntersightTelemetryDruidInlineDataSource {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("table", "union", "query")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ColumnNames},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[][]]
        ${Rows}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightTelemetryDruidInlineDataSource' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$ColumnNames) {
            throw "invalid value for 'ColumnNames', 'ColumnNames' cannot be null."
        }

        if (!$Rows) {
            throw "invalid value for 'Rows', 'Rows' cannot be null."
        }

        
        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "columnNames" = ${ColumnNames}
            "rows" = ${Rows}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TelemetryDruidInlineDataSource<PSCustomObject>

.DESCRIPTION

Convert from JSON to TelemetryDruidInlineDataSource<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TelemetryDruidInlineDataSource<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToTelemetryDruidInlineDataSource {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightTelemetryDruidInlineDataSource' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightTelemetryDruidInlineDataSource
        $AllProperties = ("type", "columnNames", "rows")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "columnNames"))) {
            throw "Error! JSON cannot be serialized due to the required property 'columnNames' missing."
        } else {
            $ColumnNames = $JsonParameters.PSobject.Properties["columnNames"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rows"))) {
            throw "Error! JSON cannot be serialized due to the required property 'rows' missing."
        } else {
            $Rows = $JsonParameters.PSobject.Properties["rows"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "columnNames" = ${ColumnNames}
            "rows" = ${Rows}
        }

        return $PSO
    }

}

