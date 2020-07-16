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

The image cached in the customer's datacenter.

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
.PARAMETER Action
The action to be performed on the imported file. If 'PreCache' is set, the image will be cached in endpoint. If 'Evict' is set, the cached file will be removed. Applicable in Intersight appliance deployment. If 'Cancel' is set, the ImportState is marked as 'Failed'. Applicable for local machine source.
.PARAMETER RegisteredWorkflows
No description available.
.PARAMETER File
No description available.
.PARAMETER NetworkElement
No description available.
.OUTPUTS

SoftwarerepositoryCachedImage<PSCustomObject>
#>

function Initialize-IntersightSoftwarerepositoryCachedImage {
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
        ${Sha256checksum},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("None", "GeneratePreSignedUploadUrl", "GeneratePreSignedDownloadUrl", "CompleteImportProcess", "MarkImportFailed", "PreCache", "Cancel", "Extract", "Evict")]
        [String]
        ${Action} = "None",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${RegisteredWorkflows},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${File},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${NetworkElement}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightSoftwarerepositoryCachedImage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "Checksum" = ${Checksum}
            "DownloadError" = ${DownloadError}
            "DownloadProgress" = ${DownloadProgress}
            "DownloadRetries" = ${DownloadRetries}
            "Sha256checksum" = ${Sha256checksum}
            "Action" = ${Action}
            "RegisteredWorkflows" = ${RegisteredWorkflows}
            "File" = ${File}
            "NetworkElement" = ${NetworkElement}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SoftwarerepositoryCachedImage<PSCustomObject>

.DESCRIPTION

Convert from JSON to SoftwarerepositoryCachedImage<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SoftwarerepositoryCachedImage<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToSoftwarerepositoryCachedImage {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightSoftwarerepositoryCachedImage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightSoftwarerepositoryCachedImage
        $AllProperties = ("AccountMoid", "ClassId", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "ObjectType", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "Checksum", "DownloadError", "DownloadProgress", "DownloadRetries", "Sha256checksum", "Action", "CacheState", "CachedTime", "LastAccessTime", "Md5sum", "OriginalSha512sum", "Path", "RegisteredWorkflows", "UsedCount", "File", "NetworkElement")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Action"))) { #optional property not found
            $Action = $null
        } else {
            $Action = $JsonParameters.PSobject.Properties["Action"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CacheState"))) { #optional property not found
            $CacheState = $null
        } else {
            $CacheState = $JsonParameters.PSobject.Properties["CacheState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CachedTime"))) { #optional property not found
            $CachedTime = $null
        } else {
            $CachedTime = $JsonParameters.PSobject.Properties["CachedTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LastAccessTime"))) { #optional property not found
            $LastAccessTime = $null
        } else {
            $LastAccessTime = $JsonParameters.PSobject.Properties["LastAccessTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Md5sum"))) { #optional property not found
            $Md5sum = $null
        } else {
            $Md5sum = $JsonParameters.PSobject.Properties["Md5sum"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OriginalSha512sum"))) { #optional property not found
            $OriginalSha512sum = $null
        } else {
            $OriginalSha512sum = $JsonParameters.PSobject.Properties["OriginalSha512sum"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Path"))) { #optional property not found
            $Path = $null
        } else {
            $Path = $JsonParameters.PSobject.Properties["Path"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredWorkflows"))) { #optional property not found
            $RegisteredWorkflows = $null
        } else {
            $RegisteredWorkflows = $JsonParameters.PSobject.Properties["RegisteredWorkflows"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UsedCount"))) { #optional property not found
            $UsedCount = $null
        } else {
            $UsedCount = $JsonParameters.PSobject.Properties["UsedCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "File"))) { #optional property not found
            $File = $null
        } else {
            $File = $JsonParameters.PSobject.Properties["File"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NetworkElement"))) { #optional property not found
            $NetworkElement = $null
        } else {
            $NetworkElement = $JsonParameters.PSobject.Properties["NetworkElement"].value
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
            "Checksum" = ${Checksum}
            "DownloadError" = ${DownloadError}
            "DownloadProgress" = ${DownloadProgress}
            "DownloadRetries" = ${DownloadRetries}
            "Sha256checksum" = ${Sha256checksum}
            "Action" = ${Action}
            "CacheState" = ${CacheState}
            "CachedTime" = ${CachedTime}
            "LastAccessTime" = ${LastAccessTime}
            "Md5sum" = ${Md5sum}
            "OriginalSha512sum" = ${OriginalSha512sum}
            "Path" = ${Path}
            "RegisteredWorkflows" = ${RegisteredWorkflows}
            "UsedCount" = ${UsedCount}
            "File" = ${File}
            "NetworkElement" = ${NetworkElement}
        }

        return $PSO
    }

}

