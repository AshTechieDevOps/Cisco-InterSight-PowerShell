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

Definition of the list of properties defined in 'sdwan.RouterNode', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER DeviceTemplate
Name of the Cisco vManage device template that the current device should be attached to. A device template consists of many feature templates that contain SD-WAN vEdge router configuration.
.PARAMETER Name
Name of the router node object.
.PARAMETER NetworkConfiguration
No description available.
.PARAMETER TemplateInputs
No description available.
.PARAMETER Uuid
Uniquely identifies the router by its chassis number.
.PARAMETER Organization
No description available.
.PARAMETER VarProfile
No description available.
.PARAMETER ServerNode
No description available.
.OUTPUTS

SdwanRouterNodeAllOf<PSCustomObject>
#>

function Initialize-IntersightSdwanRouterNodeAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("sdwan.RouterNode")]
        [String]
        ${ClassId} = "sdwan.RouterNode",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("sdwan.RouterNode")]
        [String]
        ${ObjectType} = "sdwan.RouterNode",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DeviceTemplate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${NetworkConfiguration},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${TemplateInputs},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^(([a-zA-Z0-9]){8}-([a-zA-Z0-9]){4}-([a-zA-Z0-9]){4}-([a-zA-Z0-9]){4}-([a-zA-Z0-9]){12})$")]
        [String]
        ${Uuid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarProfile},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ServerNode}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightSdwanRouterNodeAllOf' | Write-Debug
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
            "DeviceTemplate" = ${DeviceTemplate}
            "Name" = ${Name}
            "NetworkConfiguration" = ${NetworkConfiguration}
            "TemplateInputs" = ${TemplateInputs}
            "Uuid" = ${Uuid}
            "Organization" = ${Organization}
            "Profile" = ${VarProfile}
            "ServerNode" = ${ServerNode}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SdwanRouterNodeAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to SdwanRouterNodeAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SdwanRouterNodeAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToSdwanRouterNodeAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightSdwanRouterNodeAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightSdwanRouterNodeAllOf
        $AllProperties = ("ClassId", "ObjectType", "DeviceTemplate", "Name", "NetworkConfiguration", "TemplateInputs", "Uuid", "Organization", "Profile", "ServerNode")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeviceTemplate"))) { #optional property not found
            $DeviceTemplate = $null
        } else {
            $DeviceTemplate = $JsonParameters.PSobject.Properties["DeviceTemplate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NetworkConfiguration"))) { #optional property not found
            $NetworkConfiguration = $null
        } else {
            $NetworkConfiguration = $JsonParameters.PSobject.Properties["NetworkConfiguration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TemplateInputs"))) { #optional property not found
            $TemplateInputs = $null
        } else {
            $TemplateInputs = $JsonParameters.PSobject.Properties["TemplateInputs"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Uuid"))) { #optional property not found
            $Uuid = $null
        } else {
            $Uuid = $JsonParameters.PSobject.Properties["Uuid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Profile"))) { #optional property not found
            $VarProfile = $null
        } else {
            $VarProfile = $JsonParameters.PSobject.Properties["Profile"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ServerNode"))) { #optional property not found
            $ServerNode = $null
        } else {
            $ServerNode = $JsonParameters.PSobject.Properties["ServerNode"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "DeviceTemplate" = ${DeviceTemplate}
            "Name" = ${Name}
            "NetworkConfiguration" = ${NetworkConfiguration}
            "TemplateInputs" = ${TemplateInputs}
            "Uuid" = ${Uuid}
            "Organization" = ${Organization}
            "Profile" = ${VarProfile}
            "ServerNode" = ${ServerNode}
        }

        return $PSO
    }

}

