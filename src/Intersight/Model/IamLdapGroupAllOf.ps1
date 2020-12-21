#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2020-12-08T20:53:20Z.
# Version: 1.0.9-2908
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Definition of the list of properties defined in 'iam.LdapGroup', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Domain
LDAP server domain the Group resides in.
.PARAMETER Name
LDAP Group name in the LDAP server database.
.PARAMETER EndPointRole
An array of relationships to iamEndPointRole resources.
.PARAMETER LdapPolicy
No description available.
.OUTPUTS

IamLdapGroupAllOf<PSCustomObject>
#>

function Initialize-IntersightIamLdapGroupAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("iam.LdapGroup")]
        [String]
        ${ClassId} = "iam.LdapGroup",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("iam.LdapGroup")]
        [String]
        ${ObjectType} = "iam.LdapGroup",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9-]+(.[a-zA-Z0-9-]+)*$")]
        [String]
        ${Domain},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^([^+\-][a-zA-Z0-9=!#$%()*+,-.:;@ _{|}~?&]*)$")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${EndPointRole},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LdapPolicy}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightIamLdapGroupAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if (!$Domain -and $Domain.length -gt 255) {
            throw "invalid value for 'Domain', the character length must be smaller than or equal to 255."
        }

        if (!$Name -and $Name.length -gt 127) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 127."
        }

        
        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Domain" = ${Domain}
            "Name" = ${Name}
            "EndPointRole" = ${EndPointRole}
            "LdapPolicy" = ${LdapPolicy}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IamLdapGroupAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to IamLdapGroupAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IamLdapGroupAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToIamLdapGroupAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightIamLdapGroupAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightIamLdapGroupAllOf
        $AllProperties = ("ClassId", "ObjectType", "Domain", "Name", "EndPointRole", "LdapPolicy")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Domain"))) { #optional property not found
            $Domain = $null
        } else {
            $Domain = $JsonParameters.PSobject.Properties["Domain"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndPointRole"))) { #optional property not found
            $EndPointRole = $null
        } else {
            $EndPointRole = $JsonParameters.PSobject.Properties["EndPointRole"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LdapPolicy"))) { #optional property not found
            $LdapPolicy = $null
        } else {
            $LdapPolicy = $JsonParameters.PSobject.Properties["LdapPolicy"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Domain" = ${Domain}
            "Name" = ${Name}
            "EndPointRole" = ${EndPointRole}
            "LdapPolicy" = ${LdapPolicy}
        }

        return $PSO
    }

}

