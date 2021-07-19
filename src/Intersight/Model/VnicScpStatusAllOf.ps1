#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2021-02-05T15:05:56Z.
# Version: 1.0.9-3562
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Definition of the list of properties defined in 'vnic.ScpStatus', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Reason
The reason for the status - it will be empty if status is ok or validating. If error, it will have the appropriate message indicating the reason for failure.
.PARAMETER Status
Indicates if the LCP is ready for Deploy or not. * `ok` - No issues with the LCP/SCP/VIF. * `error` - The LCP/SCP/VIF cannot be deployed due to error. * `validating` - Validation in progress for the LCP.
.PARAMETER VhbaInfo
No description available.
.PARAMETER VarProfile
No description available.
.OUTPUTS

VnicScpStatusAllOf<PSCustomObject>
#>

function Initialize-IntersightVnicScpStatusAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("vnic.ScpStatus")]
        [String]
        ${ClassId} = "vnic.ScpStatus",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("vnic.ScpStatus")]
        [String]
        ${ObjectType} = "vnic.ScpStatus",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Reason},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ok", "error", "validating")]
        [String]
        ${Status} = "ok",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${VhbaInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarProfile}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightVnicScpStatusAllOf' | Write-Debug
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
            "Reason" = ${Reason}
            "Status" = ${Status}
            "VhbaInfo" = ${VhbaInfo}
            "Profile" = ${VarProfile}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VnicScpStatusAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to VnicScpStatusAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VnicScpStatusAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToVnicScpStatusAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightVnicScpStatusAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightVnicScpStatusAllOf
        $AllProperties = ("ClassId", "ObjectType", "Reason", "Status", "VhbaInfo", "Profile")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'ClassId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClassId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'ClassId' missing."
        } else {
            $ClassId = $JsonParameters.PSobject.Properties["ClassId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ObjectType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'ObjectType' missing."
        } else {
            $ObjectType = $JsonParameters.PSobject.Properties["ObjectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Reason"))) { #optional property not found
            $Reason = $null
        } else {
            $Reason = $JsonParameters.PSobject.Properties["Reason"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["Status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VhbaInfo"))) { #optional property not found
            $VhbaInfo = $null
        } else {
            $VhbaInfo = $JsonParameters.PSobject.Properties["VhbaInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Profile"))) { #optional property not found
            $VarProfile = $null
        } else {
            $VarProfile = $JsonParameters.PSobject.Properties["Profile"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Reason" = ${Reason}
            "Status" = ${Status}
            "VhbaInfo" = ${VhbaInfo}
            "Profile" = ${VarProfile}
        }

        return $PSO
    }

}
