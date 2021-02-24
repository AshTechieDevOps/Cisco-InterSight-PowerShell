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

Definition of the list of properties defined in 'config.Importer', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER ImportPath
The path to the archive in Intersight storage that has all the MOs to be imported.
.PARAMETER ImportSource
The source of the archive in Intersight storage that has all the MOs to be imported. * `ImageRepo` - The 'ImageRepo' source if the source of exporter archive is image repository. * `URL` - The 'URL' source if the source of exported archive is a URL.
.PARAMETER Name
An identifier for the importer instance.
.PARAMETER SkipIntegrityChecks
Specifies whether integrity checks must be skipped.
.PARAMETER Organization
No description available.
.OUTPUTS

ConfigImporterAllOf<PSCustomObject>
#>

function Initialize-IntersightConfigImporterAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("config.Importer")]
        [String]
        ${ClassId} = "config.Importer",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("config.Importer")]
        [String]
        ${ObjectType} = "config.Importer",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ImportPath},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ImageRepo", "URL")]
        [String]
        ${ImportSource} = "ImageRepo",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SkipIntegrityChecks} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightConfigImporterAllOf' | Write-Debug
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
            "ImportPath" = ${ImportPath}
            "ImportSource" = ${ImportSource}
            "Name" = ${Name}
            "SkipIntegrityChecks" = ${SkipIntegrityChecks}
            "Organization" = ${Organization}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConfigImporterAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConfigImporterAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConfigImporterAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToConfigImporterAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightConfigImporterAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightConfigImporterAllOf
        $AllProperties = ("ClassId", "ObjectType", "ImportPath", "ImportSource", "Name", "SkipIntegrityChecks", "Status", "StatusMessage", "ImportedItems", "Organization")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ImportPath"))) { #optional property not found
            $ImportPath = $null
        } else {
            $ImportPath = $JsonParameters.PSobject.Properties["ImportPath"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ImportSource"))) { #optional property not found
            $ImportSource = $null
        } else {
            $ImportSource = $JsonParameters.PSobject.Properties["ImportSource"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SkipIntegrityChecks"))) { #optional property not found
            $SkipIntegrityChecks = $null
        } else {
            $SkipIntegrityChecks = $JsonParameters.PSobject.Properties["SkipIntegrityChecks"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["Status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StatusMessage"))) { #optional property not found
            $StatusMessage = $null
        } else {
            $StatusMessage = $JsonParameters.PSobject.Properties["StatusMessage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ImportedItems"))) { #optional property not found
            $ImportedItems = $null
        } else {
            $ImportedItems = $JsonParameters.PSobject.Properties["ImportedItems"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "ImportPath" = ${ImportPath}
            "ImportSource" = ${ImportSource}
            "Name" = ${Name}
            "SkipIntegrityChecks" = ${SkipIntegrityChecks}
            "Status" = ${Status}
            "StatusMessage" = ${StatusMessage}
            "ImportedItems" = ${ImportedItems}
            "Organization" = ${Organization}
        }

        return $PSO
    }

}

