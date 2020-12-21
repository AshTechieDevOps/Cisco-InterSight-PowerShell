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

Definition of the list of properties defined in 'storage.VirtualDriveConfig', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER AccessPolicy
Access policy that host has on this virtual drive. * `Default` - Use platform default access mode. * `ReadWrite` - Enables host to perform read-write on the VD. * `ReadOnly` - Host can only read from the VD. * `Blocked` - Host can neither read nor write to the VD.
.PARAMETER BootDrive
The flag enables the use of this virtual drive as a boot drive.
.PARAMETER DiskGroupPolicy
Disk group policy that has the disk group in which this virtual drive needs to be created.
.PARAMETER DriveCache
Drive Cache property expect disk cache policy. * `Default` - Use platform default drive cache mode. * `NoChange` - Drive cache policy is unchanged. * `Enable` - Enables IO caching on the drive. * `Disable` - Disables IO caching on the drive.
.PARAMETER ExpandToAvailable
The flag enables this virtual drive to use all the available space in the disk group. When this flag is configured, the size property is ignored.
.PARAMETER IoPolicy
Desired IO mode - direct IO or cached IO. * `Default` - Use platform default IO mode. * `Direct` - Use direct IO for writing directly into the disk. * `Cached` - Use cached IO for writing into cache and then to disk.
.PARAMETER Name
The name of the virtual drive. The name can be between 1 and 15 alphanumeric characters. Spaces or any special characters other than - (hyphen), _ (underscore), : (colon), and . (period) are not allowed.
.PARAMETER ReadPolicy
Read ahead mode to be used to read data from this virtual drive. * `Default` - Use platform default read ahead mode. * `ReadAhead` - Use read ahead mode for the policy. * `NoReadAhead` - Do not use read ahead mode for the policy.
.PARAMETER Size
Virtual drive size in MB. Size is mandatory field unless the 'Expand to Available' option is enabled.
.PARAMETER StripSize
The strip size is the portion of a stripe that resides on a single drive in the drive group. The stripe consists of the data segments that the RAID controller writes across multiple drives, not including parity drives. * `Default` - Use platform default strip size for a virtual drive. * `32k` - Enables a strip size of 32k for a virtual drive. * `64k` - Enables a strip size of 64k for a virtual drive. * `128k` - Enables a strip size of 128k for a virtual drive. * `256k` - Enables a strip size of 256k for a virtual drive. * `512k` - Enables a strip size of 512k for a virtual drive. * `1024k` - Enables a strip size of 1024k for a virtual drive.
.PARAMETER WritePolicy
Write mode to be used to write data to this virtual drive. * `Default` - Use platform default write mode. * `WriteThrough` - Data is written through the cache and to the physical drives. Performance is improved, because subsequent reads of that data can be satisfied from the cache. * `WriteBackGoodBbu` - Data is stored in the cache, and is only written to the physical drives when space in the cache is needed. Virtual drives requesting this policy fall back to Write Through caching when the battery backup unit (BBU) cannot guarantee the safety of the cache in the event of a power failure. * `AlwaysWriteBack` - With this policy, write caching remains Write Back even if the battery backup unit is defective or discharged.
.OUTPUTS

StorageVirtualDriveConfigAllOf<PSCustomObject>
#>

function Initialize-IntersightStorageVirtualDriveConfigAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("storage.VirtualDriveConfig")]
        [String]
        ${ClassId} = "storage.VirtualDriveConfig",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("storage.VirtualDriveConfig")]
        [String]
        ${ObjectType} = "storage.VirtualDriveConfig",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Default", "ReadWrite", "ReadOnly", "Blocked")]
        [String]
        ${AccessPolicy} = "Default",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${BootDrive},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DiskGroupPolicy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Default", "NoChange", "Enable", "Disable")]
        [String]
        ${DriveCache} = "Default",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ExpandToAvailable},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Default", "Direct", "Cached")]
        [String]
        ${IoPolicy} = "Default",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("[-.:_a-zA-Z0-9]{1,15}")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Default", "ReadAhead", "NoReadAhead")]
        [String]
        ${ReadPolicy} = "Default",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Size},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Default", "32k", "64k", "128k", "256k", "512k", "1024k")]
        [String]
        ${StripSize} = "Default",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Default", "WriteThrough", "WriteBackGoodBbu", "AlwaysWriteBack")]
        [String]
        ${WritePolicy} = "Default"
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightStorageVirtualDriveConfigAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if ($Size -and $Size -lt 0) {
          throw "invalid value for 'Size', must be greater than or equal to 0."
        }

        
        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AccessPolicy" = ${AccessPolicy}
            "BootDrive" = ${BootDrive}
            "DiskGroupPolicy" = ${DiskGroupPolicy}
            "DriveCache" = ${DriveCache}
            "ExpandToAvailable" = ${ExpandToAvailable}
            "IoPolicy" = ${IoPolicy}
            "Name" = ${Name}
            "ReadPolicy" = ${ReadPolicy}
            "Size" = ${Size}
            "StripSize" = ${StripSize}
            "WritePolicy" = ${WritePolicy}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StorageVirtualDriveConfigAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to StorageVirtualDriveConfigAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StorageVirtualDriveConfigAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToStorageVirtualDriveConfigAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightStorageVirtualDriveConfigAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightStorageVirtualDriveConfigAllOf
        $AllProperties = ("ClassId", "ObjectType", "AccessPolicy", "BootDrive", "DiskGroupName", "DiskGroupPolicy", "DriveCache", "ExpandToAvailable", "IoPolicy", "Name", "ReadPolicy", "Size", "StripSize", "Vdid", "WritePolicy")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AccessPolicy"))) { #optional property not found
            $AccessPolicy = $null
        } else {
            $AccessPolicy = $JsonParameters.PSobject.Properties["AccessPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BootDrive"))) { #optional property not found
            $BootDrive = $null
        } else {
            $BootDrive = $JsonParameters.PSobject.Properties["BootDrive"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DiskGroupName"))) { #optional property not found
            $DiskGroupName = $null
        } else {
            $DiskGroupName = $JsonParameters.PSobject.Properties["DiskGroupName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DiskGroupPolicy"))) { #optional property not found
            $DiskGroupPolicy = $null
        } else {
            $DiskGroupPolicy = $JsonParameters.PSobject.Properties["DiskGroupPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DriveCache"))) { #optional property not found
            $DriveCache = $null
        } else {
            $DriveCache = $JsonParameters.PSobject.Properties["DriveCache"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExpandToAvailable"))) { #optional property not found
            $ExpandToAvailable = $null
        } else {
            $ExpandToAvailable = $JsonParameters.PSobject.Properties["ExpandToAvailable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IoPolicy"))) { #optional property not found
            $IoPolicy = $null
        } else {
            $IoPolicy = $JsonParameters.PSobject.Properties["IoPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ReadPolicy"))) { #optional property not found
            $ReadPolicy = $null
        } else {
            $ReadPolicy = $JsonParameters.PSobject.Properties["ReadPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Size"))) { #optional property not found
            $Size = $null
        } else {
            $Size = $JsonParameters.PSobject.Properties["Size"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StripSize"))) { #optional property not found
            $StripSize = $null
        } else {
            $StripSize = $JsonParameters.PSobject.Properties["StripSize"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Vdid"))) { #optional property not found
            $Vdid = $null
        } else {
            $Vdid = $JsonParameters.PSobject.Properties["Vdid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WritePolicy"))) { #optional property not found
            $WritePolicy = $null
        } else {
            $WritePolicy = $JsonParameters.PSobject.Properties["WritePolicy"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AccessPolicy" = ${AccessPolicy}
            "BootDrive" = ${BootDrive}
            "DiskGroupName" = ${DiskGroupName}
            "DiskGroupPolicy" = ${DiskGroupPolicy}
            "DriveCache" = ${DriveCache}
            "ExpandToAvailable" = ${ExpandToAvailable}
            "IoPolicy" = ${IoPolicy}
            "Name" = ${Name}
            "ReadPolicy" = ${ReadPolicy}
            "Size" = ${Size}
            "StripSize" = ${StripSize}
            "Vdid" = ${Vdid}
            "WritePolicy" = ${WritePolicy}
        }

        return $PSO
    }

}

