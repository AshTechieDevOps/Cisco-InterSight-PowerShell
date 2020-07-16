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

Definition of the list of properties defined in 'hyperflex.AppCatalog', excluding properties defined in parent classes.

.PARAMETER Version
The catalog version used in HyperFlex cluster configuration service.
.PARAMETER FeatureLimitExternal
No description available.
.PARAMETER FeatureLimitInternal
No description available.
.PARAMETER HxdpVersions
An array of relationships to hyperflexHxdpVersion resources.
.PARAMETER HyperflexCapabilityInfos
An array of relationships to hyperflexCapabilityInfo resources.
.PARAMETER HyperflexSoftwareCompatibilityInfos
An array of relationships to hclHyperflexSoftwareCompatibilityInfo resources.
.PARAMETER ServerFirmwareVersion
No description available.
.PARAMETER ServerModel
No description available.
.OUTPUTS

HyperflexAppCatalogAllOf<PSCustomObject>
#>

function Initialize-IntersightHyperflexAppCatalogAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Version},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${FeatureLimitExternal},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${FeatureLimitInternal},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${HxdpVersions},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${HyperflexCapabilityInfos},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${HyperflexSoftwareCompatibilityInfos},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ServerFirmwareVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ServerModel}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightHyperflexAppCatalogAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Version" = ${Version}
            "FeatureLimitExternal" = ${FeatureLimitExternal}
            "FeatureLimitInternal" = ${FeatureLimitInternal}
            "HxdpVersions" = ${HxdpVersions}
            "HyperflexCapabilityInfos" = ${HyperflexCapabilityInfos}
            "HyperflexSoftwareCompatibilityInfos" = ${HyperflexSoftwareCompatibilityInfos}
            "ServerFirmwareVersion" = ${ServerFirmwareVersion}
            "ServerModel" = ${ServerModel}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HyperflexAppCatalogAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to HyperflexAppCatalogAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HyperflexAppCatalogAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToHyperflexAppCatalogAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightHyperflexAppCatalogAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightHyperflexAppCatalogAllOf
        $AllProperties = ("Version", "FeatureLimitExternal", "FeatureLimitInternal", "HxdpVersions", "HyperflexCapabilityInfos", "HyperflexSoftwareCompatibilityInfos", "ServerFirmwareVersion", "ServerModel")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Version"))) { #optional property not found
            $Version = $null
        } else {
            $Version = $JsonParameters.PSobject.Properties["Version"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FeatureLimitExternal"))) { #optional property not found
            $FeatureLimitExternal = $null
        } else {
            $FeatureLimitExternal = $JsonParameters.PSobject.Properties["FeatureLimitExternal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FeatureLimitInternal"))) { #optional property not found
            $FeatureLimitInternal = $null
        } else {
            $FeatureLimitInternal = $JsonParameters.PSobject.Properties["FeatureLimitInternal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HxdpVersions"))) { #optional property not found
            $HxdpVersions = $null
        } else {
            $HxdpVersions = $JsonParameters.PSobject.Properties["HxdpVersions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HyperflexCapabilityInfos"))) { #optional property not found
            $HyperflexCapabilityInfos = $null
        } else {
            $HyperflexCapabilityInfos = $JsonParameters.PSobject.Properties["HyperflexCapabilityInfos"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HyperflexSoftwareCompatibilityInfos"))) { #optional property not found
            $HyperflexSoftwareCompatibilityInfos = $null
        } else {
            $HyperflexSoftwareCompatibilityInfos = $JsonParameters.PSobject.Properties["HyperflexSoftwareCompatibilityInfos"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ServerFirmwareVersion"))) { #optional property not found
            $ServerFirmwareVersion = $null
        } else {
            $ServerFirmwareVersion = $JsonParameters.PSobject.Properties["ServerFirmwareVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ServerModel"))) { #optional property not found
            $ServerModel = $null
        } else {
            $ServerModel = $JsonParameters.PSobject.Properties["ServerModel"].value
        }

        $PSO = [PSCustomObject]@{
            "Version" = ${Version}
            "FeatureLimitExternal" = ${FeatureLimitExternal}
            "FeatureLimitInternal" = ${FeatureLimitInternal}
            "HxdpVersions" = ${HxdpVersions}
            "HyperflexCapabilityInfos" = ${HyperflexCapabilityInfos}
            "HyperflexSoftwareCompatibilityInfos" = ${HyperflexSoftwareCompatibilityInfos}
            "ServerFirmwareVersion" = ${ServerFirmwareVersion}
            "ServerModel" = ${ServerModel}
        }

        return $PSO
    }

}

