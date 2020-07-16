#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2020-07-16T08:45:19Z.
# Version: 1.0.9-2020
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

A profile specifying configuration settings for a HyperFlex cluster.

.PARAMETER Moid
The unique identifier of this Managed Object instance.
.PARAMETER Owners
No description available.
.PARAMETER Tags
No description available.
.PARAMETER VersionContext
No description available.
.PARAMETER Parent
No description available.
.PARAMETER Description
Description of the profile.
.PARAMETER Name
Name of the concrete profile.
.PARAMETER Type
Defines the type of the profile. Accepted value is instance.
.PARAMETER SrcTemplate
No description available.
.PARAMETER Action
User initiated action. Each profile type has its own supported actions. For HyperFlex cluster profile, the supported actions are -- Validate, Deploy, Continue, Retry, Abort, Unassign For server profile, the support actions are -- Deploy, Unassign.
.PARAMETER ConfigContext
No description available.
.PARAMETER DataIpAddress
The storage data IP address for the HyperFlex cluster.
.PARAMETER HypervisorType
The hypervisor type for the HyperFlex cluster.
.PARAMETER MacAddressPrefix
The MAC address prefix in the form of 00:25:B5:XX.
.PARAMETER MgmtIpAddress
The management IP address for the HyperFlex cluster.
.PARAMETER MgmtPlatform
The management platform for the HyperFlex cluster.
.PARAMETER Replication
The number of copies of each data block written.
.PARAMETER StorageDataVlan
No description available.
.PARAMETER WwxnPrefix
The WWxN prefix in the form of 20:00:00:25:B5:XX.
.PARAMETER AssociatedCluster
No description available.
.PARAMETER AutoSupport
No description available.
.PARAMETER ClusterNetwork
No description available.
.PARAMETER ClusterStorage
No description available.
.PARAMETER ConfigResult
No description available.
.PARAMETER ExtFcStorage
No description available.
.PARAMETER ExtIscsiStorage
No description available.
.PARAMETER LocalCredential
No description available.
.PARAMETER NodeConfig
No description available.
.PARAMETER NodeProfileConfig
An array of relationships to hyperflexNodeProfile resources.
.PARAMETER Organization
No description available.
.PARAMETER ProxySetting
No description available.
.PARAMETER SoftwareVersion
No description available.
.PARAMETER SysConfig
No description available.
.PARAMETER UcsmConfig
No description available.
.PARAMETER VcenterConfig
No description available.
.OUTPUTS

HyperflexClusterProfile<PSCustomObject>
#>

function Initialize-IntersightHyperflexClusterProfile {
    [CmdletBinding()]
    Param (
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
        ${Parent},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9]+[\\sa-zA-Z0-9_'.:-]*$")]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9_.-]{1,64}$")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("instance")]
        [String]
        ${Type} = "instance",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SrcTemplate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Action},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ConfigContext},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\\.([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$")]
        [String]
        ${DataIpAddress},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ESXi", "HYPERV", "KVM")]
        [String]
        ${HypervisorType} = "ESXi",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^00:25:B5:[0-9a-fA-F]{2}$")]
        [String]
        ${MacAddressPrefix},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\\.([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$")]
        [String]
        ${MgmtIpAddress},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("FI", "EDGE")]
        [String]
        ${MgmtPlatform} = "FI",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Replication},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StorageDataVlan},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^20:00:00:25:B5:[0-9a-fA-F]{2}$")]
        [String]
        ${WwxnPrefix},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AssociatedCluster},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AutoSupport},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ClusterNetwork},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ClusterStorage},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ConfigResult},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ExtFcStorage},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ExtIscsiStorage},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LocalCredential},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${NodeConfig},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${NodeProfileConfig},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ProxySetting},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SoftwareVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SysConfig},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UcsmConfig},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VcenterConfig}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightHyperflexClusterProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Description -and $Description.length -gt 1024) {
            throw "invalid value for 'Description', the character length must be smaller than or equal to 1024."
        }

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "Description" = ${Description}
            "Name" = ${Name}
            "Type" = ${Type}
            "SrcTemplate" = ${SrcTemplate}
            "Action" = ${Action}
            "ConfigContext" = ${ConfigContext}
            "DataIpAddress" = ${DataIpAddress}
            "HypervisorType" = ${HypervisorType}
            "MacAddressPrefix" = ${MacAddressPrefix}
            "MgmtIpAddress" = ${MgmtIpAddress}
            "MgmtPlatform" = ${MgmtPlatform}
            "Replication" = ${Replication}
            "StorageDataVlan" = ${StorageDataVlan}
            "WwxnPrefix" = ${WwxnPrefix}
            "AssociatedCluster" = ${AssociatedCluster}
            "AutoSupport" = ${AutoSupport}
            "ClusterNetwork" = ${ClusterNetwork}
            "ClusterStorage" = ${ClusterStorage}
            "ConfigResult" = ${ConfigResult}
            "ExtFcStorage" = ${ExtFcStorage}
            "ExtIscsiStorage" = ${ExtIscsiStorage}
            "LocalCredential" = ${LocalCredential}
            "NodeConfig" = ${NodeConfig}
            "NodeProfileConfig" = ${NodeProfileConfig}
            "Organization" = ${Organization}
            "ProxySetting" = ${ProxySetting}
            "SoftwareVersion" = ${SoftwareVersion}
            "SysConfig" = ${SysConfig}
            "UcsmConfig" = ${UcsmConfig}
            "VcenterConfig" = ${VcenterConfig}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HyperflexClusterProfile<PSCustomObject>

.DESCRIPTION

Convert from JSON to HyperflexClusterProfile<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HyperflexClusterProfile<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToHyperflexClusterProfile {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightHyperflexClusterProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightHyperflexClusterProfile
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "Description", "Name", "Type", "SrcTemplate", "Action", "ConfigContext", "DataIpAddress", "HypervisorType", "MacAddressPrefix", "MgmtIpAddress", "MgmtPlatform", "Replication", "StorageDataVlan", "WwxnPrefix", "AssociatedCluster", "AutoSupport", "ClusterNetwork", "ClusterStorage", "ConfigResult", "ExtFcStorage", "ExtIscsiStorage", "LocalCredential", "NodeConfig", "NodeProfileConfig", "Organization", "ProxySetting", "RunningWorkflows", "SoftwareVersion", "SysConfig", "UcsmConfig", "VcenterConfig")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property `ClassId` missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClassId"))) {
            throw "Error! JSON cannot be serialized due to the required property `ClassId` missing."
        } else {
            $ClassId = $JsonParameters.PSobject.Properties["ClassId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ObjectType"))) {
            throw "Error! JSON cannot be serialized due to the required property `ObjectType` missing."
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["Type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SrcTemplate"))) { #optional property not found
            $SrcTemplate = $null
        } else {
            $SrcTemplate = $JsonParameters.PSobject.Properties["SrcTemplate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Action"))) { #optional property not found
            $Action = $null
        } else {
            $Action = $JsonParameters.PSobject.Properties["Action"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConfigContext"))) { #optional property not found
            $ConfigContext = $null
        } else {
            $ConfigContext = $JsonParameters.PSobject.Properties["ConfigContext"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DataIpAddress"))) { #optional property not found
            $DataIpAddress = $null
        } else {
            $DataIpAddress = $JsonParameters.PSobject.Properties["DataIpAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HypervisorType"))) { #optional property not found
            $HypervisorType = $null
        } else {
            $HypervisorType = $JsonParameters.PSobject.Properties["HypervisorType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MacAddressPrefix"))) { #optional property not found
            $MacAddressPrefix = $null
        } else {
            $MacAddressPrefix = $JsonParameters.PSobject.Properties["MacAddressPrefix"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MgmtIpAddress"))) { #optional property not found
            $MgmtIpAddress = $null
        } else {
            $MgmtIpAddress = $JsonParameters.PSobject.Properties["MgmtIpAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MgmtPlatform"))) { #optional property not found
            $MgmtPlatform = $null
        } else {
            $MgmtPlatform = $JsonParameters.PSobject.Properties["MgmtPlatform"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Replication"))) { #optional property not found
            $Replication = $null
        } else {
            $Replication = $JsonParameters.PSobject.Properties["Replication"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StorageDataVlan"))) { #optional property not found
            $StorageDataVlan = $null
        } else {
            $StorageDataVlan = $JsonParameters.PSobject.Properties["StorageDataVlan"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WwxnPrefix"))) { #optional property not found
            $WwxnPrefix = $null
        } else {
            $WwxnPrefix = $JsonParameters.PSobject.Properties["WwxnPrefix"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AssociatedCluster"))) { #optional property not found
            $AssociatedCluster = $null
        } else {
            $AssociatedCluster = $JsonParameters.PSobject.Properties["AssociatedCluster"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AutoSupport"))) { #optional property not found
            $AutoSupport = $null
        } else {
            $AutoSupport = $JsonParameters.PSobject.Properties["AutoSupport"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClusterNetwork"))) { #optional property not found
            $ClusterNetwork = $null
        } else {
            $ClusterNetwork = $JsonParameters.PSobject.Properties["ClusterNetwork"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClusterStorage"))) { #optional property not found
            $ClusterStorage = $null
        } else {
            $ClusterStorage = $JsonParameters.PSobject.Properties["ClusterStorage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConfigResult"))) { #optional property not found
            $ConfigResult = $null
        } else {
            $ConfigResult = $JsonParameters.PSobject.Properties["ConfigResult"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExtFcStorage"))) { #optional property not found
            $ExtFcStorage = $null
        } else {
            $ExtFcStorage = $JsonParameters.PSobject.Properties["ExtFcStorage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExtIscsiStorage"))) { #optional property not found
            $ExtIscsiStorage = $null
        } else {
            $ExtIscsiStorage = $JsonParameters.PSobject.Properties["ExtIscsiStorage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LocalCredential"))) { #optional property not found
            $LocalCredential = $null
        } else {
            $LocalCredential = $JsonParameters.PSobject.Properties["LocalCredential"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NodeConfig"))) { #optional property not found
            $NodeConfig = $null
        } else {
            $NodeConfig = $JsonParameters.PSobject.Properties["NodeConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NodeProfileConfig"))) { #optional property not found
            $NodeProfileConfig = $null
        } else {
            $NodeProfileConfig = $JsonParameters.PSobject.Properties["NodeProfileConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProxySetting"))) { #optional property not found
            $ProxySetting = $null
        } else {
            $ProxySetting = $JsonParameters.PSobject.Properties["ProxySetting"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RunningWorkflows"))) { #optional property not found
            $RunningWorkflows = $null
        } else {
            $RunningWorkflows = $JsonParameters.PSobject.Properties["RunningWorkflows"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SoftwareVersion"))) { #optional property not found
            $SoftwareVersion = $null
        } else {
            $SoftwareVersion = $JsonParameters.PSobject.Properties["SoftwareVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SysConfig"))) { #optional property not found
            $SysConfig = $null
        } else {
            $SysConfig = $JsonParameters.PSobject.Properties["SysConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UcsmConfig"))) { #optional property not found
            $UcsmConfig = $null
        } else {
            $UcsmConfig = $JsonParameters.PSobject.Properties["UcsmConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VcenterConfig"))) { #optional property not found
            $VcenterConfig = $null
        } else {
            $VcenterConfig = $JsonParameters.PSobject.Properties["VcenterConfig"].value
        }

        $PSO = [PSCustomObject]@{
            "AccountMoid" = ${AccountMoid}
            "ClassId" = ${ClassId}
            "CreateTime" = ${CreateTime}
            "DomainGroupMoid" = ${DomainGroupMoid}
            "ModTime" = ${ModTime}
            "Moid" = ${Moid}
            "ObjectType" = ${ObjectType}
            "Owners" = ${Owners}
            "SharedScope" = ${SharedScope}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Ancestors" = ${Ancestors}
            "Parent" = ${Parent}
            "PermissionResources" = ${PermissionResources}
            "DisplayNames" = ${DisplayNames}
            "Description" = ${Description}
            "Name" = ${Name}
            "Type" = ${Type}
            "SrcTemplate" = ${SrcTemplate}
            "Action" = ${Action}
            "ConfigContext" = ${ConfigContext}
            "DataIpAddress" = ${DataIpAddress}
            "HypervisorType" = ${HypervisorType}
            "MacAddressPrefix" = ${MacAddressPrefix}
            "MgmtIpAddress" = ${MgmtIpAddress}
            "MgmtPlatform" = ${MgmtPlatform}
            "Replication" = ${Replication}
            "StorageDataVlan" = ${StorageDataVlan}
            "WwxnPrefix" = ${WwxnPrefix}
            "AssociatedCluster" = ${AssociatedCluster}
            "AutoSupport" = ${AutoSupport}
            "ClusterNetwork" = ${ClusterNetwork}
            "ClusterStorage" = ${ClusterStorage}
            "ConfigResult" = ${ConfigResult}
            "ExtFcStorage" = ${ExtFcStorage}
            "ExtIscsiStorage" = ${ExtIscsiStorage}
            "LocalCredential" = ${LocalCredential}
            "NodeConfig" = ${NodeConfig}
            "NodeProfileConfig" = ${NodeProfileConfig}
            "Organization" = ${Organization}
            "ProxySetting" = ${ProxySetting}
            "RunningWorkflows" = ${RunningWorkflows}
            "SoftwareVersion" = ${SoftwareVersion}
            "SysConfig" = ${SysConfig}
            "UcsmConfig" = ${UcsmConfig}
            "VcenterConfig" = ${VcenterConfig}
        }

        return $PSO
    }

}

