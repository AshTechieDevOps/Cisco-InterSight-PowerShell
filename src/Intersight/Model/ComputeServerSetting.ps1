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

Models the configurable properties of a server in Intersight.

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
.PARAMETER AdminLocatorLedState
User configured state of the locator LED for the server. * `None` - No operation property for locator led. * `On` - The Locator Led is turned on. * `Off` - The Locator Led is turned off.
.PARAMETER AdminPowerState
User configured power state of the server. * `Policy` - Power state is set to the default value in the policy. * `PowerOn` - Power state of the server is set to On. * `PowerOff` - Power state is the server set to Off. * `PowerCycle` - Power state the server is reset. * `HardReset` - Power state the server is hard reset. * `Shutdown` - Operating system on the server is shut down. * `Reboot` - Power state of IMC is rebooted.
.PARAMETER OneTimeBootDevice
The name of the device chosen by user for configuring One-Time Boot device.
.PARAMETER PersistentMemoryOperation
No description available.
.PARAMETER ServerConfig
No description available.
.PARAMETER LocatorLed
No description available.
.PARAMETER RegisteredDevice
No description available.
.PARAMETER RunningWorkflow
No description available.
.PARAMETER Server
No description available.
.OUTPUTS

ComputeServerSetting<PSCustomObject>
#>

function Initialize-IntersightComputeServerSetting {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("compute.ServerSetting")]
        [String]
        ${ClassId} = "compute.ServerSetting",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("compute.ServerSetting")]
        [String]
        ${ObjectType} = "compute.ServerSetting",
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
        [ValidateSet("None", "On", "Off")]
        [String]
        ${AdminLocatorLedState} = "None",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Policy", "PowerOn", "PowerOff", "PowerCycle", "HardReset", "Shutdown", "Reboot")]
        [String]
        ${AdminPowerState} = "Policy",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OneTimeBootDevice},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PersistentMemoryOperation},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ServerConfig},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LocatorLed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RunningWorkflow},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Server}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightComputeServerSetting' | Write-Debug
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
            "AdminLocatorLedState" = ${AdminLocatorLedState}
            "AdminPowerState" = ${AdminPowerState}
            "OneTimeBootDevice" = ${OneTimeBootDevice}
            "PersistentMemoryOperation" = ${PersistentMemoryOperation}
            "ServerConfig" = ${ServerConfig}
            "LocatorLed" = ${LocatorLed}
            "RegisteredDevice" = ${RegisteredDevice}
            "RunningWorkflow" = ${RunningWorkflow}
            "Server" = ${Server}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ComputeServerSetting<PSCustomObject>

.DESCRIPTION

Convert from JSON to ComputeServerSetting<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ComputeServerSetting<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToComputeServerSetting {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightComputeServerSetting' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightComputeServerSetting
        $AllProperties = ("ClassId", "ObjectType", "AccountMoid", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "Owners", "SharedScope", "Tags", "VersionContext", "_0_ClusterReplicationNetworkPolicy", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "DeviceMoId", "Dn", "Rn", "AdminLocatorLedState", "AdminPowerState", "ConfigState", "Name", "OneTimeBootDevice", "PersistentMemoryOperation", "ServerConfig", "LocatorLed", "RegisteredDevice", "RunningWorkflow", "Server")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeviceMoId"))) { #optional property not found
            $DeviceMoId = $null
        } else {
            $DeviceMoId = $JsonParameters.PSobject.Properties["DeviceMoId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Dn"))) { #optional property not found
            $Dn = $null
        } else {
            $Dn = $JsonParameters.PSobject.Properties["Dn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Rn"))) { #optional property not found
            $Rn = $null
        } else {
            $Rn = $JsonParameters.PSobject.Properties["Rn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdminLocatorLedState"))) { #optional property not found
            $AdminLocatorLedState = $null
        } else {
            $AdminLocatorLedState = $JsonParameters.PSobject.Properties["AdminLocatorLedState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdminPowerState"))) { #optional property not found
            $AdminPowerState = $null
        } else {
            $AdminPowerState = $JsonParameters.PSobject.Properties["AdminPowerState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConfigState"))) { #optional property not found
            $ConfigState = $null
        } else {
            $ConfigState = $JsonParameters.PSobject.Properties["ConfigState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OneTimeBootDevice"))) { #optional property not found
            $OneTimeBootDevice = $null
        } else {
            $OneTimeBootDevice = $JsonParameters.PSobject.Properties["OneTimeBootDevice"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PersistentMemoryOperation"))) { #optional property not found
            $PersistentMemoryOperation = $null
        } else {
            $PersistentMemoryOperation = $JsonParameters.PSobject.Properties["PersistentMemoryOperation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ServerConfig"))) { #optional property not found
            $ServerConfig = $null
        } else {
            $ServerConfig = $JsonParameters.PSobject.Properties["ServerConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LocatorLed"))) { #optional property not found
            $LocatorLed = $null
        } else {
            $LocatorLed = $JsonParameters.PSobject.Properties["LocatorLed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RunningWorkflow"))) { #optional property not found
            $RunningWorkflow = $null
        } else {
            $RunningWorkflow = $JsonParameters.PSobject.Properties["RunningWorkflow"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Server"))) { #optional property not found
            $Server = $null
        } else {
            $Server = $JsonParameters.PSobject.Properties["Server"].value
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
            "DeviceMoId" = ${DeviceMoId}
            "Dn" = ${Dn}
            "Rn" = ${Rn}
            "AdminLocatorLedState" = ${AdminLocatorLedState}
            "AdminPowerState" = ${AdminPowerState}
            "ConfigState" = ${ConfigState}
            "Name" = ${Name}
            "OneTimeBootDevice" = ${OneTimeBootDevice}
            "PersistentMemoryOperation" = ${PersistentMemoryOperation}
            "ServerConfig" = ${ServerConfig}
            "LocatorLed" = ${LocatorLed}
            "RegisteredDevice" = ${RegisteredDevice}
            "RunningWorkflow" = ${RunningWorkflow}
            "Server" = ${Server}
        }

        return $PSO
    }

}

