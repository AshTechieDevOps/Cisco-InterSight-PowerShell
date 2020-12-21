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

Device type used when booting from SAN Boot device.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Enabled
Specifies if the boot device is enabled or disabled.
.PARAMETER Name
A name that helps identify a boot device. It can be any string that adheres to the following constraints. It should start and end with an alphanumeric character. It can have underscores and hyphens. It cannot be more than 30 characters.
.PARAMETER Bootloader
No description available.
.PARAMETER InterfaceName
The name of the underlying vHBA interface to be used by the SAN boot device.
.PARAMETER Lun
The Logical Unit Number (LUN) of the device.
.PARAMETER Slot
Slot ID of the device. Supported values are ( 1 - 255, ""MLOM"", ""L1"", ""L2"" ).
.PARAMETER Wwpn
The WWPN Address of the underlying fiber channel interface used by the SAN boot device. Value must be in hexadecimal format xx:xx:xx:xx:xx:xx:xx:xx. Allowed ranges are 20:00:00:00:00:00:00:00 to 20:FF:FF:FF:FF:FF:FF:FF or from 50:00:00:00:00:00:00:00 to 5F:FF:FF:FF:FF:FF:FF:FF.
.OUTPUTS

BootSan<PSCustomObject>
#>

function Initialize-IntersightBootSan {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("boot.San")]
        [String]
        ${ClassId} = "boot.San",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("boot.San")]
        [String]
        ${ObjectType} = "boot.San",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("((^[a-zA-Z0-9]$){1,30}|(^(([a-zA-Z0-9])([a-zA-Z0-9_\-]{0,28})([a-zA-Z0-9]))$))")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Bootloader},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9-._:]*$")]
        [String]
        ${InterfaceName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Lun} = 0,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5]|MLOM|L1|L2)$")]
        [String]
        ${Slot},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|((^20|5[0-9a-fA-F]{1}):([0-9a-fA-F]{2}:){6}([0-9a-fA-F]{2}))")]
        [String]
        ${Wwpn}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightBootSan' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if ($Lun -and $Lun -gt 255) {
          throw "invalid value for 'Lun', must be smaller than or equal to 255."
        }

        if ($Lun -and $Lun -lt 0) {
          throw "invalid value for 'Lun', must be greater than or equal to 0."
        }

        
        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Enabled" = ${Enabled}
            "Name" = ${Name}
            "Bootloader" = ${Bootloader}
            "InterfaceName" = ${InterfaceName}
            "Lun" = ${Lun}
            "Slot" = ${Slot}
            "Wwpn" = ${Wwpn}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BootSan<PSCustomObject>

.DESCRIPTION

Convert from JSON to BootSan<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BootSan<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToBootSan {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightBootSan' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightBootSan
        $AllProperties = ("ClassId", "ObjectType", "Enabled", "Name", "Bootloader", "InterfaceName", "Lun", "Slot", "Wwpn")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["Enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Bootloader"))) { #optional property not found
            $Bootloader = $null
        } else {
            $Bootloader = $JsonParameters.PSobject.Properties["Bootloader"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InterfaceName"))) { #optional property not found
            $InterfaceName = $null
        } else {
            $InterfaceName = $JsonParameters.PSobject.Properties["InterfaceName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Lun"))) { #optional property not found
            $Lun = $null
        } else {
            $Lun = $JsonParameters.PSobject.Properties["Lun"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Slot"))) { #optional property not found
            $Slot = $null
        } else {
            $Slot = $JsonParameters.PSobject.Properties["Slot"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Wwpn"))) { #optional property not found
            $Wwpn = $null
        } else {
            $Wwpn = $JsonParameters.PSobject.Properties["Wwpn"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Enabled" = ${Enabled}
            "Name" = ${Name}
            "Bootloader" = ${Bootloader}
            "InterfaceName" = ${InterfaceName}
            "Lun" = ${Lun}
            "Slot" = ${Slot}
            "Wwpn" = ${Wwpn}
        }

        return $PSO
    }

}

