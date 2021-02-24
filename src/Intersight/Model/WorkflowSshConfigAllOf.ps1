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

Definition of the list of properties defined in 'workflow.SshConfig', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Password
Password to use in the SSH connection credentials (If empty then private key will be used).
.PARAMETER Target
The remote server to connect to. IPv4 address represented in dot decimal notation.
.PARAMETER User
Username for the remote SSH connection.
.OUTPUTS

WorkflowSshConfigAllOf<PSCustomObject>
#>

function Initialize-IntersightWorkflowSshConfigAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.SshConfig")]
        [String]
        ${ClassId} = "workflow.SshConfig",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.SshConfig")]
        [String]
        ${ObjectType} = "workflow.SshConfig",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Target},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${User}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowSshConfigAllOf' | Write-Debug
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
            "Password" = ${Password}
            "Target" = ${Target}
            "User" = ${User}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowSshConfigAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowSshConfigAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowSshConfigAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowSshConfigAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowSshConfigAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowSshConfigAllOf
        $AllProperties = ("ClassId", "ObjectType", "Password", "Target", "User")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["Password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Target"))) { #optional property not found
            $Target = $null
        } else {
            $Target = $JsonParameters.PSobject.Properties["Target"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "User"))) { #optional property not found
            $User = $null
        } else {
            $User = $JsonParameters.PSobject.Properties["User"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Password" = ${Password}
            "Target" = ${Target}
            "User" = ${User}
        }

        return $PSO
    }

}

