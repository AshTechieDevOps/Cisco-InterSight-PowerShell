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

Definition of the list of properties defined in 'softwarerepository.DownloadSpec', excluding properties defined in parent classes.

.PARAMETER AuthToken
The OAuth2 token that will be used during image download by the endpoint to authenticate with file server.
.PARAMETER Certificate
The certificate of file server that will be used by the endpoint to validate the server before starting the file download.
.PARAMETER Filename
The name of the firmware image.
.PARAMETER Md5sum
MD5 sum of the firmware image that will be used by the endpoint to validate the integrity of the image, post download.
.PARAMETER Size
The size (in bytes) of the firmware image.
.PARAMETER Url
The URL of this file in file server. The endpoint uses this URL to download the file from the file server.
.PARAMETER File
No description available.
.OUTPUTS

SoftwarerepositoryDownloadSpecAllOf<PSCustomObject>
#>

function Initialize-IntersightSoftwarerepositoryDownloadSpecAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AuthToken},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Certificate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Filename},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Md5sum},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Size},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${File}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightSoftwarerepositoryDownloadSpecAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "AuthToken" = ${AuthToken}
            "Certificate" = ${Certificate}
            "Filename" = ${Filename}
            "Md5sum" = ${Md5sum}
            "Size" = ${Size}
            "Url" = ${Url}
            "File" = ${File}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SoftwarerepositoryDownloadSpecAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to SoftwarerepositoryDownloadSpecAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SoftwarerepositoryDownloadSpecAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToSoftwarerepositoryDownloadSpecAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightSoftwarerepositoryDownloadSpecAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightSoftwarerepositoryDownloadSpecAllOf
        $AllProperties = ("AuthToken", "Certificate", "Filename", "Md5sum", "Size", "Url", "File")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AuthToken"))) { #optional property not found
            $AuthToken = $null
        } else {
            $AuthToken = $JsonParameters.PSobject.Properties["AuthToken"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Certificate"))) { #optional property not found
            $Certificate = $null
        } else {
            $Certificate = $JsonParameters.PSobject.Properties["Certificate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Filename"))) { #optional property not found
            $Filename = $null
        } else {
            $Filename = $JsonParameters.PSobject.Properties["Filename"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Md5sum"))) { #optional property not found
            $Md5sum = $null
        } else {
            $Md5sum = $JsonParameters.PSobject.Properties["Md5sum"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Size"))) { #optional property not found
            $Size = $null
        } else {
            $Size = $JsonParameters.PSobject.Properties["Size"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Url"))) { #optional property not found
            $Url = $null
        } else {
            $Url = $JsonParameters.PSobject.Properties["Url"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "File"))) { #optional property not found
            $File = $null
        } else {
            $File = $JsonParameters.PSobject.Properties["File"].value
        }

        $PSO = [PSCustomObject]@{
            "AuthToken" = ${AuthToken}
            "Certificate" = ${Certificate}
            "Filename" = ${Filename}
            "Md5sum" = ${Md5sum}
            "Size" = ${Size}
            "Url" = ${Url}
            "File" = ${File}
        }

        return $PSO
    }

}

