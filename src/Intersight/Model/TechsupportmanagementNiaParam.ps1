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

NIA parameter object for Tech Support requests.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER CollectionLevel
CollectionLevel controls the size / depth of the tech support files collected. * `1` - Use cached data in the returned collection. * `2` - Use current data in the returned collection.
.PARAMETER Filename
Filename specifies an individual filename to collect from the endpoint.
.PARAMETER ForceFresh
ForceFresh controls whether to return pre-collected files or force the collection of new files.
.PARAMETER Pids
No description available.
.PARAMETER SerialNumbers
No description available.
.OUTPUTS

TechsupportmanagementNiaParam<PSCustomObject>
#>

function Initialize-IntersightTechsupportmanagementNiaParam {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("techsupportmanagement.NiaParam")]
        [String]
        ${ClassId} = "techsupportmanagement.NiaParam",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("techsupportmanagement.NiaParam")]
        [String]
        ${ObjectType} = "techsupportmanagement.NiaParam",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("1", "2")]
        [System.Nullable[Int32]]
        ${CollectionLevel} = 1,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Filename},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ForceFresh},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Pids},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SerialNumbers}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightTechsupportmanagementNiaParam' | Write-Debug
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
            "CollectionLevel" = ${CollectionLevel}
            "Filename" = ${Filename}
            "ForceFresh" = ${ForceFresh}
            "Pids" = ${Pids}
            "SerialNumbers" = ${SerialNumbers}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TechsupportmanagementNiaParam<PSCustomObject>

.DESCRIPTION

Convert from JSON to TechsupportmanagementNiaParam<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TechsupportmanagementNiaParam<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToTechsupportmanagementNiaParam {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightTechsupportmanagementNiaParam' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightTechsupportmanagementNiaParam
        $AllProperties = ("ClassId", "ObjectType", "CollectionLevel", "Filename", "ForceFresh", "Pids", "SerialNumbers")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CollectionLevel"))) { #optional property not found
            $CollectionLevel = $null
        } else {
            $CollectionLevel = $JsonParameters.PSobject.Properties["CollectionLevel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Filename"))) { #optional property not found
            $Filename = $null
        } else {
            $Filename = $JsonParameters.PSobject.Properties["Filename"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ForceFresh"))) { #optional property not found
            $ForceFresh = $null
        } else {
            $ForceFresh = $JsonParameters.PSobject.Properties["ForceFresh"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Pids"))) { #optional property not found
            $Pids = $null
        } else {
            $Pids = $JsonParameters.PSobject.Properties["Pids"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SerialNumbers"))) { #optional property not found
            $SerialNumbers = $null
        } else {
            $SerialNumbers = $JsonParameters.PSobject.Properties["SerialNumbers"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "CollectionLevel" = ${CollectionLevel}
            "Filename" = ${Filename}
            "ForceFresh" = ${ForceFresh}
            "Pids" = ${Pids}
            "SerialNumbers" = ${SerialNumbers}
        }

        return $PSO
    }

}

