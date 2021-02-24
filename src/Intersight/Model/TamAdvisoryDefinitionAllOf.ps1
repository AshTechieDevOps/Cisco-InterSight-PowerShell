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

Definition of the list of properties defined in 'tam.AdvisoryDefinition', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Actions
No description available.
.PARAMETER AdvisoryDetails
No description available.
.PARAMETER AdvisoryId
Cisco generated identifier for the published security advisory.
.PARAMETER ApiDataSources
No description available.
.PARAMETER DatePublished
Date when the security advisory was first published by Cisco.
.PARAMETER DateUpdated
Date when the security advisory was last updated by Cisco.
.PARAMETER ExternalUrl
A link to an external URL describing security Advisory in more details.
.PARAMETER Recommendation
Recommended action to resolve the security advisory.
.PARAMETER Type
The type (field notice, security advisory etc.) of Intersight advisory. * `securityAdvisory` - Respresents the psirt alert type (https://tools.cisco.com/security/center/publicationListing.x). * `fieldNotice` - Respresents the field notice alert type (https://www.cisco.com/c/en/us/support/web/tsd-products-field-notice-summary.html).
.PARAMETER Version
Cisco assigned advisory version after latest revision.
.PARAMETER Workaround
Workarounds available for the advisory.
.PARAMETER Organization
No description available.
.OUTPUTS

TamAdvisoryDefinitionAllOf<PSCustomObject>
#>

function Initialize-IntersightTamAdvisoryDefinitionAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("tam.AdvisoryDefinition")]
        [String]
        ${ClassId} = "tam.AdvisoryDefinition",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("tam.AdvisoryDefinition")]
        [String]
        ${ObjectType} = "tam.AdvisoryDefinition",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Actions},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AdvisoryDetails},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AdvisoryId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ApiDataSources},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${DatePublished},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${DateUpdated},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^(?:http(s)?://)?[\w.-]+(?:\.[\w\.-]+)+[\w\-\._~:/?#[\]@!\$&'\(\)\*\+,;=.]+$")]
        [String]
        ${ExternalUrl},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Recommendation},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("securityAdvisory", "fieldNotice")]
        [String]
        ${Type} = "securityAdvisory",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Version},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Workaround},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightTamAdvisoryDefinitionAllOf' | Write-Debug
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
            "Actions" = ${Actions}
            "AdvisoryDetails" = ${AdvisoryDetails}
            "AdvisoryId" = ${AdvisoryId}
            "ApiDataSources" = ${ApiDataSources}
            "DatePublished" = ${DatePublished}
            "DateUpdated" = ${DateUpdated}
            "ExternalUrl" = ${ExternalUrl}
            "Recommendation" = ${Recommendation}
            "Type" = ${Type}
            "Version" = ${Version}
            "Workaround" = ${Workaround}
            "Organization" = ${Organization}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TamAdvisoryDefinitionAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to TamAdvisoryDefinitionAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TamAdvisoryDefinitionAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToTamAdvisoryDefinitionAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightTamAdvisoryDefinitionAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightTamAdvisoryDefinitionAllOf
        $AllProperties = ("ClassId", "ObjectType", "Actions", "AdvisoryDetails", "AdvisoryId", "ApiDataSources", "DatePublished", "DateUpdated", "ExternalUrl", "Recommendation", "Type", "Version", "Workaround", "Organization")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Actions"))) { #optional property not found
            $Actions = $null
        } else {
            $Actions = $JsonParameters.PSobject.Properties["Actions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdvisoryDetails"))) { #optional property not found
            $AdvisoryDetails = $null
        } else {
            $AdvisoryDetails = $JsonParameters.PSobject.Properties["AdvisoryDetails"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AdvisoryId"))) { #optional property not found
            $AdvisoryId = $null
        } else {
            $AdvisoryId = $JsonParameters.PSobject.Properties["AdvisoryId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ApiDataSources"))) { #optional property not found
            $ApiDataSources = $null
        } else {
            $ApiDataSources = $JsonParameters.PSobject.Properties["ApiDataSources"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DatePublished"))) { #optional property not found
            $DatePublished = $null
        } else {
            $DatePublished = $JsonParameters.PSobject.Properties["DatePublished"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DateUpdated"))) { #optional property not found
            $DateUpdated = $null
        } else {
            $DateUpdated = $JsonParameters.PSobject.Properties["DateUpdated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExternalUrl"))) { #optional property not found
            $ExternalUrl = $null
        } else {
            $ExternalUrl = $JsonParameters.PSobject.Properties["ExternalUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Recommendation"))) { #optional property not found
            $Recommendation = $null
        } else {
            $Recommendation = $JsonParameters.PSobject.Properties["Recommendation"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Workaround"))) { #optional property not found
            $Workaround = $null
        } else {
            $Workaround = $JsonParameters.PSobject.Properties["Workaround"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Actions" = ${Actions}
            "AdvisoryDetails" = ${AdvisoryDetails}
            "AdvisoryId" = ${AdvisoryId}
            "ApiDataSources" = ${ApiDataSources}
            "DatePublished" = ${DatePublished}
            "DateUpdated" = ${DateUpdated}
            "ExternalUrl" = ${ExternalUrl}
            "Recommendation" = ${Recommendation}
            "Type" = ${Type}
            "Version" = ${Version}
            "Workaround" = ${Workaround}
            "Organization" = ${Organization}
        }

        return $PSO
    }

}

