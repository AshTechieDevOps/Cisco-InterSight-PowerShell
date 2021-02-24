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

Definition of the list of properties defined in 'softwarerepository.Release', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER ReleaseDate
The date when the file was released or distributed by its vendor.
.PARAMETER ReleaseNotesUrl
The URL for the release notes of this image.
.PARAMETER SupportedModels
No description available.
.PARAMETER Type
The platform type for which the images are released. This can be a Fabric Interconnect or compute server hardware. * `FabricSwitch` - The images in a release that correspond to Fabric Interconnect switches. * `ComputeSystem` - The images in a release that correspond to servers.
.PARAMETER Version
Cisco provided release version.
.PARAMETER Catalog
No description available.
.OUTPUTS

SoftwarerepositoryReleaseAllOf<PSCustomObject>
#>

function Initialize-IntersightSoftwarerepositoryReleaseAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("softwarerepository.Release")]
        [String]
        ${ClassId} = "softwarerepository.Release",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("softwarerepository.Release")]
        [String]
        ${ObjectType} = "softwarerepository.Release",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ReleaseDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReleaseNotesUrl},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SupportedModels},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("FabricSwitch", "ComputeSystem")]
        [String]
        ${Type} = "FabricSwitch",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Version},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Catalog}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightSoftwarerepositoryReleaseAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if (!$SupportedModels -and $SupportedModels.length -lt 1) {
            throw "invalid value for 'SupportedModels', number of items must be greater than or equal to 1."
        }

        
        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "ReleaseDate" = ${ReleaseDate}
            "ReleaseNotesUrl" = ${ReleaseNotesUrl}
            "SupportedModels" = ${SupportedModels}
            "Type" = ${Type}
            "Version" = ${Version}
            "Catalog" = ${Catalog}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SoftwarerepositoryReleaseAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to SoftwarerepositoryReleaseAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SoftwarerepositoryReleaseAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToSoftwarerepositoryReleaseAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightSoftwarerepositoryReleaseAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightSoftwarerepositoryReleaseAllOf
        $AllProperties = ("ClassId", "ObjectType", "ReleaseDate", "ReleaseNotesUrl", "SupportedModels", "Type", "Version", "Catalog")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ReleaseDate"))) { #optional property not found
            $ReleaseDate = $null
        } else {
            $ReleaseDate = $JsonParameters.PSobject.Properties["ReleaseDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ReleaseNotesUrl"))) { #optional property not found
            $ReleaseNotesUrl = $null
        } else {
            $ReleaseNotesUrl = $JsonParameters.PSobject.Properties["ReleaseNotesUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SupportedModels"))) { #optional property not found
            $SupportedModels = $null
        } else {
            $SupportedModels = $JsonParameters.PSobject.Properties["SupportedModels"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["Type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Version"))) { #optional property not found
            $Version = $null
        } else {
            $Version = $JsonParameters.PSobject.Properties["Version"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Catalog"))) { #optional property not found
            $Catalog = $null
        } else {
            $Catalog = $JsonParameters.PSobject.Properties["Catalog"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "ReleaseDate" = ${ReleaseDate}
            "ReleaseNotesUrl" = ${ReleaseNotesUrl}
            "SupportedModels" = ${SupportedModels}
            "Type" = ${Type}
            "Version" = ${Version}
            "Catalog" = ${Catalog}
        }

        return $PSO
    }

}

