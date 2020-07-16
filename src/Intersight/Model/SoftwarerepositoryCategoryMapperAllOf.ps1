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

Definition of the list of properties defined in 'softwarerepository.CategoryMapper', excluding properties defined in parent classes.

.PARAMETER Category
The category of the model series.
.PARAMETER FileType
The type of distributable image, example huu, scu, driver, os.
.PARAMETER MdfId
Cisco software repository image category identifier.
.PARAMETER RegexPattern
The regex that all images of this category follow.
.PARAMETER Source
The image can be downloaded from cisco.com or external cloud store.
.PARAMETER SupportedModels
No description available.
.PARAMETER SwId
The software type id provided by cisco.com.
.PARAMETER TagTypes
No description available.
.PARAMETER Version
The version from which user can download images from amazon store, if source is external cloud store.
.OUTPUTS

SoftwarerepositoryCategoryMapperAllOf<PSCustomObject>
#>

function Initialize-IntersightSoftwarerepositoryCategoryMapperAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Category},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Distributable", "DriverDistributable", "ServerConfigurationUtilityDistributable", "OperatingSystemFile", "HyperflexDistributable")]
        [String]
        ${FileType} = "Distributable",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MdfId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RegexPattern},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Cisco", "IntersightCloud", "LocalMachine", "NetworkShare")]
        [String]
        ${Source} = "Cisco",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SupportedModels},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SwId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${TagTypes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Version}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightSoftwarerepositoryCategoryMapperAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Category" = ${Category}
            "FileType" = ${FileType}
            "MdfId" = ${MdfId}
            "RegexPattern" = ${RegexPattern}
            "Source" = ${Source}
            "SupportedModels" = ${SupportedModels}
            "SwId" = ${SwId}
            "TagTypes" = ${TagTypes}
            "Version" = ${Version}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SoftwarerepositoryCategoryMapperAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to SoftwarerepositoryCategoryMapperAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SoftwarerepositoryCategoryMapperAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToSoftwarerepositoryCategoryMapperAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightSoftwarerepositoryCategoryMapperAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightSoftwarerepositoryCategoryMapperAllOf
        $AllProperties = ("Category", "FileType", "MdfId", "RegexPattern", "Source", "SupportedModels", "SwId", "TagTypes", "Version")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Category"))) { #optional property not found
            $Category = $null
        } else {
            $Category = $JsonParameters.PSobject.Properties["Category"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FileType"))) { #optional property not found
            $FileType = $null
        } else {
            $FileType = $JsonParameters.PSobject.Properties["FileType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MdfId"))) { #optional property not found
            $MdfId = $null
        } else {
            $MdfId = $JsonParameters.PSobject.Properties["MdfId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegexPattern"))) { #optional property not found
            $RegexPattern = $null
        } else {
            $RegexPattern = $JsonParameters.PSobject.Properties["RegexPattern"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Source"))) { #optional property not found
            $Source = $null
        } else {
            $Source = $JsonParameters.PSobject.Properties["Source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SupportedModels"))) { #optional property not found
            $SupportedModels = $null
        } else {
            $SupportedModels = $JsonParameters.PSobject.Properties["SupportedModels"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SwId"))) { #optional property not found
            $SwId = $null
        } else {
            $SwId = $JsonParameters.PSobject.Properties["SwId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TagTypes"))) { #optional property not found
            $TagTypes = $null
        } else {
            $TagTypes = $JsonParameters.PSobject.Properties["TagTypes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Version"))) { #optional property not found
            $Version = $null
        } else {
            $Version = $JsonParameters.PSobject.Properties["Version"].value
        }

        $PSO = [PSCustomObject]@{
            "Category" = ${Category}
            "FileType" = ${FileType}
            "MdfId" = ${MdfId}
            "RegexPattern" = ${RegexPattern}
            "Source" = ${Source}
            "SupportedModels" = ${SupportedModels}
            "SwId" = ${SwId}
            "TagTypes" = ${TagTypes}
            "Version" = ${Version}
        }

        return $PSO
    }

}

