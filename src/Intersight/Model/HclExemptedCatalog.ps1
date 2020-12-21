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

Collection used to store exempted products (ie. adapters, storage controllers, etc). These products should be ignored for HCL validation purposes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
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
.PARAMETER Comments
Reason for the exemption.
.PARAMETER Name
A unique descriptive name of the exemption.
.PARAMETER OsVendor
Vendor of the Operating System.
.PARAMETER OsVersion
Version of the Operating system.
.PARAMETER ProcessorName
Name of the processor supported for the server.
.PARAMETER ProductModels
No description available.
.PARAMETER ProductType
Type of the product/adapter say GPU for graphic cards. * `` - Default type of the Product. * `Adapter` - Represents network adapter cards. * `StorageController` - Represents storage controllers. * `GPU` - Represents graphics cards.
.PARAMETER ServerPid
Three part ID representing the server model as returned by UCSM/CIMC XML APIs.
.PARAMETER UcsVersion
Version of the UCS software.
.PARAMETER VersionType
Type of the UCS version indicating whether it is a UCSM release vesion or a IMC release.
.OUTPUTS

HclExemptedCatalog<PSCustomObject>
#>

function Initialize-IntersightHclExemptedCatalog {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hcl.ExemptedCatalog")]
        [String]
        ${ClassId} = "hcl.ExemptedCatalog",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hcl.ExemptedCatalog")]
        [String]
        ${ObjectType} = "hcl.ExemptedCatalog",
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
        [String]
        ${Comments},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OsVendor},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OsVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProcessorName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ProductModels},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("", "Adapter", "StorageController", "GPU")]
        [String]
        ${ProductType} = "",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ServerPid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UcsVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VersionType}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightHclExemptedCatalog' | Write-Debug
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
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "Comments" = ${Comments}
            "Name" = ${Name}
            "OsVendor" = ${OsVendor}
            "OsVersion" = ${OsVersion}
            "ProcessorName" = ${ProcessorName}
            "ProductModels" = ${ProductModels}
            "ProductType" = ${ProductType}
            "ServerPid" = ${ServerPid}
            "UcsVersion" = ${UcsVersion}
            "VersionType" = ${VersionType}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HclExemptedCatalog<PSCustomObject>

.DESCRIPTION

Convert from JSON to HclExemptedCatalog<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HclExemptedCatalog<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToHclExemptedCatalog {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightHclExemptedCatalog' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightHclExemptedCatalog
        $AllProperties = ("ClassId", "ObjectType", "AccountMoid", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "Comments", "Name", "OsVendor", "OsVersion", "ProcessorName", "ProductModels", "ProductType", "ServerPid", "UcsVersion", "VersionType")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Comments"))) { #optional property not found
            $Comments = $null
        } else {
            $Comments = $JsonParameters.PSobject.Properties["Comments"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OsVendor"))) { #optional property not found
            $OsVendor = $null
        } else {
            $OsVendor = $JsonParameters.PSobject.Properties["OsVendor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OsVersion"))) { #optional property not found
            $OsVersion = $null
        } else {
            $OsVersion = $JsonParameters.PSobject.Properties["OsVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProcessorName"))) { #optional property not found
            $ProcessorName = $null
        } else {
            $ProcessorName = $JsonParameters.PSobject.Properties["ProcessorName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProductModels"))) { #optional property not found
            $ProductModels = $null
        } else {
            $ProductModels = $JsonParameters.PSobject.Properties["ProductModels"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProductType"))) { #optional property not found
            $ProductType = $null
        } else {
            $ProductType = $JsonParameters.PSobject.Properties["ProductType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ServerPid"))) { #optional property not found
            $ServerPid = $null
        } else {
            $ServerPid = $JsonParameters.PSobject.Properties["ServerPid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UcsVersion"))) { #optional property not found
            $UcsVersion = $null
        } else {
            $UcsVersion = $JsonParameters.PSobject.Properties["UcsVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VersionType"))) { #optional property not found
            $VersionType = $null
        } else {
            $VersionType = $JsonParameters.PSobject.Properties["VersionType"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AccountMoid" = ${AccountMoid}
            "CreateTime" = ${CreateTime}
            "DomainGroupMoid" = ${DomainGroupMoid}
            "ModTime" = ${ModTime}
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "SharedScope" = ${SharedScope}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Ancestors" = ${Ancestors}
            "Parent" = ${Parent}
            "PermissionResources" = ${PermissionResources}
            "DisplayNames" = ${DisplayNames}
            "Comments" = ${Comments}
            "Name" = ${Name}
            "OsVendor" = ${OsVendor}
            "OsVersion" = ${OsVersion}
            "ProcessorName" = ${ProcessorName}
            "ProductModels" = ${ProductModels}
            "ProductType" = ${ProductType}
            "ServerPid" = ${ServerPid}
            "UcsVersion" = ${UcsVersion}
            "VersionType" = ${VersionType}
        }

        return $PSO
    }

}

