using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;
using Intersight.Api;
using Intersight.Model;

namespace Intersight.PowerShell
{
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get PortMacBinding.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightPortMacBinding", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightPortMacBinding:GetCmdletBase
	{
		public GetIntersightPortMacBinding()
		{
			ApiInstance = new PortApi(Config);
            MethodName = "GetPortMacBindingListWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get PortGroup.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightPortGroup", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightPortGroup:GetCmdletBase
	{
		public GetIntersightPortGroup()
		{
			ApiInstance = new PortApi(Config);
            MethodName = "GetPortGroupListWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get PortSubGroup.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightPortSubGroup", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightPortSubGroup:GetCmdletBase
	{
		public GetIntersightPortSubGroup()
		{
			ApiInstance = new PortApi(Config);
            MethodName = "GetPortSubGroupListWithHttpInfo";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set PortMacBinding.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightPortMacBinding")]
    public class SetIntersightPortMacBinding:SetCmdletBase
	{
		public SetIntersightPortMacBinding()
		{
			ApiInstance = new PortApi(Config);
            ModelObject = new PortMacBinding();
            MethodName = "UpdatePortMacBindingWithHttpInfo";
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
        /// <para type="description">"Aggregate Port ID of the local Switch Interface."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long AggregatePortId {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Chassis/FEX device idetifier that is local to a cluster."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long ChassisId {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Chassis/Rack Model that is associated with the Switch/FEX interface."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ChassisModel {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Chassis/Rack Serial that is associated with the Switch/FEX interface."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ChassisSerial {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Chassis/Rack Vendor that is associated with the Switch/FEX interface."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ChassisVendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Device ID value that is advertised and available as a part of LLDP TLV."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string DeviceMac {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"IOM/SIOC/Adapter Mode that is associated with the Switch/FEX interface."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long ModuleMode {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"IOM/SIOC/Adapter Model that is associated with the Switch/FEX interface."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ModuleModel {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Uplink port identifier of the VIC that is associated with the Switch/FEX interface."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long ModulePortId {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"IOM/SIOC/Adapter Serial that is associated with the Switch/FEX interface."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ModuleSerial {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"IOM/SIOC/Adapter Side that is associated with the Switch/FEX interface."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long ModuleSide {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"IOM/SIOC/Adapter Slot that is associated with the Switch/FEX interface."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long ModuleSlot {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"IOM/SIOC/Adapter Vendor that is associated with the Switch/FEX interface."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ModuleVendor {
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
        /// <para type="description">"A reference to a networkElement resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public NetworkElementRelationship NetworkElement {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Port ID of the local Switch Interface."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long PortId {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Port ID value that is advertised and available as a part of LLDP TLV."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string PortMac {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Slot ID of the local Switch slot Interface."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long SlotId {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Switch Identifier that is local to a cluster."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long SwitchId {
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
    /// <para type="synopsis">This is the cmdlet to Set PortGroup.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightPortGroup")]
    public class SetIntersightPortGroup:SetCmdletBase
	{
		public SetIntersightPortGroup()
		{
			ApiInstance = new PortApi(Config);
            ModelObject = new PortGroup();
            MethodName = "PatchPortGroupWithHttpInfo";
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
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set PortSubGroup.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightPortSubGroup")]
    public class SetIntersightPortSubGroup:SetCmdletBase
	{
		public SetIntersightPortSubGroup()
		{
			ApiInstance = new PortApi(Config);
            ModelObject = new PortSubGroup();
            MethodName = "UpdatePortSubGroupWithHttpInfo";
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
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
    }
}