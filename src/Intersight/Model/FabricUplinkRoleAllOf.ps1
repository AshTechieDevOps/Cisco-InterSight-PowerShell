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

Definition of the list of properties defined in 'fabric.UplinkRole', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER AdminSpeed
Admin configured speed for the port. * `Auto` - Admin configurable speed AUTO ( default ). * `1Gbps` - Admin configurable speed 1Gbps. * `10Gbps` - Admin configurable speed 10Gbps. * `25Gbps` - Admin configurable speed 25Gbps. * `40Gbps` - Admin configurable speed 40Gbps. * `100Gbps` - Admin configurable speed 100Gbps.
.PARAMETER Fec
Forward error correction configuration for the port. * `Auto` - Forward error correction option 'Auto'. * `Cl91` - Forward error correction option 'cl91'. * `Cl74` - Forward error correction option 'cl74'.
.PARAMETER UdldAdminState
Admin configured state for UDLD for this port. * `Disabled` - Admin configured Disabled State. * `Enabled` - Admin configured Enabled State.
.OUTPUTS

FabricUplinkRoleAllOf<PSCustomObject>
#>

function Initialize-IntersightFabricUplinkRoleAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("fabric.UplinkRole")]
        [String]
        ${ClassId} = "fabric.UplinkRole",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("fabric.UplinkRole")]
        [String]
        ${ObjectType} = "fabric.UplinkRole",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Auto", "1Gbps", "10Gbps", "25Gbps", "40Gbps", "100Gbps")]
        [String]
        ${AdminSpeed} = "Auto",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Auto", "Cl91", "Cl74")]
        [String]
        ${Fec} = "Auto",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Disabled", "Enabled")]
        [String]
        ${UdldAdminState} = "Disabled"
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightFabricUplinkRoleAllOf' | Write-Debug
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
            "AdminSpeed" = ${AdminSpeed}
            "Fec" = ${Fec}
            "UdldAdminState" = ${UdldAdminState}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FabricUplinkRoleAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to FabricUplinkRoleAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FabricUplinkRoleAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToFabricUplinkRoleAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightFabricUplinkRoleAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightFabricUplinkRoleAllOf
        $AllProperties = ("ClassId", "ObjectType", "AdminSpeed", "Fec", "UdldAdminState")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdminSpeed"))) { #optional property not found
            $AdminSpeed = $null
        } else {
            $AdminSpeed = $JsonParameters.PSobject.Properties["AdminSpeed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Fec"))) { #optional property not found
            $Fec = $null
        } else {
            $Fec = $JsonParameters.PSobject.Properties["Fec"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UdldAdminState"))) { #optional property not found
            $UdldAdminState = $null
        } else {
            $UdldAdminState = $JsonParameters.PSobject.Properties["UdldAdminState"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AdminSpeed" = ${AdminSpeed}
            "Fec" = ${Fec}
            "UdldAdminState" = ${UdldAdminState}
        }

        return $PSO
    }

}

