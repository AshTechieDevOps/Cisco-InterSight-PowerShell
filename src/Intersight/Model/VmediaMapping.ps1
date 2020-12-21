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

Virtual Media mapping settings required to map images from remote server.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER AuthenticationProtocol
Type of Authentication protocol when CIFS is used for communication with the remote server. * `none` - No authentication is used. * `ntlm` - NT LAN Manager (NTLM) security protocol. Use this option only with Windows 2008 R2 and Windows 2012 R2. * `ntlmi` - NTLMi security protocol. Use this option only when you enable Digital Signing in the CIFS Windows server. * `ntlmv2` - NTLMv2 security protocol. Use this option only with Samba Linux. * `ntlmv2i` - NTLMv2i security protocol. Use this option only with Samba Linux. * `ntlmssp` - NT LAN Manager Security Support Provider (NTLMSSP) protocol. Use this option only with Windows 2008 R2 and Windows 2012 R2. * `ntlmsspi` - NTLMSSPi protocol. Use this option only when you enable Digital Signing in the CIFS Windows server.
.PARAMETER DeviceType
Type of remote Virtual Media device. * `cdd` - Uses compact disc drive as the virtual media mount device. * `hdd` - Uses hard disk drive as the virtual media mount device.
.PARAMETER HostName
IP address or hostname of the remote server.
.PARAMETER MountOptions
Mount options for the Virtual Media mapping. The field can be left blank or filled in a comma separated list with the following options.\n For NFS, supported options are ro, rw, nolock, noexec, soft, port=VALUE, timeo=VALUE, retry=VALUE.\n For CIFS, supported options are soft, nounix, noserverino, guest.\n For CIFS version < 3.0, vers=VALUE is mandatory. e.g. vers=2.0\n For HTTP/HTTPS, the only supported option is noauto.
.PARAMETER MountProtocol
Protocol to use to communicate with the remote server. * `nfs` - NFS protocol for vmedia mount. * `cifs` - CIFS protocol for vmedia mount. * `http` - HTTP protocol for vmedia mount. * `https` - HTTPS protocol for vmedia mount.
.PARAMETER Password
Password associated with the username.
.PARAMETER RemoteFile
Name of the remote file. It should be of .img format for HDD Virtual Media mapping and .iso format for CDD Virtual Media mapping.
.PARAMETER RemotePath
URL path to the location of the image on the remote server. The preferred format is '/path'.
.PARAMETER Username
Username to log in to the remote server.
.PARAMETER VolumeName
Identity of the image for Virtual Media mapping.
.OUTPUTS

VmediaMapping<PSCustomObject>
#>

function Initialize-IntersightVmediaMapping {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("vmedia.Mapping")]
        [String]
        ${ClassId} = "vmedia.Mapping",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("vmedia.Mapping")]
        [String]
        ${ObjectType} = "vmedia.Mapping",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("none", "ntlm", "ntlmi", "ntlmv2", "ntlmv2i", "ntlmssp", "ntlmsspi")]
        [String]
        ${AuthenticationProtocol} = "none",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("cdd", "hdd")]
        [String]
        ${DeviceType} = "cdd",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HostName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MountOptions},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("nfs", "cifs", "http", "https")]
        [String]
        ${MountProtocol} = "nfs",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[ !#$%\(\)\+,\-\.:\?@\[\]_\{\}=~a-zA-Z0-9]+$")]
        [String]
        ${RemoteFile},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[ !#$%\(\)\+,\-\./:\?@\[\]_\{\}=~a-zA-Z0-9]+$")]
        [String]
        ${RemotePath},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[\-\.:_a-zA-Z0-9]+$")]
        [String]
        ${VolumeName}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightVmediaMapping' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if (!$MountOptions -and $MountOptions.length -gt 248) {
            throw "invalid value for 'MountOptions', the character length must be smaller than or equal to 248."
        }

        if (!$MountOptions -and $MountOptions.length -lt 0) {
            throw "invalid value for 'MountOptions', the character length must be great than or equal to 0."
        }

        if (!$Password -and $Password.length -gt 255) {
            throw "invalid value for 'Password', the character length must be smaller than or equal to 255."
        }

        if (!$Password -and $Password.length -lt 0) {
            throw "invalid value for 'Password', the character length must be great than or equal to 0."
        }

        if (!$RemoteFile -and $RemoteFile.length -gt 235) {
            throw "invalid value for 'RemoteFile', the character length must be smaller than or equal to 235."
        }

        if (!$RemoteFile -and $RemoteFile.length -lt 1) {
            throw "invalid value for 'RemoteFile', the character length must be great than or equal to 1."
        }

        if (!$Username -and $Username.length -gt 255) {
            throw "invalid value for 'Username', the character length must be smaller than or equal to 255."
        }

        if (!$Username -and $Username.length -lt 0) {
            throw "invalid value for 'Username', the character length must be great than or equal to 0."
        }

        if (!$VolumeName -and $VolumeName.length -gt 47) {
            throw "invalid value for 'VolumeName', the character length must be smaller than or equal to 47."
        }

        if (!$VolumeName -and $VolumeName.length -lt 1) {
            throw "invalid value for 'VolumeName', the character length must be great than or equal to 1."
        }

        
        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AuthenticationProtocol" = ${AuthenticationProtocol}
            "DeviceType" = ${DeviceType}
            "HostName" = ${HostName}
            "MountOptions" = ${MountOptions}
            "MountProtocol" = ${MountProtocol}
            "Password" = ${Password}
            "RemoteFile" = ${RemoteFile}
            "RemotePath" = ${RemotePath}
            "Username" = ${Username}
            "VolumeName" = ${VolumeName}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VmediaMapping<PSCustomObject>

.DESCRIPTION

Convert from JSON to VmediaMapping<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VmediaMapping<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToVmediaMapping {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightVmediaMapping' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightVmediaMapping
        $AllProperties = ("ClassId", "ObjectType", "AuthenticationProtocol", "DeviceType", "HostName", "IsPasswordSet", "MountOptions", "MountProtocol", "Password", "RemoteFile", "RemotePath", "Username", "VolumeName")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AuthenticationProtocol"))) { #optional property not found
            $AuthenticationProtocol = $null
        } else {
            $AuthenticationProtocol = $JsonParameters.PSobject.Properties["AuthenticationProtocol"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeviceType"))) { #optional property not found
            $DeviceType = $null
        } else {
            $DeviceType = $JsonParameters.PSobject.Properties["DeviceType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HostName"))) { #optional property not found
            $HostName = $null
        } else {
            $HostName = $JsonParameters.PSobject.Properties["HostName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IsPasswordSet"))) { #optional property not found
            $IsPasswordSet = $null
        } else {
            $IsPasswordSet = $JsonParameters.PSobject.Properties["IsPasswordSet"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MountOptions"))) { #optional property not found
            $MountOptions = $null
        } else {
            $MountOptions = $JsonParameters.PSobject.Properties["MountOptions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MountProtocol"))) { #optional property not found
            $MountProtocol = $null
        } else {
            $MountProtocol = $JsonParameters.PSobject.Properties["MountProtocol"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["Password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RemoteFile"))) { #optional property not found
            $RemoteFile = $null
        } else {
            $RemoteFile = $JsonParameters.PSobject.Properties["RemoteFile"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RemotePath"))) { #optional property not found
            $RemotePath = $null
        } else {
            $RemotePath = $JsonParameters.PSobject.Properties["RemotePath"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["Username"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VolumeName"))) { #optional property not found
            $VolumeName = $null
        } else {
            $VolumeName = $JsonParameters.PSobject.Properties["VolumeName"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AuthenticationProtocol" = ${AuthenticationProtocol}
            "DeviceType" = ${DeviceType}
            "HostName" = ${HostName}
            "IsPasswordSet" = ${IsPasswordSet}
            "MountOptions" = ${MountOptions}
            "MountProtocol" = ${MountProtocol}
            "Password" = ${Password}
            "RemoteFile" = ${RemoteFile}
            "RemotePath" = ${RemotePath}
            "Username" = ${Username}
            "VolumeName" = ${VolumeName}
        }

        return $PSO
    }

}

