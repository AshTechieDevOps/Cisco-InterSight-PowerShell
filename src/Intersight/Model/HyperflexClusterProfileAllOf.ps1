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

Definition of the list of properties defined in 'hyperflex.ClusterProfile', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER DataIpAddress
The storage data IP address for the HyperFlex cluster.
.PARAMETER HostNamePrefix
The node name prefix that is used to automatically generate the default hostname for each server. A dash (-) will be appended to the prefix followed by the node number to form a hostname. This default naming scheme can be manually overridden in the node configuration. The maximum length of a prefix is 60, must only contain alphanumeric characters or dash (-), and must start with an alphanumeric character.
.PARAMETER HypervisorControlIpAddress
The hypervisor control virtual IP address for the HyperFlex compute cluster that is used for node/pod management.
.PARAMETER HypervisorType
The hypervisor type for the HyperFlex cluster. * `ESXi` - The hypervisor running on the HyperFlex cluster is a Vmware ESXi hypervisor of any version. * `HyperFlexAp` - The hypervisor running on the HyperFlex cluster is Cisco HyperFlex Application Platform. * `Hyper-V` - The hypervisor running on the HyperFlex cluster is Microsoft Hyper-V. * `Unknown` - The hypervisor running on the HyperFlex cluster is not known.
.PARAMETER MacAddressPrefix
The MAC address prefix in the form of 00:25:B5:XX.
.PARAMETER MgmtIpAddress
The management IP address for the HyperFlex cluster.
.PARAMETER MgmtPlatform
The management platform for the HyperFlex cluster. * `FI` - The host servers used in the cluster deployment are managed by a UCS Fabric Interconnect. * `EDGE` - The host servers used in the cluster deployment are standalone severs.
.PARAMETER Replication
The number of copies of each data block written.
.PARAMETER StorageDataVlan
No description available.
.PARAMETER StorageType
The storage type used for the HyperFlex cluster (HyperFlex Storage or 3rd party). * `HyperFlexDp` - The type of storage is HyperFlex Data Platform. * `ThirdParty` - The type of storage is 3rd Party Storage (PureStorage, etc..).
.PARAMETER WwxnPrefix
The WWxN prefix in the form of 20:00:00:25:B5:XX.
.PARAMETER AssociatedCluster
No description available.
.PARAMETER AssociatedComputeCluster
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
.PARAMETER Httpproxypolicy
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

HyperflexClusterProfileAllOf<PSCustomObject>
#>

function Initialize-IntersightHyperflexClusterProfileAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.ClusterProfile")]
        [String]
        ${ClassId} = "hyperflex.ClusterProfile",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.ClusterProfile")]
        [String]
        ${ObjectType} = "hyperflex.ClusterProfile",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$")]
        [String]
        ${DataIpAddress},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^[a-zA-Z0-9][a-zA-Z0-9-]{1,59}$")]
        [String]
        ${HostNamePrefix},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$")]
        [String]
        ${HypervisorControlIpAddress},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ESXi", "HyperFlexAp", "Hyper-V", "Unknown")]
        [String]
        ${HypervisorType} = "ESXi",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^00:25:B5:[0-9a-fA-F]{2}$")]
        [String]
        ${MacAddressPrefix},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$")]
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
        [ValidateSet("HyperFlexDp", "ThirdParty")]
        [String]
        ${StorageType} = "HyperFlexDp",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^20:00:00:25:B5:[0-9a-fA-F]{2}$")]
        [String]
        ${WwxnPrefix},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AssociatedCluster},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AssociatedComputeCluster},
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
        ${Httpproxypolicy},
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
        'Creating PSCustomObject: Intersight => IntersightHyperflexClusterProfileAllOf' | Write-Debug
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
            "DataIpAddress" = ${DataIpAddress}
            "HostNamePrefix" = ${HostNamePrefix}
            "HypervisorControlIpAddress" = ${HypervisorControlIpAddress}
            "HypervisorType" = ${HypervisorType}
            "MacAddressPrefix" = ${MacAddressPrefix}
            "MgmtIpAddress" = ${MgmtIpAddress}
            "MgmtPlatform" = ${MgmtPlatform}
            "Replication" = ${Replication}
            "StorageDataVlan" = ${StorageDataVlan}
            "StorageType" = ${StorageType}
            "WwxnPrefix" = ${WwxnPrefix}
            "AssociatedCluster" = ${AssociatedCluster}
            "AssociatedComputeCluster" = ${AssociatedComputeCluster}
            "AutoSupport" = ${AutoSupport}
            "ClusterNetwork" = ${ClusterNetwork}
            "ClusterStorage" = ${ClusterStorage}
            "ConfigResult" = ${ConfigResult}
            "ExtFcStorage" = ${ExtFcStorage}
            "ExtIscsiStorage" = ${ExtIscsiStorage}
            "Httpproxypolicy" = ${Httpproxypolicy}
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

Convert from JSON to HyperflexClusterProfileAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to HyperflexClusterProfileAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HyperflexClusterProfileAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToHyperflexClusterProfileAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightHyperflexClusterProfileAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightHyperflexClusterProfileAllOf
        $AllProperties = ("ClassId", "ObjectType", "DataIpAddress", "HostNamePrefix", "HypervisorControlIpAddress", "HypervisorType", "MacAddressPrefix", "MgmtIpAddress", "MgmtPlatform", "Replication", "StorageDataVlan", "StorageType", "WwxnPrefix", "AssociatedCluster", "AssociatedComputeCluster", "AutoSupport", "ClusterNetwork", "ClusterStorage", "ConfigResult", "ExtFcStorage", "ExtIscsiStorage", "Httpproxypolicy", "LocalCredential", "NodeConfig", "NodeProfileConfig", "Organization", "ProxySetting", "RunningWorkflows", "SoftwareVersion", "SysConfig", "UcsmConfig", "VcenterConfig")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DataIpAddress"))) { #optional property not found
            $DataIpAddress = $null
        } else {
            $DataIpAddress = $JsonParameters.PSobject.Properties["DataIpAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HostNamePrefix"))) { #optional property not found
            $HostNamePrefix = $null
        } else {
            $HostNamePrefix = $JsonParameters.PSobject.Properties["HostNamePrefix"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HypervisorControlIpAddress"))) { #optional property not found
            $HypervisorControlIpAddress = $null
        } else {
            $HypervisorControlIpAddress = $JsonParameters.PSobject.Properties["HypervisorControlIpAddress"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StorageType"))) { #optional property not found
            $StorageType = $null
        } else {
            $StorageType = $JsonParameters.PSobject.Properties["StorageType"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AssociatedComputeCluster"))) { #optional property not found
            $AssociatedComputeCluster = $null
        } else {
            $AssociatedComputeCluster = $JsonParameters.PSobject.Properties["AssociatedComputeCluster"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Httpproxypolicy"))) { #optional property not found
            $Httpproxypolicy = $null
        } else {
            $Httpproxypolicy = $JsonParameters.PSobject.Properties["Httpproxypolicy"].value
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
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "DataIpAddress" = ${DataIpAddress}
            "HostNamePrefix" = ${HostNamePrefix}
            "HypervisorControlIpAddress" = ${HypervisorControlIpAddress}
            "HypervisorType" = ${HypervisorType}
            "MacAddressPrefix" = ${MacAddressPrefix}
            "MgmtIpAddress" = ${MgmtIpAddress}
            "MgmtPlatform" = ${MgmtPlatform}
            "Replication" = ${Replication}
            "StorageDataVlan" = ${StorageDataVlan}
            "StorageType" = ${StorageType}
            "WwxnPrefix" = ${WwxnPrefix}
            "AssociatedCluster" = ${AssociatedCluster}
            "AssociatedComputeCluster" = ${AssociatedComputeCluster}
            "AutoSupport" = ${AutoSupport}
            "ClusterNetwork" = ${ClusterNetwork}
            "ClusterStorage" = ${ClusterStorage}
            "ConfigResult" = ${ConfigResult}
            "ExtFcStorage" = ${ExtFcStorage}
            "ExtIscsiStorage" = ${ExtIscsiStorage}
            "Httpproxypolicy" = ${Httpproxypolicy}
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

