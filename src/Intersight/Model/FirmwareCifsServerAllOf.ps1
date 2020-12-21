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

Definition of the list of properties defined in 'firmware.CifsServer', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER FileLocation
The location to the image file. The accepted format is IP-or-hostname/folder1/folder2/.../imageFile.
.PARAMETER MountOptions
Mount option (Authentication Protocol) as configured on the CIFS Server. Example:ntlmv2. * `none` - The default authentication protocol is decided by the endpoint. * `ntlm` - The external CIFS server is configured with ntlm as the authentication protocol. * `ntlmi` - Mount options of CIFS file server is ntlmi. * `ntlmv2` - Mount options of CIFS file server is ntlmv2. * `ntlmv2i` - Mount options of CIFS file server is ntlmv2i. * `ntlmssp` - Mount options of CIFS file server is ntlmssp. * `ntlmsspi` - Mount options of CIFS file server is ntlmsspi.
.OUTPUTS

FirmwareCifsServerAllOf<PSCustomObject>
#>

function Initialize-IntersightFirmwareCifsServerAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("firmware.CifsServer")]
        [String]
        ${ClassId} = "firmware.CifsServer",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("firmware.CifsServer")]
        [String]
        ${ObjectType} = "firmware.CifsServer",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FileLocation},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("none", "ntlm", "ntlmi", "ntlmv2", "ntlmv2i", "ntlmssp", "ntlmsspi")]
        [String]
        ${MountOptions} = "none"
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightFirmwareCifsServerAllOf' | Write-Debug
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
            "FileLocation" = ${FileLocation}
            "MountOptions" = ${MountOptions}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FirmwareCifsServerAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to FirmwareCifsServerAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FirmwareCifsServerAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToFirmwareCifsServerAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightFirmwareCifsServerAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightFirmwareCifsServerAllOf
        $AllProperties = ("ClassId", "ObjectType", "FileLocation", "MountOptions", "RemoteFile", "RemoteIp", "RemoteShare")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FileLocation"))) { #optional property not found
            $FileLocation = $null
        } else {
            $FileLocation = $JsonParameters.PSobject.Properties["FileLocation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MountOptions"))) { #optional property not found
            $MountOptions = $null
        } else {
            $MountOptions = $JsonParameters.PSobject.Properties["MountOptions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RemoteFile"))) { #optional property not found
            $RemoteFile = $null
        } else {
            $RemoteFile = $JsonParameters.PSobject.Properties["RemoteFile"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RemoteIp"))) { #optional property not found
            $RemoteIp = $null
        } else {
            $RemoteIp = $JsonParameters.PSobject.Properties["RemoteIp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RemoteShare"))) { #optional property not found
            $RemoteShare = $null
        } else {
            $RemoteShare = $JsonParameters.PSobject.Properties["RemoteShare"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "FileLocation" = ${FileLocation}
            "MountOptions" = ${MountOptions}
            "RemoteFile" = ${RemoteFile}
            "RemoteIp" = ${RemoteIp}
            "RemoteShare" = ${RemoteShare}
        }

        return $PSO
    }

}

