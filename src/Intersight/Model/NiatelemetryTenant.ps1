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

Object is available at Tenant scope.

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
.PARAMETER BfdIfPolCount
Number of Bidirectional Forwarding Detection bfdIfPol Model Objects.
.PARAMETER BfdIfpCount
Number of objects with Bidirectional Forwarding Detection Interface Policy.
.PARAMETER DhcpRsProvCount
Number of tenants with Dynamic Host Configuration Protocol enabled.
.PARAMETER Dn
Dn for the tenants present.
.PARAMETER FhsBdPolCount
Number of objects with First hop security. Checks for presence of IP source gaurd, dynamic arp inspection.
.PARAMETER FvApCount
Number of application profiles per tenant.
.PARAMETER FvBdCount
Number of bridge domains with hardware proxy enabled per tenant.
.PARAMETER FvBdSubnetCount
Number of bridge domain subnets per tenant.
.PARAMETER FvBdnoArpCount
Number of bridge domains with ARP flodding disabled per tenant.
.PARAMETER FvCepCount
Count of number of endpoints per tenant.
.PARAMETER FvRsBdToFhsCount
Number of objects with First hop security. Checks for presence of IP source gaurd, dynamic arp inspection.
.PARAMETER FvRsBdToOutCount
Number of bridge domains connected to layer 3 out per tenant.
.PARAMETER FvSiteConnpCount
Number of Multi-Site objects.
.PARAMETER FvSubnetCount
Number of subnets per tenant.
.PARAMETER IpStaticRouteCount
Number of IP static routes per tenant.
.PARAMETER L3MulticastCount
Number of layer 3 multicasts.
.PARAMETER L3MulticastCtxCount
Number of layer 3 multicast CtxP.
.PARAMETER L3MulticastIfCount
Number of layer 3 multicast IfP.
.PARAMETER L3outCount
Number of L3 out objects for the tenants present.
.PARAMETER QosCustomPolCount
Number of Quality Of Service Custom Policy.
.PARAMETER RecordType
Type of record DCNM / APIC / SE. This determines the type of platform where inventory was collected.
.PARAMETER RecordVersion
Version of record being pushed. This determines what was the API version for data available from the device.
.PARAMETER SiteName
The Site name represents an APIC cluster. Service Engine can onboard multiple APIC clusters / sites.
.PARAMETER Ssm
SSM property feature usage.
.PARAMETER SsmCount
Number of context-level ssm translate policies per tenant.
.PARAMETER TcamOptCount
Number of TCAM optimization enabled per tenant.
.PARAMETER TraceRouteEpCount
Number of ITrace route endpoint per tenant.
.PARAMETER TraceRouteEpExtCount
Number of ITrace endpoint external routes per tenant.
.PARAMETER TraceRouteExtEpCount
Number of ITrace external endpoint routes per tenant.
.PARAMETER TraceRouteExtExtCount
Number of ITrace external routes per tenant.
.PARAMETER VnsAbsGraphCount
Number of objects with L4 to L7 Services graph.
.PARAMETER VnsBackupPolCount
Number of objects with Policy Based Routing standby Node. Checks the Policy Based Routing backup policy.
.PARAMETER VnsRedirectDestCount
Number of objects with Policy Based Routing standby Node. Policy based redirect requires a destination to redirect traffic.
.PARAMETER VnsSvcRedirectPolCount
Number of Policy Based Routing and Policy Based Service Insertion objects. Includes without L4-L7 package.
.PARAMETER VrfCount
Number of Vrfs per tenant.
.PARAMETER VzBrCpCount
Number of Zoning Policy per tenant.
.PARAMETER VzRtConsCount
Number of Client Contract between End Point Groups per tenant.
.PARAMETER VzRtProvCount
Number of Client Contract between End Point Groups per tenant.
.PARAMETER RegisteredDevice
No description available.
.OUTPUTS

NiatelemetryTenant<PSCustomObject>
#>

function Initialize-IntersightNiatelemetryTenant {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("niatelemetry.Tenant")]
        [String]
        ${ClassId} = "niatelemetry.Tenant",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("niatelemetry.Tenant")]
        [String]
        ${ObjectType} = "niatelemetry.Tenant",
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
        [System.Nullable[Int64]]
        ${BfdIfPolCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${BfdIfpCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${DhcpRsProvCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Dn},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${FhsBdPolCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${FvApCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${FvBdCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${FvBdSubnetCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${FvBdnoArpCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${FvCepCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${FvRsBdToFhsCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${FvRsBdToOutCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${FvSiteConnpCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${FvSubnetCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${IpStaticRouteCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${L3MulticastCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${L3MulticastCtxCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${L3MulticastIfCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${L3outCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${QosCustomPolCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RecordType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RecordVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SiteName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Ssm},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${SsmCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${TcamOptCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${TraceRouteEpCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${TraceRouteEpExtCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${TraceRouteExtEpCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${TraceRouteExtExtCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${VnsAbsGraphCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${VnsBackupPolCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${VnsRedirectDestCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${VnsSvcRedirectPolCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${VrfCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${VzBrCpCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${VzRtConsCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${VzRtProvCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightNiatelemetryTenant' | Write-Debug
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
            "BfdIfPolCount" = ${BfdIfPolCount}
            "BfdIfpCount" = ${BfdIfpCount}
            "DhcpRsProvCount" = ${DhcpRsProvCount}
            "Dn" = ${Dn}
            "FhsBdPolCount" = ${FhsBdPolCount}
            "FvApCount" = ${FvApCount}
            "FvBdCount" = ${FvBdCount}
            "FvBdSubnetCount" = ${FvBdSubnetCount}
            "FvBdnoArpCount" = ${FvBdnoArpCount}
            "FvCepCount" = ${FvCepCount}
            "FvRsBdToFhsCount" = ${FvRsBdToFhsCount}
            "FvRsBdToOutCount" = ${FvRsBdToOutCount}
            "FvSiteConnpCount" = ${FvSiteConnpCount}
            "FvSubnetCount" = ${FvSubnetCount}
            "IpStaticRouteCount" = ${IpStaticRouteCount}
            "L3MulticastCount" = ${L3MulticastCount}
            "L3MulticastCtxCount" = ${L3MulticastCtxCount}
            "L3MulticastIfCount" = ${L3MulticastIfCount}
            "L3outCount" = ${L3outCount}
            "QosCustomPolCount" = ${QosCustomPolCount}
            "RecordType" = ${RecordType}
            "RecordVersion" = ${RecordVersion}
            "SiteName" = ${SiteName}
            "Ssm" = ${Ssm}
            "SsmCount" = ${SsmCount}
            "TcamOptCount" = ${TcamOptCount}
            "TraceRouteEpCount" = ${TraceRouteEpCount}
            "TraceRouteEpExtCount" = ${TraceRouteEpExtCount}
            "TraceRouteExtEpCount" = ${TraceRouteExtEpCount}
            "TraceRouteExtExtCount" = ${TraceRouteExtExtCount}
            "VnsAbsGraphCount" = ${VnsAbsGraphCount}
            "VnsBackupPolCount" = ${VnsBackupPolCount}
            "VnsRedirectDestCount" = ${VnsRedirectDestCount}
            "VnsSvcRedirectPolCount" = ${VnsSvcRedirectPolCount}
            "VrfCount" = ${VrfCount}
            "VzBrCpCount" = ${VzBrCpCount}
            "VzRtConsCount" = ${VzRtConsCount}
            "VzRtProvCount" = ${VzRtProvCount}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NiatelemetryTenant<PSCustomObject>

.DESCRIPTION

Convert from JSON to NiatelemetryTenant<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NiatelemetryTenant<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToNiatelemetryTenant {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightNiatelemetryTenant' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightNiatelemetryTenant
        $AllProperties = ("ClassId", "ObjectType", "AccountMoid", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "Owners", "SharedScope", "Tags", "VersionContext", "_0_ClusterReplicationNetworkPolicy", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "BfdIfPolCount", "BfdIfpCount", "DhcpRsProvCount", "Dn", "FhsBdPolCount", "FvApCount", "FvBdCount", "FvBdSubnetCount", "FvBdnoArpCount", "FvCepCount", "FvRsBdToFhsCount", "FvRsBdToOutCount", "FvSiteConnpCount", "FvSubnetCount", "IpStaticRouteCount", "L3MulticastCount", "L3MulticastCtxCount", "L3MulticastIfCount", "L3outCount", "QosCustomPolCount", "RecordType", "RecordVersion", "SiteName", "Ssm", "SsmCount", "TcamOptCount", "TraceRouteEpCount", "TraceRouteEpExtCount", "TraceRouteExtEpCount", "TraceRouteExtExtCount", "VnsAbsGraphCount", "VnsBackupPolCount", "VnsRedirectDestCount", "VnsSvcRedirectPolCount", "VrfCount", "VzBrCpCount", "VzRtConsCount", "VzRtProvCount", "RegisteredDevice")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BfdIfPolCount"))) { #optional property not found
            $BfdIfPolCount = $null
        } else {
            $BfdIfPolCount = $JsonParameters.PSobject.Properties["BfdIfPolCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BfdIfpCount"))) { #optional property not found
            $BfdIfpCount = $null
        } else {
            $BfdIfpCount = $JsonParameters.PSobject.Properties["BfdIfpCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DhcpRsProvCount"))) { #optional property not found
            $DhcpRsProvCount = $null
        } else {
            $DhcpRsProvCount = $JsonParameters.PSobject.Properties["DhcpRsProvCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Dn"))) { #optional property not found
            $Dn = $null
        } else {
            $Dn = $JsonParameters.PSobject.Properties["Dn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FhsBdPolCount"))) { #optional property not found
            $FhsBdPolCount = $null
        } else {
            $FhsBdPolCount = $JsonParameters.PSobject.Properties["FhsBdPolCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FvApCount"))) { #optional property not found
            $FvApCount = $null
        } else {
            $FvApCount = $JsonParameters.PSobject.Properties["FvApCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FvBdCount"))) { #optional property not found
            $FvBdCount = $null
        } else {
            $FvBdCount = $JsonParameters.PSobject.Properties["FvBdCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FvBdSubnetCount"))) { #optional property not found
            $FvBdSubnetCount = $null
        } else {
            $FvBdSubnetCount = $JsonParameters.PSobject.Properties["FvBdSubnetCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FvBdnoArpCount"))) { #optional property not found
            $FvBdnoArpCount = $null
        } else {
            $FvBdnoArpCount = $JsonParameters.PSobject.Properties["FvBdnoArpCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FvCepCount"))) { #optional property not found
            $FvCepCount = $null
        } else {
            $FvCepCount = $JsonParameters.PSobject.Properties["FvCepCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FvRsBdToFhsCount"))) { #optional property not found
            $FvRsBdToFhsCount = $null
        } else {
            $FvRsBdToFhsCount = $JsonParameters.PSobject.Properties["FvRsBdToFhsCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FvRsBdToOutCount"))) { #optional property not found
            $FvRsBdToOutCount = $null
        } else {
            $FvRsBdToOutCount = $JsonParameters.PSobject.Properties["FvRsBdToOutCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FvSiteConnpCount"))) { #optional property not found
            $FvSiteConnpCount = $null
        } else {
            $FvSiteConnpCount = $JsonParameters.PSobject.Properties["FvSiteConnpCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FvSubnetCount"))) { #optional property not found
            $FvSubnetCount = $null
        } else {
            $FvSubnetCount = $JsonParameters.PSobject.Properties["FvSubnetCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IpStaticRouteCount"))) { #optional property not found
            $IpStaticRouteCount = $null
        } else {
            $IpStaticRouteCount = $JsonParameters.PSobject.Properties["IpStaticRouteCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "L3MulticastCount"))) { #optional property not found
            $L3MulticastCount = $null
        } else {
            $L3MulticastCount = $JsonParameters.PSobject.Properties["L3MulticastCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "L3MulticastCtxCount"))) { #optional property not found
            $L3MulticastCtxCount = $null
        } else {
            $L3MulticastCtxCount = $JsonParameters.PSobject.Properties["L3MulticastCtxCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "L3MulticastIfCount"))) { #optional property not found
            $L3MulticastIfCount = $null
        } else {
            $L3MulticastIfCount = $JsonParameters.PSobject.Properties["L3MulticastIfCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "L3outCount"))) { #optional property not found
            $L3outCount = $null
        } else {
            $L3outCount = $JsonParameters.PSobject.Properties["L3outCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "QosCustomPolCount"))) { #optional property not found
            $QosCustomPolCount = $null
        } else {
            $QosCustomPolCount = $JsonParameters.PSobject.Properties["QosCustomPolCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RecordType"))) { #optional property not found
            $RecordType = $null
        } else {
            $RecordType = $JsonParameters.PSobject.Properties["RecordType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RecordVersion"))) { #optional property not found
            $RecordVersion = $null
        } else {
            $RecordVersion = $JsonParameters.PSobject.Properties["RecordVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SiteName"))) { #optional property not found
            $SiteName = $null
        } else {
            $SiteName = $JsonParameters.PSobject.Properties["SiteName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Ssm"))) { #optional property not found
            $Ssm = $null
        } else {
            $Ssm = $JsonParameters.PSobject.Properties["Ssm"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SsmCount"))) { #optional property not found
            $SsmCount = $null
        } else {
            $SsmCount = $JsonParameters.PSobject.Properties["SsmCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TcamOptCount"))) { #optional property not found
            $TcamOptCount = $null
        } else {
            $TcamOptCount = $JsonParameters.PSobject.Properties["TcamOptCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TraceRouteEpCount"))) { #optional property not found
            $TraceRouteEpCount = $null
        } else {
            $TraceRouteEpCount = $JsonParameters.PSobject.Properties["TraceRouteEpCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TraceRouteEpExtCount"))) { #optional property not found
            $TraceRouteEpExtCount = $null
        } else {
            $TraceRouteEpExtCount = $JsonParameters.PSobject.Properties["TraceRouteEpExtCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TraceRouteExtEpCount"))) { #optional property not found
            $TraceRouteExtEpCount = $null
        } else {
            $TraceRouteExtEpCount = $JsonParameters.PSobject.Properties["TraceRouteExtEpCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TraceRouteExtExtCount"))) { #optional property not found
            $TraceRouteExtExtCount = $null
        } else {
            $TraceRouteExtExtCount = $JsonParameters.PSobject.Properties["TraceRouteExtExtCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VnsAbsGraphCount"))) { #optional property not found
            $VnsAbsGraphCount = $null
        } else {
            $VnsAbsGraphCount = $JsonParameters.PSobject.Properties["VnsAbsGraphCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VnsBackupPolCount"))) { #optional property not found
            $VnsBackupPolCount = $null
        } else {
            $VnsBackupPolCount = $JsonParameters.PSobject.Properties["VnsBackupPolCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VnsRedirectDestCount"))) { #optional property not found
            $VnsRedirectDestCount = $null
        } else {
            $VnsRedirectDestCount = $JsonParameters.PSobject.Properties["VnsRedirectDestCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VnsSvcRedirectPolCount"))) { #optional property not found
            $VnsSvcRedirectPolCount = $null
        } else {
            $VnsSvcRedirectPolCount = $JsonParameters.PSobject.Properties["VnsSvcRedirectPolCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VrfCount"))) { #optional property not found
            $VrfCount = $null
        } else {
            $VrfCount = $JsonParameters.PSobject.Properties["VrfCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VzBrCpCount"))) { #optional property not found
            $VzBrCpCount = $null
        } else {
            $VzBrCpCount = $JsonParameters.PSobject.Properties["VzBrCpCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VzRtConsCount"))) { #optional property not found
            $VzRtConsCount = $null
        } else {
            $VzRtConsCount = $JsonParameters.PSobject.Properties["VzRtConsCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VzRtProvCount"))) { #optional property not found
            $VzRtProvCount = $null
        } else {
            $VzRtProvCount = $JsonParameters.PSobject.Properties["VzRtProvCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
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
            "BfdIfPolCount" = ${BfdIfPolCount}
            "BfdIfpCount" = ${BfdIfpCount}
            "DhcpRsProvCount" = ${DhcpRsProvCount}
            "Dn" = ${Dn}
            "FhsBdPolCount" = ${FhsBdPolCount}
            "FvApCount" = ${FvApCount}
            "FvBdCount" = ${FvBdCount}
            "FvBdSubnetCount" = ${FvBdSubnetCount}
            "FvBdnoArpCount" = ${FvBdnoArpCount}
            "FvCepCount" = ${FvCepCount}
            "FvRsBdToFhsCount" = ${FvRsBdToFhsCount}
            "FvRsBdToOutCount" = ${FvRsBdToOutCount}
            "FvSiteConnpCount" = ${FvSiteConnpCount}
            "FvSubnetCount" = ${FvSubnetCount}
            "IpStaticRouteCount" = ${IpStaticRouteCount}
            "L3MulticastCount" = ${L3MulticastCount}
            "L3MulticastCtxCount" = ${L3MulticastCtxCount}
            "L3MulticastIfCount" = ${L3MulticastIfCount}
            "L3outCount" = ${L3outCount}
            "QosCustomPolCount" = ${QosCustomPolCount}
            "RecordType" = ${RecordType}
            "RecordVersion" = ${RecordVersion}
            "SiteName" = ${SiteName}
            "Ssm" = ${Ssm}
            "SsmCount" = ${SsmCount}
            "TcamOptCount" = ${TcamOptCount}
            "TraceRouteEpCount" = ${TraceRouteEpCount}
            "TraceRouteEpExtCount" = ${TraceRouteEpExtCount}
            "TraceRouteExtEpCount" = ${TraceRouteExtEpCount}
            "TraceRouteExtExtCount" = ${TraceRouteExtExtCount}
            "VnsAbsGraphCount" = ${VnsAbsGraphCount}
            "VnsBackupPolCount" = ${VnsBackupPolCount}
            "VnsRedirectDestCount" = ${VnsRedirectDestCount}
            "VnsSvcRedirectPolCount" = ${VnsSvcRedirectPolCount}
            "VrfCount" = ${VrfCount}
            "VzBrCpCount" = ${VzBrCpCount}
            "VzRtConsCount" = ${VzRtConsCount}
            "VzRtProvCount" = ${VzRtProvCount}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }

}

