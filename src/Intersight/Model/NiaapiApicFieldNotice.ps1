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

The field notice reporting bug and related software or hardware for APIC.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data. The enum values provides the list of concrete types that can be instantiated from this abstract type.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property. The enum values provides the list of concrete types that can be instantiated from this abstract type.
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
.PARAMETER Bugid
Bug Id associated with this notice.
.PARAMETER FieldNoticeDesc
Field notice Description.
.PARAMETER FieldNoticeId
Fieldnotice Id of this notice.
.PARAMETER FieldNoticeUrl
Field notice URL link to the notice webpage.
.PARAMETER Headline
The headline of this field notice.
.PARAMETER Hwpid
Hardware PID for affected models.
.PARAMETER RevisionInfo
No description available.
.PARAMETER SwRelease
Software Release number for affected versions.
.PARAMETER WorkaroundUrl
URL of workaround of this notice.
.OUTPUTS

NiaapiApicFieldNotice<PSCustomObject>
#>

function Initialize-IntersightNiaapiApicFieldNotice {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("niaapi.ApicFieldNotice", "niaapi.DcnmFieldNotice")]
        [String]
        ${ClassId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("niaapi.ApicFieldNotice", "niaapi.DcnmFieldNotice")]
        [String]
        ${ObjectType},
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
        ${Bugid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FieldNoticeDesc},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FieldNoticeId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FieldNoticeUrl},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Headline},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Hwpid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${RevisionInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SwRelease},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WorkaroundUrl}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightNiaapiApicFieldNotice' | Write-Debug
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
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "_0_ClusterReplicationNetworkPolicy" = ${Var0ClusterReplicationNetworkPolicy}
            "Parent" = ${Parent}
            "Bugid" = ${Bugid}
            "FieldNoticeDesc" = ${FieldNoticeDesc}
            "FieldNoticeId" = ${FieldNoticeId}
            "FieldNoticeUrl" = ${FieldNoticeUrl}
            "Headline" = ${Headline}
            "Hwpid" = ${Hwpid}
            "RevisionInfo" = ${RevisionInfo}
            "SwRelease" = ${SwRelease}
            "WorkaroundUrl" = ${WorkaroundUrl}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NiaapiApicFieldNotice<PSCustomObject>

.DESCRIPTION

Convert from JSON to NiaapiApicFieldNotice<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NiaapiApicFieldNotice<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToNiaapiApicFieldNotice {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightNiaapiApicFieldNotice' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightNiaapiApicFieldNotice
        $AllProperties = ("ClassId", "ObjectType", "AccountMoid", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "Owners", "SharedScope", "Tags", "VersionContext", "_0_ClusterReplicationNetworkPolicy", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "Bugid", "FieldNoticeDesc", "FieldNoticeId", "FieldNoticeUrl", "Headline", "Hwpid", "RevisionInfo", "SwRelease", "WorkaroundUrl")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Bugid"))) { #optional property not found
            $Bugid = $null
        } else {
            $Bugid = $JsonParameters.PSobject.Properties["Bugid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FieldNoticeDesc"))) { #optional property not found
            $FieldNoticeDesc = $null
        } else {
            $FieldNoticeDesc = $JsonParameters.PSobject.Properties["FieldNoticeDesc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FieldNoticeId"))) { #optional property not found
            $FieldNoticeId = $null
        } else {
            $FieldNoticeId = $JsonParameters.PSobject.Properties["FieldNoticeId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FieldNoticeUrl"))) { #optional property not found
            $FieldNoticeUrl = $null
        } else {
            $FieldNoticeUrl = $JsonParameters.PSobject.Properties["FieldNoticeUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Headline"))) { #optional property not found
            $Headline = $null
        } else {
            $Headline = $JsonParameters.PSobject.Properties["Headline"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Hwpid"))) { #optional property not found
            $Hwpid = $null
        } else {
            $Hwpid = $JsonParameters.PSobject.Properties["Hwpid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RevisionInfo"))) { #optional property not found
            $RevisionInfo = $null
        } else {
            $RevisionInfo = $JsonParameters.PSobject.Properties["RevisionInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SwRelease"))) { #optional property not found
            $SwRelease = $null
        } else {
            $SwRelease = $JsonParameters.PSobject.Properties["SwRelease"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WorkaroundUrl"))) { #optional property not found
            $WorkaroundUrl = $null
        } else {
            $WorkaroundUrl = $JsonParameters.PSobject.Properties["WorkaroundUrl"].value
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
            "Bugid" = ${Bugid}
            "FieldNoticeDesc" = ${FieldNoticeDesc}
            "FieldNoticeId" = ${FieldNoticeId}
            "FieldNoticeUrl" = ${FieldNoticeUrl}
            "Headline" = ${Headline}
            "Hwpid" = ${Hwpid}
            "RevisionInfo" = ${RevisionInfo}
            "SwRelease" = ${SwRelease}
            "WorkaroundUrl" = ${WorkaroundUrl}
        }

        return $PSO
    }

}

