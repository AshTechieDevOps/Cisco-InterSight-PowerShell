using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;
using Intersight.Api;
using Intersight.Model;

namespace Intersight.PowerShell
{
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set ThermalPolicy.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightThermalPolicy")]
    public class SetIntersightThermalPolicy:SetCmdletBase
	{
		public SetIntersightThermalPolicy()
		{
			ApiInstance = new ThermalApi(Config);
            ModelObject = new ThermalPolicy();
            MethodName = "UpdateThermalPolicyWithHttpInfo";
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
        /// <para type="description">"Description of the policy."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^$|^[a-zA-Z0-9]+[\\x00-\\xFF]*$")]
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Sets the Fan Control Mode of the System. High Power, Maximum Power and Acoustic modes are only supported for Cisco UCS X series Chassis.\n* `Balanced` - The fans run faster when needed based on the heat generated by the server. When possible, the fans returns to the minimum required speed.\n* `LowPower` - The Fans run at the minimum speed required to keep the server cool.\n* `HighPower` - The fans are kept at higher speed to emphasizes performance over power consumption. This Mode is only supported for UCS X series Chassis.\n* `MaximumPower` - The fans are always kept at maximum speed. This option provides the most cooling and consumes the most power. This Mode is only supported for UCS X series Chassis.\n* `Acoustic` - The fan speed is reduced to reduce noise levels in acoustic-sensitive environments. This Mode is only supported for UCS X series Chassis."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public ThermalPolicy.FanControlModeEnum FanControlMode {
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
        /// <para type="description">"Name of the concrete policy."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^[a-zA-Z0-9_.:-]{1,64}$")]
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
        /// <para type="description">"An array of relationships to policyAbstractConfigProfile resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<PolicyAbstractConfigProfileRelationship> Profiles {
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
    /// <para type="synopsis">This is the cmdlet to Remove ThermalPolicy.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightThermalPolicy")]
    public class RemoveIntersightThermalPolicy:RemoveCmdletBase
	{
		public RemoveIntersightThermalPolicy()
		{
			ApiInstance = new ThermalApi(Config);
            MethodName = "DeleteThermalPolicyWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get ThermalPolicy.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightThermalPolicy", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightThermalPolicy:GetCmdletBase
	{
		public GetIntersightThermalPolicy()
		{
			ApiInstance = new ThermalApi(Config);
            MethodName = "GetThermalPolicyListWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New ThermalPolicy.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightThermalPolicy")]
    public class NewIntersightThermalPolicy:NewCmdletBase
	{
		public NewIntersightThermalPolicy()
		{
			ApiInstance = new ThermalApi(Config);
            ModelObject = new ThermalPolicy();
            MethodName = "CreateThermalPolicyWithHttpInfo";
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
        /// <para type="description">"Description of the policy."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        [ValidatePattern("^$|^[a-zA-Z0-9]+[\\x00-\\xFF]*$")]
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Sets the Fan Control Mode of the System. High Power, Maximum Power and Acoustic modes are only supported for Cisco UCS X series Chassis.\n* `Balanced` - The fans run faster when needed based on the heat generated by the server. When possible, the fans returns to the minimum required speed.\n* `LowPower` - The Fans run at the minimum speed required to keep the server cool.\n* `HighPower` - The fans are kept at higher speed to emphasizes performance over power consumption. This Mode is only supported for UCS X series Chassis.\n* `MaximumPower` - The fans are always kept at maximum speed. This option provides the most cooling and consumes the most power. This Mode is only supported for UCS X series Chassis.\n* `Acoustic` - The fan speed is reduced to reduce noise levels in acoustic-sensitive environments. This Mode is only supported for UCS X series Chassis."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public ThermalPolicy.FanControlModeEnum FanControlMode {
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
        /// <para type="description">"Name of the concrete policy."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        [ValidatePattern("^[a-zA-Z0-9_.:-]{1,64}$")]
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
        /// <para type="description">"An array of relationships to policyAbstractConfigProfile resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<PolicyAbstractConfigProfileRelationship> Profiles {
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