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

Definition of the list of properties defined in 'iam.PrivilegeSet', excluding properties defined in parent classes.

.PARAMETER Name
Name of the privilege set.
.PARAMETER PrivilegeNames
No description available.
.PARAMETER Account
No description available.
.PARAMETER AssociatedPrivilegeSets
An array of relationships to iamPrivilegeSet resources.
.PARAMETER System
No description available.
.OUTPUTS

IamPrivilegeSetAllOf<PSCustomObject>
#>

function Initialize-IntersightIamPrivilegeSetAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${PrivilegeNames},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Account},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AssociatedPrivilegeSets},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${System}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightIamPrivilegeSetAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Name" = ${Name}
            "PrivilegeNames" = ${PrivilegeNames}
            "Account" = ${Account}
            "AssociatedPrivilegeSets" = ${AssociatedPrivilegeSets}
            "System" = ${System}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IamPrivilegeSetAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to IamPrivilegeSetAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IamPrivilegeSetAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToIamPrivilegeSetAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightIamPrivilegeSetAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightIamPrivilegeSetAllOf
        $AllProperties = ("Description", "Name", "PrivilegeNames", "Account", "AssociatedPrivilegeSets", "Privileges", "System")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PrivilegeNames"))) { #optional property not found
            $PrivilegeNames = $null
        } else {
            $PrivilegeNames = $JsonParameters.PSobject.Properties["PrivilegeNames"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Account"))) { #optional property not found
            $Account = $null
        } else {
            $Account = $JsonParameters.PSobject.Properties["Account"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AssociatedPrivilegeSets"))) { #optional property not found
            $AssociatedPrivilegeSets = $null
        } else {
            $AssociatedPrivilegeSets = $JsonParameters.PSobject.Properties["AssociatedPrivilegeSets"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Privileges"))) { #optional property not found
            $Privileges = $null
        } else {
            $Privileges = $JsonParameters.PSobject.Properties["Privileges"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "System"))) { #optional property not found
            $System = $null
        } else {
            $System = $JsonParameters.PSobject.Properties["System"].value
        }

        $PSO = [PSCustomObject]@{
            "Description" = ${Description}
            "Name" = ${Name}
            "PrivilegeNames" = ${PrivilegeNames}
            "Account" = ${Account}
            "AssociatedPrivilegeSets" = ${AssociatedPrivilegeSets}
            "Privileges" = ${Privileges}
            "System" = ${System}
        }

        return $PSO
    }

}

