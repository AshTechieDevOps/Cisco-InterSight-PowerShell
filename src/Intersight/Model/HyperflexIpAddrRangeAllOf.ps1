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

Definition of the list of properties defined in 'hyperflex.IpAddrRange', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER EndAddr
The end IPv4 address of the range.
.PARAMETER Gateway
The default gateway for the start and end IPv4 addresses.
.PARAMETER Netmask
The netmask specified in dot decimal notation. The start address, end address, and gateway must all be within the network specified by this netmask.
.PARAMETER StartAddr
The start IPv4 address of the range.
.OUTPUTS

HyperflexIpAddrRangeAllOf<PSCustomObject>
#>

function Initialize-IntersightHyperflexIpAddrRangeAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.IpAddrRange")]
        [String]
        ${ClassId} = "hyperflex.IpAddrRange",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.IpAddrRange")]
        [String]
        ${ObjectType} = "hyperflex.IpAddrRange",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$")]
        [String]
        ${EndAddr},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$")]
        [String]
        ${Gateway},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^(((255\.){3}(255|254|252|248|240|224|192|128|0+))|((255\.){2}(255|254|252|248|240|224|192|128|0+)\.0)|((255\.)(255|254|252|248|240|224|192|128|0+)(\.0+){2})|((255|254|252|248|240|224|192|128|0+)(\.0+){3}))$")]
        [String]
        ${Netmask},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$")]
        [String]
        ${StartAddr}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightHyperflexIpAddrRangeAllOf' | Write-Debug
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
            "EndAddr" = ${EndAddr}
            "Gateway" = ${Gateway}
            "Netmask" = ${Netmask}
            "StartAddr" = ${StartAddr}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HyperflexIpAddrRangeAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to HyperflexIpAddrRangeAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HyperflexIpAddrRangeAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToHyperflexIpAddrRangeAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightHyperflexIpAddrRangeAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightHyperflexIpAddrRangeAllOf
        $AllProperties = ("ClassId", "ObjectType", "EndAddr", "Gateway", "Netmask", "StartAddr")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndAddr"))) { #optional property not found
            $EndAddr = $null
        } else {
            $EndAddr = $JsonParameters.PSobject.Properties["EndAddr"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Gateway"))) { #optional property not found
            $Gateway = $null
        } else {
            $Gateway = $JsonParameters.PSobject.Properties["Gateway"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Netmask"))) { #optional property not found
            $Netmask = $null
        } else {
            $Netmask = $JsonParameters.PSobject.Properties["Netmask"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StartAddr"))) { #optional property not found
            $StartAddr = $null
        } else {
            $StartAddr = $JsonParameters.PSobject.Properties["StartAddr"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "EndAddr" = ${EndAddr}
            "Gateway" = ${Gateway}
            "Netmask" = ${Netmask}
            "StartAddr" = ${StartAddr}
        }

        return $PSO
    }

}

