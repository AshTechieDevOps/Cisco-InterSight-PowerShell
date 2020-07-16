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

Definition of the list of properties defined in 'niaapi.SoftwareEol', excluding properties defined in parent classes.

.PARAMETER AffectedVersions
String contains the Release versions affected by this notice, seperated by comma.
.PARAMETER AnnouncementDate
Date time of this notice Announced.
.PARAMETER AnnouncementDateEpoch
Epoch time of this notice Announced.
.PARAMETER BulletinNo
The bulletinno of this software release end of life notice.
.PARAMETER Description
The description of this software release end of life notice.
.PARAMETER EndofNewServiceAttachmentDate
Date time of End of New service attachment .
.PARAMETER EndofNewServiceAttachmentDateEpoch
Epoch time of End of New service attachment .
.PARAMETER EndofServiceContractRenewalDate
Date time of End of Renewal of service contract .
.PARAMETER EndofServiceContractRenewalDateEpoch
Epoch time of End of Renewal of service contract .
.PARAMETER EndofSwMaintenanceDate
Date time of End of Maintenance.
.PARAMETER EndofSwMaintenanceDateEpoch
Epoch time of End of Maintenance.
.PARAMETER Headline
The title of this software release end of life notice.
.PARAMETER LastDateofSupport
Date time of Last day of Support .
.PARAMETER LastDateofSupportEpoch
Epoch time of Last day of Support .
.PARAMETER LastShipDate
Date time of Lastship Date.
.PARAMETER LastShipDateEpoch
Epoch time of Lastship Date.
.PARAMETER MigrationUrl
The URL of this migration notice.
.PARAMETER SoftwareEolUrl
Software end of life notice URL link to the notice webpage.
.OUTPUTS

NiaapiSoftwareEolAllOf<PSCustomObject>
#>

function Initialize-IntersightNiaapiSoftwareEolAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AffectedVersions},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${AnnouncementDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${AnnouncementDateEpoch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BulletinNo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${EndofNewServiceAttachmentDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${EndofNewServiceAttachmentDateEpoch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${EndofServiceContractRenewalDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${EndofServiceContractRenewalDateEpoch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${EndofSwMaintenanceDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${EndofSwMaintenanceDateEpoch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Headline},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastDateofSupport},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${LastDateofSupportEpoch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastShipDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${LastShipDateEpoch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MigrationUrl},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SoftwareEolUrl}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightNiaapiSoftwareEolAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "AffectedVersions" = ${AffectedVersions}
            "AnnouncementDate" = ${AnnouncementDate}
            "AnnouncementDateEpoch" = ${AnnouncementDateEpoch}
            "BulletinNo" = ${BulletinNo}
            "Description" = ${Description}
            "EndofNewServiceAttachmentDate" = ${EndofNewServiceAttachmentDate}
            "EndofNewServiceAttachmentDateEpoch" = ${EndofNewServiceAttachmentDateEpoch}
            "EndofServiceContractRenewalDate" = ${EndofServiceContractRenewalDate}
            "EndofServiceContractRenewalDateEpoch" = ${EndofServiceContractRenewalDateEpoch}
            "EndofSwMaintenanceDate" = ${EndofSwMaintenanceDate}
            "EndofSwMaintenanceDateEpoch" = ${EndofSwMaintenanceDateEpoch}
            "Headline" = ${Headline}
            "LastDateofSupport" = ${LastDateofSupport}
            "LastDateofSupportEpoch" = ${LastDateofSupportEpoch}
            "LastShipDate" = ${LastShipDate}
            "LastShipDateEpoch" = ${LastShipDateEpoch}
            "MigrationUrl" = ${MigrationUrl}
            "SoftwareEolUrl" = ${SoftwareEolUrl}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NiaapiSoftwareEolAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to NiaapiSoftwareEolAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NiaapiSoftwareEolAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToNiaapiSoftwareEolAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightNiaapiSoftwareEolAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightNiaapiSoftwareEolAllOf
        $AllProperties = ("AffectedVersions", "AnnouncementDate", "AnnouncementDateEpoch", "BulletinNo", "Description", "EndofNewServiceAttachmentDate", "EndofNewServiceAttachmentDateEpoch", "EndofServiceContractRenewalDate", "EndofServiceContractRenewalDateEpoch", "EndofSwMaintenanceDate", "EndofSwMaintenanceDateEpoch", "Headline", "LastDateofSupport", "LastDateofSupportEpoch", "LastShipDate", "LastShipDateEpoch", "MigrationUrl", "SoftwareEolUrl")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AffectedVersions"))) { #optional property not found
            $AffectedVersions = $null
        } else {
            $AffectedVersions = $JsonParameters.PSobject.Properties["AffectedVersions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AnnouncementDate"))) { #optional property not found
            $AnnouncementDate = $null
        } else {
            $AnnouncementDate = $JsonParameters.PSobject.Properties["AnnouncementDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AnnouncementDateEpoch"))) { #optional property not found
            $AnnouncementDateEpoch = $null
        } else {
            $AnnouncementDateEpoch = $JsonParameters.PSobject.Properties["AnnouncementDateEpoch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BulletinNo"))) { #optional property not found
            $BulletinNo = $null
        } else {
            $BulletinNo = $JsonParameters.PSobject.Properties["BulletinNo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofNewServiceAttachmentDate"))) { #optional property not found
            $EndofNewServiceAttachmentDate = $null
        } else {
            $EndofNewServiceAttachmentDate = $JsonParameters.PSobject.Properties["EndofNewServiceAttachmentDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofNewServiceAttachmentDateEpoch"))) { #optional property not found
            $EndofNewServiceAttachmentDateEpoch = $null
        } else {
            $EndofNewServiceAttachmentDateEpoch = $JsonParameters.PSobject.Properties["EndofNewServiceAttachmentDateEpoch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofServiceContractRenewalDate"))) { #optional property not found
            $EndofServiceContractRenewalDate = $null
        } else {
            $EndofServiceContractRenewalDate = $JsonParameters.PSobject.Properties["EndofServiceContractRenewalDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofServiceContractRenewalDateEpoch"))) { #optional property not found
            $EndofServiceContractRenewalDateEpoch = $null
        } else {
            $EndofServiceContractRenewalDateEpoch = $JsonParameters.PSobject.Properties["EndofServiceContractRenewalDateEpoch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofSwMaintenanceDate"))) { #optional property not found
            $EndofSwMaintenanceDate = $null
        } else {
            $EndofSwMaintenanceDate = $JsonParameters.PSobject.Properties["EndofSwMaintenanceDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndofSwMaintenanceDateEpoch"))) { #optional property not found
            $EndofSwMaintenanceDateEpoch = $null
        } else {
            $EndofSwMaintenanceDateEpoch = $JsonParameters.PSobject.Properties["EndofSwMaintenanceDateEpoch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Headline"))) { #optional property not found
            $Headline = $null
        } else {
            $Headline = $JsonParameters.PSobject.Properties["Headline"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LastDateofSupport"))) { #optional property not found
            $LastDateofSupport = $null
        } else {
            $LastDateofSupport = $JsonParameters.PSobject.Properties["LastDateofSupport"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LastDateofSupportEpoch"))) { #optional property not found
            $LastDateofSupportEpoch = $null
        } else {
            $LastDateofSupportEpoch = $JsonParameters.PSobject.Properties["LastDateofSupportEpoch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LastShipDate"))) { #optional property not found
            $LastShipDate = $null
        } else {
            $LastShipDate = $JsonParameters.PSobject.Properties["LastShipDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LastShipDateEpoch"))) { #optional property not found
            $LastShipDateEpoch = $null
        } else {
            $LastShipDateEpoch = $JsonParameters.PSobject.Properties["LastShipDateEpoch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MigrationUrl"))) { #optional property not found
            $MigrationUrl = $null
        } else {
            $MigrationUrl = $JsonParameters.PSobject.Properties["MigrationUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SoftwareEolUrl"))) { #optional property not found
            $SoftwareEolUrl = $null
        } else {
            $SoftwareEolUrl = $JsonParameters.PSobject.Properties["SoftwareEolUrl"].value
        }

        $PSO = [PSCustomObject]@{
            "AffectedVersions" = ${AffectedVersions}
            "AnnouncementDate" = ${AnnouncementDate}
            "AnnouncementDateEpoch" = ${AnnouncementDateEpoch}
            "BulletinNo" = ${BulletinNo}
            "Description" = ${Description}
            "EndofNewServiceAttachmentDate" = ${EndofNewServiceAttachmentDate}
            "EndofNewServiceAttachmentDateEpoch" = ${EndofNewServiceAttachmentDateEpoch}
            "EndofServiceContractRenewalDate" = ${EndofServiceContractRenewalDate}
            "EndofServiceContractRenewalDateEpoch" = ${EndofServiceContractRenewalDateEpoch}
            "EndofSwMaintenanceDate" = ${EndofSwMaintenanceDate}
            "EndofSwMaintenanceDateEpoch" = ${EndofSwMaintenanceDateEpoch}
            "Headline" = ${Headline}
            "LastDateofSupport" = ${LastDateofSupport}
            "LastDateofSupportEpoch" = ${LastDateofSupportEpoch}
            "LastShipDate" = ${LastShipDate}
            "LastShipDateEpoch" = ${LastShipDateEpoch}
            "MigrationUrl" = ${MigrationUrl}
            "SoftwareEolUrl" = ${SoftwareEolUrl}
        }

        return $PSO
    }

}

