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

Definition of the list of properties defined in 'policy.AbstractProfile', excluding properties defined in parent classes.

.PARAMETER Description
Description of the profile.
.PARAMETER Name
Name of the concrete profile.
.PARAMETER Type
Defines the type of the profile. Accepted value is instance.
.PARAMETER SrcTemplate
No description available.
.OUTPUTS

PolicyAbstractProfileAllOf<PSCustomObject>
#>

function Initialize-IntersightPolicyAbstractProfileAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9]+[\\sa-zA-Z0-9_'.:-]*$")]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9_.-]{1,64}$")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("instance")]
        [String]
        ${Type} = "instance",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SrcTemplate}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightPolicyAbstractProfileAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Description -and $Description.length -gt 1024) {
            throw "invalid value for 'Description', the character length must be smaller than or equal to 1024."
        }

        
        $PSO = [PSCustomObject]@{
            "Description" = ${Description}
            "Name" = ${Name}
            "Type" = ${Type}
            "SrcTemplate" = ${SrcTemplate}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PolicyAbstractProfileAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to PolicyAbstractProfileAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PolicyAbstractProfileAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToPolicyAbstractProfileAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightPolicyAbstractProfileAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightPolicyAbstractProfileAllOf
        $AllProperties = ("Description", "Name", "Type", "SrcTemplate")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["Type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SrcTemplate"))) { #optional property not found
            $SrcTemplate = $null
        } else {
            $SrcTemplate = $JsonParameters.PSobject.Properties["SrcTemplate"].value
        }

        $PSO = [PSCustomObject]@{
            "Description" = ${Description}
            "Name" = ${Name}
            "Type" = ${Type}
            "SrcTemplate" = ${SrcTemplate}
        }

        return $PSO
    }

}

