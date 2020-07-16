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

API keys are used to programatically perform API calls. API keys can be created by passing purpose field, which is a description for the application using API keys. Maximum of 3 API keys per user is allowed. API key will have RSA key pair generated and as part of create request key MOID, private and public key in PEM format are returned. In Intersight only the public key is stored. Client side private key is stored and is used for signature calculation. API key requests are authenticated using RSA SHA 256 signature validations. If the incoming request for authorization has X-Starship-Token, then session based authorization is done, else API key based authorization is performed. Once User, API key and Account are found and signature verification succeeds, then the privilege validations are performed.

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
.PARAMETER HashAlgorithm
The cryptographic hash algorithm to calculate the message digest.
.PARAMETER KeySpec
No description available.
.PARAMETER PrivateKey
Holds the private key for the API key.
.PARAMETER Purpose
The purpose of the API Key.
.PARAMETER SigningAlgorithm
The signing algorithm used by the client to authenticate API requests to Intersight. The signing algorithm must be compatible with the key generation specification.
.PARAMETER Permission
No description available.
.PARAMETER User
No description available.
.OUTPUTS

IamApiKey<PSCustomObject>
#>

function Initialize-IntersightIamApiKey {
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
        [ValidateSet("SHA256", "SHA384", "SHA512", "SHA512_224", "SHA512_256")]
        [String]
        ${HashAlgorithm} = "SHA256",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${KeySpec},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PrivateKey},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Purpose},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("RSASSA-PKCS1-v1_5", "RSASSA-PSS", "Ed25519", "Ecdsa")]
        [String]
        ${SigningAlgorithm} = "RSASSA-PKCS1-v1_5",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Permission},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${User}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightIamApiKey' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "HashAlgorithm" = ${HashAlgorithm}
            "KeySpec" = ${KeySpec}
            "PrivateKey" = ${PrivateKey}
            "Purpose" = ${Purpose}
            "SigningAlgorithm" = ${SigningAlgorithm}
            "Permission" = ${Permission}
            "User" = ${User}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IamApiKey<PSCustomObject>

.DESCRIPTION

Convert from JSON to IamApiKey<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IamApiKey<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToIamApiKey {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightIamApiKey' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightIamApiKey
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "HashAlgorithm", "KeySpec", "PrivateKey", "Purpose", "SigningAlgorithm", "Permission", "User")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HashAlgorithm"))) { #optional property not found
            $HashAlgorithm = $null
        } else {
            $HashAlgorithm = $JsonParameters.PSobject.Properties["HashAlgorithm"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "KeySpec"))) { #optional property not found
            $KeySpec = $null
        } else {
            $KeySpec = $JsonParameters.PSobject.Properties["KeySpec"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PrivateKey"))) { #optional property not found
            $PrivateKey = $null
        } else {
            $PrivateKey = $JsonParameters.PSobject.Properties["PrivateKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Purpose"))) { #optional property not found
            $Purpose = $null
        } else {
            $Purpose = $JsonParameters.PSobject.Properties["Purpose"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SigningAlgorithm"))) { #optional property not found
            $SigningAlgorithm = $null
        } else {
            $SigningAlgorithm = $JsonParameters.PSobject.Properties["SigningAlgorithm"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Permission"))) { #optional property not found
            $Permission = $null
        } else {
            $Permission = $JsonParameters.PSobject.Properties["Permission"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "User"))) { #optional property not found
            $User = $null
        } else {
            $User = $JsonParameters.PSobject.Properties["User"].value
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
            "HashAlgorithm" = ${HashAlgorithm}
            "KeySpec" = ${KeySpec}
            "PrivateKey" = ${PrivateKey}
            "Purpose" = ${Purpose}
            "SigningAlgorithm" = ${SigningAlgorithm}
            "Permission" = ${Permission}
            "User" = ${User}
        }

        return $PSO
    }

}

