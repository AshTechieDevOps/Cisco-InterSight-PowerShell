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

Restore tracks requests to restore the Intersight Appliance. There will be only one Restore managed object with a 'Started' state at any time. All other Restore managed objects will be in terminal states.

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
.PARAMETER Filename
Backup filename to backup or restore.
.PARAMETER Protocol
Communication protocol used by the file server (e.g. scp or sftp). * `scp` - Secure Copy Protocol (SCP) to access the file server. * `sftp` - SSH File Transfer Protocol (SFTP) to access file server.
.PARAMETER RemoteHost
Hostname of the remote file server.
.PARAMETER RemotePath
File server directory to copy the file.
.PARAMETER RemotePort
Remote TCP port on the file server (e.g. 22 for scp).
.PARAMETER Username
Username to authenticate the fileserver.
.PARAMETER Messages
No description available.
.PARAMETER Password
Password for authenticating with the file server.
.PARAMETER Account
No description available.
.OUTPUTS

ApplianceRestore<PSCustomObject>
#>

function Initialize-IntersightApplianceRestore {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("appliance.Restore")]
        [String]
        ${ClassId} = "appliance.Restore",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("appliance.Restore")]
        [String]
        ${ObjectType} = "appliance.Restore",
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
        ${Filename},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("scp", "sftp")]
        [String]
        ${Protocol} = "scp",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RemoteHost},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RemotePath},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${RemotePort},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Messages},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Account}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightApplianceRestore' | Write-Debug
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
            "Filename" = ${Filename}
            "Protocol" = ${Protocol}
            "RemoteHost" = ${RemoteHost}
            "RemotePath" = ${RemotePath}
            "RemotePort" = ${RemotePort}
            "Username" = ${Username}
            "Messages" = ${Messages}
            "Password" = ${Password}
            "Account" = ${Account}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApplianceRestore<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApplianceRestore<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApplianceRestore<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToApplianceRestore {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightApplianceRestore' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightApplianceRestore
        $AllProperties = ("ClassId", "ObjectType", "AccountMoid", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "Filename", "Protocol", "RemoteHost", "RemotePath", "RemotePort", "Username", "ElapsedTime", "EndTime", "IsPasswordSet", "Messages", "Password", "StartTime", "Status", "Account")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Filename"))) { #optional property not found
            $Filename = $null
        } else {
            $Filename = $JsonParameters.PSobject.Properties["Filename"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Protocol"))) { #optional property not found
            $Protocol = $null
        } else {
            $Protocol = $JsonParameters.PSobject.Properties["Protocol"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RemoteHost"))) { #optional property not found
            $RemoteHost = $null
        } else {
            $RemoteHost = $JsonParameters.PSobject.Properties["RemoteHost"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RemotePath"))) { #optional property not found
            $RemotePath = $null
        } else {
            $RemotePath = $JsonParameters.PSobject.Properties["RemotePath"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RemotePort"))) { #optional property not found
            $RemotePort = $null
        } else {
            $RemotePort = $JsonParameters.PSobject.Properties["RemotePort"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["Username"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ElapsedTime"))) { #optional property not found
            $ElapsedTime = $null
        } else {
            $ElapsedTime = $JsonParameters.PSobject.Properties["ElapsedTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndTime"))) { #optional property not found
            $EndTime = $null
        } else {
            $EndTime = $JsonParameters.PSobject.Properties["EndTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IsPasswordSet"))) { #optional property not found
            $IsPasswordSet = $null
        } else {
            $IsPasswordSet = $JsonParameters.PSobject.Properties["IsPasswordSet"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Messages"))) { #optional property not found
            $Messages = $null
        } else {
            $Messages = $JsonParameters.PSobject.Properties["Messages"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["Password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StartTime"))) { #optional property not found
            $StartTime = $null
        } else {
            $StartTime = $JsonParameters.PSobject.Properties["StartTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["Status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Account"))) { #optional property not found
            $Account = $null
        } else {
            $Account = $JsonParameters.PSobject.Properties["Account"].value
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
            "Filename" = ${Filename}
            "Protocol" = ${Protocol}
            "RemoteHost" = ${RemoteHost}
            "RemotePath" = ${RemotePath}
            "RemotePort" = ${RemotePort}
            "Username" = ${Username}
            "ElapsedTime" = ${ElapsedTime}
            "EndTime" = ${EndTime}
            "IsPasswordSet" = ${IsPasswordSet}
            "Messages" = ${Messages}
            "Password" = ${Password}
            "StartTime" = ${StartTime}
            "Status" = ${Status}
            "Account" = ${Account}
        }

        return $PSO
    }

}

