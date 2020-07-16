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

Firmware upgrade operation for Fabric Interconnects that downloads the image located at Cisco/appliance/user provided HTTP repository or uses the image from a network share and upgrade. Direct download is used for upgrade that uses the image from a Cisco repository or an appliance repository. Network share is used for upgrade that use the image from a network share from your data center.

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
.PARAMETER DirectDownload
No description available.
.PARAMETER FileServer
No description available.
.PARAMETER NetworkShare
No description available.
.PARAMETER SkipEstimateImpact
User has the option to skip the estimate impact calculation.
.PARAMETER Status
Status of the upgrade operation.
.PARAMETER UpgradeType
Desired upgrade mode to choose either direct download based upgrade or network share upgrade.
.PARAMETER Distributable
No description available.
.PARAMETER Release
No description available.
.PARAMETER UpgradeImpact
No description available.
.PARAMETER UpgradeStatus
No description available.
.PARAMETER Device
No description available.
.PARAMETER NetworkElements
An array of relationships to networkElement resources.
.OUTPUTS

FirmwareSwitchUpgrade<PSCustomObject>
#>

function Initialize-IntersightFirmwareSwitchUpgrade {
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
        ${DirectDownload},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${FileServer},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${NetworkShare},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SkipEstimateImpact},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("NONE", "IN_PROGRESS", "SUCCESSFUL", "FAILED", "TERMINATED")]
        [String]
        ${Status} = "NONE",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("direct_upgrade", "network_upgrade")]
        [String]
        ${UpgradeType} = "direct_upgrade",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Distributable},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Release},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UpgradeImpact},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UpgradeStatus},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Device},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${NetworkElements}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightFirmwareSwitchUpgrade' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "DirectDownload" = ${DirectDownload}
            "FileServer" = ${FileServer}
            "NetworkShare" = ${NetworkShare}
            "SkipEstimateImpact" = ${SkipEstimateImpact}
            "Status" = ${Status}
            "UpgradeType" = ${UpgradeType}
            "Distributable" = ${Distributable}
            "Release" = ${Release}
            "UpgradeImpact" = ${UpgradeImpact}
            "UpgradeStatus" = ${UpgradeStatus}
            "Device" = ${Device}
            "NetworkElements" = ${NetworkElements}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FirmwareSwitchUpgrade<PSCustomObject>

.DESCRIPTION

Convert from JSON to FirmwareSwitchUpgrade<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FirmwareSwitchUpgrade<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToFirmwareSwitchUpgrade {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightFirmwareSwitchUpgrade' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightFirmwareSwitchUpgrade
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "DirectDownload", "FileServer", "NetworkShare", "SkipEstimateImpact", "Status", "UpgradeType", "Distributable", "Release", "UpgradeImpact", "UpgradeStatus", "Device", "NetworkElements")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DirectDownload"))) { #optional property not found
            $DirectDownload = $null
        } else {
            $DirectDownload = $JsonParameters.PSobject.Properties["DirectDownload"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FileServer"))) { #optional property not found
            $FileServer = $null
        } else {
            $FileServer = $JsonParameters.PSobject.Properties["FileServer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NetworkShare"))) { #optional property not found
            $NetworkShare = $null
        } else {
            $NetworkShare = $JsonParameters.PSobject.Properties["NetworkShare"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SkipEstimateImpact"))) { #optional property not found
            $SkipEstimateImpact = $null
        } else {
            $SkipEstimateImpact = $JsonParameters.PSobject.Properties["SkipEstimateImpact"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["Status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UpgradeType"))) { #optional property not found
            $UpgradeType = $null
        } else {
            $UpgradeType = $JsonParameters.PSobject.Properties["UpgradeType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Distributable"))) { #optional property not found
            $Distributable = $null
        } else {
            $Distributable = $JsonParameters.PSobject.Properties["Distributable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Release"))) { #optional property not found
            $Release = $null
        } else {
            $Release = $JsonParameters.PSobject.Properties["Release"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UpgradeImpact"))) { #optional property not found
            $UpgradeImpact = $null
        } else {
            $UpgradeImpact = $JsonParameters.PSobject.Properties["UpgradeImpact"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UpgradeStatus"))) { #optional property not found
            $UpgradeStatus = $null
        } else {
            $UpgradeStatus = $JsonParameters.PSobject.Properties["UpgradeStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Device"))) { #optional property not found
            $Device = $null
        } else {
            $Device = $JsonParameters.PSobject.Properties["Device"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NetworkElements"))) { #optional property not found
            $NetworkElements = $null
        } else {
            $NetworkElements = $JsonParameters.PSobject.Properties["NetworkElements"].value
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
            "DirectDownload" = ${DirectDownload}
            "FileServer" = ${FileServer}
            "NetworkShare" = ${NetworkShare}
            "SkipEstimateImpact" = ${SkipEstimateImpact}
            "Status" = ${Status}
            "UpgradeType" = ${UpgradeType}
            "Distributable" = ${Distributable}
            "Release" = ${Release}
            "UpgradeImpact" = ${UpgradeImpact}
            "UpgradeStatus" = ${UpgradeStatus}
            "Device" = ${Device}
            "NetworkElements" = ${NetworkElements}
        }

        return $PSO
    }

}

