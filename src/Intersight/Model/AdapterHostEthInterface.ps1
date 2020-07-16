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

Physical / Virtual port of an adapter as seen by the host.

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
.PARAMETER OperState
Operational state of an Interface.
.PARAMETER AcknowledgedPeerInterface
No description available.
.PARAMETER PeerInterface
No description available.
.PARAMETER AdapterUnit
No description available.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER RegisteredDevice
No description available.
.OUTPUTS

AdapterHostEthInterface<PSCustomObject>
#>

function Initialize-IntersightAdapterHostEthInterface {
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
        [String]
        ${OperState},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AcknowledgedPeerInterface},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PeerInterface},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AdapterUnit},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightAdapterHostEthInterface' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "OperState" = ${OperState}
            "AcknowledgedPeerInterface" = ${AcknowledgedPeerInterface}
            "PeerInterface" = ${PeerInterface}
            "AdapterUnit" = ${AdapterUnit}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AdapterHostEthInterface<PSCustomObject>

.DESCRIPTION

Convert from JSON to AdapterHostEthInterface<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AdapterHostEthInterface<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToAdapterHostEthInterface {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightAdapterHostEthInterface' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightAdapterHostEthInterface
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "DeviceMoId", "Dn", "Rn", "OperState", "AcknowledgedPeerInterface", "PeerInterface", "AdminState", "EpDn", "HostEthInterfaceId", "InterfaceType", "MacAddress", "Name", "Operability", "OriginalMacAddress", "PciAddr", "PeerDn", "VirtualizationPreference", "VnicDn", "AdapterUnit", "InventoryDeviceInfo", "RegisteredDevice")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperState"))) { #optional property not found
            $OperState = $null
        } else {
            $OperState = $JsonParameters.PSobject.Properties["OperState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AcknowledgedPeerInterface"))) { #optional property not found
            $AcknowledgedPeerInterface = $null
        } else {
            $AcknowledgedPeerInterface = $JsonParameters.PSobject.Properties["AcknowledgedPeerInterface"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PeerInterface"))) { #optional property not found
            $PeerInterface = $null
        } else {
            $PeerInterface = $JsonParameters.PSobject.Properties["PeerInterface"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdminState"))) { #optional property not found
            $AdminState = $null
        } else {
            $AdminState = $JsonParameters.PSobject.Properties["AdminState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EpDn"))) { #optional property not found
            $EpDn = $null
        } else {
            $EpDn = $JsonParameters.PSobject.Properties["EpDn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HostEthInterfaceId"))) { #optional property not found
            $HostEthInterfaceId = $null
        } else {
            $HostEthInterfaceId = $JsonParameters.PSobject.Properties["HostEthInterfaceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InterfaceType"))) { #optional property not found
            $InterfaceType = $null
        } else {
            $InterfaceType = $JsonParameters.PSobject.Properties["InterfaceType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MacAddress"))) { #optional property not found
            $MacAddress = $null
        } else {
            $MacAddress = $JsonParameters.PSobject.Properties["MacAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Operability"))) { #optional property not found
            $Operability = $null
        } else {
            $Operability = $JsonParameters.PSobject.Properties["Operability"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OriginalMacAddress"))) { #optional property not found
            $OriginalMacAddress = $null
        } else {
            $OriginalMacAddress = $JsonParameters.PSobject.Properties["OriginalMacAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PciAddr"))) { #optional property not found
            $PciAddr = $null
        } else {
            $PciAddr = $JsonParameters.PSobject.Properties["PciAddr"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PeerDn"))) { #optional property not found
            $PeerDn = $null
        } else {
            $PeerDn = $JsonParameters.PSobject.Properties["PeerDn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VirtualizationPreference"))) { #optional property not found
            $VirtualizationPreference = $null
        } else {
            $VirtualizationPreference = $JsonParameters.PSobject.Properties["VirtualizationPreference"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VnicDn"))) { #optional property not found
            $VnicDn = $null
        } else {
            $VnicDn = $JsonParameters.PSobject.Properties["VnicDn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdapterUnit"))) { #optional property not found
            $AdapterUnit = $null
        } else {
            $AdapterUnit = $JsonParameters.PSobject.Properties["AdapterUnit"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InventoryDeviceInfo"))) { #optional property not found
            $InventoryDeviceInfo = $null
        } else {
            $InventoryDeviceInfo = $JsonParameters.PSobject.Properties["InventoryDeviceInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
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
            "DeviceMoId" = ${DeviceMoId}
            "Dn" = ${Dn}
            "Rn" = ${Rn}
            "OperState" = ${OperState}
            "AcknowledgedPeerInterface" = ${AcknowledgedPeerInterface}
            "PeerInterface" = ${PeerInterface}
            "AdminState" = ${AdminState}
            "EpDn" = ${EpDn}
            "HostEthInterfaceId" = ${HostEthInterfaceId}
            "InterfaceType" = ${InterfaceType}
            "MacAddress" = ${MacAddress}
            "Name" = ${Name}
            "Operability" = ${Operability}
            "OriginalMacAddress" = ${OriginalMacAddress}
            "PciAddr" = ${PciAddr}
            "PeerDn" = ${PeerDn}
            "VirtualizationPreference" = ${VirtualizationPreference}
            "VnicDn" = ${VnicDn}
            "AdapterUnit" = ${AdapterUnit}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }

}

