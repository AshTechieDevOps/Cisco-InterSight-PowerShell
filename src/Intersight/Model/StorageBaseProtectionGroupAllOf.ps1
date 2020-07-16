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

Definition of the list of properties defined in 'storage.BaseProtectionGroup', excluding properties defined in parent classes.

.PARAMETER Name
Name of the protection Group.
.PARAMETER Prefix
Prefix used for all generated snapshots from the protection group.
.PARAMETER ReplicationEnabled
Flag to determine if replication is enabled. Snapshots are replicated to the target array if this flag is set.
.PARAMETER SnapshotEnabled
Flag to determine if snapshot creation is enabled. Snapshots are created on local array if this flag is set.
.OUTPUTS

StorageBaseProtectionGroupAllOf<PSCustomObject>
#>

function Initialize-IntersightStorageBaseProtectionGroupAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Prefix},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ReplicationEnabled},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SnapshotEnabled}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightStorageBaseProtectionGroupAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Name" = ${Name}
            "Prefix" = ${Prefix}
            "ReplicationEnabled" = ${ReplicationEnabled}
            "SnapshotEnabled" = ${SnapshotEnabled}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StorageBaseProtectionGroupAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to StorageBaseProtectionGroupAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StorageBaseProtectionGroupAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToStorageBaseProtectionGroupAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightStorageBaseProtectionGroupAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightStorageBaseProtectionGroupAllOf
        $AllProperties = ("Name", "Prefix", "ReplicationEnabled", "SnapshotEnabled")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Prefix"))) { #optional property not found
            $Prefix = $null
        } else {
            $Prefix = $JsonParameters.PSobject.Properties["Prefix"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ReplicationEnabled"))) { #optional property not found
            $ReplicationEnabled = $null
        } else {
            $ReplicationEnabled = $JsonParameters.PSobject.Properties["ReplicationEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SnapshotEnabled"))) { #optional property not found
            $SnapshotEnabled = $null
        } else {
            $SnapshotEnabled = $JsonParameters.PSobject.Properties["SnapshotEnabled"].value
        }

        $PSO = [PSCustomObject]@{
            "Name" = ${Name}
            "Prefix" = ${Prefix}
            "ReplicationEnabled" = ${ReplicationEnabled}
            "SnapshotEnabled" = ${SnapshotEnabled}
        }

        return $PSO
    }

}

