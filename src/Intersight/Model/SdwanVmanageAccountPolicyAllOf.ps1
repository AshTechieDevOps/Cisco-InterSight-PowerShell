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

Definition of the list of properties defined in 'sdwan.VmanageAccountPolicy', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER EndpointAddress
VManage server hostname (FQDN) that the acccount holds information for.
.PARAMETER Password
Local password for authenticating with the vManage server.
.PARAMETER Port
VManage Port number on which the application is running.
.PARAMETER Username
Local username for authenticating with the vManage server.
.PARAMETER Organization
No description available.
.PARAMETER Profiles
An array of relationships to sdwanProfile resources.
.OUTPUTS

SdwanVmanageAccountPolicyAllOf<PSCustomObject>
#>

function Initialize-IntersightSdwanVmanageAccountPolicyAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("sdwan.VmanageAccountPolicy")]
        [String]
        ${ClassId} = "sdwan.VmanageAccountPolicy",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("sdwan.VmanageAccountPolicy")]
        [String]
        ${ObjectType} = "sdwan.VmanageAccountPolicy",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EndpointAddress},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Port} = 8443,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Profiles}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightSdwanVmanageAccountPolicyAllOf' | Write-Debug
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
            "EndpointAddress" = ${EndpointAddress}
            "Password" = ${Password}
            "Port" = ${Port}
            "Username" = ${Username}
            "Organization" = ${Organization}
            "Profiles" = ${Profiles}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SdwanVmanageAccountPolicyAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to SdwanVmanageAccountPolicyAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SdwanVmanageAccountPolicyAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToSdwanVmanageAccountPolicyAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightSdwanVmanageAccountPolicyAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightSdwanVmanageAccountPolicyAllOf
        $AllProperties = ("ClassId", "ObjectType", "EndpointAddress", "IsPasswordSet", "Password", "Port", "Username", "Organization", "Profiles")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndpointAddress"))) { #optional property not found
            $EndpointAddress = $null
        } else {
            $EndpointAddress = $JsonParameters.PSobject.Properties["EndpointAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IsPasswordSet"))) { #optional property not found
            $IsPasswordSet = $null
        } else {
            $IsPasswordSet = $JsonParameters.PSobject.Properties["IsPasswordSet"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["Password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Port"))) { #optional property not found
            $Port = $null
        } else {
            $Port = $JsonParameters.PSobject.Properties["Port"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["Username"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Profiles"))) { #optional property not found
            $Profiles = $null
        } else {
            $Profiles = $JsonParameters.PSobject.Properties["Profiles"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "EndpointAddress" = ${EndpointAddress}
            "IsPasswordSet" = ${IsPasswordSet}
            "Password" = ${Password}
            "Port" = ${Port}
            "Username" = ${Username}
            "Organization" = ${Organization}
            "Profiles" = ${Profiles}
        }

        return $PSO
    }

}

