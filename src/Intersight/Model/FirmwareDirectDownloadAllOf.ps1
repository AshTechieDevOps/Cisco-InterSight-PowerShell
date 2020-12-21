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

Definition of the list of properties defined in 'firmware.DirectDownload', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER HttpServer
No description available.
.PARAMETER ImageSource
Source type referring the image to be downloaded from CCO or from a local HTTPS server. * `cisco` - Image to be downloaded from Cisco software repository. * `localHttp` - Image to be downloaded from a https server.
.PARAMETER Password
Password as configured on the local https server.
.PARAMETER Upgradeoption
Option to control the upgrade, e.g., sd_upgrade_mount_only - download the image into sd and upgrade wait for the server on-next boot. * `sd_upgrade_mount_only` - Direct upgrade SD upgrade mount only. * `sd_download_only` - Direct upgrade SD download only. * `sd_upgrade_only` - Direct upgrade SD upgrade only. * `sd_upgrade_full` - Direct upgrade SD upgrade full. * `upgrade_full` - The upgrade downloads or mounts the image, and reboots immediately for an upgrade. * `upgrade_mount_only` - The upgrade downloads or mounts the image. The upgrade happens in next reboot. * `chassis_upgrade_full` - Direct upgrade chassis upgrade full.
.PARAMETER Username
Username as configured on the local https server.
.OUTPUTS

FirmwareDirectDownloadAllOf<PSCustomObject>
#>

function Initialize-IntersightFirmwareDirectDownloadAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("firmware.DirectDownload")]
        [String]
        ${ClassId} = "firmware.DirectDownload",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("firmware.DirectDownload")]
        [String]
        ${ObjectType} = "firmware.DirectDownload",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${HttpServer},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("cisco", "localHttp")]
        [String]
        ${ImageSource} = "cisco",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("sd_upgrade_mount_only", "sd_download_only", "sd_upgrade_only", "sd_upgrade_full", "upgrade_full", "upgrade_mount_only", "chassis_upgrade_full")]
        [String]
        ${Upgradeoption} = "sd_upgrade_mount_only",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightFirmwareDirectDownloadAllOf' | Write-Debug
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
            "HttpServer" = ${HttpServer}
            "ImageSource" = ${ImageSource}
            "Password" = ${Password}
            "Upgradeoption" = ${Upgradeoption}
            "Username" = ${Username}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FirmwareDirectDownloadAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to FirmwareDirectDownloadAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FirmwareDirectDownloadAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToFirmwareDirectDownloadAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightFirmwareDirectDownloadAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightFirmwareDirectDownloadAllOf
        $AllProperties = ("ClassId", "ObjectType", "HttpServer", "ImageSource", "IsPasswordSet", "Password", "Upgradeoption", "Username")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HttpServer"))) { #optional property not found
            $HttpServer = $null
        } else {
            $HttpServer = $JsonParameters.PSobject.Properties["HttpServer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ImageSource"))) { #optional property not found
            $ImageSource = $null
        } else {
            $ImageSource = $JsonParameters.PSobject.Properties["ImageSource"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IsPasswordSet"))) { #optional property not found
            $IsPasswordSet = $null
        } else {
            $IsPasswordSet = $JsonParameters.PSobject.Properties["IsPasswordSet"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["Password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Upgradeoption"))) { #optional property not found
            $Upgradeoption = $null
        } else {
            $Upgradeoption = $JsonParameters.PSobject.Properties["Upgradeoption"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["Username"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "HttpServer" = ${HttpServer}
            "ImageSource" = ${ImageSource}
            "IsPasswordSet" = ${IsPasswordSet}
            "Password" = ${Password}
            "Upgradeoption" = ${Upgradeoption}
            "Username" = ${Username}
        }

        return $PSO
    }

}

