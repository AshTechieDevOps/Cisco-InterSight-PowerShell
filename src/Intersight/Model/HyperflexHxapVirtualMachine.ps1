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

The Virtual machine that runs on a Hyperflex Application platform compute host.

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
.PARAMETER RegisteredDevice
No description available.
.PARAMETER Capacity
No description available.
.PARAMETER GuestInfo
No description available.
.PARAMETER HypervisorType
Type of hypervisor where the virtual machine is hosted for example ESXi. * `ESXi` - The hypervisor running on the HyperFlex cluster is a Vmware ESXi hypervisor of any version. * `HyperFlexAp` - The hypervisor running on the HyperFlex cluster is Cisco HyperFlex Application Platform. * `Hyper-V` - The hypervisor running on the HyperFlex cluster is Microsoft Hyper-V. * `Unknown` - The hypervisor running on the HyperFlex cluster is not known.
.PARAMETER Identity
The internally generated identity of this VM. This entity is not manipulated by users. It aids in uniquely identifying the virtual machine object. For VMware, this is MOR (managed object reference).
.PARAMETER IpAddress
No description available.
.PARAMETER MemoryCapacity
No description available.
.PARAMETER Name
User-provided name to identify the virtual machine.
.PARAMETER PowerState
Power state of the virtual machine. * `Unknown` - The entity's power state is unknown. * `PoweredOn` - The entity is powered on. * `PoweredOff` - The entity is powered down. * `StandBy` - The entity is in standby mode. * `Paused` - The entity is in pause state.
.PARAMETER ProcessorCapacity
No description available.
.PARAMETER Uuid
The uuid of this virtual machine. The uuid is internally generated and not user specified.
.PARAMETER AffinitySelectors
No description available.
.PARAMETER Age
Denotes age or life time of the VM in nano seconds.
.PARAMETER AntiAffinitySelectors
No description available.
.PARAMETER Disks
No description available.
.PARAMETER FailureReason
Reason of the failure when VM is in failed state.
.PARAMETER GraphicConsoleUrl
Graphical console URL of this VM.
.PARAMETER Interfaces
No description available.
.PARAMETER Labels
No description available.
.PARAMETER NetworkCount
Number network interfaces associated with the virtual machine.
.PARAMETER StartTime
Denotes the VM start timestamp.
.PARAMETER Status
Status of virtual machine. * `Unknown` - Virtual machine state is not available. * `Running` - Virtual machine is running normally. * `Stopped` - Virtual machine has been stopped. * `WaitForLaunch` - Virtual machine is wating to be launched. * `Paused` - Virtual machine is currently paused. * `ImportInProgress` - Virtual machine image is being imported into the platform. * `ImportFailed` - Virtual machine image import operation failed. * `DiskCloneInProgress` - Disk clone operation for the virtual machine is in progress. * `DiskCloneFailed` - Disk clone operation for the virtual machine failed. * `Processing` - Virtual machine is being created. * `UnSchedulable` - Virtual machine cannot be scheduled to run, either due to insufficient resources or failure to match affinity specifications. * `Failed` - Some virtual machine operation has failed. More information is available as part of the results of the operation.
.PARAMETER UpTime
Denotes how long this VM has been running in nano seconds.
.PARAMETER Cluster
No description available.
.PARAMETER VarHost
No description available.
.OUTPUTS

HyperflexHxapVirtualMachine<PSCustomObject>
#>

function Initialize-IntersightHyperflexHxapVirtualMachine {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.HxapVirtualMachine")]
        [String]
        ${ClassId} = "hyperflex.HxapVirtualMachine",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.HxapVirtualMachine")]
        [String]
        ${ObjectType} = "hyperflex.HxapVirtualMachine",
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
        [PSCustomObject]
        ${RegisteredDevice},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Capacity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${GuestInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ESXi", "HyperFlexAp", "Hyper-V", "Unknown")]
        [String]
        ${HypervisorType} = "ESXi",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Identity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${IpAddress},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${MemoryCapacity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Unknown", "PoweredOn", "PoweredOff", "StandBy", "Paused")]
        [String]
        ${PowerState} = "Unknown",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ProcessorCapacity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$")]
        [String]
        ${Uuid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AffinitySelectors},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Age},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AntiAffinitySelectors},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Disks},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FailureReason},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GraphicConsoleUrl},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Interfaces},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Labels},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${NetworkCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StartTime},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Unknown", "Running", "Stopped", "WaitForLaunch", "Paused", "ImportInProgress", "ImportFailed", "DiskCloneInProgress", "DiskCloneFailed", "Processing", "UnSchedulable", "Failed")]
        [String]
        ${Status} = "Unknown",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UpTime},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Cluster},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarHost}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightHyperflexHxapVirtualMachine' | Write-Debug
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
            "RegisteredDevice" = ${RegisteredDevice}
            "Capacity" = ${Capacity}
            "GuestInfo" = ${GuestInfo}
            "HypervisorType" = ${HypervisorType}
            "Identity" = ${Identity}
            "IpAddress" = ${IpAddress}
            "MemoryCapacity" = ${MemoryCapacity}
            "Name" = ${Name}
            "PowerState" = ${PowerState}
            "ProcessorCapacity" = ${ProcessorCapacity}
            "Uuid" = ${Uuid}
            "AffinitySelectors" = ${AffinitySelectors}
            "Age" = ${Age}
            "AntiAffinitySelectors" = ${AntiAffinitySelectors}
            "Disks" = ${Disks}
            "FailureReason" = ${FailureReason}
            "GraphicConsoleUrl" = ${GraphicConsoleUrl}
            "Interfaces" = ${Interfaces}
            "Labels" = ${Labels}
            "NetworkCount" = ${NetworkCount}
            "StartTime" = ${StartTime}
            "Status" = ${Status}
            "UpTime" = ${UpTime}
            "Cluster" = ${Cluster}
            "Host" = ${VarHost}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HyperflexHxapVirtualMachine<PSCustomObject>

.DESCRIPTION

Convert from JSON to HyperflexHxapVirtualMachine<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HyperflexHxapVirtualMachine<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToHyperflexHxapVirtualMachine {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightHyperflexHxapVirtualMachine' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightHyperflexHxapVirtualMachine
        $AllProperties = ("ClassId", "ObjectType", "AccountMoid", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "Owners", "SharedScope", "Tags", "VersionContext", "_0_ClusterReplicationNetworkPolicy", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "RegisteredDevice", "Capacity", "GuestInfo", "HypervisorType", "Identity", "IpAddress", "MemoryCapacity", "Name", "PowerState", "ProcessorCapacity", "Uuid", "AffinitySelectors", "Age", "AntiAffinitySelectors", "Disks", "FailureReason", "GraphicConsoleUrl", "Interfaces", "Labels", "NetworkCount", "StartTime", "Status", "UpTime", "Cluster", "Host")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Capacity"))) { #optional property not found
            $Capacity = $null
        } else {
            $Capacity = $JsonParameters.PSobject.Properties["Capacity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "GuestInfo"))) { #optional property not found
            $GuestInfo = $null
        } else {
            $GuestInfo = $JsonParameters.PSobject.Properties["GuestInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HypervisorType"))) { #optional property not found
            $HypervisorType = $null
        } else {
            $HypervisorType = $JsonParameters.PSobject.Properties["HypervisorType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Identity"))) { #optional property not found
            $Identity = $null
        } else {
            $Identity = $JsonParameters.PSobject.Properties["Identity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IpAddress"))) { #optional property not found
            $IpAddress = $null
        } else {
            $IpAddress = $JsonParameters.PSobject.Properties["IpAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MemoryCapacity"))) { #optional property not found
            $MemoryCapacity = $null
        } else {
            $MemoryCapacity = $JsonParameters.PSobject.Properties["MemoryCapacity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PowerState"))) { #optional property not found
            $PowerState = $null
        } else {
            $PowerState = $JsonParameters.PSobject.Properties["PowerState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProcessorCapacity"))) { #optional property not found
            $ProcessorCapacity = $null
        } else {
            $ProcessorCapacity = $JsonParameters.PSobject.Properties["ProcessorCapacity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Uuid"))) { #optional property not found
            $Uuid = $null
        } else {
            $Uuid = $JsonParameters.PSobject.Properties["Uuid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AffinitySelectors"))) { #optional property not found
            $AffinitySelectors = $null
        } else {
            $AffinitySelectors = $JsonParameters.PSobject.Properties["AffinitySelectors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Age"))) { #optional property not found
            $Age = $null
        } else {
            $Age = $JsonParameters.PSobject.Properties["Age"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AntiAffinitySelectors"))) { #optional property not found
            $AntiAffinitySelectors = $null
        } else {
            $AntiAffinitySelectors = $JsonParameters.PSobject.Properties["AntiAffinitySelectors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Disks"))) { #optional property not found
            $Disks = $null
        } else {
            $Disks = $JsonParameters.PSobject.Properties["Disks"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FailureReason"))) { #optional property not found
            $FailureReason = $null
        } else {
            $FailureReason = $JsonParameters.PSobject.Properties["FailureReason"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "GraphicConsoleUrl"))) { #optional property not found
            $GraphicConsoleUrl = $null
        } else {
            $GraphicConsoleUrl = $JsonParameters.PSobject.Properties["GraphicConsoleUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Interfaces"))) { #optional property not found
            $Interfaces = $null
        } else {
            $Interfaces = $JsonParameters.PSobject.Properties["Interfaces"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Labels"))) { #optional property not found
            $Labels = $null
        } else {
            $Labels = $JsonParameters.PSobject.Properties["Labels"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NetworkCount"))) { #optional property not found
            $NetworkCount = $null
        } else {
            $NetworkCount = $JsonParameters.PSobject.Properties["NetworkCount"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UpTime"))) { #optional property not found
            $UpTime = $null
        } else {
            $UpTime = $JsonParameters.PSobject.Properties["UpTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Cluster"))) { #optional property not found
            $Cluster = $null
        } else {
            $Cluster = $JsonParameters.PSobject.Properties["Cluster"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Host"))) { #optional property not found
            $VarHost = $null
        } else {
            $VarHost = $JsonParameters.PSobject.Properties["Host"].value
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
            "RegisteredDevice" = ${RegisteredDevice}
            "Capacity" = ${Capacity}
            "GuestInfo" = ${GuestInfo}
            "HypervisorType" = ${HypervisorType}
            "Identity" = ${Identity}
            "IpAddress" = ${IpAddress}
            "MemoryCapacity" = ${MemoryCapacity}
            "Name" = ${Name}
            "PowerState" = ${PowerState}
            "ProcessorCapacity" = ${ProcessorCapacity}
            "Uuid" = ${Uuid}
            "AffinitySelectors" = ${AffinitySelectors}
            "Age" = ${Age}
            "AntiAffinitySelectors" = ${AntiAffinitySelectors}
            "Disks" = ${Disks}
            "FailureReason" = ${FailureReason}
            "GraphicConsoleUrl" = ${GraphicConsoleUrl}
            "Interfaces" = ${Interfaces}
            "Labels" = ${Labels}
            "NetworkCount" = ${NetworkCount}
            "StartTime" = ${StartTime}
            "Status" = ${Status}
            "UpTime" = ${UpTime}
            "Cluster" = ${Cluster}
            "Host" = ${VarHost}
        }

        return $PSO
    }

}
