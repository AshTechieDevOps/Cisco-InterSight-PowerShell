using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;
using Intersight.Api;
using Intersight.Model;

namespace Intersight.PowerShell
{
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get TamSecurityAdvisory.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightTamSecurityAdvisory", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightTamSecurityAdvisory:GetCmdletBase
	{
		public GetIntersightTamSecurityAdvisory()
		{
			ApiInstance = new TamApi(Config);
            MethodName = "GetTamSecurityAdvisoryListWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New TamSecurityAdvisory.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightTamSecurityAdvisory")]
    public class NewIntersightTamSecurityAdvisory:NewCmdletBase
	{
		public NewIntersightTamSecurityAdvisory()
		{
			ApiInstance = new TamApi(Config);
            ModelObject = new TamSecurityAdvisory();
            MethodName = "CreateTamSecurityAdvisoryWithHttpInfo";
		}
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<TamAction> Actions {
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
        /// <para type="description">"Cisco generated identifier for the published security advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string AdvisoryId {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<TamApiDataSource> ApiDataSources {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"CVSS version 3 base score for the security Advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float BaseScore {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<string> CveIds {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Date when the security advisory was first published by Cisco."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public DateTime DatePublished {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Date when the security advisory was last updated by Cisco."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public DateTime DateUpdated {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Brief description of the advisory details."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"CVSS version 3 environmental score for the security Advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float EnvironmentalScore {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"A link to an external URL describing security Advisory in more details."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^$|^(?:http(s)?:\\/\\/)?[\\w.-]+(?:\\.[\\w\\.-]+)+[\\w\\-\\._~:/?#[\\]@!\\$&'\\(\\)\\*\\+,;=.]+$")]
        public string ExternalUrl {
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
        /// <para type="description">"A user defined name for the Intersight Advisory."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        
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
        /// <para type="description">"Recommended action to resolve the security advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Recommendation {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Severity level of the Intersight Advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamSeverity Severity {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Current state of the advisory.\n* `ready` - Advisory has been evaluated. The affected devices would be analyzed and corresponding advisory instances would be created.\n* `evaluating` - Advisory is currently under evaluation. The affected devices would be analyzed but no advisory instances wouldbe created. The results of the analysis would be made available to Intersight engineering for evaluation and validation."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamSecurityAdvisory.StateEnum State {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Cisco assigned status of the published advisory based on whether the investigation is complete or on-going.\n* `interim` - The Cisco investigation for the advisory is ongoing. Cisco will issue revisions to the advisory when additional information, including fixed software release data, becomes available.\n* `final` - Cisco has completed its evaluation of the vulnerability described in the advisory. There will be no further updates unless there is a material change in the nature of the vulnerability."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamSecurityAdvisory.StatusEnum Status {
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
        /// <para type="description">"CVSS version 3 temporal score for the security Advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float TemporalScore {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Cisco assigned advisory version after latest revision."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Workarounds available for the advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Workaround {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set TamAdvisoryInstance.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightTamAdvisoryInstance")]
    public class SetIntersightTamAdvisoryInstance:SetCmdletBase
	{
		public SetIntersightTamAdvisoryInstance()
		{
			ApiInstance = new TamApi(Config);
            ModelObject = new TamAdvisoryInstance();
            MethodName = "UpdateTamAdvisoryInstanceWithHttpInfo";
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
        /// <para type="description">"A reference to a tamBaseAdvisory resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamBaseAdvisoryRelationship Advisory {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Moid of the Intersight MO affected by the alert. Deprecated now and will be removed in subsequent releases."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string AffectedObjectMoid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Object type of the Intersight MO affected by the alert. Deprecated now and will be removed in subsequent releases."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string AffectedObjectType {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"A reference to a assetDeviceRegistration resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public AssetDeviceRegistrationRelationship DeviceRegistration {
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
        /// <para type="description">"Current state of the advisory instance (Active/Cleared/Unknown etc.).\n* `unknown` - Intersight is unable to determine if the Advisory instance is applicable for the affected managed object.\n* `active` - Advisory instance is currently active and applicable for the affected managed object.\n* `cleared` - Advisory instance is no longer applicable for the affected managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamAdvisoryInstance.StateEnum State {
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
    /// <para type="synopsis">This is the cmdlet to Remove TamAdvisoryInstance.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightTamAdvisoryInstance")]
    public class RemoveIntersightTamAdvisoryInstance:RemoveCmdletBase
	{
		public RemoveIntersightTamAdvisoryInstance()
		{
			ApiInstance = new TamApi(Config);
            MethodName = "DeleteTamAdvisoryInstanceWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set TamAdvisoryCount.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightTamAdvisoryCount")]
    public class SetIntersightTamAdvisoryCount:SetCmdletBase
	{
		public SetIntersightTamAdvisoryCount()
		{
			ApiInstance = new TamApi(Config);
            ModelObject = new TamAdvisoryCount();
            MethodName = "UpdateTamAdvisoryCountWithHttpInfo";
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
        /// <para type="description">"Total number of advisories affecting the account."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long AdvisoryCount {
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
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove TamAdvisoryCount.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightTamAdvisoryCount")]
    public class RemoveIntersightTamAdvisoryCount:RemoveCmdletBase
	{
		public RemoveIntersightTamAdvisoryCount()
		{
			ApiInstance = new TamApi(Config);
            MethodName = "DeleteTamAdvisoryCountWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set TamAdvisoryDefinition.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightTamAdvisoryDefinition")]
    public class SetIntersightTamAdvisoryDefinition:SetCmdletBase
	{
		public SetIntersightTamAdvisoryDefinition()
		{
			ApiInstance = new TamApi(Config);
            ModelObject = new TamAdvisoryDefinition();
            MethodName = "PatchTamAdvisoryDefinitionWithHttpInfo";
		}
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<TamAction> Actions {
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
        /// <para type="description">"Additional details for the advisory definition. For e.g. if the definition corresponds to a security advisory, the details\nregarding CVE ids and CVSS score would be available here."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamBaseAdvisoryDetails AdvisoryDetails {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Cisco generated identifier for the published security advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string AdvisoryId {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<TamApiDataSource> ApiDataSources {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Date when the security advisory was first published by Cisco."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public DateTime DatePublished {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Date when the security advisory was last updated by Cisco."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public DateTime DateUpdated {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Brief description of the advisory details."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"A link to an external URL describing security Advisory in more details."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^$|^(?:http(s)?:\\/\\/)?[\\w.-]+(?:\\.[\\w\\.-]+)+[\\w\\-\\._~:/?#[\\]@!\\$&'\\(\\)\\*\\+,;=.]+$")]
        public string ExternalUrl {
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
        /// <para type="description">"A user defined name for the Intersight Advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
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
        /// <para type="description">"Recommended action to resolve the security advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Recommendation {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<TamS3DataSource> S3DataSources {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Severity level of the Intersight Advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamSeverity Severity {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Current state of the advisory.\n* `ready` - Advisory has been evaluated. The affected devices would be analyzed and corresponding advisory instances would be created.\n* `evaluating` - Advisory is currently under evaluation. The affected devices would be analyzed but no advisory instances wouldbe created. The results of the analysis would be made available to Intersight engineering for evaluation and validation."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamAdvisoryDefinition.StateEnum State {
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
        /// <para type="description">"The type (field notice, security advisory etc.) of Intersight advisory.\n* `securityAdvisory` - Respresents the psirt alert type (https://tools.cisco.com/security/center/publicationListing.x).\n* `fieldNotice` - Respresents the field notice alert type (https://www.cisco.com/c/en/us/support/web/tsd-products-field-notice-summary.html)."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamAdvisoryDefinition.TypeEnum Type {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Cisco assigned advisory version after latest revision."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Workarounds available for the advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Workaround {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove TamAdvisoryDefinition.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightTamAdvisoryDefinition")]
    public class RemoveIntersightTamAdvisoryDefinition:RemoveCmdletBase
	{
		public RemoveIntersightTamAdvisoryDefinition()
		{
			ApiInstance = new TamApi(Config);
            MethodName = "DeleteTamAdvisoryDefinitionWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New TamAdvisoryInfo.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightTamAdvisoryInfo")]
    public class NewIntersightTamAdvisoryInfo:NewCmdletBase
	{
		public NewIntersightTamAdvisoryInfo()
		{
			ApiInstance = new TamApi(Config);
            ModelObject = new TamAdvisoryInfo();
            MethodName = "CreateTamAdvisoryInfoWithHttpInfo";
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
        /// <para type="description">"A reference to a tamBaseAdvisory resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamBaseAdvisoryRelationship Advisory {
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
        /// <para type="description">"Current state of the advisory for the owner. Indicates if the user is interested in getting updates for the advisory.\n* `active` - Advisory is currently active and the user wants to receive updates for this advisory.\n* `acknowledged` - Advisory is seen and acknowledged by the user and she no longer wants to recieve updates."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamAdvisoryInfo.StateEnum State {
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
    /// <para type="synopsis">This is the cmdlet to Get TamAdvisoryInfo.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightTamAdvisoryInfo", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightTamAdvisoryInfo:GetCmdletBase
	{
		public GetIntersightTamAdvisoryInfo()
		{
			ApiInstance = new TamApi(Config);
            MethodName = "GetTamAdvisoryInfoListWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set TamSecurityAdvisory.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightTamSecurityAdvisory")]
    public class SetIntersightTamSecurityAdvisory:SetCmdletBase
	{
		public SetIntersightTamSecurityAdvisory()
		{
			ApiInstance = new TamApi(Config);
            ModelObject = new TamSecurityAdvisory();
            MethodName = "PatchTamSecurityAdvisoryWithHttpInfo";
		}
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<TamAction> Actions {
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
        /// <para type="description">"Cisco generated identifier for the published security advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string AdvisoryId {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<TamApiDataSource> ApiDataSources {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"CVSS version 3 base score for the security Advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float BaseScore {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<string> CveIds {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Date when the security advisory was first published by Cisco."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public DateTime DatePublished {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Date when the security advisory was last updated by Cisco."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public DateTime DateUpdated {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Brief description of the advisory details."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"CVSS version 3 environmental score for the security Advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float EnvironmentalScore {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"A link to an external URL describing security Advisory in more details."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^$|^(?:http(s)?:\\/\\/)?[\\w.-]+(?:\\.[\\w\\.-]+)+[\\w\\-\\._~:/?#[\\]@!\\$&'\\(\\)\\*\\+,;=.]+$")]
        public string ExternalUrl {
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
        /// <para type="description">"A user defined name for the Intersight Advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
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
        /// <para type="description">"Recommended action to resolve the security advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Recommendation {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Severity level of the Intersight Advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamSeverity Severity {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Current state of the advisory.\n* `ready` - Advisory has been evaluated. The affected devices would be analyzed and corresponding advisory instances would be created.\n* `evaluating` - Advisory is currently under evaluation. The affected devices would be analyzed but no advisory instances wouldbe created. The results of the analysis would be made available to Intersight engineering for evaluation and validation."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamSecurityAdvisory.StateEnum State {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Cisco assigned status of the published advisory based on whether the investigation is complete or on-going.\n* `interim` - The Cisco investigation for the advisory is ongoing. Cisco will issue revisions to the advisory when additional information, including fixed software release data, becomes available.\n* `final` - Cisco has completed its evaluation of the vulnerability described in the advisory. There will be no further updates unless there is a material change in the nature of the vulnerability."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamSecurityAdvisory.StatusEnum Status {
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
        /// <para type="description">"CVSS version 3 temporal score for the security Advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float TemporalScore {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Cisco assigned advisory version after latest revision."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Workarounds available for the advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Workaround {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove TamSecurityAdvisory.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightTamSecurityAdvisory")]
    public class RemoveIntersightTamSecurityAdvisory:RemoveCmdletBase
	{
		public RemoveIntersightTamSecurityAdvisory()
		{
			ApiInstance = new TamApi(Config);
            MethodName = "DeleteTamSecurityAdvisoryWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get TamAdvisoryCount.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightTamAdvisoryCount", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightTamAdvisoryCount:GetCmdletBase
	{
		public GetIntersightTamAdvisoryCount()
		{
			ApiInstance = new TamApi(Config);
            MethodName = "GetTamAdvisoryCountListWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New TamAdvisoryCount.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightTamAdvisoryCount")]
    public class NewIntersightTamAdvisoryCount:NewCmdletBase
	{
		public NewIntersightTamAdvisoryCount()
		{
			ApiInstance = new TamApi(Config);
            ModelObject = new TamAdvisoryCount();
            MethodName = "CreateTamAdvisoryCountWithHttpInfo";
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
        /// <para type="description">"Total number of advisories affecting the account."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long AdvisoryCount {
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
        
        public List<MoTag> Tags {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get TamAdvisoryDefinition.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightTamAdvisoryDefinition", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightTamAdvisoryDefinition:GetCmdletBase
	{
		public GetIntersightTamAdvisoryDefinition()
		{
			ApiInstance = new TamApi(Config);
            MethodName = "GetTamAdvisoryDefinitionListWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New TamAdvisoryDefinition.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightTamAdvisoryDefinition")]
    public class NewIntersightTamAdvisoryDefinition:NewCmdletBase
	{
		public NewIntersightTamAdvisoryDefinition()
		{
			ApiInstance = new TamApi(Config);
            ModelObject = new TamAdvisoryDefinition();
            MethodName = "CreateTamAdvisoryDefinitionWithHttpInfo";
		}
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<TamAction> Actions {
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
        /// <para type="description">"Additional details for the advisory definition. For e.g. if the definition corresponds to a security advisory, the details\nregarding CVE ids and CVSS score would be available here."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamBaseAdvisoryDetails AdvisoryDetails {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Cisco generated identifier for the published security advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string AdvisoryId {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<TamApiDataSource> ApiDataSources {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Date when the security advisory was first published by Cisco."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public DateTime DatePublished {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Date when the security advisory was last updated by Cisco."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public DateTime DateUpdated {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Brief description of the advisory details."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"A link to an external URL describing security Advisory in more details."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^$|^(?:http(s)?:\\/\\/)?[\\w.-]+(?:\\.[\\w\\.-]+)+[\\w\\-\\._~:/?#[\\]@!\\$&'\\(\\)\\*\\+,;=.]+$")]
        public string ExternalUrl {
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
        /// <para type="description">"A user defined name for the Intersight Advisory."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        
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
        /// <para type="description">"Recommended action to resolve the security advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Recommendation {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<TamS3DataSource> S3DataSources {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Severity level of the Intersight Advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamSeverity Severity {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Current state of the advisory.\n* `ready` - Advisory has been evaluated. The affected devices would be analyzed and corresponding advisory instances would be created.\n* `evaluating` - Advisory is currently under evaluation. The affected devices would be analyzed but no advisory instances wouldbe created. The results of the analysis would be made available to Intersight engineering for evaluation and validation."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamAdvisoryDefinition.StateEnum State {
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
        /// <para type="description">"The type (field notice, security advisory etc.) of Intersight advisory.\n* `securityAdvisory` - Respresents the psirt alert type (https://tools.cisco.com/security/center/publicationListing.x).\n* `fieldNotice` - Respresents the field notice alert type (https://www.cisco.com/c/en/us/support/web/tsd-products-field-notice-summary.html)."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamAdvisoryDefinition.TypeEnum Type {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Cisco assigned advisory version after latest revision."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Workarounds available for the advisory."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Workaround {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set TamAdvisoryInfo.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightTamAdvisoryInfo")]
    public class SetIntersightTamAdvisoryInfo:SetCmdletBase
	{
		public SetIntersightTamAdvisoryInfo()
		{
			ApiInstance = new TamApi(Config);
            ModelObject = new TamAdvisoryInfo();
            MethodName = "UpdateTamAdvisoryInfoWithHttpInfo";
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
        /// <para type="description">"A reference to a tamBaseAdvisory resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamBaseAdvisoryRelationship Advisory {
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
        /// <para type="description">"Current state of the advisory for the owner. Indicates if the user is interested in getting updates for the advisory.\n* `active` - Advisory is currently active and the user wants to receive updates for this advisory.\n* `acknowledged` - Advisory is seen and acknowledged by the user and she no longer wants to recieve updates."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamAdvisoryInfo.StateEnum State {
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
    /// <para type="synopsis">This is the cmdlet to Remove TamAdvisoryInfo.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightTamAdvisoryInfo")]
    public class RemoveIntersightTamAdvisoryInfo:RemoveCmdletBase
	{
		public RemoveIntersightTamAdvisoryInfo()
		{
			ApiInstance = new TamApi(Config);
            MethodName = "DeleteTamAdvisoryInfoWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get TamAdvisoryInstance.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightTamAdvisoryInstance", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightTamAdvisoryInstance:GetCmdletBase
	{
		public GetIntersightTamAdvisoryInstance()
		{
			ApiInstance = new TamApi(Config);
            MethodName = "GetTamAdvisoryInstanceListWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New TamAdvisoryInstance.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightTamAdvisoryInstance")]
    public class NewIntersightTamAdvisoryInstance:NewCmdletBase
	{
		public NewIntersightTamAdvisoryInstance()
		{
			ApiInstance = new TamApi(Config);
            ModelObject = new TamAdvisoryInstance();
            MethodName = "CreateTamAdvisoryInstanceWithHttpInfo";
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
        /// <para type="description">"A reference to a tamBaseAdvisory resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamBaseAdvisoryRelationship Advisory {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Moid of the Intersight MO affected by the alert. Deprecated now and will be removed in subsequent releases."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string AffectedObjectMoid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Object type of the Intersight MO affected by the alert. Deprecated now and will be removed in subsequent releases."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string AffectedObjectType {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"A reference to a assetDeviceRegistration resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public AssetDeviceRegistrationRelationship DeviceRegistration {
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
        /// <para type="description">"Current state of the advisory instance (Active/Cleared/Unknown etc.).\n* `unknown` - Intersight is unable to determine if the Advisory instance is applicable for the affected managed object.\n* `active` - Advisory instance is currently active and applicable for the affected managed object.\n* `cleared` - Advisory instance is no longer applicable for the affected managed object."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public TamAdvisoryInstance.StateEnum State {
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
}