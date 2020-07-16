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

Definition of the list of properties defined in 'connector.DownloadStatus', excluding properties defined in parent classes.

.PARAMETER Checksum
No description available.
.PARAMETER DownloadError
Any error encountered. Set to empty when download is in progress or completed.} type: string
.PARAMETER DownloadProgress
The download progress of the file represented as a percentage between 0% and 100%. If progress reporting is not possible a value of -1 is sent.
.PARAMETER DownloadRetries
The number of retries the plugin attempted before succeeding or failing the download.
.PARAMETER Sha256checksum
The sha256checksum of the downloaded file as calculated by the download plugin after successfully downloading a file.
.OUTPUTS

ConnectorDownloadStatusAllOf<PSCustomObject>
#>

function Initialize-IntersightConnectorDownloadStatusAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Checksum},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DownloadError},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${DownloadProgress},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${DownloadRetries},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Sha256checksum}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightConnectorDownloadStatusAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Checksum" = ${Checksum}
            "DownloadError" = ${DownloadError}
            "DownloadProgress" = ${DownloadProgress}
            "DownloadRetries" = ${DownloadRetries}
            "Sha256checksum" = ${Sha256checksum}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConnectorDownloadStatusAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConnectorDownloadStatusAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConnectorDownloadStatusAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToConnectorDownloadStatusAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightConnectorDownloadStatusAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightConnectorDownloadStatusAllOf
        $AllProperties = ("Checksum", "DownloadError", "DownloadProgress", "DownloadRetries", "Sha256checksum")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Checksum"))) { #optional property not found
            $Checksum = $null
        } else {
            $Checksum = $JsonParameters.PSobject.Properties["Checksum"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DownloadError"))) { #optional property not found
            $DownloadError = $null
        } else {
            $DownloadError = $JsonParameters.PSobject.Properties["DownloadError"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DownloadProgress"))) { #optional property not found
            $DownloadProgress = $null
        } else {
            $DownloadProgress = $JsonParameters.PSobject.Properties["DownloadProgress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DownloadRetries"))) { #optional property not found
            $DownloadRetries = $null
        } else {
            $DownloadRetries = $JsonParameters.PSobject.Properties["DownloadRetries"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Sha256checksum"))) { #optional property not found
            $Sha256checksum = $null
        } else {
            $Sha256checksum = $JsonParameters.PSobject.Properties["Sha256checksum"].value
        }

        $PSO = [PSCustomObject]@{
            "Checksum" = ${Checksum}
            "DownloadError" = ${DownloadError}
            "DownloadProgress" = ${DownloadProgress}
            "DownloadRetries" = ${DownloadRetries}
            "Sha256checksum" = ${Sha256checksum}
        }

        return $PSO
    }

}

