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

AssociatedRoles models the inferred tasks to the required roles mapping cached in the workflow definition.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Roles
No description available.
.PARAMETER TaskNames
No description available.
.PARAMETER WorkflowRoles
No description available.
.OUTPUTS

WorkflowAssociatedRoles<PSCustomObject>
#>

function Initialize-IntersightWorkflowAssociatedRoles {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.AssociatedRoles")]
        [String]
        ${ClassId} = "workflow.AssociatedRoles",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.AssociatedRoles")]
        [String]
        ${ObjectType} = "workflow.AssociatedRoles",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Roles},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${TaskNames},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${WorkflowRoles}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowAssociatedRoles' | Write-Debug
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
            "Roles" = ${Roles}
            "TaskNames" = ${TaskNames}
            "WorkflowRoles" = ${WorkflowRoles}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowAssociatedRoles<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowAssociatedRoles<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowAssociatedRoles<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowAssociatedRoles {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowAssociatedRoles' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowAssociatedRoles
        $AllProperties = ("ClassId", "ObjectType", "Moid", "Roles", "TaskNames", "WorkflowRoles")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Moid"))) { #optional property not found
            $Moid = $null
        } else {
            $Moid = $JsonParameters.PSobject.Properties["Moid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Roles"))) { #optional property not found
            $Roles = $null
        } else {
            $Roles = $JsonParameters.PSobject.Properties["Roles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TaskNames"))) { #optional property not found
            $TaskNames = $null
        } else {
            $TaskNames = $JsonParameters.PSobject.Properties["TaskNames"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WorkflowRoles"))) { #optional property not found
            $WorkflowRoles = $null
        } else {
            $WorkflowRoles = $JsonParameters.PSobject.Properties["WorkflowRoles"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Moid" = ${Moid}
            "Roles" = ${Roles}
            "TaskNames" = ${TaskNames}
            "WorkflowRoles" = ${WorkflowRoles}
        }

        return $PSO
    }

}

