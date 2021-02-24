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

Record of HyperFlex Cluster replication network policy deployment.

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
.PARAMETER Discovered
True if record created by discovery on HyperFlex cluster.
.PARAMETER ReplicationIpranges
No description available.
.PARAMETER ReplicationVlan
No description available.
.PARAMETER Cluster
No description available.
.PARAMETER Organization
No description available.
.OUTPUTS

HyperflexClusterReplicationNetworkPolicyDeployment<PSCustomObject>
#>

function Initialize-IntersightHyperflexClusterReplicationNetworkPolicyDeployment {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.ClusterReplicationNetworkPolicyDeployment")]
        [String]
        ${ClassId} = "hyperflex.ClusterReplicationNetworkPolicyDeployment",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.ClusterReplicationNetworkPolicyDeployment")]
        [String]
        ${ObjectType} = "hyperflex.ClusterReplicationNetworkPolicyDeployment",
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
        [System.Nullable[Boolean]]
        ${Discovered},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ReplicationIpranges},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ReplicationVlan},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Cluster},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightHyperflexClusterReplicationNetworkPolicyDeployment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if (!$ReplicationIpranges -and $ReplicationIpranges.length -lt 1) {
            throw "invalid value for 'ReplicationIpranges', number of items must be greater than or equal to 1."
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
            "Discovered" = ${Discovered}
            "ReplicationIpranges" = ${ReplicationIpranges}
            "ReplicationVlan" = ${ReplicationVlan}
            "Cluster" = ${Cluster}
            "Organization" = ${Organization}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HyperflexClusterReplicationNetworkPolicyDeployment<PSCustomObject>

.DESCRIPTION

Convert from JSON to HyperflexClusterReplicationNetworkPolicyDeployment<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HyperflexClusterReplicationNetworkPolicyDeployment<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToHyperflexClusterReplicationNetworkPolicyDeployment {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightHyperflexClusterReplicationNetworkPolicyDeployment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightHyperflexClusterReplicationNetworkPolicyDeployment
        $AllProperties = ("ClassId", "ObjectType", "AccountMoid", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "Owners", "SharedScope", "Tags", "VersionContext", "_0_ClusterReplicationNetworkPolicy", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "ClusterUuid", "Description", "Discovered", "Name", "PolicyMoid", "ProfileMoid", "ReplicationBandwidthMbps", "ReplicationIpranges", "ReplicationMtu", "ReplicationVlan", "RequestId", "Cluster", "Organization")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClusterUuid"))) { #optional property not found
            $ClusterUuid = $null
        } else {
            $ClusterUuid = $JsonParameters.PSobject.Properties["ClusterUuid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Discovered"))) { #optional property not found
            $Discovered = $null
        } else {
            $Discovered = $JsonParameters.PSobject.Properties["Discovered"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PolicyMoid"))) { #optional property not found
            $PolicyMoid = $null
        } else {
            $PolicyMoid = $JsonParameters.PSobject.Properties["PolicyMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProfileMoid"))) { #optional property not found
            $ProfileMoid = $null
        } else {
            $ProfileMoid = $JsonParameters.PSobject.Properties["ProfileMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ReplicationBandwidthMbps"))) { #optional property not found
            $ReplicationBandwidthMbps = $null
        } else {
            $ReplicationBandwidthMbps = $JsonParameters.PSobject.Properties["ReplicationBandwidthMbps"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ReplicationIpranges"))) { #optional property not found
            $ReplicationIpranges = $null
        } else {
            $ReplicationIpranges = $JsonParameters.PSobject.Properties["ReplicationIpranges"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ReplicationMtu"))) { #optional property not found
            $ReplicationMtu = $null
        } else {
            $ReplicationMtu = $JsonParameters.PSobject.Properties["ReplicationMtu"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ReplicationVlan"))) { #optional property not found
            $ReplicationVlan = $null
        } else {
            $ReplicationVlan = $JsonParameters.PSobject.Properties["ReplicationVlan"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RequestId"))) { #optional property not found
            $RequestId = $null
        } else {
            $RequestId = $JsonParameters.PSobject.Properties["RequestId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Cluster"))) { #optional property not found
            $Cluster = $null
        } else {
            $Cluster = $JsonParameters.PSobject.Properties["Cluster"].value
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
            "ClusterUuid" = ${ClusterUuid}
            "Description" = ${Description}
            "Discovered" = ${Discovered}
            "Name" = ${Name}
            "PolicyMoid" = ${PolicyMoid}
            "ProfileMoid" = ${ProfileMoid}
            "ReplicationBandwidthMbps" = ${ReplicationBandwidthMbps}
            "ReplicationIpranges" = ${ReplicationIpranges}
            "ReplicationMtu" = ${ReplicationMtu}
            "ReplicationVlan" = ${ReplicationVlan}
            "RequestId" = ${RequestId}
            "Cluster" = ${Cluster}
            "Organization" = ${Organization}
        }

        return $PSO
    }

}

