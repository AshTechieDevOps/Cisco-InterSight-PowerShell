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

Model contains the details of the ethernet port-channels configured on the FI.

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
.PARAMETER AdminSpeed
Administrator configured Speed applied on the port channel.
.PARAMETER Mode
Mode information N_proxy, F or E associated to the Fibre Channel portchannel.
.PARAMETER OperSpeed
Operational speed of this port-channel.
.PARAMETER OperState
Operational state of this port-channel.
.PARAMETER OperStateQual
Reason for this port-channel's Operational state.
.PARAMETER PortChannelId
Unique identifier for this port-channel on the FI.
.PARAMETER Role
This port-channel's configured role (fcUplink, fcStorage, etc.).
.PARAMETER SwitchId
Switch Identifier that is local to a cluster.
.PARAMETER Vsan
Virtual San that is associated to the port-channel.
.PARAMETER EquipmentSwitchCard
No description available.
.PARAMETER RegisteredDevice
No description available.
.OUTPUTS

FcPortChannel<PSCustomObject>
#>

function Initialize-IntersightFcPortChannel {
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
        ${AdminSpeed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Mode},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OperSpeed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OperState},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OperStateQual},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${PortChannelId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Role},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SwitchId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Vsan},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EquipmentSwitchCard},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightFcPortChannel' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "AdminSpeed" = ${AdminSpeed}
            "Mode" = ${Mode}
            "OperSpeed" = ${OperSpeed}
            "OperState" = ${OperState}
            "OperStateQual" = ${OperStateQual}
            "PortChannelId" = ${PortChannelId}
            "Role" = ${Role}
            "SwitchId" = ${SwitchId}
            "Vsan" = ${Vsan}
            "EquipmentSwitchCard" = ${EquipmentSwitchCard}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FcPortChannel<PSCustomObject>

.DESCRIPTION

Convert from JSON to FcPortChannel<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FcPortChannel<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToFcPortChannel {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightFcPortChannel' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightFcPortChannel
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "DeviceMoId", "Dn", "Rn", "AdminSpeed", "AdminState", "Mode", "OperSpeed", "OperState", "OperStateQual", "PortChannelId", "Role", "SwitchId", "Vsan", "EquipmentSwitchCard", "RegisteredDevice")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdminSpeed"))) { #optional property not found
            $AdminSpeed = $null
        } else {
            $AdminSpeed = $JsonParameters.PSobject.Properties["AdminSpeed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdminState"))) { #optional property not found
            $AdminState = $null
        } else {
            $AdminState = $JsonParameters.PSobject.Properties["AdminState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Mode"))) { #optional property not found
            $Mode = $null
        } else {
            $Mode = $JsonParameters.PSobject.Properties["Mode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperSpeed"))) { #optional property not found
            $OperSpeed = $null
        } else {
            $OperSpeed = $JsonParameters.PSobject.Properties["OperSpeed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperState"))) { #optional property not found
            $OperState = $null
        } else {
            $OperState = $JsonParameters.PSobject.Properties["OperState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperStateQual"))) { #optional property not found
            $OperStateQual = $null
        } else {
            $OperStateQual = $JsonParameters.PSobject.Properties["OperStateQual"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PortChannelId"))) { #optional property not found
            $PortChannelId = $null
        } else {
            $PortChannelId = $JsonParameters.PSobject.Properties["PortChannelId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Role"))) { #optional property not found
            $Role = $null
        } else {
            $Role = $JsonParameters.PSobject.Properties["Role"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SwitchId"))) { #optional property not found
            $SwitchId = $null
        } else {
            $SwitchId = $JsonParameters.PSobject.Properties["SwitchId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Vsan"))) { #optional property not found
            $Vsan = $null
        } else {
            $Vsan = $JsonParameters.PSobject.Properties["Vsan"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EquipmentSwitchCard"))) { #optional property not found
            $EquipmentSwitchCard = $null
        } else {
            $EquipmentSwitchCard = $JsonParameters.PSobject.Properties["EquipmentSwitchCard"].value
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
            "AdminSpeed" = ${AdminSpeed}
            "AdminState" = ${AdminState}
            "Mode" = ${Mode}
            "OperSpeed" = ${OperSpeed}
            "OperState" = ${OperState}
            "OperStateQual" = ${OperStateQual}
            "PortChannelId" = ${PortChannelId}
            "Role" = ${Role}
            "SwitchId" = ${SwitchId}
            "Vsan" = ${Vsan}
            "EquipmentSwitchCard" = ${EquipmentSwitchCard}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }

}

