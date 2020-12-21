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

Definition of the list of properties defined in 'recovery.AbstractBackupConfig', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data. The enum values provides the list of concrete types that can be instantiated from this abstract type.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property. The enum values provides the list of concrete types that can be instantiated from this abstract type.
.PARAMETER FileNamePrefix
The file name for the backup image. This name is added as a prefix in the name for the backup image. A unique file name for the backup image is created along with a timestamp. For example: prefix-1572431305418.
.PARAMETER LocationType
Specifies whether the backup will be stored locally or remotely. * `Network Share` - The backup is stored remotely on a separate server. * `Local Storage` - The backup is stored locally on the endpoint.
.PARAMETER Password
Password of Backup server.
.PARAMETER Path
The file system path where the backup images must be stored. Include the IP address/hostname of the network share location and the complete file system path. For example: 172.29.109.234/var/backups/.
.PARAMETER Protocol
Protocol for transferring the backup image to the network share location. * `SCP` - Secure Copy Protocol (SCP) to access the file server. * `SFTP` - SSH File Transfer Protocol (SFTP) to access file server. * `FTP` - File Transfer Protocol (FTP) to access file server.
.PARAMETER RetentionCount
Number of backup copies maintained on the local or remote server. When the created backup files exceed this number, the initial backup files are overwritten in a sequential manner.
.PARAMETER UserName
Username for the backup server.
.OUTPUTS

RecoveryAbstractBackupConfigAllOf<PSCustomObject>
#>

function Initialize-IntersightRecoveryAbstractBackupConfigAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("recovery.BackupConfigPolicy", "recovery.OnDemandBackup")]
        [String]
        ${ClassId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("recovery.BackupConfigPolicy", "recovery.OnDemandBackup")]
        [String]
        ${ObjectType},
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
        ${RetentionCount} = 10,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserName}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightRecoveryAbstractBackupConfigAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if ($RetentionCount -and $RetentionCount -gt 365) {
          throw "invalid value for 'RetentionCount', must be smaller than or equal to 365."
        }

        if ($RetentionCount -and $RetentionCount -lt 1) {
          throw "invalid value for 'RetentionCount', must be greater than or equal to 1."
        }

        
        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "FileNamePrefix" = ${FileNamePrefix}
            "LocationType" = ${LocationType}
            "Password" = ${Password}
            "Path" = ${Path}
            "Protocol" = ${Protocol}
            "RetentionCount" = ${RetentionCount}
            "UserName" = ${UserName}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RecoveryAbstractBackupConfigAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to RecoveryAbstractBackupConfigAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RecoveryAbstractBackupConfigAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToRecoveryAbstractBackupConfigAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightRecoveryAbstractBackupConfigAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightRecoveryAbstractBackupConfigAllOf
        $AllProperties = ("ClassId", "ObjectType", "FileNamePrefix", "IsPasswordSet", "LocationType", "Password", "Path", "Protocol", "RetentionCount", "UserName")
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

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "FileNamePrefix" = ${FileNamePrefix}
            "IsPasswordSet" = ${IsPasswordSet}
            "LocationType" = ${LocationType}
            "Password" = ${Password}
            "Path" = ${Path}
            "Protocol" = ${Protocol}
            "RetentionCount" = ${RetentionCount}
            "UserName" = ${UserName}
        }

        return $PSO
    }

}

