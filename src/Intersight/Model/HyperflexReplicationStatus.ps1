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

Replication status information for this particular snapshot.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER VarError
No description available.
.PARAMETER PackEntityReference
No description available.
.PARAMETER RpoStatus
No description available.
.OUTPUTS

HyperflexReplicationStatus<PSCustomObject>
#>

function Initialize-IntersightHyperflexReplicationStatus {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.ReplicationStatus")]
        [String]
        ${ClassId} = "hyperflex.ReplicationStatus",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.ReplicationStatus")]
        [String]
        ${ObjectType} = "hyperflex.ReplicationStatus",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarError},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PackEntityReference},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RpoStatus}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightHyperflexReplicationStatus' | Write-Debug
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
            "Error" = ${VarError}
            "PackEntityReference" = ${PackEntityReference}
            "RpoStatus" = ${RpoStatus}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HyperflexReplicationStatus<PSCustomObject>

.DESCRIPTION

Convert from JSON to HyperflexReplicationStatus<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HyperflexReplicationStatus<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToHyperflexReplicationStatus {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightHyperflexReplicationStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightHyperflexReplicationStatus
        $AllProperties = ("ClassId", "ObjectType", "BytesReplicated", "EndTime", "Error", "PackEntityReference", "PctComplete", "RpoStatus", "StartTime", "Status")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'ClassId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClassId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'ClassId' missing."
        } else {
            $ClassId = $JsonParameters.PSobject.Properties["ClassId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ObjectType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'ObjectType' missing."
        } else {
            $ObjectType = $JsonParameters.PSobject.Properties["ObjectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BytesReplicated"))) { #optional property not found
            $BytesReplicated = $null
        } else {
            $BytesReplicated = $JsonParameters.PSobject.Properties["BytesReplicated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndTime"))) { #optional property not found
            $EndTime = $null
        } else {
            $EndTime = $JsonParameters.PSobject.Properties["EndTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Error"))) { #optional property not found
            $VarError = $null
        } else {
            $VarError = $JsonParameters.PSobject.Properties["Error"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PackEntityReference"))) { #optional property not found
            $PackEntityReference = $null
        } else {
            $PackEntityReference = $JsonParameters.PSobject.Properties["PackEntityReference"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PctComplete"))) { #optional property not found
            $PctComplete = $null
        } else {
            $PctComplete = $JsonParameters.PSobject.Properties["PctComplete"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RpoStatus"))) { #optional property not found
            $RpoStatus = $null
        } else {
            $RpoStatus = $JsonParameters.PSobject.Properties["RpoStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StartTime"))) { #optional property not found
            $StartTime = $null
        } else {
            $StartTime = $JsonParameters.PSobject.Properties["StartTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["Status"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "BytesReplicated" = ${BytesReplicated}
            "EndTime" = ${EndTime}
            "Error" = ${VarError}
            "PackEntityReference" = ${PackEntityReference}
            "PctComplete" = ${PctComplete}
            "RpoStatus" = ${RpoStatus}
            "StartTime" = ${StartTime}
            "Status" = ${Status}
        }

        return $PSO
    }

}

