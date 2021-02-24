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

Definition of the list of properties defined in 'hyperflex.ClusterNetworkPolicy', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER JumboFrame
Enable or disable jumbo frames.
.PARAMETER KvmIpRange
No description available.
.PARAMETER MacPrefixRange
No description available.
.PARAMETER MgmtVlan
No description available.
.PARAMETER UplinkSpeed
Link speed of the server adapter port to the upstream switch. When the policy is attached to a cluster profile with EDGE management platform, the uplink speed can be '1G' or '10G+'. Use '10G+' for link speeds of 10G or above. When the policy is attached to a cluster profile with Fabric Interconnect management platform, the uplink speed can be 'default' only. * `default` - Current default value set on the hardware platform. * `1G` - A link speed of 1 gigabit per second. * `10G` - A link speed of 10 gigabits per second or above.
.PARAMETER VmMigrationVlan
No description available.
.PARAMETER VmNetworkVlans
No description available.
.PARAMETER ClusterProfiles
An array of relationships to hyperflexClusterProfile resources.
.PARAMETER Organization
No description available.
.OUTPUTS

HyperflexClusterNetworkPolicyAllOf<PSCustomObject>
#>

function Initialize-IntersightHyperflexClusterNetworkPolicyAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.ClusterNetworkPolicy")]
        [String]
        ${ClassId} = "hyperflex.ClusterNetworkPolicy",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.ClusterNetworkPolicy")]
        [String]
        ${ObjectType} = "hyperflex.ClusterNetworkPolicy",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${JumboFrame},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${KvmIpRange},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${MacPrefixRange},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${MgmtVlan},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("default", "1G", "10G")]
        [String]
        ${UplinkSpeed} = "default",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VmMigrationVlan},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${VmNetworkVlans},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ClusterProfiles},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightHyperflexClusterNetworkPolicyAllOf' | Write-Debug
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
            "JumboFrame" = ${JumboFrame}
            "KvmIpRange" = ${KvmIpRange}
            "MacPrefixRange" = ${MacPrefixRange}
            "MgmtVlan" = ${MgmtVlan}
            "UplinkSpeed" = ${UplinkSpeed}
            "VmMigrationVlan" = ${VmMigrationVlan}
            "VmNetworkVlans" = ${VmNetworkVlans}
            "ClusterProfiles" = ${ClusterProfiles}
            "Organization" = ${Organization}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HyperflexClusterNetworkPolicyAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to HyperflexClusterNetworkPolicyAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HyperflexClusterNetworkPolicyAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToHyperflexClusterNetworkPolicyAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightHyperflexClusterNetworkPolicyAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightHyperflexClusterNetworkPolicyAllOf
        $AllProperties = ("ClassId", "ObjectType", "JumboFrame", "KvmIpRange", "MacPrefixRange", "MgmtVlan", "UplinkSpeed", "VmMigrationVlan", "VmNetworkVlans", "ClusterProfiles", "Organization")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "JumboFrame"))) { #optional property not found
            $JumboFrame = $null
        } else {
            $JumboFrame = $JsonParameters.PSobject.Properties["JumboFrame"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "KvmIpRange"))) { #optional property not found
            $KvmIpRange = $null
        } else {
            $KvmIpRange = $JsonParameters.PSobject.Properties["KvmIpRange"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MacPrefixRange"))) { #optional property not found
            $MacPrefixRange = $null
        } else {
            $MacPrefixRange = $JsonParameters.PSobject.Properties["MacPrefixRange"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MgmtVlan"))) { #optional property not found
            $MgmtVlan = $null
        } else {
            $MgmtVlan = $JsonParameters.PSobject.Properties["MgmtVlan"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UplinkSpeed"))) { #optional property not found
            $UplinkSpeed = $null
        } else {
            $UplinkSpeed = $JsonParameters.PSobject.Properties["UplinkSpeed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VmMigrationVlan"))) { #optional property not found
            $VmMigrationVlan = $null
        } else {
            $VmMigrationVlan = $JsonParameters.PSobject.Properties["VmMigrationVlan"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VmNetworkVlans"))) { #optional property not found
            $VmNetworkVlans = $null
        } else {
            $VmNetworkVlans = $JsonParameters.PSobject.Properties["VmNetworkVlans"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClusterProfiles"))) { #optional property not found
            $ClusterProfiles = $null
        } else {
            $ClusterProfiles = $JsonParameters.PSobject.Properties["ClusterProfiles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "JumboFrame" = ${JumboFrame}
            "KvmIpRange" = ${KvmIpRange}
            "MacPrefixRange" = ${MacPrefixRange}
            "MgmtVlan" = ${MgmtVlan}
            "UplinkSpeed" = ${UplinkSpeed}
            "VmMigrationVlan" = ${VmMigrationVlan}
            "VmNetworkVlans" = ${VmNetworkVlans}
            "ClusterProfiles" = ${ClusterProfiles}
            "Organization" = ${Organization}
        }

        return $PSO
    }

}

