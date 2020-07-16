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

Storage space utilization of Pure FlashArray volume entity.

.PARAMETER ObjectType
The concrete type of this complex type. The ObjectType property must be set explicitly by API clients when the type is ambiguous. In all other cases, the  ObjectType is optional.  The type is ambiguous when a managed object contains an array of nested documents, and the documents in the array are heterogeneous, i.e. the array can contain nested documents of different types.
.OUTPUTS

StoragePureVolumeUtilization<PSCustomObject>
#>

function Initialize-IntersightStoragePureVolumeUtilization {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectType}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightStoragePureVolumeUtilization' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        
        $PSO = [PSCustomObject]@{
            "ObjectType" = ${ObjectType}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StoragePureVolumeUtilization<PSCustomObject>

.DESCRIPTION

Convert from JSON to StoragePureVolumeUtilization<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StoragePureVolumeUtilization<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToStoragePureVolumeUtilization {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightStoragePureVolumeUtilization' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightStoragePureVolumeUtilization
        $AllProperties = ("ClassId", "ObjectType", "Available", "CapacityUtilization", "Free", "Total", "Used", "DataReduction", "Snapshot", "ThinProvisioned", "TotalReduction", "Volume")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Available"))) { #optional property not found
            $Available = $null
        } else {
            $Available = $JsonParameters.PSobject.Properties["Available"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CapacityUtilization"))) { #optional property not found
            $CapacityUtilization = $null
        } else {
            $CapacityUtilization = $JsonParameters.PSobject.Properties["CapacityUtilization"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Free"))) { #optional property not found
            $Free = $null
        } else {
            $Free = $JsonParameters.PSobject.Properties["Free"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Total"))) { #optional property not found
            $Total = $null
        } else {
            $Total = $JsonParameters.PSobject.Properties["Total"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Used"))) { #optional property not found
            $Used = $null
        } else {
            $Used = $JsonParameters.PSobject.Properties["Used"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DataReduction"))) { #optional property not found
            $DataReduction = $null
        } else {
            $DataReduction = $JsonParameters.PSobject.Properties["DataReduction"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Snapshot"))) { #optional property not found
            $Snapshot = $null
        } else {
            $Snapshot = $JsonParameters.PSobject.Properties["Snapshot"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ThinProvisioned"))) { #optional property not found
            $ThinProvisioned = $null
        } else {
            $ThinProvisioned = $JsonParameters.PSobject.Properties["ThinProvisioned"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TotalReduction"))) { #optional property not found
            $TotalReduction = $null
        } else {
            $TotalReduction = $JsonParameters.PSobject.Properties["TotalReduction"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Volume"))) { #optional property not found
            $Volume = $null
        } else {
            $Volume = $JsonParameters.PSobject.Properties["Volume"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Available" = ${Available}
            "CapacityUtilization" = ${CapacityUtilization}
            "Free" = ${Free}
            "Total" = ${Total}
            "Used" = ${Used}
            "DataReduction" = ${DataReduction}
            "Snapshot" = ${Snapshot}
            "ThinProvisioned" = ${ThinProvisioned}
            "TotalReduction" = ${TotalReduction}
            "Volume" = ${Volume}
        }

        return $PSO
    }

}

