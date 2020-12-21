#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2020-12-08T20:53:20Z.
# Version: 1.0.9-2908
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Definition of the list of properties defined in 'network.ElementSummary', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER AlarmSummary
No description available.
.PARAMETER RegisteredDevice
No description available.
.OUTPUTS

NetworkElementSummaryAllOf<PSCustomObject>
#>

function Initialize-IntersightNetworkElementSummaryAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("network.ElementSummary")]
        [String]
        ${ClassId} = "network.ElementSummary",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("network.ElementSummary")]
        [String]
        ${ObjectType} = "network.ElementSummary",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AlarmSummary},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightNetworkElementSummaryAllOf' | Write-Debug
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
            "AlarmSummary" = ${AlarmSummary}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NetworkElementSummaryAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to NetworkElementSummaryAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NetworkElementSummaryAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToNetworkElementSummaryAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightNetworkElementSummaryAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightNetworkElementSummaryAllOf
        $AllProperties = ("ClassId", "ObjectType", "AdminEvacState", "AdminInbandInterfaceState", "AlarmSummary", "AvailableMemory", "DeviceMoId", "Dn", "EthernetMode", "EthernetSwitchingMode", "FaultSummary", "FcMode", "FcSwitchingMode", "Firmware", "InbandIpAddress", "InbandIpGateway", "InbandIpMask", "InbandVlan", "Ipv4Address", "ManagementMode", "Model", "Name", "NumEtherPorts", "NumEtherPortsConfigured", "NumEtherPortsLinkUp", "NumExpansionModules", "NumFcPorts", "NumFcPortsConfigured", "NumFcPortsLinkUp", "OperEvacState", "Operability", "OutOfBandIpAddress", "OutOfBandIpGateway", "OutOfBandIpMask", "OutOfBandIpv4Address", "OutOfBandIpv4Gateway", "OutOfBandIpv4Mask", "OutOfBandIpv6Address", "OutOfBandIpv6Gateway", "OutOfBandIpv6Prefix", "OutOfBandMac", "Revision", "Rn", "Serial", "SourceObjectType", "SwitchId", "TotalMemory", "Vendor", "Version", "RegisteredDevice")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdminEvacState"))) { #optional property not found
            $AdminEvacState = $null
        } else {
            $AdminEvacState = $JsonParameters.PSobject.Properties["AdminEvacState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdminInbandInterfaceState"))) { #optional property not found
            $AdminInbandInterfaceState = $null
        } else {
            $AdminInbandInterfaceState = $JsonParameters.PSobject.Properties["AdminInbandInterfaceState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AlarmSummary"))) { #optional property not found
            $AlarmSummary = $null
        } else {
            $AlarmSummary = $JsonParameters.PSobject.Properties["AlarmSummary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AvailableMemory"))) { #optional property not found
            $AvailableMemory = $null
        } else {
            $AvailableMemory = $JsonParameters.PSobject.Properties["AvailableMemory"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EthernetMode"))) { #optional property not found
            $EthernetMode = $null
        } else {
            $EthernetMode = $JsonParameters.PSobject.Properties["EthernetMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EthernetSwitchingMode"))) { #optional property not found
            $EthernetSwitchingMode = $null
        } else {
            $EthernetSwitchingMode = $JsonParameters.PSobject.Properties["EthernetSwitchingMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FaultSummary"))) { #optional property not found
            $FaultSummary = $null
        } else {
            $FaultSummary = $JsonParameters.PSobject.Properties["FaultSummary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FcMode"))) { #optional property not found
            $FcMode = $null
        } else {
            $FcMode = $JsonParameters.PSobject.Properties["FcMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FcSwitchingMode"))) { #optional property not found
            $FcSwitchingMode = $null
        } else {
            $FcSwitchingMode = $JsonParameters.PSobject.Properties["FcSwitchingMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Firmware"))) { #optional property not found
            $Firmware = $null
        } else {
            $Firmware = $JsonParameters.PSobject.Properties["Firmware"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InbandIpAddress"))) { #optional property not found
            $InbandIpAddress = $null
        } else {
            $InbandIpAddress = $JsonParameters.PSobject.Properties["InbandIpAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InbandIpGateway"))) { #optional property not found
            $InbandIpGateway = $null
        } else {
            $InbandIpGateway = $JsonParameters.PSobject.Properties["InbandIpGateway"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InbandIpMask"))) { #optional property not found
            $InbandIpMask = $null
        } else {
            $InbandIpMask = $JsonParameters.PSobject.Properties["InbandIpMask"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InbandVlan"))) { #optional property not found
            $InbandVlan = $null
        } else {
            $InbandVlan = $JsonParameters.PSobject.Properties["InbandVlan"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Ipv4Address"))) { #optional property not found
            $Ipv4Address = $null
        } else {
            $Ipv4Address = $JsonParameters.PSobject.Properties["Ipv4Address"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ManagementMode"))) { #optional property not found
            $ManagementMode = $null
        } else {
            $ManagementMode = $JsonParameters.PSobject.Properties["ManagementMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Model"))) { #optional property not found
            $Model = $null
        } else {
            $Model = $JsonParameters.PSobject.Properties["Model"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumEtherPorts"))) { #optional property not found
            $NumEtherPorts = $null
        } else {
            $NumEtherPorts = $JsonParameters.PSobject.Properties["NumEtherPorts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumEtherPortsConfigured"))) { #optional property not found
            $NumEtherPortsConfigured = $null
        } else {
            $NumEtherPortsConfigured = $JsonParameters.PSobject.Properties["NumEtherPortsConfigured"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumEtherPortsLinkUp"))) { #optional property not found
            $NumEtherPortsLinkUp = $null
        } else {
            $NumEtherPortsLinkUp = $JsonParameters.PSobject.Properties["NumEtherPortsLinkUp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumExpansionModules"))) { #optional property not found
            $NumExpansionModules = $null
        } else {
            $NumExpansionModules = $JsonParameters.PSobject.Properties["NumExpansionModules"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumFcPorts"))) { #optional property not found
            $NumFcPorts = $null
        } else {
            $NumFcPorts = $JsonParameters.PSobject.Properties["NumFcPorts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumFcPortsConfigured"))) { #optional property not found
            $NumFcPortsConfigured = $null
        } else {
            $NumFcPortsConfigured = $JsonParameters.PSobject.Properties["NumFcPortsConfigured"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumFcPortsLinkUp"))) { #optional property not found
            $NumFcPortsLinkUp = $null
        } else {
            $NumFcPortsLinkUp = $JsonParameters.PSobject.Properties["NumFcPortsLinkUp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperEvacState"))) { #optional property not found
            $OperEvacState = $null
        } else {
            $OperEvacState = $JsonParameters.PSobject.Properties["OperEvacState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Operability"))) { #optional property not found
            $Operability = $null
        } else {
            $Operability = $JsonParameters.PSobject.Properties["Operability"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpAddress"))) { #optional property not found
            $OutOfBandIpAddress = $null
        } else {
            $OutOfBandIpAddress = $JsonParameters.PSobject.Properties["OutOfBandIpAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpGateway"))) { #optional property not found
            $OutOfBandIpGateway = $null
        } else {
            $OutOfBandIpGateway = $JsonParameters.PSobject.Properties["OutOfBandIpGateway"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpMask"))) { #optional property not found
            $OutOfBandIpMask = $null
        } else {
            $OutOfBandIpMask = $JsonParameters.PSobject.Properties["OutOfBandIpMask"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpv4Address"))) { #optional property not found
            $OutOfBandIpv4Address = $null
        } else {
            $OutOfBandIpv4Address = $JsonParameters.PSobject.Properties["OutOfBandIpv4Address"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpv4Gateway"))) { #optional property not found
            $OutOfBandIpv4Gateway = $null
        } else {
            $OutOfBandIpv4Gateway = $JsonParameters.PSobject.Properties["OutOfBandIpv4Gateway"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpv4Mask"))) { #optional property not found
            $OutOfBandIpv4Mask = $null
        } else {
            $OutOfBandIpv4Mask = $JsonParameters.PSobject.Properties["OutOfBandIpv4Mask"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpv6Address"))) { #optional property not found
            $OutOfBandIpv6Address = $null
        } else {
            $OutOfBandIpv6Address = $JsonParameters.PSobject.Properties["OutOfBandIpv6Address"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpv6Gateway"))) { #optional property not found
            $OutOfBandIpv6Gateway = $null
        } else {
            $OutOfBandIpv6Gateway = $JsonParameters.PSobject.Properties["OutOfBandIpv6Gateway"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandIpv6Prefix"))) { #optional property not found
            $OutOfBandIpv6Prefix = $null
        } else {
            $OutOfBandIpv6Prefix = $JsonParameters.PSobject.Properties["OutOfBandIpv6Prefix"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutOfBandMac"))) { #optional property not found
            $OutOfBandMac = $null
        } else {
            $OutOfBandMac = $JsonParameters.PSobject.Properties["OutOfBandMac"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Revision"))) { #optional property not found
            $Revision = $null
        } else {
            $Revision = $JsonParameters.PSobject.Properties["Revision"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Rn"))) { #optional property not found
            $Rn = $null
        } else {
            $Rn = $JsonParameters.PSobject.Properties["Rn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Serial"))) { #optional property not found
            $Serial = $null
        } else {
            $Serial = $JsonParameters.PSobject.Properties["Serial"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SourceObjectType"))) { #optional property not found
            $SourceObjectType = $null
        } else {
            $SourceObjectType = $JsonParameters.PSobject.Properties["SourceObjectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SwitchId"))) { #optional property not found
            $SwitchId = $null
        } else {
            $SwitchId = $JsonParameters.PSobject.Properties["SwitchId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TotalMemory"))) { #optional property not found
            $TotalMemory = $null
        } else {
            $TotalMemory = $JsonParameters.PSobject.Properties["TotalMemory"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Vendor"))) { #optional property not found
            $Vendor = $null
        } else {
            $Vendor = $JsonParameters.PSobject.Properties["Vendor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Version"))) { #optional property not found
            $Version = $null
        } else {
            $Version = $JsonParameters.PSobject.Properties["Version"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AdminEvacState" = ${AdminEvacState}
            "AdminInbandInterfaceState" = ${AdminInbandInterfaceState}
            "AlarmSummary" = ${AlarmSummary}
            "AvailableMemory" = ${AvailableMemory}
            "DeviceMoId" = ${DeviceMoId}
            "Dn" = ${Dn}
            "EthernetMode" = ${EthernetMode}
            "EthernetSwitchingMode" = ${EthernetSwitchingMode}
            "FaultSummary" = ${FaultSummary}
            "FcMode" = ${FcMode}
            "FcSwitchingMode" = ${FcSwitchingMode}
            "Firmware" = ${Firmware}
            "InbandIpAddress" = ${InbandIpAddress}
            "InbandIpGateway" = ${InbandIpGateway}
            "InbandIpMask" = ${InbandIpMask}
            "InbandVlan" = ${InbandVlan}
            "Ipv4Address" = ${Ipv4Address}
            "ManagementMode" = ${ManagementMode}
            "Model" = ${Model}
            "Name" = ${Name}
            "NumEtherPorts" = ${NumEtherPorts}
            "NumEtherPortsConfigured" = ${NumEtherPortsConfigured}
            "NumEtherPortsLinkUp" = ${NumEtherPortsLinkUp}
            "NumExpansionModules" = ${NumExpansionModules}
            "NumFcPorts" = ${NumFcPorts}
            "NumFcPortsConfigured" = ${NumFcPortsConfigured}
            "NumFcPortsLinkUp" = ${NumFcPortsLinkUp}
            "OperEvacState" = ${OperEvacState}
            "Operability" = ${Operability}
            "OutOfBandIpAddress" = ${OutOfBandIpAddress}
            "OutOfBandIpGateway" = ${OutOfBandIpGateway}
            "OutOfBandIpMask" = ${OutOfBandIpMask}
            "OutOfBandIpv4Address" = ${OutOfBandIpv4Address}
            "OutOfBandIpv4Gateway" = ${OutOfBandIpv4Gateway}
            "OutOfBandIpv4Mask" = ${OutOfBandIpv4Mask}
            "OutOfBandIpv6Address" = ${OutOfBandIpv6Address}
            "OutOfBandIpv6Gateway" = ${OutOfBandIpv6Gateway}
            "OutOfBandIpv6Prefix" = ${OutOfBandIpv6Prefix}
            "OutOfBandMac" = ${OutOfBandMac}
            "Revision" = ${Revision}
            "Rn" = ${Rn}
            "Serial" = ${Serial}
            "SourceObjectType" = ${SourceObjectType}
            "SwitchId" = ${SwitchId}
            "TotalMemory" = ${TotalMemory}
            "Vendor" = ${Vendor}
            "Version" = ${Version}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }

}

