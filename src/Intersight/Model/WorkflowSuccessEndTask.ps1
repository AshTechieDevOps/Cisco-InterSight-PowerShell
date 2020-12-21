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

A SuccessEndTask denotes the successful completion of a workflow.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data. The enum values provides the list of concrete types that can be instantiated from this abstract type.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property. The enum values provides the list of concrete types that can be instantiated from this abstract type.
.PARAMETER Description
The description of this task instance in the workflow.
.PARAMETER Label
A user defined label identifier of the workflow task used for UI display.
.PARAMETER Name
The name of the task within the workflow and it must be unique among all WorkflowTasks within a workflow definition. This name serves as the internal unique identifier for the task and is used to pick input and output parameters to feed into other tasks.
.OUTPUTS

WorkflowSuccessEndTask<PSCustomObject>
#>

function Initialize-IntersightWorkflowSuccessEndTask {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.DecisionTask", "workflow.FailureEndTask", "workflow.ForkTask", "workflow.JoinTask", "workflow.LoopTask", "workflow.StartTask", "workflow.SubWorkflowTask", "workflow.SuccessEndTask", "workflow.WaitTask", "workflow.WorkerTask")]
        [String]
        ${ClassId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.DecisionTask", "workflow.FailureEndTask", "workflow.ForkTask", "workflow.JoinTask", "workflow.LoopTask", "workflow.StartTask", "workflow.SubWorkflowTask", "workflow.SuccessEndTask", "workflow.WaitTask", "workflow.WorkerTask")]
        [String]
        ${ObjectType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Label},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9_:-]{1,64}$")]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowSuccessEndTask' | Write-Debug
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
            "Label" = ${Label}
            "Name" = ${Name}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowSuccessEndTask<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowSuccessEndTask<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowSuccessEndTask<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowSuccessEndTask {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowSuccessEndTask' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowSuccessEndTask
        $AllProperties = ("ClassId", "ObjectType", "Description", "Label", "Name")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Label"))) { #optional property not found
            $Label = $null
        } else {
            $Label = $JsonParameters.PSobject.Properties["Label"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Description" = ${Description}
            "Label" = ${Label}
            "Name" = ${Name}
        }

        return $PSO
    }

}

