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

VersionContext contains the versioning info for an object.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER InterestedMos
No description available.
.PARAMETER RefMo
No description available.
.OUTPUTS

MoVersionContext<PSCustomObject>
#>

function Initialize-IntersightMoVersionContext {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("mo.VersionContext")]
        [String]
        ${ClassId} = "mo.VersionContext",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("mo.VersionContext")]
        [String]
        ${ObjectType} = "mo.VersionContext",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${InterestedMos},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RefMo}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightMoVersionContext' | Write-Debug
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
            "InterestedMos" = ${InterestedMos}
            "RefMo" = ${RefMo}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MoVersionContext<PSCustomObject>

.DESCRIPTION

Convert from JSON to MoVersionContext<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MoVersionContext<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToMoVersionContext {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightMoVersionContext' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightMoVersionContext
        $AllProperties = ("ClassId", "ObjectType", "InterestedMos", "RefMo", "Timestamp", "Version", "VersionType")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InterestedMos"))) { #optional property not found
            $InterestedMos = $null
        } else {
            $InterestedMos = $JsonParameters.PSobject.Properties["InterestedMos"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RefMo"))) { #optional property not found
            $RefMo = $null
        } else {
            $RefMo = $JsonParameters.PSobject.Properties["RefMo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Timestamp"))) { #optional property not found
            $Timestamp = $null
        } else {
            $Timestamp = $JsonParameters.PSobject.Properties["Timestamp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Version"))) { #optional property not found
            $Version = $null
        } else {
            $Version = $JsonParameters.PSobject.Properties["Version"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VersionType"))) { #optional property not found
            $VersionType = $null
        } else {
            $VersionType = $JsonParameters.PSobject.Properties["VersionType"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "InterestedMos" = ${InterestedMos}
            "RefMo" = ${RefMo}
            "Timestamp" = ${Timestamp}
            "Version" = ${Version}
            "VersionType" = ${VersionType}
        }

        return $PSO
    }

}

