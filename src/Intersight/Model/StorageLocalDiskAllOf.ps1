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

Definition of the list of properties defined in 'storage.LocalDisk', excluding properties defined in parent classes.

.PARAMETER SlotNumber
The slot number of the disk to be referenced. As this is a policy, this slot number may or may not be valid depending on the number of disks in the associated server.
.OUTPUTS

StorageLocalDiskAllOf<PSCustomObject>
#>

function Initialize-IntersightStorageLocalDiskAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${SlotNumber}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightStorageLocalDiskAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$SlotNumber -and $SlotNumber -gt 254) {
          throw "invalid value for 'SlotNumber', must be smaller than or equal to 254."
        }

        if (!$SlotNumber -and $SlotNumber -lt 1) {
          throw "invalid value for 'SlotNumber', must be greater than or equal to 1."
        }

        
        $PSO = [PSCustomObject]@{
            "SlotNumber" = ${SlotNumber}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StorageLocalDiskAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to StorageLocalDiskAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StorageLocalDiskAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToStorageLocalDiskAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightStorageLocalDiskAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightStorageLocalDiskAllOf
        $AllProperties = ("SlotNumber")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SlotNumber"))) { #optional property not found
            $SlotNumber = $null
        } else {
            $SlotNumber = $JsonParameters.PSobject.Properties["SlotNumber"].value
        }

        $PSO = [PSCustomObject]@{
            "SlotNumber" = ${SlotNumber}
        }

        return $PSO
    }

}

