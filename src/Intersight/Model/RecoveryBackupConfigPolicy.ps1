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

Backup config policy which contains all the required inputs to do backup on a local or remote server.

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
.PARAMETER FileNamePrefix
The file name for the backup image. This name is added as a prefix in the name for the backup image. A unique file name for the backup image is created along with a timestamp. For example: prefix-1572431305418.
.PARAMETER LocationType
Specifies whether the backup will be stored locally or remotely.
.PARAMETER Password
Password of Backup server.
.PARAMETER Path
The file system path where the backup images must be stored. Include the IP address/hostname of the network share location and the complete file system path. For example: 172.29.109.234/var/backups/.
.PARAMETER Protocol
Protocol for transferring the backup image to the network share location.
.PARAMETER RetentionCount
Number of backup copies maintained on the local or remote server. When the created backup files exceed this number, the initial backup files are overwritten in a sequential manner.
.PARAMETER UserName
Backup server user name.
.PARAMETER BackupProfiles
An array of relationships to recoveryBackupProfile resources.
.PARAMETER Organization
No description available.
.OUTPUTS

RecoveryBackupConfigPolicy<PSCustomObject>
#>

function Initialize-IntersightRecoveryBackupConfigPolicy {
    [CmdletBinding()]
    Param (
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
        [ValidatePattern("^[a-zA-Z0-9]+[\\sa-zA-Z0-9_'.:-]*$")]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9_.:-]{1,64}$")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FileNamePrefix},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Network Share", "Local Storage")]
        [String]
        ${LocationType} = "Network Share",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Path},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SCP", "SFTP", "FTP")]
        [String]
        ${Protocol} = "SCP",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${RetentionCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${BackupProfiles},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightRecoveryBackupConfigPolicy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Description -and $Description.length -gt 1024) {
            throw "invalid value for 'Description', the character length must be smaller than or equal to 1024."
        }

        if (!$RetentionCount -and $RetentionCount -gt 365) {
          throw "invalid value for 'RetentionCount', must be smaller than or equal to 365."
        }

        if (!$RetentionCount -and $RetentionCount -lt 1) {
          throw "invalid value for 'RetentionCount', must be greater than or equal to 1."
        }

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "Description" = ${Description}
            "Name" = ${Name}
            "FileNamePrefix" = ${FileNamePrefix}
            "LocationType" = ${LocationType}
            "Password" = ${Password}
            "Path" = ${Path}
            "Protocol" = ${Protocol}
            "RetentionCount" = ${RetentionCount}
            "UserName" = ${UserName}
            "BackupProfiles" = ${BackupProfiles}
            "Organization" = ${Organization}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RecoveryBackupConfigPolicy<PSCustomObject>

.DESCRIPTION

Convert from JSON to RecoveryBackupConfigPolicy<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RecoveryBackupConfigPolicy<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToRecoveryBackupConfigPolicy {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightRecoveryBackupConfigPolicy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightRecoveryBackupConfigPolicy
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "Description", "Name", "FileNamePrefix", "IsPasswordSet", "LocationType", "Password", "Path", "Protocol", "RetentionCount", "UserName", "BackupProfiles", "Organization")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FileNamePrefix"))) { #optional property not found
            $FileNamePrefix = $null
        } else {
            $FileNamePrefix = $JsonParameters.PSobject.Properties["FileNamePrefix"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IsPasswordSet"))) { #optional property not found
            $IsPasswordSet = $null
        } else {
            $IsPasswordSet = $JsonParameters.PSobject.Properties["IsPasswordSet"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LocationType"))) { #optional property not found
            $LocationType = $null
        } else {
            $LocationType = $JsonParameters.PSobject.Properties["LocationType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["Password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Path"))) { #optional property not found
            $Path = $null
        } else {
            $Path = $JsonParameters.PSobject.Properties["Path"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Protocol"))) { #optional property not found
            $Protocol = $null
        } else {
            $Protocol = $JsonParameters.PSobject.Properties["Protocol"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RetentionCount"))) { #optional property not found
            $RetentionCount = $null
        } else {
            $RetentionCount = $JsonParameters.PSobject.Properties["RetentionCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UserName"))) { #optional property not found
            $UserName = $null
        } else {
            $UserName = $JsonParameters.PSobject.Properties["UserName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BackupProfiles"))) { #optional property not found
            $BackupProfiles = $null
        } else {
            $BackupProfiles = $JsonParameters.PSobject.Properties["BackupProfiles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        $PSO = [PSCustomObject]@{
            "AccountMoid" = ${AccountMoid}
            "ClassId" = ${ClassId}
            "CreateTime" = ${CreateTime}
            "DomainGroupMoid" = ${DomainGroupMoid}
            "ModTime" = ${ModTime}
            "Moid" = ${Moid}
            "ObjectType" = ${ObjectType}
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
            "FileNamePrefix" = ${FileNamePrefix}
            "IsPasswordSet" = ${IsPasswordSet}
            "LocationType" = ${LocationType}
            "Password" = ${Password}
            "Path" = ${Path}
            "Protocol" = ${Protocol}
            "RetentionCount" = ${RetentionCount}
            "UserName" = ${UserName}
            "BackupProfiles" = ${BackupProfiles}
            "Organization" = ${Organization}
        }

        return $PSO
    }

}

