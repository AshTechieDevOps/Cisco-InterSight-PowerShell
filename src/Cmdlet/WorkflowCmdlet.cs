using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;
using Intersight.Api;
using Intersight.Model;

namespace Intersight.PowerShell
{
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get WorkflowRollbackWorkflow.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightWorkflowRollbackWorkflow", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightWorkflowRollbackWorkflow:GetCmdletBase
	{
		public GetIntersightWorkflowRollbackWorkflow()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "GetWorkflowRollbackWorkflowListWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"The Account ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string AccountMoid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The action of the rollback workflow such as Create and Start.\n* `None` - If no action is set, then the default value is set to none for the action field.\n* `Create` - Create rollback workflow data for the execution of the rollback workflow.\n* `Start` - Start a new execution of the rollback workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public WorkflowRollbackWorkflow.ActionEnum Action {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"When set to true, if a task in the workflow fails, the rollback workflow continues to the subsequent task. When set to false, the rollback workflow execution halts if a task fails."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public bool ContinueOnTaskFailure {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was created."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CreateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The DomainGroup ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string DomainGroupMoid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was last modified."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime ModTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Moid {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship Parent {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowWorkflowInfo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowWorkflowInfoRelationship PrimaryWorkflow {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"Intersight provides pre-built workflows, tasks and policies to end users through global catalogs.\nObjects that are made available through global catalogs are said to have a 'shared' ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SharedScope {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Status of the rollback workflow instance (Created, Running, Completed, Failed).\n* `None` - If no status is set, then the default value is set none for the status field.\n* `Created` - Status of the rollback workflow when it identifies the eligible tasks for rollback.\n* `Running` - Status of the rollback workflow when it is in-progress.\n* `Completed` - Status of the rollback workflow after execution is successful.\n* `Failed` - Status of the rollback workflow after execution results in failure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public WorkflowRollbackWorkflow.StatusEnum Status {
            get;
            set;
        }
        
        

        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New WorkflowRollbackWorkflow.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightWorkflowRollbackWorkflow")]
    public class NewIntersightWorkflowRollbackWorkflow:NewCmdletBase
	{
		public NewIntersightWorkflowRollbackWorkflow()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowRollbackWorkflow();
            MethodName = "CreateWorkflowRollbackWorkflowWithHttpInfo";
		}
        
        
        // <summary>
        /// <para type="description">"The action of the rollback workflow such as Create and Start.\n* `None` - If no action is set, then the default value is set to none for the action field.\n* `Create` - Create rollback workflow data for the execution of the rollback workflow.\n* `Start` - Start a new execution of the rollback workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowRollbackWorkflow.ActionEnum Action {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"When set to true, if a task in the workflow fails, the rollback workflow continues to the subsequent task. When set to false, the rollback workflow execution halts if a task fails."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool ContinueOnTaskFailure {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowWorkflowInfo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowInfoRelationship PrimaryWorkflow {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowRollbackWorkflowTask> SelectedTasks {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set WorkflowBatchApiExecutor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightWorkflowBatchApiExecutor")]
    public class SetIntersightWorkflowBatchApiExecutor:SetCmdletBase
	{
		public SetIntersightWorkflowBatchApiExecutor()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowBatchApiExecutor();
            MethodName = "UpdateWorkflowBatchApiExecutorWithHttpInfo";
		}
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<Intersight.Model.WorkflowApi> Batch {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Enter the constraints on when this task should match against the task definition."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowTaskConstraints Constraints {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A detailed description about the batch APIs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowErrorResponseHandler resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowErrorResponseHandlerRelationship ErrorResponseHandler {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Name for the batch API task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"All the possible outcomes of this task are captured here. Outcomes property\nis a collection property of type workflow.Outcome objects.\nThe outcomes can be mapped to the message to be shown. The outcomes are\nevaluated in the order they are given. At the end of the outcomes list,\nan catchall success/fail outcome can be added with condition as 'true'.\nThis is an optional\nproperty and if not specified the task will be marked as success."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public object Outcomes {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Intersight Orchestrator allows the extraction of required values from API\nresponses using the API response grammar. These extracted values can be mapped\nto task output parameters defined in task definition.\nThe mapping of API output parameters to the task output parameters is provided\nas JSON in this property."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public object Output {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"When an execution of a nth API in the Batch fails,\nRetry from falied API flag indicates if the execution should start from the nth API or the first API during task retry.\nBy default the value is set to false."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool RetryFromFailedApi {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The skip expression, if provided, allows the batch API executor to skip the\ntask execution when the given expression evaluates to true.\nThe expression is given as such a golang template that has to be\nevaluated to a final content true/false. The expression is an optional and in\ncase not provided, the API will always be executed."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string SkipOnCondition {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a workflowTaskDefinition resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowTaskDefinitionRelationship TaskDefinition {
            get;
            set;
        }
        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove WorkflowBatchApiExecutor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightWorkflowBatchApiExecutor")]
    public class RemoveIntersightWorkflowBatchApiExecutor:RemoveCmdletBase
	{
		public RemoveIntersightWorkflowBatchApiExecutor()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "DeleteWorkflowBatchApiExecutorWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get WorkflowBuildTaskMeta.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightWorkflowBuildTaskMeta", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightWorkflowBuildTaskMeta:GetCmdletBase
	{
		public GetIntersightWorkflowBuildTaskMeta()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "GetWorkflowBuildTaskMetaListWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"The Account ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string AccountMoid {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The time when this managed object was created."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CreateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The DomainGroup ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string DomainGroupMoid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was last modified."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime ModTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Name for the BuildTaskMeta instance used to created a dynamic workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Name {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship Parent {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"Intersight provides pre-built workflows, tasks and policies to end users through global catalogs.\nObjects that are made available through global catalogs are said to have a 'shared' ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SharedScope {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Microservice owner for the task in this workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Src {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The type of the task within this workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string TaskType {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The type for the dynamic workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string WorkflowType {
            get;
            set;
        }

        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get WorkflowPendingDynamicWorkflowInfo.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightWorkflowPendingDynamicWorkflowInfo", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightWorkflowPendingDynamicWorkflowInfo:GetCmdletBase
	{
		public GetIntersightWorkflowPendingDynamicWorkflowInfo()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "GetWorkflowPendingDynamicWorkflowInfoListWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"The Account ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string AccountMoid {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The time when this managed object was created."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CreateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The DomainGroup ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string DomainGroupMoid {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The time when this managed object was last modified."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime ModTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A name for the pending dynamic workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Name {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship Parent {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"Intersight provides pre-built workflows, tasks and policies to end users through global catalogs.\nObjects that are made available through global catalogs are said to have a 'shared' ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SharedScope {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The src is workflow owner service."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Src {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The current status of the PendingDynamicWorkflowInfo.\n* `GatheringTasks` - Dynamic workflow is gathering tasks before workflow can start execution.\n* `Waiting` - Dynamic workflow is in waiting state and not yet started execution."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public WorkflowPendingDynamicWorkflowInfo.StatusEnum Status {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"When set to true workflow engine will wait for a duplicate to finish before starting a new one."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public bool WaitOnDuplicate {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowWorkflowInfo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowWorkflowInfoRelationship WorkflowInfo {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"This key contains workflow, initiator and target name. Workflow engine uses the key to do workflow dedup."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string WorkflowKey {
            get;
            set;
        }
        

        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get WorkflowWorkflowDefinition.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightWorkflowWorkflowDefinition", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightWorkflowWorkflowDefinition:GetCmdletBase
	{
		public GetIntersightWorkflowWorkflowDefinition()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "GetWorkflowWorkflowDefinitionListWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"The Account ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string AccountMoid {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowCatalog resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowCatalogRelationship Catalog {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a workflowWorkflowDefinition resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowWorkflowDefinitionRelationship ClonedFrom {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was created."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CreateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"When true this will be the workflow version that is used when a specific workflow definition version is not specified. The default version is used when user executes a workflow without specifying a version or when workflow is included in another workflow without a specific version. The very first workflow definition created with a name will be set as the default version, after that user can explicitly set any version of the workflow definition as the default version."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public bool DefaultVersion {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The description for this workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Description {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The DomainGroup ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string DomainGroupMoid {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"A user friendly short name to identify the workflow. Label can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.), colon (:), space ( ), forward slash (/), or an underscore (_)."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        [ValidatePattern("^[a-zA-Z0-9]+[\\sa-zA-Z0-9_./:-]{1,92}$")]
        public string Label {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"License entitlement required to run this workflow. It is calculated based on the highest license requirement of all its tasks.\n* `Base` - Base as a License type. It is default license type.\n* `Essential` - Essential as a License type.\n* `Standard` - Standard as a License type.\n* `Advantage` - Advantage as a License type.\n* `Premier` - Premier as a License type.\n* `IWO-Essential` - IWO-Essential as a License type.\n* `IWO-Advantage` - IWO-Advantage as a License type.\n* `IWO-Premier` - IWO-Premier as a License type."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public WorkflowWorkflowDefinition.LicenseEntitlementEnum LicenseEntitlement {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The maximum number of tasks that can be executed on this workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public long MaxTaskCount {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The maximum number of external (worker) tasks that can be executed on this workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public long MaxWorkerTaskCount {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was last modified."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime ModTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The name for this workflow. You can have multiple versions of the workflow with the same name. Name can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.) or an underscore (_)."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        [ValidatePattern("^[a-zA-Z0-9_.-]{1,64}$")]
        public string Name {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship Parent {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"Intersight provides pre-built workflows, tasks and policies to end users through global catalogs.\nObjects that are made available through global catalogs are said to have a 'shared' ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SharedScope {
            get;
            set;
        }
        
        
        
        
        
        
        // <summary>
        /// <para type="description">"The version of the workflow to support multiple versions."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public long Version {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowWorkflowMetadata resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowWorkflowMetadataRelationship WorkflowMetadata {
            get;
            set;
        }

        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New WorkflowWorkflowDefinition.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightWorkflowWorkflowDefinition")]
    public class NewIntersightWorkflowWorkflowDefinition:NewCmdletBase
	{
		public NewIntersightWorkflowWorkflowDefinition()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowWorkflowDefinition();
            MethodName = "CreateWorkflowWorkflowDefinitionWithHttpInfo";
		}
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowCatalog resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowCatalogRelationship Catalog {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"When true this will be the workflow version that is used when a specific workflow definition version is not specified. The default version is used when user executes a workflow without specifying a version or when workflow is included in another workflow without a specific version. The very first workflow definition created with a name will be set as the default version, after that user can explicitly set any version of the workflow definition as the default version."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool DefaultVersion {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The description for this workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowBaseDataType> InputDefinition {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowParameterSet> InputParameterSet {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A user friendly short name to identify the workflow. Label can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.), colon (:), space ( ), forward slash (/), or an underscore (_)."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^[a-zA-Z0-9]+[\\sa-zA-Z0-9_./:-]{1,92}$")]
        public string Label {
            get;
            set;
        }
        
        
        
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The name for this workflow. You can have multiple versions of the workflow with the same name. Name can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.) or an underscore (_)."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        [ValidatePattern("^[a-zA-Z0-9_.-]{1,64}$")]
        public string Name {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowBaseDataType> OutputDefinition {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The output mappings for the workflow. The outputs for workflows will generally be task output variables that we want to export out at the end of the workflow. The format to specify the mapping is '${Source.output.JsonPath}', where 'Source' is the name of the task within the workflow. Any task output can be mapped to a workflow output as long as the types are compatible. It's followed by a JSON path expression to extract JSON fragment from source's output."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public object OutputParameters {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"Type to capture the properties of a workflow definition. Some of these properties are passed to workflow execution instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowProperties Properties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowWorkflowTask> Tasks {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowUiInputFilter> UiInputFilters {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"This will hold the data needed for workflow to be rendered in the user interface."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public object UiRenderingData {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The version of the workflow to support multiple versions."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long Version {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowWorkflowMetadata resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowMetadataRelationship WorkflowMetadata {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get WorkflowWorkflowMeta.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightWorkflowWorkflowMeta", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightWorkflowWorkflowMeta:GetCmdletBase
	{
		public GetIntersightWorkflowWorkflowMeta()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "GetWorkflowWorkflowMetaListWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"The Account ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string AccountMoid {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The time when this managed object was created."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CreateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The description for the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Description {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The DomainGroup ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string DomainGroupMoid {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The time when this managed object was last modified."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime ModTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The name given to the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        [ValidatePattern("^$|^[^:]{1,92}$")]
        public string Name {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a organizationOrganization resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public OrganizationOrganizationRelationship Organization {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship Parent {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"When true, this workflow can be retried for 2 weeks since the last modification of the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public bool Retryable {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The Conductor schema version that decides what attribute can be supported."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public long SchemaVersion {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Intersight provides pre-built workflows, tasks and policies to end users through global catalogs.\nObjects that are made available through global catalogs are said to have a 'shared' ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SharedScope {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The src is workflow owner service."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Src {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The type of workflow definition.\n* `SystemDefined` - System defined workflow definition.\n* `UserDefined` - User defined workflow definition.\n* `Dynamic` - Dynamically defined workflow definition."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public WorkflowWorkflowMeta.TypeEnum Type {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The version for the workflow so we can support multiple versions for the same workflow name."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public long Version {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"Parameter decides if workflows will wait for a duplicate to finish before starting a new one."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public bool WaitOnDuplicate {
            get;
            set;
        }

        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get WorkflowWorkflowMetadata.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightWorkflowWorkflowMetadata", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightWorkflowWorkflowMetadata:GetCmdletBase
	{
		public GetIntersightWorkflowWorkflowMetadata()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "GetWorkflowWorkflowMetadataListWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"The Account ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string AccountMoid {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowCatalog resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowCatalogRelationship Catalog {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was created."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CreateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The description for this workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Description {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The DomainGroup ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string DomainGroupMoid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A user friendly short name to identify the workflow metadata. Label can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.), colon (:), space ( ) or an underscore (_)."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        [ValidatePattern("^[a-zA-Z0-9]+[\\sa-zA-Z0-9_.:-]{1,92}$")]
        public string Label {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was last modified."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime ModTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The name for this workflow metadata. You can have multiple versions of the workflow with the same name. Name can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.) or an underscore (_)."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        [ValidatePattern("^[a-zA-Z0-9_.-]{1,64}$")]
        public string Name {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship Parent {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"Intersight provides pre-built workflows, tasks and policies to end users through global catalogs.\nObjects that are made available through global catalogs are said to have a 'shared' ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SharedScope {
            get;
            set;
        }
        
        

        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set WorkflowTaskDefinition.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightWorkflowTaskDefinition")]
    public class SetIntersightWorkflowTaskDefinition:SetCmdletBase
	{
		public SetIntersightWorkflowTaskDefinition()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowTaskDefinition();
            MethodName = "UpdateWorkflowTaskDefinitionWithHttpInfo";
		}
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowCatalog resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowCatalogRelationship Catalog {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"When true this will be the task version that is used when a specific task definition version is not specified. The very first task definition created with a name will be set as the default version, after that user can explicitly set any version of the task definition as the default version."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool DefaultVersion {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A user friendly description about task on what operations are done as part of the task execution and any other specific information about task input and output."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"An array of relationships to workflowTaskDefinition resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowTaskDefinitionRelationship> ImplementedTasks {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a workflowTaskDefinition resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowTaskDefinitionRelationship InterfaceTask {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A user friendly short name to identify the task definition. Label can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.), colon (:), space ( ), single quote ('), forward slash (/), or an underscore (_) and must be at least 2 characters."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^[a-zA-Z0-9]+[\\sa-zA-Z0-9_'./:-]{1,92}$")]
        public string Label {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The name of the task definition. The name should follow this convention <Verb or Action><Category><Vendor><Product><Noun or object> Verb or Action is a required portion of the name and this must be part of the pre-approved verb list. Category is an optional field and this will refer to the broad category of the task referring to the type of resource or endpoint. If there is no specific category then use \"Generic\" if required. Vendor is an optional field and this will refer to the specific vendor this task applies to. If the task is generic and not tied to a vendor, then do not specify anything. Product is an optional field, this will contain the vendor product and model when desired. Noun or object is a required field and  this will contain the noun or object on which the action is being performed. Name can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.), colon (:), or an underscore (_). Examples SendEmail  - This is a task in Generic category for sending email. NewStorageVolume - This is a vendor agnostic task under Storage device category for creating a new volume."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^[a-zA-Z0-9_.:-]{1,64}$")]
        public string Name {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"Type to capture all the properties for the task definition."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowProperties Properties {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowRollbackTask> RollbackTasks {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"If set to true, the task requires access to secure properties and uses an encryption token associated with a workflow moid to encrypt or decrypt the secure properties."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool SecurePropAccess {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a workflowTaskMetadata resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowTaskMetadataRelationship TaskMetadata {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The version of the task definition so we can support multiple versions of a task definition."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long Version {
            get;
            set;
        }
        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove WorkflowTaskDefinition.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightWorkflowTaskDefinition")]
    public class RemoveIntersightWorkflowTaskDefinition:RemoveCmdletBase
	{
		public RemoveIntersightWorkflowTaskDefinition()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "DeleteWorkflowTaskDefinitionWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get WorkflowErrorResponseHandler.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightWorkflowErrorResponseHandler", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightWorkflowErrorResponseHandler:GetCmdletBase
	{
		public GetIntersightWorkflowErrorResponseHandler()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "GetWorkflowErrorResponseHandlerListWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"The Account ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string AccountMoid {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowCatalog resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowCatalogRelationship Catalog {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was created."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CreateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A detailed description about the error response handler."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Description {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The DomainGroup ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string DomainGroupMoid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was last modified."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime ModTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Name for the error response handler."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        [ValidatePattern("^[a-zA-Z0-9_.:-]{1,64}$")]
        public string Name {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship Parent {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The platform type for which the error response handler is defined.\n* `` - The device reported an empty or unrecognized platform type.\n* `APIC` - An Application Policy Infrastructure Controller cluster.\n* `DCNM` - A Data Center Network Manager instance. Data Center Network Manager (DCNM) is the network management platform for all NX-OS-enabled deployments, spanning new fabric architectures, IP Fabric for Media, and storage networking deployments for the Cisco Nexus-powered data center.\n* `UCSFI` - A UCS Fabric Interconnect in HA or standalone mode, which is being managed by UCS Manager (UCSM).\n* `UCSFIISM` - A UCS Fabric Interconnect in HA or standalone mode, managed directly by Intersight.\n* `IMC` - A standalone UCS Server Integrated Management Controller.\n* `IMCM4` - A standalone UCS M4 Server.\n* `IMCM5` - A standalone UCS M5 server.\n* `IMCRack` - A standalone UCS M6 and above server.\n* `UCSIOM` - An UCS Chassis IO module.\n* `HX` - A HyperFlex storage controller.\n* `HyperFlexAP` - A HyperFlex Application Platform.\n* `IWE` - An Intersight Workload Engine.\n* `UCSD` - A UCS Director virtual appliance. Cisco UCS Director automates, orchestrates, and manages Cisco and third-party hardware.\n* `IntersightAppliance` - A Cisco Intersight Connected Virtual Appliance.\n* `IntersightAssist` - A Cisco Intersight Assist.\n* `PureStorageFlashArray` - A Pure Storage FlashArray device.\n* `UCSC890` - A standalone Cisco UCSC890 server.\n* `NetAppOntap` - A NetApp ONTAP storage system.\n* `NetAppActiveIqUnifiedManager` - A NetApp Active IQ Unified Manager.\n* `EmcScaleIo` - An EMC ScaleIO storage system.\n* `EmcVmax` - An EMC VMAX storage system.\n* `EmcVplex` - An EMC VPLEX storage system.\n* `EmcXtremIo` - An EMC XtremIO storage system.\n* `VmwareVcenter` - A VMware vCenter device that manages Virtual Machines.\n* `MicrosoftHyperV` - A Microsoft Hyper-V system that manages Virtual Machines.\n* `AppDynamics` - An AppDynamics controller that monitors applications.\n* `Dynatrace` - A software-intelligence monitoring platform that simplifies enterprise cloud complexity and accelerates digital transformation.\n* `ReadHatOpenStack` - An OpenStack target manages Virtual Machines, Physical Machines, Datacenters and Virtual Datacenters using different OpenStack services as administrative endpoints.\n* `CloudFoundry` - An open source cloud platform on which developers can build, deploy, run and scale applications.\n* `MicrosoftAzureApplicationInsights` - A feature of Azure Monitor, is an extensible Application Performance Management service for developers and DevOps professionals to monitor their live applications.\n* `OpenStack` - An OpenStack target manages Virtual Machines, Physical Machines, Datacenters and Virtual Datacenters using different OpenStack services as administrative endpoints.\n* `MicrosoftSqlServer` - A Microsoft SQL database server.\n* `Kubernetes` - A Kubernetes cluster that runs containerized applications.\n* `AmazonWebService` - A Amazon web service target that discovers and monitors different services like EC2. It discovers entities like VMs, Volumes, regions etc. and monitors attributes like Mem, CPU, cost.\n* `AmazonWebServiceBilling` - A Amazon web service billing target to retrieve billing information stored in S3 bucket.\n* `MicrosoftAzureServicePrincipal` - A Microsoft Azure Service Principal target that discovers all the associated Azure subscriptions.\n* `MicrosoftAzureEnterpriseAgreement` - A Microsoft Azure Enterprise Agreement target that discovers cost, billing and RIs.\n* `DellCompellent` - A Dell Compellent storage system.\n* `HPE3Par` - A HPE 3PAR storage system.\n* `RedHatEnterpriseVirtualization` - A Red Hat Enterprise Virtualization Hypervisor system that manages Virtual Machines.\n* `NutanixAcropolis` - A Nutanix Acropolis system that combines servers and storage into a distributed infrastructure platform.\n* `HPEOneView` - A HPE Oneview management system that manages compute, storage, and networking.\n* `ServiceEngine` - Cisco Application Services Engine. Cisco Application Services Engine is a platform to deploy and manage applications.\n* `HitachiVirtualStoragePlatform` - A Hitachi Virtual Storage Platform also referred to as Hitachi VSP. It includes various storage systems designed for data centers.\n* `IMCBlade` - An Intersight managed UCS Blade Server.\n* `TerraformCloud` - A Terraform Cloud account.\n* `TerraformAgent` - A Terraform Cloud Agent that Intersight will deploy in datacenter. The agent will execute Terraform plan for Terraform Cloud workspace configured to use the agent.\n* `CustomTarget` - An external endpoint added as Target that can be accessed through its HTTP API interface in Intersight Orchestrator automation workflow.Standard HTTP authentication scheme supported: Basic.\n* `AnsibleEndpoint` - An external endpoint added as Target that can be accessed through Ansible in Intersight Cloud Orchestrator automation workflow. \n* `HTTPEndpoint` - An external endpoint added as Target that can be accessed through its HTTP API interface in Intersight Orchestrator automation workflow.Standard HTTP authentication scheme supported: Basic, Bearer Token.\n* `SSHEndpoint` - An external endpoint added as Target that can be accessed through SSH in Intersight Cloud Orchestrator automation workflow.\n* `CiscoCatalyst` - A Cisco Catalyst networking switch device."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public WorkflowErrorResponseHandler.PlatformTypeEnum PlatformType {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Intersight provides pre-built workflows, tasks and policies to end users through global catalogs.\nObjects that are made available through global catalogs are said to have a 'shared' ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SharedScope {
            get;
            set;
        }
        
        
        

        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New WorkflowErrorResponseHandler.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightWorkflowErrorResponseHandler")]
    public class NewIntersightWorkflowErrorResponseHandler:NewCmdletBase
	{
		public NewIntersightWorkflowErrorResponseHandler()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowErrorResponseHandler();
            MethodName = "CreateWorkflowErrorResponseHandlerWithHttpInfo";
		}
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowCatalog resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowCatalogRelationship Catalog {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A detailed description about the error response handler."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Name for the error response handler."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        [ValidatePattern("^[a-zA-Z0-9_.:-]{1,64}$")]
        public string Name {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<ContentParameter> Parameters {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The platform type for which the error response handler is defined.\n* `` - The device reported an empty or unrecognized platform type.\n* `APIC` - An Application Policy Infrastructure Controller cluster.\n* `DCNM` - A Data Center Network Manager instance. Data Center Network Manager (DCNM) is the network management platform for all NX-OS-enabled deployments, spanning new fabric architectures, IP Fabric for Media, and storage networking deployments for the Cisco Nexus-powered data center.\n* `UCSFI` - A UCS Fabric Interconnect in HA or standalone mode, which is being managed by UCS Manager (UCSM).\n* `UCSFIISM` - A UCS Fabric Interconnect in HA or standalone mode, managed directly by Intersight.\n* `IMC` - A standalone UCS Server Integrated Management Controller.\n* `IMCM4` - A standalone UCS M4 Server.\n* `IMCM5` - A standalone UCS M5 server.\n* `IMCRack` - A standalone UCS M6 and above server.\n* `UCSIOM` - An UCS Chassis IO module.\n* `HX` - A HyperFlex storage controller.\n* `HyperFlexAP` - A HyperFlex Application Platform.\n* `IWE` - An Intersight Workload Engine.\n* `UCSD` - A UCS Director virtual appliance. Cisco UCS Director automates, orchestrates, and manages Cisco and third-party hardware.\n* `IntersightAppliance` - A Cisco Intersight Connected Virtual Appliance.\n* `IntersightAssist` - A Cisco Intersight Assist.\n* `PureStorageFlashArray` - A Pure Storage FlashArray device.\n* `UCSC890` - A standalone Cisco UCSC890 server.\n* `NetAppOntap` - A NetApp ONTAP storage system.\n* `NetAppActiveIqUnifiedManager` - A NetApp Active IQ Unified Manager.\n* `EmcScaleIo` - An EMC ScaleIO storage system.\n* `EmcVmax` - An EMC VMAX storage system.\n* `EmcVplex` - An EMC VPLEX storage system.\n* `EmcXtremIo` - An EMC XtremIO storage system.\n* `VmwareVcenter` - A VMware vCenter device that manages Virtual Machines.\n* `MicrosoftHyperV` - A Microsoft Hyper-V system that manages Virtual Machines.\n* `AppDynamics` - An AppDynamics controller that monitors applications.\n* `Dynatrace` - A software-intelligence monitoring platform that simplifies enterprise cloud complexity and accelerates digital transformation.\n* `ReadHatOpenStack` - An OpenStack target manages Virtual Machines, Physical Machines, Datacenters and Virtual Datacenters using different OpenStack services as administrative endpoints.\n* `CloudFoundry` - An open source cloud platform on which developers can build, deploy, run and scale applications.\n* `MicrosoftAzureApplicationInsights` - A feature of Azure Monitor, is an extensible Application Performance Management service for developers and DevOps professionals to monitor their live applications.\n* `OpenStack` - An OpenStack target manages Virtual Machines, Physical Machines, Datacenters and Virtual Datacenters using different OpenStack services as administrative endpoints.\n* `MicrosoftSqlServer` - A Microsoft SQL database server.\n* `Kubernetes` - A Kubernetes cluster that runs containerized applications.\n* `AmazonWebService` - A Amazon web service target that discovers and monitors different services like EC2. It discovers entities like VMs, Volumes, regions etc. and monitors attributes like Mem, CPU, cost.\n* `AmazonWebServiceBilling` - A Amazon web service billing target to retrieve billing information stored in S3 bucket.\n* `MicrosoftAzureServicePrincipal` - A Microsoft Azure Service Principal target that discovers all the associated Azure subscriptions.\n* `MicrosoftAzureEnterpriseAgreement` - A Microsoft Azure Enterprise Agreement target that discovers cost, billing and RIs.\n* `DellCompellent` - A Dell Compellent storage system.\n* `HPE3Par` - A HPE 3PAR storage system.\n* `RedHatEnterpriseVirtualization` - A Red Hat Enterprise Virtualization Hypervisor system that manages Virtual Machines.\n* `NutanixAcropolis` - A Nutanix Acropolis system that combines servers and storage into a distributed infrastructure platform.\n* `HPEOneView` - A HPE Oneview management system that manages compute, storage, and networking.\n* `ServiceEngine` - Cisco Application Services Engine. Cisco Application Services Engine is a platform to deploy and manage applications.\n* `HitachiVirtualStoragePlatform` - A Hitachi Virtual Storage Platform also referred to as Hitachi VSP. It includes various storage systems designed for data centers.\n* `IMCBlade` - An Intersight managed UCS Blade Server.\n* `TerraformCloud` - A Terraform Cloud account.\n* `TerraformAgent` - A Terraform Cloud Agent that Intersight will deploy in datacenter. The agent will execute Terraform plan for Terraform Cloud workspace configured to use the agent.\n* `CustomTarget` - An external endpoint added as Target that can be accessed through its HTTP API interface in Intersight Orchestrator automation workflow.Standard HTTP authentication scheme supported: Basic.\n* `AnsibleEndpoint` - An external endpoint added as Target that can be accessed through Ansible in Intersight Cloud Orchestrator automation workflow. \n* `HTTPEndpoint` - An external endpoint added as Target that can be accessed through its HTTP API interface in Intersight Orchestrator automation workflow.Standard HTTP authentication scheme supported: Basic, Bearer Token.\n* `SSHEndpoint` - An external endpoint added as Target that can be accessed through SSH in Intersight Cloud Orchestrator automation workflow.\n* `CiscoCatalyst` - A Cisco Catalyst networking switch device."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowErrorResponseHandler.PlatformTypeEnum PlatformType {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<ContentComplexType> Types {
            get;
            set;
        }
        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove WorkflowWorkflowDefinition.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightWorkflowWorkflowDefinition")]
    public class RemoveIntersightWorkflowWorkflowDefinition:RemoveCmdletBase
	{
		public RemoveIntersightWorkflowWorkflowDefinition()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "DeleteWorkflowWorkflowDefinitionWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set WorkflowWorkflowDefinition.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightWorkflowWorkflowDefinition")]
    public class SetIntersightWorkflowWorkflowDefinition:SetCmdletBase
	{
		public SetIntersightWorkflowWorkflowDefinition()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowWorkflowDefinition();
            MethodName = "UpdateWorkflowWorkflowDefinitionWithHttpInfo";
		}
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowCatalog resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowCatalogRelationship Catalog {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"When true this will be the workflow version that is used when a specific workflow definition version is not specified. The default version is used when user executes a workflow without specifying a version or when workflow is included in another workflow without a specific version. The very first workflow definition created with a name will be set as the default version, after that user can explicitly set any version of the workflow definition as the default version."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool DefaultVersion {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The description for this workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowBaseDataType> InputDefinition {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowParameterSet> InputParameterSet {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A user friendly short name to identify the workflow. Label can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.), colon (:), space ( ), forward slash (/), or an underscore (_)."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^[a-zA-Z0-9]+[\\sa-zA-Z0-9_./:-]{1,92}$")]
        public string Label {
            get;
            set;
        }
        
        
        
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The name for this workflow. You can have multiple versions of the workflow with the same name. Name can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.) or an underscore (_)."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^[a-zA-Z0-9_.-]{1,64}$")]
        public string Name {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowBaseDataType> OutputDefinition {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The output mappings for the workflow. The outputs for workflows will generally be task output variables that we want to export out at the end of the workflow. The format to specify the mapping is '${Source.output.JsonPath}', where 'Source' is the name of the task within the workflow. Any task output can be mapped to a workflow output as long as the types are compatible. It's followed by a JSON path expression to extract JSON fragment from source's output."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public object OutputParameters {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"Type to capture the properties of a workflow definition. Some of these properties are passed to workflow execution instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowProperties Properties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowWorkflowTask> Tasks {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowUiInputFilter> UiInputFilters {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"This will hold the data needed for workflow to be rendered in the user interface."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public object UiRenderingData {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The version of the workflow to support multiple versions."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long Version {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowWorkflowMetadata resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowMetadataRelationship WorkflowMetadata {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get WorkflowTemplateFunctionMeta.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightWorkflowTemplateFunctionMeta", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightWorkflowTemplateFunctionMeta:GetCmdletBase
	{
		public GetIntersightWorkflowTemplateFunctionMeta()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "GetWorkflowTemplateFunctionMetaListWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"The Account ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string AccountMoid {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"The time when this managed object was created."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CreateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The DomainGroup ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string DomainGroupMoid {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The flag indicates whether a guided mode template is supported for it or not."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public bool IsGuidedModeSupported {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was last modified."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime ModTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The template function name."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Name {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship Parent {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"Intersight provides pre-built workflows, tasks and policies to end users through global catalogs.\nObjects that are made available through global catalogs are said to have a 'shared' ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SharedScope {
            get;
            set;
        }
        
        

        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get WorkflowTaskDefinition.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightWorkflowTaskDefinition", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightWorkflowTaskDefinition:GetCmdletBase
	{
		public GetIntersightWorkflowTaskDefinition()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "GetWorkflowTaskDefinitionListWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"The Account ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string AccountMoid {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowCatalog resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowCatalogRelationship Catalog {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a workflowTaskDefinition resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowTaskDefinitionRelationship ClonedFrom {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was created."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CreateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"When true this will be the task version that is used when a specific task definition version is not specified. The very first task definition created with a name will be set as the default version, after that user can explicitly set any version of the task definition as the default version."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public bool DefaultVersion {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A user friendly description about task on what operations are done as part of the task execution and any other specific information about task input and output."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Description {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The DomainGroup ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string DomainGroupMoid {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowTaskDefinition resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowTaskDefinitionRelationship InterfaceTask {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A user friendly short name to identify the task definition. Label can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.), colon (:), space ( ), single quote ('), forward slash (/), or an underscore (_) and must be at least 2 characters."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        [ValidatePattern("^[a-zA-Z0-9]+[\\sa-zA-Z0-9_'./:-]{1,92}$")]
        public string Label {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"License entitlement required to run this task. It is determined by license requirement of features.\n* `Base` - Base as a License type. It is default license type.\n* `Essential` - Essential as a License type.\n* `Standard` - Standard as a License type.\n* `Advantage` - Advantage as a License type.\n* `Premier` - Premier as a License type.\n* `IWO-Essential` - IWO-Essential as a License type.\n* `IWO-Advantage` - IWO-Advantage as a License type.\n* `IWO-Premier` - IWO-Premier as a License type."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public WorkflowTaskDefinition.LicenseEntitlementEnum LicenseEntitlement {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was last modified."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime ModTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The name of the task definition. The name should follow this convention <Verb or Action><Category><Vendor><Product><Noun or object> Verb or Action is a required portion of the name and this must be part of the pre-approved verb list. Category is an optional field and this will refer to the broad category of the task referring to the type of resource or endpoint. If there is no specific category then use \"Generic\" if required. Vendor is an optional field and this will refer to the specific vendor this task applies to. If the task is generic and not tied to a vendor, then do not specify anything. Product is an optional field, this will contain the vendor product and model when desired. Noun or object is a required field and  this will contain the noun or object on which the action is being performed. Name can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.), colon (:), or an underscore (_). Examples SendEmail  - This is a task in Generic category for sending email. NewStorageVolume - This is a vendor agnostic task under Storage device category for creating a new volume."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        [ValidatePattern("^[a-zA-Z0-9_.:-]{1,64}$")]
        public string Name {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship Parent {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"If set to true, the task requires access to secure properties and uses an encryption token associated with a workflow moid to encrypt or decrypt the secure properties."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public bool SecurePropAccess {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Intersight provides pre-built workflows, tasks and policies to end users through global catalogs.\nObjects that are made available through global catalogs are said to have a 'shared' ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SharedScope {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowTaskMetadata resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowTaskMetadataRelationship TaskMetadata {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The version of the task definition so we can support multiple versions of a task definition."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public long Version {
            get;
            set;
        }
        

        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New WorkflowTaskDefinition.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightWorkflowTaskDefinition")]
    public class NewIntersightWorkflowTaskDefinition:NewCmdletBase
	{
		public NewIntersightWorkflowTaskDefinition()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowTaskDefinition();
            MethodName = "CreateWorkflowTaskDefinitionWithHttpInfo";
		}
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowCatalog resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowCatalogRelationship Catalog {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"When true this will be the task version that is used when a specific task definition version is not specified. The very first task definition created with a name will be set as the default version, after that user can explicitly set any version of the task definition as the default version."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool DefaultVersion {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A user friendly description about task on what operations are done as part of the task execution and any other specific information about task input and output."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"An array of relationships to workflowTaskDefinition resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowTaskDefinitionRelationship> ImplementedTasks {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a workflowTaskDefinition resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowTaskDefinitionRelationship InterfaceTask {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A user friendly short name to identify the task definition. Label can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.), colon (:), space ( ), single quote ('), forward slash (/), or an underscore (_) and must be at least 2 characters."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^[a-zA-Z0-9]+[\\sa-zA-Z0-9_'./:-]{1,92}$")]
        public string Label {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The name of the task definition. The name should follow this convention <Verb or Action><Category><Vendor><Product><Noun or object> Verb or Action is a required portion of the name and this must be part of the pre-approved verb list. Category is an optional field and this will refer to the broad category of the task referring to the type of resource or endpoint. If there is no specific category then use \"Generic\" if required. Vendor is an optional field and this will refer to the specific vendor this task applies to. If the task is generic and not tied to a vendor, then do not specify anything. Product is an optional field, this will contain the vendor product and model when desired. Noun or object is a required field and  this will contain the noun or object on which the action is being performed. Name can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.), colon (:), or an underscore (_). Examples SendEmail  - This is a task in Generic category for sending email. NewStorageVolume - This is a vendor agnostic task under Storage device category for creating a new volume."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        [ValidatePattern("^[a-zA-Z0-9_.:-]{1,64}$")]
        public string Name {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"Type to capture all the properties for the task definition."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowProperties Properties {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowRollbackTask> RollbackTasks {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"If set to true, the task requires access to secure properties and uses an encryption token associated with a workflow moid to encrypt or decrypt the secure properties."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool SecurePropAccess {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a workflowTaskMetadata resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowTaskMetadataRelationship TaskMetadata {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The version of the task definition so we can support multiple versions of a task definition."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long Version {
            get;
            set;
        }
        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get WorkflowCustomDataTypeDefinition.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightWorkflowCustomDataTypeDefinition", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightWorkflowCustomDataTypeDefinition:GetCmdletBase
	{
		public GetIntersightWorkflowCustomDataTypeDefinition()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "GetWorkflowCustomDataTypeDefinitionListWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"The Account ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string AccountMoid {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowCatalog resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowCatalogRelationship Catalog {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a workflowCustomDataTypeDefinition resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowCustomDataTypeDefinitionRelationship ClonedFrom {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"When true this data type definition is a collection of type definitions to represent composite data like JSON."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public bool CompositeType {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was created."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CreateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A human-friendly description of this custom data type indicating it's domain and usage."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Description {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The DomainGroup ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string DomainGroupMoid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A user friendly short name to identify the custom data type definition. Label can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.), colon (:), space ( ), single quote ('), or an underscore (_) and must be at least 2 characters."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        [ValidatePattern("^[a-zA-Z0-9]+[\\sa-zA-Z0-9_'.:-]{1,92}$")]
        public string Label {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was last modified."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime ModTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The name of custom data type definition. The valid name can contain lower case and upper case alphabetic characters, digits and special characters '-' and '_'."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        [ValidatePattern("^[a-zA-Z0-9_-]{1,64}$")]
        public string Name {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship Parent {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"Intersight provides pre-built workflows, tasks and policies to end users through global catalogs.\nObjects that are made available through global catalogs are said to have a 'shared' ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SharedScope {
            get;
            set;
        }
        
        
        

        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New WorkflowCustomDataTypeDefinition.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightWorkflowCustomDataTypeDefinition")]
    public class NewIntersightWorkflowCustomDataTypeDefinition:NewCmdletBase
	{
		public NewIntersightWorkflowCustomDataTypeDefinition()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowCustomDataTypeDefinition();
            MethodName = "CreateWorkflowCustomDataTypeDefinitionWithHttpInfo";
		}
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowCatalog resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowCatalogRelationship Catalog {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"When true this data type definition is a collection of type definitions to represent composite data like JSON."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool CompositeType {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A human-friendly description of this custom data type indicating it's domain and usage."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A user friendly short name to identify the custom data type definition. Label can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.), colon (:), space ( ), single quote ('), or an underscore (_) and must be at least 2 characters."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^[a-zA-Z0-9]+[\\sa-zA-Z0-9_'.:-]{1,92}$")]
        public string Label {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The name of custom data type definition. The valid name can contain lower case and upper case alphabetic characters, digits and special characters '-' and '_'."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        [ValidatePattern("^[a-zA-Z0-9_-]{1,64}$")]
        public string Name {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowParameterSet> ParameterSet {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"Type to capture all the properties for the custom data type definition."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowCustomDataTypeProperties Properties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowBaseDataType> TypeDefinition {
            get;
            set;
        }
        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get WorkflowTaskInfo.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightWorkflowTaskInfo", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightWorkflowTaskInfo:GetCmdletBase
	{
		public GetIntersightWorkflowTaskInfo()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "GetWorkflowTaskInfoListWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"The Account ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string AccountMoid {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The time when this managed object was created."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CreateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The task description and this is the description that was added when the task was included into the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Description {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The DomainGroup ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string DomainGroupMoid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time stamp when the task reached a final state."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime EndTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Description of the reason why the task failed."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string FailureReason {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The instance ID of the task running in the workflow engine."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string InstId {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Denotes whether or not this is an internal task.  Internal tasks will be hidden from the UI within a workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public bool Internal {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"User friendly short label to describe this task instance in the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Label {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The time when this managed object was last modified."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime ModTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Task definition name which specifies the task type."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Name {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship Parent {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The task reference name to ensure its unique inside a workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string RefName {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A counter for number of retries."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public long RetryCount {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The task is disabled/enabled for rollback operation in this workflow if the task has rollback support."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public bool RollbackDisabled {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The instance ID of the task that is currently being executed. When retrying a workflow with failed tasks, the task in workflow engine will have a new instance ID, but the task may still be in-progress. In this case, the task instId reflects the instance ID in the workflow engine, while runningInstId reflects the instance ID of the instance that is currently being executed."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string RunningInstId {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Intersight provides pre-built workflows, tasks and policies to end users through global catalogs.\nObjects that are made available through global catalogs are said to have a 'shared' ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SharedScope {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time stamp when the task started execution."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime StartTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The status of the task and this will specify if the task is running or has reached a final state."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Status {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a workflowWorkflowInfo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowWorkflowInfoRelationship SubWorkflowInfo {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowTaskDefinition resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowTaskDefinitionRelationship TaskDefinition {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowWorkflowInfo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowWorkflowInfoRelationship WorkflowInfo {
            get;
            set;
        }

        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get WorkflowTaskMetadata.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightWorkflowTaskMetadata", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightWorkflowTaskMetadata:GetCmdletBase
	{
		public GetIntersightWorkflowTaskMetadata()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "GetWorkflowTaskMetadataListWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"The Account ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string AccountMoid {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowCatalog resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowCatalogRelationship Catalog {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was created."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CreateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The task metadata description to describe what this task will do when executed."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Description {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The DomainGroup ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string DomainGroupMoid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A user friendly short name to identify the task metadata."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        [ValidatePattern("^[a-zA-Z0-9]+[\\sa-zA-Z0-9_'.:-]{1,92}$")]
        public string Label {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was last modified."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime ModTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The name of the task metadata. The name should follow this convention <Verb or Action><Category><Vendor><Product><Noun or object> Verb or Action is a required portion of the name and this must be part of the pre-approved verb list. Category is an optional field and this will refer to the broad category of the task referring to the type of resource or endpoint. If there is no specific category then use \"Generic\" if required. Vendor is an optional field and this will refer to the specific vendor this task applies to. If the task is generic and not tied to a vendor, then do not specify anything. Product is an optional field, this will contain the vendor product and model when desired. Noun or object is a required field and  this will contain the noun or object on which the action is being performed. Examples SendEmail  - This is a task in Generic category for sending email. NewStorageVolume - This is a vendor agnostic task under Storage device category for creating a new volume."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        [ValidatePattern("^[a-zA-Z0-9_.:-]{1,64}$")]
        public string Name {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship Parent {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"Intersight provides pre-built workflows, tasks and policies to end users through global catalogs.\nObjects that are made available through global catalogs are said to have a 'shared' ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SharedScope {
            get;
            set;
        }
        
        

        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get WorkflowBatchApiExecutor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightWorkflowBatchApiExecutor", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightWorkflowBatchApiExecutor:GetCmdletBase
	{
		public GetIntersightWorkflowBatchApiExecutor()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "GetWorkflowBatchApiExecutorListWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"The Account ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string AccountMoid {
            get;
            set;
        }
        
        
        
        
        
        // <summary>
        /// <para type="description">"The time when this managed object was created."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CreateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A detailed description about the batch APIs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Description {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The DomainGroup ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string DomainGroupMoid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a workflowErrorResponseHandler resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowErrorResponseHandlerRelationship ErrorResponseHandler {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was last modified."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime ModTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Name for the batch API task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Name {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship Parent {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"When an execution of a nth API in the Batch fails,\nRetry from falied API flag indicates if the execution should start from the nth API or the first API during task retry.\nBy default the value is set to false."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public bool RetryFromFailedApi {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Intersight provides pre-built workflows, tasks and policies to end users through global catalogs.\nObjects that are made available through global catalogs are said to have a 'shared' ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SharedScope {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The skip expression, if provided, allows the batch API executor to skip the\ntask execution when the given expression evaluates to true.\nThe expression is given as such a golang template that has to be\nevaluated to a final content true/false. The expression is an optional and in\ncase not provided, the API will always be executed."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SkipOnCondition {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowTaskDefinition resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowTaskDefinitionRelationship TaskDefinition {
            get;
            set;
        }
        

        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New WorkflowBatchApiExecutor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightWorkflowBatchApiExecutor")]
    public class NewIntersightWorkflowBatchApiExecutor:NewCmdletBase
	{
		public NewIntersightWorkflowBatchApiExecutor()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowBatchApiExecutor();
            MethodName = "CreateWorkflowBatchApiExecutorWithHttpInfo";
		}
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<Intersight.Model.WorkflowApi> Batch {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Enter the constraints on when this task should match against the task definition."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowTaskConstraints Constraints {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A detailed description about the batch APIs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowErrorResponseHandler resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowErrorResponseHandlerRelationship ErrorResponseHandler {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Name for the batch API task."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"All the possible outcomes of this task are captured here. Outcomes property\nis a collection property of type workflow.Outcome objects.\nThe outcomes can be mapped to the message to be shown. The outcomes are\nevaluated in the order they are given. At the end of the outcomes list,\nan catchall success/fail outcome can be added with condition as 'true'.\nThis is an optional\nproperty and if not specified the task will be marked as success."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public object Outcomes {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Intersight Orchestrator allows the extraction of required values from API\nresponses using the API response grammar. These extracted values can be mapped\nto task output parameters defined in task definition.\nThe mapping of API output parameters to the task output parameters is provided\nas JSON in this property."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public object Output {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"When an execution of a nth API in the Batch fails,\nRetry from falied API flag indicates if the execution should start from the nth API or the first API during task retry.\nBy default the value is set to false."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool RetryFromFailedApi {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The skip expression, if provided, allows the batch API executor to skip the\ntask execution when the given expression evaluates to true.\nThe expression is given as such a golang template that has to be\nevaluated to a final content true/false. The expression is an optional and in\ncase not provided, the API will always be executed."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string SkipOnCondition {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a workflowTaskDefinition resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowTaskDefinitionRelationship TaskDefinition {
            get;
            set;
        }
        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New WorkflowWorkflowNotification.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightWorkflowWorkflowNotification")]
    public class NewIntersightWorkflowWorkflowNotification:NewCmdletBase
	{
		public NewIntersightWorkflowWorkflowNotification()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowWorkflowNotification();
            MethodName = "CreateWorkflowWorkflowNotificationWithHttpInfo";
		}
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The correlationId of the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string CorrelationId {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The end time of the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string EndTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The event of the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Event {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The execution time of the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float ExecutionTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The reference task names of the failed tasks."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string FailedReferenceTaskNames {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The input of the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Input {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The output of the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Output {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"The reason for incompletion status of the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ReasonForIncompletion {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The start time of the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string StartTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The final status of the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Status {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The last update time of the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string UpdateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The version of the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long Version {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The unique id of the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string WorkflowId {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The type of the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string WorkflowType {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get WorkflowCatalog.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightWorkflowCatalog", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightWorkflowCatalog:GetCmdletBase
	{
		public GetIntersightWorkflowCatalog()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "GetWorkflowCatalogListWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"The Account ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string AccountMoid {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The time when this managed object was created."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CreateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The DomainGroup ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string DomainGroupMoid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was last modified."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime ModTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A unique name for the catalog."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Name {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a organizationOrganization resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public OrganizationOrganizationRelationship Organization {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship Parent {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"Intersight provides pre-built workflows, tasks and policies to end users through global catalogs.\nObjects that are made available through global catalogs are said to have a 'shared' ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SharedScope {
            get;
            set;
        }
        
        

        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set WorkflowRollbackWorkflow.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightWorkflowRollbackWorkflow")]
    public class SetIntersightWorkflowRollbackWorkflow:SetCmdletBase
	{
		public SetIntersightWorkflowRollbackWorkflow()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowRollbackWorkflow();
            MethodName = "UpdateWorkflowRollbackWorkflowWithHttpInfo";
		}
        
        
        // <summary>
        /// <para type="description">"The action of the rollback workflow such as Create and Start.\n* `None` - If no action is set, then the default value is set to none for the action field.\n* `Create` - Create rollback workflow data for the execution of the rollback workflow.\n* `Start` - Start a new execution of the rollback workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowRollbackWorkflow.ActionEnum Action {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"When set to true, if a task in the workflow fails, the rollback workflow continues to the subsequent task. When set to false, the rollback workflow execution halts if a task fails."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool ContinueOnTaskFailure {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowWorkflowInfo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowInfoRelationship PrimaryWorkflow {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowRollbackWorkflowTask> SelectedTasks {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove WorkflowRollbackWorkflow.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightWorkflowRollbackWorkflow")]
    public class RemoveIntersightWorkflowRollbackWorkflow:RemoveCmdletBase
	{
		public RemoveIntersightWorkflowRollbackWorkflow()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "DeleteWorkflowRollbackWorkflowWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New WorkflowTaskNotification.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightWorkflowTaskNotification")]
    public class NewIntersightWorkflowTaskNotification:NewCmdletBase
	{
		public NewIntersightWorkflowTaskNotification()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowTaskNotification();
            MethodName = "CreateWorkflowTaskNotificationWithHttpInfo";
		}
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The correlation id of the scheduled task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string CorrelationId {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The end time of the scheduled task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string EndTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The input of the scheduled task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Input {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The output of the scheduled task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Output {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"The reason for incompletion status of the task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ReasonForIncompletion {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The task reference name of the scheduled task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ReferenceTaskName {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The number of times the task retries on failure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float RetryCount {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The scheduled time of the task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ScheduledTime {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The start time of the scheduled task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string StartTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The status of the scheduled task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Status {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The definition of the task explains about the task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string TaskDefName {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The description of the task explains about the task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string TaskDescription {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Unique id of the scheduled task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string TaskId {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The type of the scheduled task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string TaskType {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The update time of the scheduled task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string UpdateTime {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The unique id of the running workflow containing this scheduled task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string WorkflowId {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The type of the workflow task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string WorkflowTaskType {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The type of workflow containing this scheduled task."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string WorkflowType {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set WorkflowWorkflowInfo.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightWorkflowWorkflowInfo")]
    public class SetIntersightWorkflowWorkflowInfo:SetCmdletBase
	{
		public SetIntersightWorkflowWorkflowInfo()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowWorkflowInfo();
            MethodName = "UpdateWorkflowWorkflowInfoWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"A reference to a iamAccount resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public IamAccountRelationship Account {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The action of the workflow such as start, cancel, retry, pause.\n* `None` - No action is set, this is the default value for action field.\n* `Create` - Create a new instance of the workflow but it does not start the execution of the workflow. Use the Start action to start execution of the workflow.\n* `Start` - Start a new execution of the workflow.\n* `Pause` - Pause the workflow, this can only be issued on workflows that are in running state.\n* `Resume` - Resume the workflow which was previously paused through pause action on the workflow.\n* `Retry` - Retry the workflow that has previously reached a final state and has the retryable property set to true. A running or waiting workflow cannot be retried. If the property retryFromTaskName is also passed along with this action, the workflow will be started from that specific task, otherwise the workflow will be restarted from the first task.  The task name in retryFromTaskName must be one of the tasks that completed or failed in the previous run. It is not possible to retry a workflow from a task which wasn't run in the previous iteration.\n* `RetryFailed` - Retry the workflow that has failed. A running or waiting workflow or a workflow that completed successfully cannot be retried. Only the tasks that failed in the previous run will be retried and the rest of workflow will be run. This action does not restart the workflow and also does not support retrying from a specific task.\n* `Cancel` - Cancel the workflow that is in running or waiting state."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowInfo.ActionEnum Action {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public MoBaseMoRelationship AssociatedObject {
            get;
            set;
        }
        
        
        
        
        
        
        // <summary>
        /// <para type="description">"The duration in hours after which the workflow info for failed, terminated or timed out workflow will be removed from database."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long FailedWorkflowCleanupDuration {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"All the given inputs for the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public object Input {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"Denotes if this workflow is internal and should be hidden from user view of running workflows."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool Internal {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowMessage> Message {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Version of the workflow metadata for which this workflow execution was started."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long MetaVersion {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A name of the workflow execution instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^[^:]{1,92}$")]
        public string Name {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a organizationOrganization resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public OrganizationOrganizationRelationship Organization {
            get;
            set;
        }
        
        
        
        
        
        // <summary>
        /// <para type="description">"Denotes the reason workflow is in paused status.\n* `None` - Pause reason is none, which indicates there is no reason for the pause state.\n* `TaskWithWarning` - Pause reason indicates the workflow is in this state due to a task that has a status as completed with warnings.\n* `SystemMaintenance` - Pause reason indicates the workflow is in this state based on actions of system admin for maintenance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowInfo.PauseReasonEnum PauseReason {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a iamPermission resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public IamPermissionRelationship Permission {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"This field is applicable when Retry action is issued for a workflow which is in 'final' state. When this field is not specified, the workflow will be retried from the start i.e., the first task. When this field is specified then the workflow will be retried from the specified task. This field should specify the task name which is the unique name of the task within the workflow. The task name must be one of the tasks that completed or failed in the previous run. It is not possible to retry a workflow from a task which wasn't run in the previous iteration."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string RetryFromTaskName {
            get;
            set;
        }
        
        
        
        
        
        // <summary>
        /// <para type="description">"The duration in hours after which the workflow info for successful workflow will be removed from database."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long SuccessWorkflowCleanupDuration {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
        
        
        
        
        
        
        // <summary>
        /// <para type="description">"Denotes the reason workflow is in waiting status.\n* `None` - Wait reason is none, which indicates there is no reason for the waiting state.\n* `GatherTasks` - Wait reason is gathering tasks, which indicates the workflow is in this state in order to gather tasks.\n* `Duplicate` - Wait reason is duplicate, which indicates the workflow is a duplicate of current running workflow.\n* `RateLimit` - Wait reason is rate limit, which indicates the workflow is rate limited by account/instance level throttling threshold.\n* `WaitTask` - Wait reason when there are one or more wait tasks in the workflow which are yet to receive a task status update.\n* `PendingRetryFailed` - Wait reason when the workflow is pending a RetryFailed action.\n* `WaitingToStart` - Workflow is waiting to start on workflow engine."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowInfo.WaitReasonEnum WaitReason {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The workflow context which contains initiator and target information."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowCtx WorkflowCtx {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a workflowWorkflowDefinition resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowDefinitionRelationship WorkflowDefinition {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The type of workflow meta. Derived from the workflow meta that is used to launch this workflow instance.\n* `SystemDefined` - System defined workflow definition.\n* `UserDefined` - User defined workflow definition.\n* `Dynamic` - Dynamically defined workflow definition."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowInfo.WorkflowMetaTypeEnum WorkflowMetaType {
            get;
            set;
        }
        
        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove WorkflowWorkflowInfo.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightWorkflowWorkflowInfo")]
    public class RemoveIntersightWorkflowWorkflowInfo:RemoveCmdletBase
	{
		public RemoveIntersightWorkflowWorkflowInfo()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "DeleteWorkflowWorkflowInfoWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get WorkflowBuildTaskMetaOwner.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightWorkflowBuildTaskMetaOwner", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightWorkflowBuildTaskMetaOwner:GetCmdletBase
	{
		public GetIntersightWorkflowBuildTaskMetaOwner()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "GetWorkflowBuildTaskMetaOwnerListWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"The Account ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string AccountMoid {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The time when this managed object was created."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CreateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The DomainGroup ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string DomainGroupMoid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was last modified."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime ModTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Moid {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship Parent {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The microservice owner responsible for the tasks."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Service {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Intersight provides pre-built workflows, tasks and policies to end users through global catalogs.\nObjects that are made available through global catalogs are said to have a 'shared' ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SharedScope {
            get;
            set;
        }
        
        
        

        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get WorkflowTaskDebugLog.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightWorkflowTaskDebugLog", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightWorkflowTaskDebugLog:GetCmdletBase
	{
		public GetIntersightWorkflowTaskDebugLog()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "GetWorkflowTaskDebugLogListWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"The Account ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string AccountMoid {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The time when this managed object was created."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CreateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The DomainGroup ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string DomainGroupMoid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was last modified."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime ModTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Moid {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship Parent {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A counter for number of retries."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public long RetryCount {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Intersight provides pre-built workflows, tasks and policies to end users through global catalogs.\nObjects that are made available through global catalogs are said to have a 'shared' ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SharedScope {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowTaskInfo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowTaskInfoRelationship TaskInfo {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier for task instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string TaskInstId {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowWorkflowInfo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowWorkflowInfoRelationship WorkflowInfo {
            get;
            set;
        }

        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get WorkflowWorkflowInfo.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightWorkflowWorkflowInfo", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightWorkflowWorkflowInfo:GetCmdletBase
	{
		public GetIntersightWorkflowWorkflowInfo()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "GetWorkflowWorkflowInfoListWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"A reference to a iamAccount resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public IamAccountRelationship Account {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The Account ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string AccountMoid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The action of the workflow such as start, cancel, retry, pause.\n* `None` - No action is set, this is the default value for action field.\n* `Create` - Create a new instance of the workflow but it does not start the execution of the workflow. Use the Start action to start execution of the workflow.\n* `Start` - Start a new execution of the workflow.\n* `Pause` - Pause the workflow, this can only be issued on workflows that are in running state.\n* `Resume` - Resume the workflow which was previously paused through pause action on the workflow.\n* `Retry` - Retry the workflow that has previously reached a final state and has the retryable property set to true. A running or waiting workflow cannot be retried. If the property retryFromTaskName is also passed along with this action, the workflow will be started from that specific task, otherwise the workflow will be restarted from the first task.  The task name in retryFromTaskName must be one of the tasks that completed or failed in the previous run. It is not possible to retry a workflow from a task which wasn't run in the previous iteration.\n* `RetryFailed` - Retry the workflow that has failed. A running or waiting workflow or a workflow that completed successfully cannot be retried. Only the tasks that failed in the previous run will be retried and the rest of workflow will be run. This action does not restart the workflow and also does not support retrying from a specific task.\n* `Cancel` - Cancel the workflow that is in running or waiting state."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public WorkflowWorkflowInfo.ActionEnum Action {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship AssociatedObject {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when the workflow info will be removed from database."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CleanupTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was created."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime CreateTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The DomainGroup ID for this managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string DomainGroupMoid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The email address of the user who started this workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        [ValidatePattern("^$|^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$")]
        public string Email {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when the workflow reached a final state."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime EndTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The duration in hours after which the workflow info for failed, terminated or timed out workflow will be removed from database."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public long FailedWorkflowCleanupDuration {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A workflow instance Id which is the unique identified for the workflow execution."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string InstId {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Denotes if this workflow is internal and should be hidden from user view of running workflows."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public bool Internal {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The last action that was issued on the workflow is saved in this field.\n* `None` - No action is set, this is the default value for action field.\n* `Create` - Create a new instance of the workflow but it does not start the execution of the workflow. Use the Start action to start execution of the workflow.\n* `Start` - Start a new execution of the workflow.\n* `Pause` - Pause the workflow, this can only be issued on workflows that are in running state.\n* `Resume` - Resume the workflow which was previously paused through pause action on the workflow.\n* `Retry` - Retry the workflow that has previously reached a final state and has the retryable property set to true. A running or waiting workflow cannot be retried. If the property retryFromTaskName is also passed along with this action, the workflow will be started from that specific task, otherwise the workflow will be restarted from the first task.  The task name in retryFromTaskName must be one of the tasks that completed or failed in the previous run. It is not possible to retry a workflow from a task which wasn't run in the previous iteration.\n* `RetryFailed` - Retry the workflow that has failed. A running or waiting workflow or a workflow that completed successfully cannot be retried. Only the tasks that failed in the previous run will be retried and the rest of workflow will be run. This action does not restart the workflow and also does not support retrying from a specific task.\n* `Cancel` - Cancel the workflow that is in running or waiting state."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public WorkflowWorkflowInfo.LastActionEnum LastAction {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"Version of the workflow metadata for which this workflow execution was started."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public long MetaVersion {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when this managed object was last modified."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime ModTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A name of the workflow execution instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        [ValidatePattern("^[^:]{1,92}$")]
        public string Name {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a organizationOrganization resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public OrganizationOrganizationRelationship Organization {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public MoBaseMoRelationship Parent {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a workflowTaskInfo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowTaskInfoRelationship ParentTaskInfo {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Denotes the reason workflow is in paused status.\n* `None` - Pause reason is none, which indicates there is no reason for the pause state.\n* `TaskWithWarning` - Pause reason indicates the workflow is in this state due to a task that has a status as completed with warnings.\n* `SystemMaintenance` - Pause reason indicates the workflow is in this state based on actions of system admin for maintenance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public WorkflowWorkflowInfo.PauseReasonEnum PauseReason {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a workflowPendingDynamicWorkflowInfo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowPendingDynamicWorkflowInfoRelationship PendingDynamicWorkflowInfo {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a iamPermission resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public IamPermissionRelationship Permission {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"This field indicates percentage of workflow task execution."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public float Progress {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"This field is applicable when Retry action is issued for a workflow which is in 'final' state. When this field is not specified, the workflow will be retried from the start i.e., the first task. When this field is specified then the workflow will be retried from the specified task. This field should specify the task name which is the unique name of the task within the workflow. The task name must be one of the tasks that completed or failed in the previous run. It is not possible to retry a workflow from a task which wasn't run in the previous iteration."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string RetryFromTaskName {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Intersight provides pre-built workflows, tasks and policies to end users through global catalogs.\nObjects that are made available through global catalogs are said to have a 'shared' ownership. Shared objects are either made globally available to all end users or restricted to end users based on their license entitlement. Users can use this property to differentiate the scope (global or a specific license tier) to which a shared MO belongs."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string SharedScope {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The source microservice name which is the owner for this workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Src {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The time when the workflow was started for execution."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public DateTime StartTime {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A status of the workflow (RUNNING, WAITING, COMPLETED, TIME_OUT, FAILED)."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Status {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The duration in hours after which the workflow info for successful workflow will be removed from database."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public long SuccessWorkflowCleanupDuration {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The trace id to keep track of workflow execution."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string TraceId {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A type of the workflow (serverconfig, ansible_monitoring)."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string Type {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Property will be set when an user action is required on the workflow. This can be because the workflow is waiting for a wait task to be updated, workflow is paused or workflow launched by a configuration object has failed and needs to be retried in order to complete successfully."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public bool UserActionRequired {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The user identifier which indicates the user that started this workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public string UserId {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"Denotes the reason workflow is in waiting status.\n* `None` - Wait reason is none, which indicates there is no reason for the waiting state.\n* `GatherTasks` - Wait reason is gathering tasks, which indicates the workflow is in this state in order to gather tasks.\n* `Duplicate` - Wait reason is duplicate, which indicates the workflow is a duplicate of current running workflow.\n* `RateLimit` - Wait reason is rate limit, which indicates the workflow is rate limited by account/instance level throttling threshold.\n* `WaitTask` - Wait reason when there are one or more wait tasks in the workflow which are yet to receive a task status update.\n* `PendingRetryFailed` - Wait reason when the workflow is pending a RetryFailed action.\n* `WaitingToStart` - Workflow is waiting to start on workflow engine."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public WorkflowWorkflowInfo.WaitReasonEnum WaitReason {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowWorkflowDefinition resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = true, ParameterSetName = "CmdletParam")]
        
        public WorkflowWorkflowDefinitionRelationship WorkflowDefinition {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The type of workflow meta. Derived from the workflow meta that is used to launch this workflow instance.\n* `SystemDefined` - System defined workflow definition.\n* `UserDefined` - User defined workflow definition.\n* `Dynamic` - Dynamically defined workflow definition."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public WorkflowWorkflowInfo.WorkflowMetaTypeEnum WorkflowMetaType {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Total number of workflow tasks in this workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public long WorkflowTaskCount {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Total number of worker tasks in this workflow. This count doesn't include the control tasks in the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false, ParameterSetName = "CmdletParam")]
        
        public long WorkflowWorkerTaskCount {
            get;
            set;
        }

        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New WorkflowWorkflowInfo.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightWorkflowWorkflowInfo")]
    public class NewIntersightWorkflowWorkflowInfo:NewCmdletBase
	{
		public NewIntersightWorkflowWorkflowInfo()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowWorkflowInfo();
            MethodName = "CreateWorkflowWorkflowInfoWithHttpInfo";
		}
        
        // <summary>
        /// <para type="description">"A reference to a iamAccount resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public IamAccountRelationship Account {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The action of the workflow such as start, cancel, retry, pause.\n* `None` - No action is set, this is the default value for action field.\n* `Create` - Create a new instance of the workflow but it does not start the execution of the workflow. Use the Start action to start execution of the workflow.\n* `Start` - Start a new execution of the workflow.\n* `Pause` - Pause the workflow, this can only be issued on workflows that are in running state.\n* `Resume` - Resume the workflow which was previously paused through pause action on the workflow.\n* `Retry` - Retry the workflow that has previously reached a final state and has the retryable property set to true. A running or waiting workflow cannot be retried. If the property retryFromTaskName is also passed along with this action, the workflow will be started from that specific task, otherwise the workflow will be restarted from the first task.  The task name in retryFromTaskName must be one of the tasks that completed or failed in the previous run. It is not possible to retry a workflow from a task which wasn't run in the previous iteration.\n* `RetryFailed` - Retry the workflow that has failed. A running or waiting workflow or a workflow that completed successfully cannot be retried. Only the tasks that failed in the previous run will be retried and the rest of workflow will be run. This action does not restart the workflow and also does not support retrying from a specific task.\n* `Cancel` - Cancel the workflow that is in running or waiting state."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowInfo.ActionEnum Action {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a moBaseMo resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public MoBaseMoRelationship AssociatedObject {
            get;
            set;
        }
        
        
        
        
        
        
        // <summary>
        /// <para type="description">"The duration in hours after which the workflow info for failed, terminated or timed out workflow will be removed from database."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long FailedWorkflowCleanupDuration {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"All the given inputs for the workflow."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public object Input {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"Denotes if this workflow is internal and should be hidden from user view of running workflows."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool Internal {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowMessage> Message {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Version of the workflow metadata for which this workflow execution was started."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long MetaVersion {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A name of the workflow execution instance."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        [ValidatePattern("^[^:]{1,92}$")]
        public string Name {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a organizationOrganization resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public OrganizationOrganizationRelationship Organization {
            get;
            set;
        }
        
        
        
        
        
        // <summary>
        /// <para type="description">"Denotes the reason workflow is in paused status.\n* `None` - Pause reason is none, which indicates there is no reason for the pause state.\n* `TaskWithWarning` - Pause reason indicates the workflow is in this state due to a task that has a status as completed with warnings.\n* `SystemMaintenance` - Pause reason indicates the workflow is in this state based on actions of system admin for maintenance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowInfo.PauseReasonEnum PauseReason {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a iamPermission resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public IamPermissionRelationship Permission {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"This field is applicable when Retry action is issued for a workflow which is in 'final' state. When this field is not specified, the workflow will be retried from the start i.e., the first task. When this field is specified then the workflow will be retried from the specified task. This field should specify the task name which is the unique name of the task within the workflow. The task name must be one of the tasks that completed or failed in the previous run. It is not possible to retry a workflow from a task which wasn't run in the previous iteration."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string RetryFromTaskName {
            get;
            set;
        }
        
        
        
        
        
        // <summary>
        /// <para type="description">"The duration in hours after which the workflow info for successful workflow will be removed from database."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long SuccessWorkflowCleanupDuration {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
        
        
        
        
        
        
        // <summary>
        /// <para type="description">"Denotes the reason workflow is in waiting status.\n* `None` - Wait reason is none, which indicates there is no reason for the waiting state.\n* `GatherTasks` - Wait reason is gathering tasks, which indicates the workflow is in this state in order to gather tasks.\n* `Duplicate` - Wait reason is duplicate, which indicates the workflow is a duplicate of current running workflow.\n* `RateLimit` - Wait reason is rate limit, which indicates the workflow is rate limited by account/instance level throttling threshold.\n* `WaitTask` - Wait reason when there are one or more wait tasks in the workflow which are yet to receive a task status update.\n* `PendingRetryFailed` - Wait reason when the workflow is pending a RetryFailed action.\n* `WaitingToStart` - Workflow is waiting to start on workflow engine."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowInfo.WaitReasonEnum WaitReason {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The workflow context which contains initiator and target information."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowCtx WorkflowCtx {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a workflowWorkflowDefinition resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowDefinitionRelationship WorkflowDefinition {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The type of workflow meta. Derived from the workflow meta that is used to launch this workflow instance.\n* `SystemDefined` - System defined workflow definition.\n* `UserDefined` - User defined workflow definition.\n* `Dynamic` - Dynamically defined workflow definition."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowWorkflowInfo.WorkflowMetaTypeEnum WorkflowMetaType {
            get;
            set;
        }
        
        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set WorkflowCustomDataTypeDefinition.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightWorkflowCustomDataTypeDefinition")]
    public class SetIntersightWorkflowCustomDataTypeDefinition:SetCmdletBase
	{
		public SetIntersightWorkflowCustomDataTypeDefinition()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowCustomDataTypeDefinition();
            MethodName = "UpdateWorkflowCustomDataTypeDefinitionWithHttpInfo";
		}
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowCatalog resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowCatalogRelationship Catalog {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"When true this data type definition is a collection of type definitions to represent composite data like JSON."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool CompositeType {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A human-friendly description of this custom data type indicating it's domain and usage."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A user friendly short name to identify the custom data type definition. Label can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.), colon (:), space ( ), single quote ('), or an underscore (_) and must be at least 2 characters."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^[a-zA-Z0-9]+[\\sa-zA-Z0-9_'.:-]{1,92}$")]
        public string Label {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"The name of custom data type definition. The valid name can contain lower case and upper case alphabetic characters, digits and special characters '-' and '_'."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^[a-zA-Z0-9_-]{1,64}$")]
        public string Name {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowParameterSet> ParameterSet {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"Type to capture all the properties for the custom data type definition."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowCustomDataTypeProperties Properties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<WorkflowBaseDataType> TypeDefinition {
            get;
            set;
        }
        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove WorkflowCustomDataTypeDefinition.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightWorkflowCustomDataTypeDefinition")]
    public class RemoveIntersightWorkflowCustomDataTypeDefinition:RemoveCmdletBase
	{
		public RemoveIntersightWorkflowCustomDataTypeDefinition()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "DeleteWorkflowCustomDataTypeDefinitionWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set WorkflowErrorResponseHandler.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightWorkflowErrorResponseHandler")]
    public class SetIntersightWorkflowErrorResponseHandler:SetCmdletBase
	{
		public SetIntersightWorkflowErrorResponseHandler()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowErrorResponseHandler();
            MethodName = "UpdateWorkflowErrorResponseHandlerWithHttpInfo";
		}
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A reference to a workflowCatalog resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowCatalogRelationship Catalog {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"A detailed description about the error response handler."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Name for the error response handler."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^[a-zA-Z0-9_.:-]{1,64}$")]
        public string Name {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<ContentParameter> Parameters {
            get;
            set;
        }
        
        
        
        // <summary>
        /// <para type="description">"The platform type for which the error response handler is defined.\n* `` - The device reported an empty or unrecognized platform type.\n* `APIC` - An Application Policy Infrastructure Controller cluster.\n* `DCNM` - A Data Center Network Manager instance. Data Center Network Manager (DCNM) is the network management platform for all NX-OS-enabled deployments, spanning new fabric architectures, IP Fabric for Media, and storage networking deployments for the Cisco Nexus-powered data center.\n* `UCSFI` - A UCS Fabric Interconnect in HA or standalone mode, which is being managed by UCS Manager (UCSM).\n* `UCSFIISM` - A UCS Fabric Interconnect in HA or standalone mode, managed directly by Intersight.\n* `IMC` - A standalone UCS Server Integrated Management Controller.\n* `IMCM4` - A standalone UCS M4 Server.\n* `IMCM5` - A standalone UCS M5 server.\n* `IMCRack` - A standalone UCS M6 and above server.\n* `UCSIOM` - An UCS Chassis IO module.\n* `HX` - A HyperFlex storage controller.\n* `HyperFlexAP` - A HyperFlex Application Platform.\n* `IWE` - An Intersight Workload Engine.\n* `UCSD` - A UCS Director virtual appliance. Cisco UCS Director automates, orchestrates, and manages Cisco and third-party hardware.\n* `IntersightAppliance` - A Cisco Intersight Connected Virtual Appliance.\n* `IntersightAssist` - A Cisco Intersight Assist.\n* `PureStorageFlashArray` - A Pure Storage FlashArray device.\n* `UCSC890` - A standalone Cisco UCSC890 server.\n* `NetAppOntap` - A NetApp ONTAP storage system.\n* `NetAppActiveIqUnifiedManager` - A NetApp Active IQ Unified Manager.\n* `EmcScaleIo` - An EMC ScaleIO storage system.\n* `EmcVmax` - An EMC VMAX storage system.\n* `EmcVplex` - An EMC VPLEX storage system.\n* `EmcXtremIo` - An EMC XtremIO storage system.\n* `VmwareVcenter` - A VMware vCenter device that manages Virtual Machines.\n* `MicrosoftHyperV` - A Microsoft Hyper-V system that manages Virtual Machines.\n* `AppDynamics` - An AppDynamics controller that monitors applications.\n* `Dynatrace` - A software-intelligence monitoring platform that simplifies enterprise cloud complexity and accelerates digital transformation.\n* `ReadHatOpenStack` - An OpenStack target manages Virtual Machines, Physical Machines, Datacenters and Virtual Datacenters using different OpenStack services as administrative endpoints.\n* `CloudFoundry` - An open source cloud platform on which developers can build, deploy, run and scale applications.\n* `MicrosoftAzureApplicationInsights` - A feature of Azure Monitor, is an extensible Application Performance Management service for developers and DevOps professionals to monitor their live applications.\n* `OpenStack` - An OpenStack target manages Virtual Machines, Physical Machines, Datacenters and Virtual Datacenters using different OpenStack services as administrative endpoints.\n* `MicrosoftSqlServer` - A Microsoft SQL database server.\n* `Kubernetes` - A Kubernetes cluster that runs containerized applications.\n* `AmazonWebService` - A Amazon web service target that discovers and monitors different services like EC2. It discovers entities like VMs, Volumes, regions etc. and monitors attributes like Mem, CPU, cost.\n* `AmazonWebServiceBilling` - A Amazon web service billing target to retrieve billing information stored in S3 bucket.\n* `MicrosoftAzureServicePrincipal` - A Microsoft Azure Service Principal target that discovers all the associated Azure subscriptions.\n* `MicrosoftAzureEnterpriseAgreement` - A Microsoft Azure Enterprise Agreement target that discovers cost, billing and RIs.\n* `DellCompellent` - A Dell Compellent storage system.\n* `HPE3Par` - A HPE 3PAR storage system.\n* `RedHatEnterpriseVirtualization` - A Red Hat Enterprise Virtualization Hypervisor system that manages Virtual Machines.\n* `NutanixAcropolis` - A Nutanix Acropolis system that combines servers and storage into a distributed infrastructure platform.\n* `HPEOneView` - A HPE Oneview management system that manages compute, storage, and networking.\n* `ServiceEngine` - Cisco Application Services Engine. Cisco Application Services Engine is a platform to deploy and manage applications.\n* `HitachiVirtualStoragePlatform` - A Hitachi Virtual Storage Platform also referred to as Hitachi VSP. It includes various storage systems designed for data centers.\n* `IMCBlade` - An Intersight managed UCS Blade Server.\n* `TerraformCloud` - A Terraform Cloud account.\n* `TerraformAgent` - A Terraform Cloud Agent that Intersight will deploy in datacenter. The agent will execute Terraform plan for Terraform Cloud workspace configured to use the agent.\n* `CustomTarget` - An external endpoint added as Target that can be accessed through its HTTP API interface in Intersight Orchestrator automation workflow.Standard HTTP authentication scheme supported: Basic.\n* `AnsibleEndpoint` - An external endpoint added as Target that can be accessed through Ansible in Intersight Cloud Orchestrator automation workflow. \n* `HTTPEndpoint` - An external endpoint added as Target that can be accessed through its HTTP API interface in Intersight Orchestrator automation workflow.Standard HTTP authentication scheme supported: Basic, Bearer Token.\n* `SSHEndpoint` - An external endpoint added as Target that can be accessed through SSH in Intersight Cloud Orchestrator automation workflow.\n* `CiscoCatalyst` - A Cisco Catalyst networking switch device."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowErrorResponseHandler.PlatformTypeEnum PlatformType {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<ContentComplexType> Types {
            get;
            set;
        }
        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove WorkflowErrorResponseHandler.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightWorkflowErrorResponseHandler")]
    public class RemoveIntersightWorkflowErrorResponseHandler:RemoveCmdletBase
	{
		public RemoveIntersightWorkflowErrorResponseHandler()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            MethodName = "DeleteWorkflowErrorResponseHandlerWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New WorkflowTemplateEvaluation.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightWorkflowTemplateEvaluation")]
    public class NewIntersightWorkflowTemplateEvaluation:NewCmdletBase
	{
		public NewIntersightWorkflowTemplateEvaluation()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowTemplateEvaluation();
            MethodName = "CreateWorkflowTemplateEvaluationWithHttpInfo";
		}
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        
        
        // <summary>
        /// <para type="description">"Expected output type of the template. Required to type cast the output."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowBaseDataType ExpectedOutputDataType {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        
        
        
        
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<TemplateTransformationStage> Stages {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"Values to be fed to the template for execution."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public object Values {
            get;
            set;
        }
        
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set WorkflowTaskInfo.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightWorkflowTaskInfo")]
    public class SetIntersightWorkflowTaskInfo:SetCmdletBase
	{
		public SetIntersightWorkflowTaskInfo()
		{
			ApiInstance = new Intersight.Api.WorkflowApi(Config);
            ModelObject = new WorkflowTaskInfo();
            MethodName = "UpdateWorkflowTaskInfoWithHttpInfo";
		}
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        
        
        
        
        
        
        
        
        
        
        
        
        // <summary>
        /// <para type="description">"The status of the task and this will specify if the task is running or has reached a final state."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Status {
            get;
            set;
        }
        
        
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        
        // <summary>
        /// <para type="description">"A reference to a workflowTaskDefinition resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public WorkflowTaskDefinitionRelationship TaskDefinition {
            get;
            set;
        }
        
        
        
    }
}