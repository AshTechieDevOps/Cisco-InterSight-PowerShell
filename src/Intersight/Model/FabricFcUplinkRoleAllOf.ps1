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

Definition of the list of properties defined in 'fabric.FcUplinkRole', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER AdminSpeed
Admin configured speed for the port. * `Auto` - Admin configurable speed AUTO ( default ). * `8Gbps` - Admin configurable speed 8Gbps. * `16Gbps` - Admin configurable speed 16Gbps. * `32Gbps` - Admin configurable speed 32Gbps.
.PARAMETER FillPattern
Fill pattern to differentiate the configs in NPIV. * `Idle` - Fc Fill Pattern type Idle. * `Arbff` - Fc Fill Pattern type Arbff.
.PARAMETER VsanId
Virtual San Identifier associated to the FC port.
.OUTPUTS

FabricFcUplinkRoleAllOf<PSCustomObject>
#>

function Initialize-IntersightFabricFcUplinkRoleAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("fabric.FcUplinkRole")]
        [String]
        ${ClassId} = "fabric.FcUplinkRole",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("fabric.FcUplinkRole")]
        [String]
        ${ObjectType} = "fabric.FcUplinkRole",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Auto", "8Gbps", "16Gbps", "32Gbps")]
        [String]
        ${AdminSpeed} = "Auto",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Idle", "Arbff")]
        [String]
        ${FillPattern} = "Idle",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${VsanId}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightFabricFcUplinkRoleAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if ($VsanId -and $VsanId -gt 4093) {
          throw "invalid value for 'VsanId', must be smaller than or equal to 4093."
        }

        if ($VsanId -and $VsanId -lt 1) {
          throw "invalid value for 'VsanId', must be greater than or equal to 1."
        }

        
        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AdminSpeed" = ${AdminSpeed}
            "FillPattern" = ${FillPattern}
            "VsanId" = ${VsanId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FabricFcUplinkRoleAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to FabricFcUplinkRoleAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FabricFcUplinkRoleAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToFabricFcUplinkRoleAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightFabricFcUplinkRoleAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightFabricFcUplinkRoleAllOf
        $AllProperties = ("ClassId", "ObjectType", "AdminSpeed", "FillPattern", "VsanId")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FillPattern"))) { #optional property not found
            $FillPattern = $null
        } else {
            $FillPattern = $JsonParameters.PSobject.Properties["FillPattern"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VsanId"))) { #optional property not found
            $VsanId = $null
        } else {
            $VsanId = $JsonParameters.PSobject.Properties["VsanId"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AdminSpeed" = ${AdminSpeed}
            "FillPattern" = ${FillPattern}
            "VsanId" = ${VsanId}
        }

        return $PSO
    }

}

