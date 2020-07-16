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

Definition of the list of properties defined in 'config.ImportedItem', excluding properties defined in parent classes.

.PARAMETER Item
No description available.
.PARAMETER Importer
No description available.
.OUTPUTS

ConfigImportedItemAllOf<PSCustomObject>
#>

function Initialize-IntersightConfigImportedItemAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Item},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Importer}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightConfigImportedItemAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Item" = ${Item}
            "Importer" = ${Importer}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConfigImportedItemAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConfigImportedItemAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConfigImportedItemAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToConfigImportedItemAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightConfigImportedItemAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightConfigImportedItemAllOf
        $AllProperties = ("IsShared", "IsUpdated", "Item", "Name", "NewMoid", "ServiceVersion", "Status", "StatusMessage", "Importer")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IsShared"))) { #optional property not found
            $IsShared = $null
        } else {
            $IsShared = $JsonParameters.PSobject.Properties["IsShared"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IsUpdated"))) { #optional property not found
            $IsUpdated = $null
        } else {
            $IsUpdated = $JsonParameters.PSobject.Properties["IsUpdated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Item"))) { #optional property not found
            $Item = $null
        } else {
            $Item = $JsonParameters.PSobject.Properties["Item"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NewMoid"))) { #optional property not found
            $NewMoid = $null
        } else {
            $NewMoid = $JsonParameters.PSobject.Properties["NewMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ServiceVersion"))) { #optional property not found
            $ServiceVersion = $null
        } else {
            $ServiceVersion = $JsonParameters.PSobject.Properties["ServiceVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["Status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StatusMessage"))) { #optional property not found
            $StatusMessage = $null
        } else {
            $StatusMessage = $JsonParameters.PSobject.Properties["StatusMessage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Importer"))) { #optional property not found
            $Importer = $null
        } else {
            $Importer = $JsonParameters.PSobject.Properties["Importer"].value
        }

        $PSO = [PSCustomObject]@{
            "IsShared" = ${IsShared}
            "IsUpdated" = ${IsUpdated}
            "Item" = ${Item}
            "Name" = ${Name}
            "NewMoid" = ${NewMoid}
            "ServiceVersion" = ${ServiceVersion}
            "Status" = ${Status}
            "StatusMessage" = ${StatusMessage}
            "Importer" = ${Importer}
        }

        return $PSO
    }

}

