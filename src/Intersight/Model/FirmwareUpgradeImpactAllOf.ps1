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

Definition of the list of properties defined in 'firmware.UpgradeImpact', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Chassis
An array of relationships to equipmentChassis resources.
.PARAMETER Distributable
No description available.
.PARAMETER NetworkElements
An array of relationships to networkElement resources.
.PARAMETER Release
No description available.
.PARAMETER Server
An array of relationships to computePhysical resources.
.OUTPUTS

FirmwareUpgradeImpactAllOf<PSCustomObject>
#>

function Initialize-IntersightFirmwareUpgradeImpactAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("firmware.UpgradeImpact")]
        [String]
        ${ClassId} = "firmware.UpgradeImpact",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("firmware.UpgradeImpact")]
        [String]
        ${ObjectType} = "firmware.UpgradeImpact",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Chassis},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Distributable},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${NetworkElements},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Release},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Server}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightFirmwareUpgradeImpactAllOf' | Write-Debug
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
            "Chassis" = ${Chassis}
            "Distributable" = ${Distributable}
            "NetworkElements" = ${NetworkElements}
            "Release" = ${Release}
            "Server" = ${Server}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FirmwareUpgradeImpactAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to FirmwareUpgradeImpactAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FirmwareUpgradeImpactAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToFirmwareUpgradeImpactAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightFirmwareUpgradeImpactAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightFirmwareUpgradeImpactAllOf
        $AllProperties = ("ClassId", "ObjectType", "Chassis", "Device", "Distributable", "NetworkElements", "Release", "Server")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Chassis"))) { #optional property not found
            $Chassis = $null
        } else {
            $Chassis = $JsonParameters.PSobject.Properties["Chassis"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Device"))) { #optional property not found
            $Device = $null
        } else {
            $Device = $JsonParameters.PSobject.Properties["Device"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Distributable"))) { #optional property not found
            $Distributable = $null
        } else {
            $Distributable = $JsonParameters.PSobject.Properties["Distributable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NetworkElements"))) { #optional property not found
            $NetworkElements = $null
        } else {
            $NetworkElements = $JsonParameters.PSobject.Properties["NetworkElements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Release"))) { #optional property not found
            $Release = $null
        } else {
            $Release = $JsonParameters.PSobject.Properties["Release"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Server"))) { #optional property not found
            $Server = $null
        } else {
            $Server = $JsonParameters.PSobject.Properties["Server"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Chassis" = ${Chassis}
            "Device" = ${Device}
            "Distributable" = ${Distributable}
            "NetworkElements" = ${NetworkElements}
            "Release" = ${Release}
            "Server" = ${Server}
        }

        return $PSO
    }

}

