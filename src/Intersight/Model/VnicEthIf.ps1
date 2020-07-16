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

Virtual Ethernet Interface.

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
.PARAMETER Cdn
No description available.
.PARAMETER FailoverEnabled
Setting this to true esnures that the traffic failsover from one uplink to another auotmatically in case of an uplink failure. It is applicable for Cisco VIC adapters only which are connected to Fabric Interconnect cluster. The uplink if specified determines the primary uplink in case of a failover.
.PARAMETER Name
Name of the virtual ethernet interface.
.PARAMETER Order
The order in which the virtual interface is brought up. The order assigned to an interface should be unique for all the Ethernet and Fibre-Channel interfaces on each PCI link on a VIC adapter. The maximum value of PCI order is limited by the number of virtual interfaces (Ethernet and Fibre-Channel) on each PCI link on a VIC adapter. All VIC adapters have a single PCI link except VIC 1385 which has two.
.PARAMETER Placement
No description available.
.PARAMETER UsnicSettings
No description available.
.PARAMETER VmqSettings
No description available.
.PARAMETER EthAdapterPolicy
No description available.
.PARAMETER EthNetworkPolicy
No description available.
.PARAMETER EthQosPolicy
No description available.
.PARAMETER LanConnectivityPolicy
No description available.
.PARAMETER LcpVnic
No description available.
.PARAMETER MacLease
No description available.
.PARAMETER MacPool
No description available.
.PARAMETER VarProfile
No description available.
.PARAMETER SpVnics
An array of relationships to vnicEthIf resources.
.OUTPUTS

VnicEthIf<PSCustomObject>
#>

function Initialize-IntersightVnicEthIf {
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
        [PSCustomObject]
        ${Cdn},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${FailoverEnabled},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9-._:]*$")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Order},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Placement},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UsnicSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VmqSettings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EthAdapterPolicy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EthNetworkPolicy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EthQosPolicy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LanConnectivityPolicy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LcpVnic},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${MacLease},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${MacPool},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarProfile},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${SpVnics}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightVnicEthIf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name -and $Name.length -gt 31) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 31."
        }

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "Cdn" = ${Cdn}
            "FailoverEnabled" = ${FailoverEnabled}
            "Name" = ${Name}
            "Order" = ${Order}
            "Placement" = ${Placement}
            "UsnicSettings" = ${UsnicSettings}
            "VmqSettings" = ${VmqSettings}
            "EthAdapterPolicy" = ${EthAdapterPolicy}
            "EthNetworkPolicy" = ${EthNetworkPolicy}
            "EthQosPolicy" = ${EthQosPolicy}
            "LanConnectivityPolicy" = ${LanConnectivityPolicy}
            "LcpVnic" = ${LcpVnic}
            "MacLease" = ${MacLease}
            "MacPool" = ${MacPool}
            "Profile" = ${VarProfile}
            "SpVnics" = ${SpVnics}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VnicEthIf<PSCustomObject>

.DESCRIPTION

Convert from JSON to VnicEthIf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VnicEthIf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToVnicEthIf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightVnicEthIf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightVnicEthIf
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "Cdn", "FailoverEnabled", "MacAddress", "Name", "Order", "Placement", "StandbyVifId", "UsnicSettings", "VifId", "VmqSettings", "EthAdapterPolicy", "EthNetworkPolicy", "EthQosPolicy", "LanConnectivityPolicy", "LcpVnic", "MacLease", "MacPool", "Profile", "SpVnics")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Cdn"))) { #optional property not found
            $Cdn = $null
        } else {
            $Cdn = $JsonParameters.PSobject.Properties["Cdn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FailoverEnabled"))) { #optional property not found
            $FailoverEnabled = $null
        } else {
            $FailoverEnabled = $JsonParameters.PSobject.Properties["FailoverEnabled"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Order"))) { #optional property not found
            $Order = $null
        } else {
            $Order = $JsonParameters.PSobject.Properties["Order"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Placement"))) { #optional property not found
            $Placement = $null
        } else {
            $Placement = $JsonParameters.PSobject.Properties["Placement"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StandbyVifId"))) { #optional property not found
            $StandbyVifId = $null
        } else {
            $StandbyVifId = $JsonParameters.PSobject.Properties["StandbyVifId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UsnicSettings"))) { #optional property not found
            $UsnicSettings = $null
        } else {
            $UsnicSettings = $JsonParameters.PSobject.Properties["UsnicSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VifId"))) { #optional property not found
            $VifId = $null
        } else {
            $VifId = $JsonParameters.PSobject.Properties["VifId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VmqSettings"))) { #optional property not found
            $VmqSettings = $null
        } else {
            $VmqSettings = $JsonParameters.PSobject.Properties["VmqSettings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EthAdapterPolicy"))) { #optional property not found
            $EthAdapterPolicy = $null
        } else {
            $EthAdapterPolicy = $JsonParameters.PSobject.Properties["EthAdapterPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EthNetworkPolicy"))) { #optional property not found
            $EthNetworkPolicy = $null
        } else {
            $EthNetworkPolicy = $JsonParameters.PSobject.Properties["EthNetworkPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EthQosPolicy"))) { #optional property not found
            $EthQosPolicy = $null
        } else {
            $EthQosPolicy = $JsonParameters.PSobject.Properties["EthQosPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LanConnectivityPolicy"))) { #optional property not found
            $LanConnectivityPolicy = $null
        } else {
            $LanConnectivityPolicy = $JsonParameters.PSobject.Properties["LanConnectivityPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LcpVnic"))) { #optional property not found
            $LcpVnic = $null
        } else {
            $LcpVnic = $JsonParameters.PSobject.Properties["LcpVnic"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MacLease"))) { #optional property not found
            $MacLease = $null
        } else {
            $MacLease = $JsonParameters.PSobject.Properties["MacLease"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MacPool"))) { #optional property not found
            $MacPool = $null
        } else {
            $MacPool = $JsonParameters.PSobject.Properties["MacPool"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Profile"))) { #optional property not found
            $VarProfile = $null
        } else {
            $VarProfile = $JsonParameters.PSobject.Properties["Profile"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SpVnics"))) { #optional property not found
            $SpVnics = $null
        } else {
            $SpVnics = $JsonParameters.PSobject.Properties["SpVnics"].value
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
            "Cdn" = ${Cdn}
            "FailoverEnabled" = ${FailoverEnabled}
            "MacAddress" = ${MacAddress}
            "Name" = ${Name}
            "Order" = ${Order}
            "Placement" = ${Placement}
            "StandbyVifId" = ${StandbyVifId}
            "UsnicSettings" = ${UsnicSettings}
            "VifId" = ${VifId}
            "VmqSettings" = ${VmqSettings}
            "EthAdapterPolicy" = ${EthAdapterPolicy}
            "EthNetworkPolicy" = ${EthNetworkPolicy}
            "EthQosPolicy" = ${EthQosPolicy}
            "LanConnectivityPolicy" = ${LanConnectivityPolicy}
            "LcpVnic" = ${LcpVnic}
            "MacLease" = ${MacLease}
            "MacPool" = ${MacPool}
            "Profile" = ${VarProfile}
            "SpVnics" = ${SpVnics}
        }

        return $PSO
    }

}

