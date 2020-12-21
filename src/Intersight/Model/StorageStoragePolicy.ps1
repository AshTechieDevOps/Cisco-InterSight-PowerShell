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

The storage policy models the reusable storage related configuration that can be applied on many servers. This policy allows creation of RAID groups using existing disk group policies and virtual drives on the drive groups. The user has options to move all unused disks to JBOD or Unconfigured good state. The encryption of drives can be enabled through this policy using remote keys from a KMIP server.

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
.PARAMETER Description
Description of the policy.
.PARAMETER Name
Name of the concrete policy.
.PARAMETER GlobalHotSpares
No description available.
.PARAMETER RetainPolicyVirtualDrives
Retains the virtual drives defined in policy if they exist already. If this flag is false, the existing virtual drives are removed and created again based on virtual drives in the policy.
.PARAMETER UnusedDisksState
Unused Disks State is used to specify the state, unconfigured good or jbod, in which the disks that are not used in this policy should be moved. * `UnconfiguredGood` - Unconfigured good state -ready to be added in a RAID group. * `Jbod` - JBOD state where the disks start showing up to host os.
.PARAMETER VirtualDrives
No description available.
.PARAMETER DiskGroupPolicies
An array of relationships to storageDiskGroupPolicy resources.
.PARAMETER Organization
No description available.
.PARAMETER Profiles
An array of relationships to policyAbstractConfigProfile resources.
.OUTPUTS

StorageStoragePolicy<PSCustomObject>
#>

function Initialize-IntersightStorageStoragePolicy {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("storage.StoragePolicy")]
        [String]
        ${ClassId} = "storage.StoragePolicy",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("storage.StoragePolicy")]
        [String]
        ${ObjectType} = "storage.StoragePolicy",
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
        [ValidatePattern("^$|^[a-zA-Z0-9]+[\sa-zA-Z0-9_'.:-]*$")]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9_.:-]{1,64}$")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${GlobalHotSpares},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RetainPolicyVirtualDrives} = $true,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("UnconfiguredGood", "Jbod")]
        [String]
        ${UnusedDisksState} = "UnconfiguredGood",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${VirtualDrives},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${DiskGroupPolicies},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Profiles}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightStorageStoragePolicy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if (!$Description -and $Description.length -gt 1024) {
            throw "invalid value for 'Description', the character length must be smaller than or equal to 1024."
        }

        
        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "Description" = ${Description}
            "Name" = ${Name}
            "GlobalHotSpares" = ${GlobalHotSpares}
            "RetainPolicyVirtualDrives" = ${RetainPolicyVirtualDrives}
            "UnusedDisksState" = ${UnusedDisksState}
            "VirtualDrives" = ${VirtualDrives}
            "DiskGroupPolicies" = ${DiskGroupPolicies}
            "Organization" = ${Organization}
            "Profiles" = ${Profiles}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StorageStoragePolicy<PSCustomObject>

.DESCRIPTION

Convert from JSON to StorageStoragePolicy<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StorageStoragePolicy<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToStorageStoragePolicy {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightStorageStoragePolicy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightStorageStoragePolicy
        $AllProperties = ("ClassId", "ObjectType", "AccountMoid", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "Description", "Name", "GlobalHotSpares", "RetainPolicyVirtualDrives", "UnusedDisksState", "VirtualDrives", "DiskGroupPolicies", "Organization", "Profiles")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "GlobalHotSpares"))) { #optional property not found
            $GlobalHotSpares = $null
        } else {
            $GlobalHotSpares = $JsonParameters.PSobject.Properties["GlobalHotSpares"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RetainPolicyVirtualDrives"))) { #optional property not found
            $RetainPolicyVirtualDrives = $null
        } else {
            $RetainPolicyVirtualDrives = $JsonParameters.PSobject.Properties["RetainPolicyVirtualDrives"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UnusedDisksState"))) { #optional property not found
            $UnusedDisksState = $null
        } else {
            $UnusedDisksState = $JsonParameters.PSobject.Properties["UnusedDisksState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VirtualDrives"))) { #optional property not found
            $VirtualDrives = $null
        } else {
            $VirtualDrives = $JsonParameters.PSobject.Properties["VirtualDrives"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DiskGroupPolicies"))) { #optional property not found
            $DiskGroupPolicies = $null
        } else {
            $DiskGroupPolicies = $JsonParameters.PSobject.Properties["DiskGroupPolicies"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Profiles"))) { #optional property not found
            $Profiles = $null
        } else {
            $Profiles = $JsonParameters.PSobject.Properties["Profiles"].value
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
            "Description" = ${Description}
            "Name" = ${Name}
            "GlobalHotSpares" = ${GlobalHotSpares}
            "RetainPolicyVirtualDrives" = ${RetainPolicyVirtualDrives}
            "UnusedDisksState" = ${UnusedDisksState}
            "VirtualDrives" = ${VirtualDrives}
            "DiskGroupPolicies" = ${DiskGroupPolicies}
            "Organization" = ${Organization}
            "Profiles" = ${Profiles}
        }

        return $PSO
    }

}

