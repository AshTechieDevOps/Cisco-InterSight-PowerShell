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

Definition of the list of properties defined in 'workflow.RollbackWorkflow', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Action
The action of the rollback workflow such as Create and Start. * `None` - If no action is set, then the default value is set to none for the action field. * `Create` - Create rollback workflow data for the execution of the rollback workflow. * `Start` - Start a new execution of the rollback workflow.
.PARAMETER ContinueOnTaskFailure
When set to true, if a task in the workflow fails, the rollback workflow continues to the subsequent task. When set to false, the rollback workflow execution halts if a task fails.
.PARAMETER RollbackTasks
No description available.
.PARAMETER SelectedTasks
No description available.
.PARAMETER PrimaryWorkflow
No description available.
.OUTPUTS

WorkflowRollbackWorkflowAllOf<PSCustomObject>
#>

function Initialize-IntersightWorkflowRollbackWorkflowAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.RollbackWorkflow")]
        [String]
        ${ClassId} = "workflow.RollbackWorkflow",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.RollbackWorkflow")]
        [String]
        ${ObjectType} = "workflow.RollbackWorkflow",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("None", "Create", "Start")]
        [String]
        ${Action} = "None",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ContinueOnTaskFailure} = $true,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${RollbackTasks},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${SelectedTasks},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PrimaryWorkflow}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowRollbackWorkflowAllOf' | Write-Debug
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
            "Action" = ${Action}
            "ContinueOnTaskFailure" = ${ContinueOnTaskFailure}
            "RollbackTasks" = ${RollbackTasks}
            "SelectedTasks" = ${SelectedTasks}
            "PrimaryWorkflow" = ${PrimaryWorkflow}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowRollbackWorkflowAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowRollbackWorkflowAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowRollbackWorkflowAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowRollbackWorkflowAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowRollbackWorkflowAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowRollbackWorkflowAllOf
        $AllProperties = ("ClassId", "ObjectType", "Action", "ContinueOnTaskFailure", "RollbackTasks", "SelectedTasks", "Status", "PrimaryWorkflow", "RollbackWorkflows")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Action"))) { #optional property not found
            $Action = $null
        } else {
            $Action = $JsonParameters.PSobject.Properties["Action"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ContinueOnTaskFailure"))) { #optional property not found
            $ContinueOnTaskFailure = $null
        } else {
            $ContinueOnTaskFailure = $JsonParameters.PSobject.Properties["ContinueOnTaskFailure"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RollbackTasks"))) { #optional property not found
            $RollbackTasks = $null
        } else {
            $RollbackTasks = $JsonParameters.PSobject.Properties["RollbackTasks"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SelectedTasks"))) { #optional property not found
            $SelectedTasks = $null
        } else {
            $SelectedTasks = $JsonParameters.PSobject.Properties["SelectedTasks"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["Status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PrimaryWorkflow"))) { #optional property not found
            $PrimaryWorkflow = $null
        } else {
            $PrimaryWorkflow = $JsonParameters.PSobject.Properties["PrimaryWorkflow"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RollbackWorkflows"))) { #optional property not found
            $RollbackWorkflows = $null
        } else {
            $RollbackWorkflows = $JsonParameters.PSobject.Properties["RollbackWorkflows"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Action" = ${Action}
            "ContinueOnTaskFailure" = ${ContinueOnTaskFailure}
            "RollbackTasks" = ${RollbackTasks}
            "SelectedTasks" = ${SelectedTasks}
            "Status" = ${Status}
            "PrimaryWorkflow" = ${PrimaryWorkflow}
            "RollbackWorkflows" = ${RollbackWorkflows}
        }

        return $PSO
    }

}
