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

Intersight representation of a Cisco PSIRT (https://tools.cisco.com/security/center/publicationListing.x) advisory definition. It includes the description of the security advisory and a corresponding reference to the published advisory. It also includes the Intersight data sources needed to evaluate the applicability of this advisory for relevant Intersight managed objects. A PSIRT definition is evaluated against all managed object referenced using the included data sources. Only Cisco TAC and Intersight devops engineers have the ability to create PSIRT definitions in Intersight.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Moid
The unique identifier of this Managed Object instance.
.PARAMETER Owners
No description available.
.PARAMETER Tags
No description available.
.PARAMETER VersionContext
No description available.
.PARAMETER Var0ClusterReplicationNetworkPolicy
No description available.
.PARAMETER Parent
No description available.
.PARAMETER Description
Brief description of the advisory details.
.PARAMETER Name
A user defined name for the Intersight Advisory.
.PARAMETER Severity
No description available.
.PARAMETER State
Current state of the advisory. * `ready` - Advisory has been evaluated. The affected devices would be analyzed and corresponding advisory instances would be created. * `evaluating` - Advisory is currently under evaluation. The affected devices would be analyzed but no advisory instances wouldbe created. The results of the analysis would be made available to Intersight engineering for evaluation and validation.
.PARAMETER Actions
No description available.
.PARAMETER AdvisoryId
Cisco generated identifier for the published security advisory.
.PARAMETER ApiDataSources
No description available.
.PARAMETER BaseScore
CVSS version 3 base score for the security Advisory.
.PARAMETER CveIds
No description available.
.PARAMETER DatePublished
Date when the security advisory was first published by Cisco.
.PARAMETER DateUpdated
Date when the security advisory was last updated by Cisco.
.PARAMETER EnvironmentalScore
CVSS version 3 environmental score for the security Advisory.
.PARAMETER ExternalUrl
A link to an external URL describing security Advisory in more details.
.PARAMETER Recommendation
Recommended action to resolve the security advisory.
.PARAMETER Status
Cisco assigned status of the published advisory based on whether the investigation is complete or on-going. * `interim` - The Cisco investigation for the advisory is ongoing. Cisco will issue revisions to the advisory when additional information, including fixed software release data, becomes available. * `final` - Cisco has completed its evaluation of the vulnerability described in the advisory. There will be no further updates unless there is a material change in the nature of the vulnerability.
.PARAMETER TemporalScore
CVSS version 3 temporal score for the security Advisory.
.PARAMETER Version
Cisco assigned advisory version after latest revision.
.PARAMETER Workaround
Workarounds available for the advisory.
.PARAMETER Organization
No description available.
.OUTPUTS

TamSecurityAdvisory<PSCustomObject>
#>

function Initialize-IntersightTamSecurityAdvisory {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("tam.SecurityAdvisory")]
        [String]
        ${ClassId} = "tam.SecurityAdvisory",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("tam.SecurityAdvisory")]
        [String]
        ${ObjectType} = "tam.SecurityAdvisory",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Moid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Owners},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Tags},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VersionContext},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Var0ClusterReplicationNetworkPolicy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Parent},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Severity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ready", "evaluating")]
        [String]
        ${State} = "ready",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Actions},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AdvisoryId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ApiDataSources},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${BaseScore},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${CveIds},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${DatePublished},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${DateUpdated},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${EnvironmentalScore},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^(?:http(s)?://)?[\w.-]+(?:\.[\w\.-]+)+[\w\-\._~:/?#[\]@!\$&'\(\)\*\+,;=.]+$")]
        [String]
        ${ExternalUrl},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Recommendation},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("interim", "final")]
        [String]
        ${Status} = "interim",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${TemporalScore},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Version},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Workaround},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightTamSecurityAdvisory' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if ($BaseScore -and $BaseScore -gt 10.0) {
          throw "invalid value for 'BaseScore', must be smaller than or equal to 10.0."
        }

        if ($BaseScore -and $BaseScore -lt 0.0) {
          throw "invalid value for 'BaseScore', must be greater than or equal to 0.0."
        }

        if ($EnvironmentalScore -and $EnvironmentalScore -gt 10.0) {
          throw "invalid value for 'EnvironmentalScore', must be smaller than or equal to 10.0."
        }

        if ($EnvironmentalScore -and $EnvironmentalScore -lt 0.0) {
          throw "invalid value for 'EnvironmentalScore', must be greater than or equal to 0.0."
        }

        if ($TemporalScore -and $TemporalScore -gt 10.0) {
          throw "invalid value for 'TemporalScore', must be smaller than or equal to 10.0."
        }

        if ($TemporalScore -and $TemporalScore -lt 0.0) {
          throw "invalid value for 'TemporalScore', must be greater than or equal to 0.0."
        }

        
        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "_0_ClusterReplicationNetworkPolicy" = ${Var0ClusterReplicationNetworkPolicy}
            "Parent" = ${Parent}
            "Description" = ${Description}
            "Name" = ${Name}
            "Severity" = ${Severity}
            "State" = ${State}
            "Actions" = ${Actions}
            "AdvisoryId" = ${AdvisoryId}
            "ApiDataSources" = ${ApiDataSources}
            "BaseScore" = ${BaseScore}
            "CveIds" = ${CveIds}
            "DatePublished" = ${DatePublished}
            "DateUpdated" = ${DateUpdated}
            "EnvironmentalScore" = ${EnvironmentalScore}
            "ExternalUrl" = ${ExternalUrl}
            "Recommendation" = ${Recommendation}
            "Status" = ${Status}
            "TemporalScore" = ${TemporalScore}
            "Version" = ${Version}
            "Workaround" = ${Workaround}
            "Organization" = ${Organization}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TamSecurityAdvisory<PSCustomObject>

.DESCRIPTION

Convert from JSON to TamSecurityAdvisory<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TamSecurityAdvisory<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToTamSecurityAdvisory {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightTamSecurityAdvisory' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightTamSecurityAdvisory
        $AllProperties = ("ClassId", "ObjectType", "AccountMoid", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "Owners", "SharedScope", "Tags", "VersionContext", "_0_ClusterReplicationNetworkPolicy", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "Description", "Name", "Severity", "State", "Actions", "AdvisoryId", "ApiDataSources", "BaseScore", "CveIds", "DatePublished", "DateUpdated", "EnvironmentalScore", "ExternalUrl", "Recommendation", "Status", "TemporalScore", "Version", "Workaround", "Organization")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AccountMoid"))) { #optional property not found
            $AccountMoid = $null
        } else {
            $AccountMoid = $JsonParameters.PSobject.Properties["AccountMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CreateTime"))) { #optional property not found
            $CreateTime = $null
        } else {
            $CreateTime = $JsonParameters.PSobject.Properties["CreateTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DomainGroupMoid"))) { #optional property not found
            $DomainGroupMoid = $null
        } else {
            $DomainGroupMoid = $JsonParameters.PSobject.Properties["DomainGroupMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ModTime"))) { #optional property not found
            $ModTime = $null
        } else {
            $ModTime = $JsonParameters.PSobject.Properties["ModTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Moid"))) { #optional property not found
            $Moid = $null
        } else {
            $Moid = $JsonParameters.PSobject.Properties["Moid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Owners"))) { #optional property not found
            $Owners = $null
        } else {
            $Owners = $JsonParameters.PSobject.Properties["Owners"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SharedScope"))) { #optional property not found
            $SharedScope = $null
        } else {
            $SharedScope = $JsonParameters.PSobject.Properties["SharedScope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["Tags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VersionContext"))) { #optional property not found
            $VersionContext = $null
        } else {
            $VersionContext = $JsonParameters.PSobject.Properties["VersionContext"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_0_ClusterReplicationNetworkPolicy"))) { #optional property not found
            $Var0ClusterReplicationNetworkPolicy = $null
        } else {
            $Var0ClusterReplicationNetworkPolicy = $JsonParameters.PSobject.Properties["_0_ClusterReplicationNetworkPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Ancestors"))) { #optional property not found
            $Ancestors = $null
        } else {
            $Ancestors = $JsonParameters.PSobject.Properties["Ancestors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Parent"))) { #optional property not found
            $Parent = $null
        } else {
            $Parent = $JsonParameters.PSobject.Properties["Parent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PermissionResources"))) { #optional property not found
            $PermissionResources = $null
        } else {
            $PermissionResources = $JsonParameters.PSobject.Properties["PermissionResources"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DisplayNames"))) { #optional property not found
            $DisplayNames = $null
        } else {
            $DisplayNames = $JsonParameters.PSobject.Properties["DisplayNames"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Severity"))) { #optional property not found
            $Severity = $null
        } else {
            $Severity = $JsonParameters.PSobject.Properties["Severity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "State"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["State"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Actions"))) { #optional property not found
            $Actions = $null
        } else {
            $Actions = $JsonParameters.PSobject.Properties["Actions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdvisoryId"))) { #optional property not found
            $AdvisoryId = $null
        } else {
            $AdvisoryId = $JsonParameters.PSobject.Properties["AdvisoryId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ApiDataSources"))) { #optional property not found
            $ApiDataSources = $null
        } else {
            $ApiDataSources = $JsonParameters.PSobject.Properties["ApiDataSources"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BaseScore"))) { #optional property not found
            $BaseScore = $null
        } else {
            $BaseScore = $JsonParameters.PSobject.Properties["BaseScore"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CveIds"))) { #optional property not found
            $CveIds = $null
        } else {
            $CveIds = $JsonParameters.PSobject.Properties["CveIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DatePublished"))) { #optional property not found
            $DatePublished = $null
        } else {
            $DatePublished = $JsonParameters.PSobject.Properties["DatePublished"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DateUpdated"))) { #optional property not found
            $DateUpdated = $null
        } else {
            $DateUpdated = $JsonParameters.PSobject.Properties["DateUpdated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EnvironmentalScore"))) { #optional property not found
            $EnvironmentalScore = $null
        } else {
            $EnvironmentalScore = $JsonParameters.PSobject.Properties["EnvironmentalScore"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExternalUrl"))) { #optional property not found
            $ExternalUrl = $null
        } else {
            $ExternalUrl = $JsonParameters.PSobject.Properties["ExternalUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Recommendation"))) { #optional property not found
            $Recommendation = $null
        } else {
            $Recommendation = $JsonParameters.PSobject.Properties["Recommendation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["Status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TemporalScore"))) { #optional property not found
            $TemporalScore = $null
        } else {
            $TemporalScore = $JsonParameters.PSobject.Properties["TemporalScore"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Version"))) { #optional property not found
            $Version = $null
        } else {
            $Version = $JsonParameters.PSobject.Properties["Version"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Workaround"))) { #optional property not found
            $Workaround = $null
        } else {
            $Workaround = $JsonParameters.PSobject.Properties["Workaround"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AccountMoid" = ${AccountMoid}
            "CreateTime" = ${CreateTime}
            "DomainGroupMoid" = ${DomainGroupMoid}
            "ModTime" = ${ModTime}
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "SharedScope" = ${SharedScope}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "_0_ClusterReplicationNetworkPolicy" = ${Var0ClusterReplicationNetworkPolicy}
            "Ancestors" = ${Ancestors}
            "Parent" = ${Parent}
            "PermissionResources" = ${PermissionResources}
            "DisplayNames" = ${DisplayNames}
            "Description" = ${Description}
            "Name" = ${Name}
            "Severity" = ${Severity}
            "State" = ${State}
            "Actions" = ${Actions}
            "AdvisoryId" = ${AdvisoryId}
            "ApiDataSources" = ${ApiDataSources}
            "BaseScore" = ${BaseScore}
            "CveIds" = ${CveIds}
            "DatePublished" = ${DatePublished}
            "DateUpdated" = ${DateUpdated}
            "EnvironmentalScore" = ${EnvironmentalScore}
            "ExternalUrl" = ${ExternalUrl}
            "Recommendation" = ${Recommendation}
            "Status" = ${Status}
            "TemporalScore" = ${TemporalScore}
            "Version" = ${Version}
            "Workaround" = ${Workaround}
            "Organization" = ${Organization}
        }

        return $PSO
    }

}

