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

Definition of the list of properties defined in 'workflow.WorkflowInfo', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Action
The action of the workflow such as start, cancel, retry, pause. * `None` - No action is set, this is the default value for action field. * `Create` - Create a new instance of the workflow but it does not start the execution of the workflow. Use the Start action to start execution of the workflow. * `Start` - Start a new execution of the workflow. * `Pause` - Pause the workflow, this can only be issued on workflows that are in running state. * `Resume` - Resume the workflow which was previously paused through pause action on the workflow. * `Retry` - Retry the workflow that has previously reached a final state and has the retryable property set to true on the workflow. A running or waiting workflow cannot be retried. If the property retryFromTaskName is also passed along with this action, the workflow will be started from that specific task, otherwise the workflow will be restarted. The task name must be one of the tasks that completed or failed in the previous run, you cannot retry a workflow from a task which wasn't run in the previous iteration. * `RetryFailed` - Retry the workflow that has failed. A running or waiting workflow or a workflow that completed successfully cannot be retried. Only the tasks that failed in the previous run will be retried and the rest of workflow will be run. This action does not restart the workflow and also does not support retrying from a specific task. * `Cancel` - Cancel the workflow that is in running or waiting state.
.PARAMETER FailedWorkflowCleanupDuration
The duration in hours after which the workflow info for failed, terminated or timed out workflow will be removed from database.
.PARAMETER VarInput
All the given inputs for the workflow.
.PARAMETER Internal
Denotes if this workflow is internal and should be hidden from user view of running workflows.
.PARAMETER Message
No description available.
.PARAMETER MetaVersion
Version of the workflow metadata for which this workflow execution was started.
.PARAMETER Name
A name of the workflow execution instance.
.PARAMETER PauseReason
Denotes the reason workflow is in paused status. * `None` - Pause reason is none, which indicates there is no reason for the pause state. * `TaskWithWarning` - Pause reason indicates the workflow is in this state due to a task that has a status as completed with warnings.
.PARAMETER Properties
No description available.
.PARAMETER RetryFromTaskName
This field is applicable when Retry action is issued for a workflow which is in a final state. When this field is not specified then the workflow will retry from the start of the workflow. When this field is specified then the workflow will be retried from the specified task. The field should carry the task name which is the unique name of the task within the workflow. The task name must be one of the tasks that completed or failed in the previous run, you cannot retry a workflow from a task which wasn't run in the previous iteration.
.PARAMETER SuccessWorkflowCleanupDuration
The duration in hours after which the workflow info for successful workflow will be removed from database.
.PARAMETER WaitReason
Denotes the reason workflow is in waiting status. * `None` - Wait reason is none, which indicates there is no reason for the waiting state. * `GatherTasks` - Wait reason is gathering tasks, which indicates the workflow is in this state in order to gather tasks. * `Duplicate` - Wait reason is duplicate, which indicates the workflow is a duplicate of current running workflow. * `RateLimit` - Wait reason is rate limit, which indicates the workflow is rate limited by account/instance level throttling threshold. * `WaitTask` - Wait reason when there are one or more wait tasks in the workflow which are yet to receive a task status update. * `PendingRetryFailed` - Wait reason when the workflow is pending a RetryFailed action.
.PARAMETER WorkflowCtx
No description available.
.PARAMETER WorkflowMetaType
The type of workflow meta. Derived from the workflow meta that is used to launch this workflow instance. * `SystemDefined` - System defined workflow definition. * `UserDefined` - User defined workflow definition. * `Dynamic` - Dynamically defined workflow definition.
.PARAMETER Var0RollbackWorkflow
No description available.
.PARAMETER Var1Profile
No description available.
.PARAMETER Var2ClusterProfile
No description available.
.PARAMETER Var3SwitchProfile
No description available.
.PARAMETER Account
No description available.
.PARAMETER AssociatedObject
No description available.
.PARAMETER Organization
No description available.
.PARAMETER ParentTaskInfo
No description available.
.PARAMETER PendingDynamicWorkflowInfo
No description available.
.PARAMETER Permission
No description available.
.PARAMETER WorkflowDefinition
No description available.
.OUTPUTS

WorkflowWorkflowInfoAllOf<PSCustomObject>
#>

function Initialize-IntersightWorkflowWorkflowInfoAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.WorkflowInfo")]
        [String]
        ${ClassId} = "workflow.WorkflowInfo",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.WorkflowInfo")]
        [String]
        ${ObjectType} = "workflow.WorkflowInfo",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("None", "Create", "Start", "Pause", "Resume", "Retry", "RetryFailed", "Cancel")]
        [String]
        ${Action} = "None",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${FailedWorkflowCleanupDuration} = 2160,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarInput},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Internal},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Message},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MetaVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[^:]{1,92}$")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("None", "TaskWithWarning")]
        [String]
        ${PauseReason} = "None",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Properties},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RetryFromTaskName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${SuccessWorkflowCleanupDuration} = 2160,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("None", "GatherTasks", "Duplicate", "RateLimit", "WaitTask", "PendingRetryFailed")]
        [String]
        ${WaitReason} = "None",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${WorkflowCtx},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SystemDefined", "UserDefined", "Dynamic")]
        [String]
        ${WorkflowMetaType} = "SystemDefined",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Var0RollbackWorkflow},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Var1Profile},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Var2ClusterProfile},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Var3SwitchProfile},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Account},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AssociatedObject},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ParentTaskInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PendingDynamicWorkflowInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Permission},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${WorkflowDefinition}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowWorkflowInfoAllOf' | Write-Debug
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
            "FailedWorkflowCleanupDuration" = ${FailedWorkflowCleanupDuration}
            "Input" = ${VarInput}
            "Internal" = ${Internal}
            "Message" = ${Message}
            "MetaVersion" = ${MetaVersion}
            "Name" = ${Name}
            "PauseReason" = ${PauseReason}
            "Properties" = ${Properties}
            "RetryFromTaskName" = ${RetryFromTaskName}
            "SuccessWorkflowCleanupDuration" = ${SuccessWorkflowCleanupDuration}
            "WaitReason" = ${WaitReason}
            "WorkflowCtx" = ${WorkflowCtx}
            "WorkflowMetaType" = ${WorkflowMetaType}
            "_0_RollbackWorkflow" = ${Var0RollbackWorkflow}
            "_1_Profile" = ${Var1Profile}
            "_2_ClusterProfile" = ${Var2ClusterProfile}
            "_3_SwitchProfile" = ${Var3SwitchProfile}
            "Account" = ${Account}
            "AssociatedObject" = ${AssociatedObject}
            "Organization" = ${Organization}
            "ParentTaskInfo" = ${ParentTaskInfo}
            "PendingDynamicWorkflowInfo" = ${PendingDynamicWorkflowInfo}
            "Permission" = ${Permission}
            "WorkflowDefinition" = ${WorkflowDefinition}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowWorkflowInfoAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowWorkflowInfoAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowWorkflowInfoAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowWorkflowInfoAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowWorkflowInfoAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowWorkflowInfoAllOf
        $AllProperties = ("ClassId", "ObjectType", "Action", "CleanupTime", "Email", "EndTime", "FailedWorkflowCleanupDuration", "Input", "InstId", "Internal", "LastAction", "Message", "MetaVersion", "Name", "Output", "PauseReason", "Progress", "Properties", "RetryFromTaskName", "Src", "StartTime", "Status", "SuccessWorkflowCleanupDuration", "TraceId", "Type", "UserActionRequired", "UserId", "WaitReason", "WorkflowCtx", "WorkflowMetaType", "WorkflowTaskCount", "WorkflowWorkerTaskCount", "_0_RollbackWorkflow", "_1_Profile", "_2_ClusterProfile", "_3_SwitchProfile", "Account", "AssociatedObject", "Organization", "ParentTaskInfo", "PendingDynamicWorkflowInfo", "Permission", "TaskInfos", "WorkflowDefinition")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CleanupTime"))) { #optional property not found
            $CleanupTime = $null
        } else {
            $CleanupTime = $JsonParameters.PSobject.Properties["CleanupTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["Email"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndTime"))) { #optional property not found
            $EndTime = $null
        } else {
            $EndTime = $JsonParameters.PSobject.Properties["EndTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FailedWorkflowCleanupDuration"))) { #optional property not found
            $FailedWorkflowCleanupDuration = $null
        } else {
            $FailedWorkflowCleanupDuration = $JsonParameters.PSobject.Properties["FailedWorkflowCleanupDuration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Input"))) { #optional property not found
            $VarInput = $null
        } else {
            $VarInput = $JsonParameters.PSobject.Properties["Input"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InstId"))) { #optional property not found
            $InstId = $null
        } else {
            $InstId = $JsonParameters.PSobject.Properties["InstId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Internal"))) { #optional property not found
            $Internal = $null
        } else {
            $Internal = $JsonParameters.PSobject.Properties["Internal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LastAction"))) { #optional property not found
            $LastAction = $null
        } else {
            $LastAction = $JsonParameters.PSobject.Properties["LastAction"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["Message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MetaVersion"))) { #optional property not found
            $MetaVersion = $null
        } else {
            $MetaVersion = $JsonParameters.PSobject.Properties["MetaVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Output"))) { #optional property not found
            $Output = $null
        } else {
            $Output = $JsonParameters.PSobject.Properties["Output"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PauseReason"))) { #optional property not found
            $PauseReason = $null
        } else {
            $PauseReason = $JsonParameters.PSobject.Properties["PauseReason"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Progress"))) { #optional property not found
            $Progress = $null
        } else {
            $Progress = $JsonParameters.PSobject.Properties["Progress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Properties"))) { #optional property not found
            $Properties = $null
        } else {
            $Properties = $JsonParameters.PSobject.Properties["Properties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RetryFromTaskName"))) { #optional property not found
            $RetryFromTaskName = $null
        } else {
            $RetryFromTaskName = $JsonParameters.PSobject.Properties["RetryFromTaskName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Src"))) { #optional property not found
            $Src = $null
        } else {
            $Src = $JsonParameters.PSobject.Properties["Src"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StartTime"))) { #optional property not found
            $StartTime = $null
        } else {
            $StartTime = $JsonParameters.PSobject.Properties["StartTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["Status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SuccessWorkflowCleanupDuration"))) { #optional property not found
            $SuccessWorkflowCleanupDuration = $null
        } else {
            $SuccessWorkflowCleanupDuration = $JsonParameters.PSobject.Properties["SuccessWorkflowCleanupDuration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TraceId"))) { #optional property not found
            $TraceId = $null
        } else {
            $TraceId = $JsonParameters.PSobject.Properties["TraceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["Type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UserActionRequired"))) { #optional property not found
            $UserActionRequired = $null
        } else {
            $UserActionRequired = $JsonParameters.PSobject.Properties["UserActionRequired"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UserId"))) { #optional property not found
            $UserId = $null
        } else {
            $UserId = $JsonParameters.PSobject.Properties["UserId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WaitReason"))) { #optional property not found
            $WaitReason = $null
        } else {
            $WaitReason = $JsonParameters.PSobject.Properties["WaitReason"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WorkflowCtx"))) { #optional property not found
            $WorkflowCtx = $null
        } else {
            $WorkflowCtx = $JsonParameters.PSobject.Properties["WorkflowCtx"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WorkflowMetaType"))) { #optional property not found
            $WorkflowMetaType = $null
        } else {
            $WorkflowMetaType = $JsonParameters.PSobject.Properties["WorkflowMetaType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WorkflowTaskCount"))) { #optional property not found
            $WorkflowTaskCount = $null
        } else {
            $WorkflowTaskCount = $JsonParameters.PSobject.Properties["WorkflowTaskCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WorkflowWorkerTaskCount"))) { #optional property not found
            $WorkflowWorkerTaskCount = $null
        } else {
            $WorkflowWorkerTaskCount = $JsonParameters.PSobject.Properties["WorkflowWorkerTaskCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_0_RollbackWorkflow"))) { #optional property not found
            $Var0RollbackWorkflow = $null
        } else {
            $Var0RollbackWorkflow = $JsonParameters.PSobject.Properties["_0_RollbackWorkflow"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_1_Profile"))) { #optional property not found
            $Var1Profile = $null
        } else {
            $Var1Profile = $JsonParameters.PSobject.Properties["_1_Profile"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_2_ClusterProfile"))) { #optional property not found
            $Var2ClusterProfile = $null
        } else {
            $Var2ClusterProfile = $JsonParameters.PSobject.Properties["_2_ClusterProfile"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_3_SwitchProfile"))) { #optional property not found
            $Var3SwitchProfile = $null
        } else {
            $Var3SwitchProfile = $JsonParameters.PSobject.Properties["_3_SwitchProfile"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Account"))) { #optional property not found
            $Account = $null
        } else {
            $Account = $JsonParameters.PSobject.Properties["Account"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AssociatedObject"))) { #optional property not found
            $AssociatedObject = $null
        } else {
            $AssociatedObject = $JsonParameters.PSobject.Properties["AssociatedObject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ParentTaskInfo"))) { #optional property not found
            $ParentTaskInfo = $null
        } else {
            $ParentTaskInfo = $JsonParameters.PSobject.Properties["ParentTaskInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PendingDynamicWorkflowInfo"))) { #optional property not found
            $PendingDynamicWorkflowInfo = $null
        } else {
            $PendingDynamicWorkflowInfo = $JsonParameters.PSobject.Properties["PendingDynamicWorkflowInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Permission"))) { #optional property not found
            $Permission = $null
        } else {
            $Permission = $JsonParameters.PSobject.Properties["Permission"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TaskInfos"))) { #optional property not found
            $TaskInfos = $null
        } else {
            $TaskInfos = $JsonParameters.PSobject.Properties["TaskInfos"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WorkflowDefinition"))) { #optional property not found
            $WorkflowDefinition = $null
        } else {
            $WorkflowDefinition = $JsonParameters.PSobject.Properties["WorkflowDefinition"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Action" = ${Action}
            "CleanupTime" = ${CleanupTime}
            "Email" = ${Email}
            "EndTime" = ${EndTime}
            "FailedWorkflowCleanupDuration" = ${FailedWorkflowCleanupDuration}
            "Input" = ${VarInput}
            "InstId" = ${InstId}
            "Internal" = ${Internal}
            "LastAction" = ${LastAction}
            "Message" = ${Message}
            "MetaVersion" = ${MetaVersion}
            "Name" = ${Name}
            "Output" = ${Output}
            "PauseReason" = ${PauseReason}
            "Progress" = ${Progress}
            "Properties" = ${Properties}
            "RetryFromTaskName" = ${RetryFromTaskName}
            "Src" = ${Src}
            "StartTime" = ${StartTime}
            "Status" = ${Status}
            "SuccessWorkflowCleanupDuration" = ${SuccessWorkflowCleanupDuration}
            "TraceId" = ${TraceId}
            "Type" = ${Type}
            "UserActionRequired" = ${UserActionRequired}
            "UserId" = ${UserId}
            "WaitReason" = ${WaitReason}
            "WorkflowCtx" = ${WorkflowCtx}
            "WorkflowMetaType" = ${WorkflowMetaType}
            "WorkflowTaskCount" = ${WorkflowTaskCount}
            "WorkflowWorkerTaskCount" = ${WorkflowWorkerTaskCount}
            "_0_RollbackWorkflow" = ${Var0RollbackWorkflow}
            "_1_Profile" = ${Var1Profile}
            "_2_ClusterProfile" = ${Var2ClusterProfile}
            "_3_SwitchProfile" = ${Var3SwitchProfile}
            "Account" = ${Account}
            "AssociatedObject" = ${AssociatedObject}
            "Organization" = ${Organization}
            "ParentTaskInfo" = ${ParentTaskInfo}
            "PendingDynamicWorkflowInfo" = ${PendingDynamicWorkflowInfo}
            "Permission" = ${Permission}
            "TaskInfos" = ${TaskInfos}
            "WorkflowDefinition" = ${WorkflowDefinition}
        }

        return $PSO
    }

}

