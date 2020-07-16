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

Definition of the list of properties defined in 'virtualization.VmwareDatastore', excluding properties defined in parent classes.

.PARAMETER Accessible
Shows if this datastore is accessible.
.PARAMETER MaintenanceMode
Indicates if the datastore is in maintenance mode. Will be set to True, when in maintenance mode.
.PARAMETER MultipleHostAccess
Indicates if this datastore is connected to multiple hosts.
.PARAMETER Status
Datastore health status, as reported by the hypervisor platform.
.PARAMETER ThinProvisioningSupported
Indicates if this datastore supports thin provisioning for files.
.PARAMETER UnCommitted
Space uncommitted in this datastore in bytes.
.PARAMETER Url
The URL to access this datastore (example - 'ds:///vmfs/volumes/562a4e8a-0eeb5372-dd61-78baf9cb9afa/').
.PARAMETER Cluster
No description available.
.PARAMETER Datacenter
No description available.
.OUTPUTS

VirtualizationVmwareDatastoreAllOf<PSCustomObject>
#>

function Initialize-IntersightVirtualizationVmwareDatastoreAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Accessible},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${MaintenanceMode},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${MultipleHostAccess},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Unknown", "Degraded", "Critical", "Ok")]
        [String]
        ${Status} = "Unknown",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ThinProvisioningSupported},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${UnCommitted},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Cluster},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Datacenter}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightVirtualizationVmwareDatastoreAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Accessible" = ${Accessible}
            "MaintenanceMode" = ${MaintenanceMode}
            "MultipleHostAccess" = ${MultipleHostAccess}
            "Status" = ${Status}
            "ThinProvisioningSupported" = ${ThinProvisioningSupported}
            "UnCommitted" = ${UnCommitted}
            "Url" = ${Url}
            "Cluster" = ${Cluster}
            "Datacenter" = ${Datacenter}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VirtualizationVmwareDatastoreAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to VirtualizationVmwareDatastoreAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VirtualizationVmwareDatastoreAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToVirtualizationVmwareDatastoreAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightVirtualizationVmwareDatastoreAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightVirtualizationVmwareDatastoreAllOf
        $AllProperties = ("Accessible", "MaintenanceMode", "MultipleHostAccess", "Status", "ThinProvisioningSupported", "UnCommitted", "Url", "Cluster", "Datacenter", "Hosts")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Accessible"))) { #optional property not found
            $Accessible = $null
        } else {
            $Accessible = $JsonParameters.PSobject.Properties["Accessible"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MaintenanceMode"))) { #optional property not found
            $MaintenanceMode = $null
        } else {
            $MaintenanceMode = $JsonParameters.PSobject.Properties["MaintenanceMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MultipleHostAccess"))) { #optional property not found
            $MultipleHostAccess = $null
        } else {
            $MultipleHostAccess = $JsonParameters.PSobject.Properties["MultipleHostAccess"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["Status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ThinProvisioningSupported"))) { #optional property not found
            $ThinProvisioningSupported = $null
        } else {
            $ThinProvisioningSupported = $JsonParameters.PSobject.Properties["ThinProvisioningSupported"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UnCommitted"))) { #optional property not found
            $UnCommitted = $null
        } else {
            $UnCommitted = $JsonParameters.PSobject.Properties["UnCommitted"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Url"))) { #optional property not found
            $Url = $null
        } else {
            $Url = $JsonParameters.PSobject.Properties["Url"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Cluster"))) { #optional property not found
            $Cluster = $null
        } else {
            $Cluster = $JsonParameters.PSobject.Properties["Cluster"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Datacenter"))) { #optional property not found
            $Datacenter = $null
        } else {
            $Datacenter = $JsonParameters.PSobject.Properties["Datacenter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Hosts"))) { #optional property not found
            $Hosts = $null
        } else {
            $Hosts = $JsonParameters.PSobject.Properties["Hosts"].value
        }

        $PSO = [PSCustomObject]@{
            "Accessible" = ${Accessible}
            "MaintenanceMode" = ${MaintenanceMode}
            "MultipleHostAccess" = ${MultipleHostAccess}
            "Status" = ${Status}
            "ThinProvisioningSupported" = ${ThinProvisioningSupported}
            "UnCommitted" = ${UnCommitted}
            "Url" = ${Url}
            "Cluster" = ${Cluster}
            "Datacenter" = ${Datacenter}
            "Hosts" = ${Hosts}
        }

        return $PSO
    }

}

