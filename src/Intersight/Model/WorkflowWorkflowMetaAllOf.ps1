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

Definition of the list of properties defined in 'workflow.WorkflowMeta', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Description
The description for the workflow.
.PARAMETER InputParameters
No description available.
.PARAMETER Name
The name given to the workflow.
.PARAMETER OutputParameters
The workflow output parameters.
.PARAMETER Retryable
When true, this workflow can be retried for 2 weeks since the last modification of the workflow.
.PARAMETER SchemaVersion
The Conductor schema version that decides what attribute can be supported.
.PARAMETER Src
The src is workflow owner service.
.PARAMETER Tasks
The tasks contained inside of the workflow.
.PARAMETER Type
The type of workflow definition. * `SystemDefined` - System defined workflow definition. * `UserDefined` - User defined workflow definition. * `Dynamic` - Dynamically defined workflow definition.
.PARAMETER Version
The version for the workflow so we can support multiple versions for the same workflow name.
.PARAMETER WaitOnDuplicate
Parameter decides if workflows will wait for a duplicate to finish before starting a new one.
.PARAMETER Organization
No description available.
.OUTPUTS

WorkflowWorkflowMetaAllOf<PSCustomObject>
#>

function Initialize-IntersightWorkflowWorkflowMetaAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.WorkflowMeta")]
        [String]
        ${ClassId} = "workflow.WorkflowMeta",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.WorkflowMeta")]
        [String]
        ${ObjectType} = "workflow.WorkflowMeta",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${InputParameters},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^[^:]{1,92}$")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OutputParameters},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Retryable} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${SchemaVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Src},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Tasks},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SystemDefined", "UserDefined", "Dynamic")]
        [String]
        ${Type} = "SystemDefined",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Version} = 1,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${WaitOnDuplicate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowWorkflowMetaAllOf' | Write-Debug
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
            "Description" = ${Description}
            "InputParameters" = ${InputParameters}
            "Name" = ${Name}
            "OutputParameters" = ${OutputParameters}
            "Retryable" = ${Retryable}
            "SchemaVersion" = ${SchemaVersion}
            "Src" = ${Src}
            "Tasks" = ${Tasks}
            "Type" = ${Type}
            "Version" = ${Version}
            "WaitOnDuplicate" = ${WaitOnDuplicate}
            "Organization" = ${Organization}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowWorkflowMetaAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowWorkflowMetaAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowWorkflowMetaAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowWorkflowMetaAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowWorkflowMetaAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowWorkflowMetaAllOf
        $AllProperties = ("ClassId", "ObjectType", "Description", "InputParameters", "Name", "OutputParameters", "Retryable", "SchemaVersion", "Src", "Tasks", "Type", "Version", "WaitOnDuplicate", "Organization")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InputParameters"))) { #optional property not found
            $InputParameters = $null
        } else {
            $InputParameters = $JsonParameters.PSobject.Properties["InputParameters"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutputParameters"))) { #optional property not found
            $OutputParameters = $null
        } else {
            $OutputParameters = $JsonParameters.PSobject.Properties["OutputParameters"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Retryable"))) { #optional property not found
            $Retryable = $null
        } else {
            $Retryable = $JsonParameters.PSobject.Properties["Retryable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SchemaVersion"))) { #optional property not found
            $SchemaVersion = $null
        } else {
            $SchemaVersion = $JsonParameters.PSobject.Properties["SchemaVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Src"))) { #optional property not found
            $Src = $null
        } else {
            $Src = $JsonParameters.PSobject.Properties["Src"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Tasks"))) { #optional property not found
            $Tasks = $null
        } else {
            $Tasks = $JsonParameters.PSobject.Properties["Tasks"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["Type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Version"))) { #optional property not found
            $Version = $null
        } else {
            $Version = $JsonParameters.PSobject.Properties["Version"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WaitOnDuplicate"))) { #optional property not found
            $WaitOnDuplicate = $null
        } else {
            $WaitOnDuplicate = $JsonParameters.PSobject.Properties["WaitOnDuplicate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Description" = ${Description}
            "InputParameters" = ${InputParameters}
            "Name" = ${Name}
            "OutputParameters" = ${OutputParameters}
            "Retryable" = ${Retryable}
            "SchemaVersion" = ${SchemaVersion}
            "Src" = ${Src}
            "Tasks" = ${Tasks}
            "Type" = ${Type}
            "Version" = ${Version}
            "WaitOnDuplicate" = ${WaitOnDuplicate}
            "Organization" = ${Organization}
        }

        return $PSO
    }

}

