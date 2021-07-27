using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;
using Intersight.Api;
using Intersight.Model;

namespace Intersight.PowerShell
{
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilityIoCardDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilityIoCardDescriptor", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilityIoCardDescriptor:GetCmdletBase
	{
		public GetIntersightCapabilityIoCardDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilityIoCardDescriptorList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilityIoCardDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilityIoCardDescriptor")]
    public class NewIntersightCapabilityIoCardDescriptor:NewCmdletBase
	{
		public NewIntersightCapabilityIoCardDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityIoCardDescriptor();
            MethodName = "CreateCapabilityIoCardDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Number of hif ports per blade for the iocard module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long NumHifPorts {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Revision for the iocard module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Revision {
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
        /// <para type="description">"Connectivity information between UIF Uplink ports and IOM ports.\n* `inline` - UIF uplink ports and IOM ports are connected inline.\n* `cross-connected` - UIF uplink ports and IOM ports are cross-connected, a case in washington chassis."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public CapabilityIoCardDescriptor.UifConnectivityEnum UifConnectivity {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilityServerSchemaDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilityServerSchemaDescriptor")]
    public class SetIntersightCapabilityServerSchemaDescriptor:SetCmdletBase
	{
		public SetIntersightCapabilityServerSchemaDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityServerSchemaDescriptor();
            MethodName = "PatchCapabilityServerSchemaDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Redfish property name for the server."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string LocatorLedName {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Redfish version information for the server."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string RedfishSchema {
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
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilityServerSchemaDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilityServerSchemaDescriptor")]
    public class RemoveIntersightCapabilityServerSchemaDescriptor:RemoveCmdletBase
	{
		public RemoveIntersightCapabilityServerSchemaDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilityServerSchemaDescriptor";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilitySwitchManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilitySwitchManufacturingDef")]
    public class SetIntersightCapabilitySwitchManufacturingDef:SetCmdletBase
	{
		public SetIntersightCapabilitySwitchManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilitySwitchManufacturingDef();
            MethodName = "UpdateCapabilitySwitchManufacturingDef";
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
        /// <para type="description">"Caption for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Caption {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Description for Switch/Fabric-Interconnect."</para>
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Part Number for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string PartNumber {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a Switch/Fabric-Interconnect.\n* `UCS-FI-6454` - The standard 4th generation UCS Fabric Interconnect with 54 ports.\n* `UCS-FI-64108` - The expanded 4th generation UCS Fabric Interconnect with 108 ports.\n* `unknown` - Unknown device type, usage is TBD."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public CapabilitySwitchManufacturingDef.PidEnum Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Name for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ProductName {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
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
        /// <para type="description">"VID information for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilitySwitchManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilitySwitchManufacturingDef")]
    public class RemoveIntersightCapabilitySwitchManufacturingDef:RemoveCmdletBase
	{
		public RemoveIntersightCapabilitySwitchManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilitySwitchManufacturingDef";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilityIoCardCapabilityDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilityIoCardCapabilityDef")]
    public class SetIntersightCapabilityIoCardCapabilityDef:SetCmdletBase
	{
		public SetIntersightCapabilityIoCardCapabilityDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityIoCardCapabilityDef();
            MethodName = "PatchCapabilityIoCardCapabilityDef";
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
        /// <para type="description">"Device connector support on Iocard."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool DcSupported {
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Name {
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
    /// <para type="synopsis">This is the cmdlet to Remove CapabilityIoCardCapabilityDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilityIoCardCapabilityDef")]
    public class RemoveIntersightCapabilityIoCardCapabilityDef:RemoveCmdletBase
	{
		public RemoveIntersightCapabilityIoCardCapabilityDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilityIoCardCapabilityDef";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilitySwitchCapability.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilitySwitchCapability", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilitySwitchCapability:GetCmdletBase
	{
		public GetIntersightCapabilitySwitchCapability()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilitySwitchCapabilityList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilitySwitchCapability.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilitySwitchCapability")]
    public class NewIntersightCapabilitySwitchCapability:NewCmdletBase
	{
		public NewIntersightCapabilitySwitchCapability()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilitySwitchCapability();
            MethodName = "CreateCapabilitySwitchCapability";
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
        /// <para type="description">"Default Fcoe VLAN associated with this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long DefaultFcoeVlan {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Dynamic VIFs support on this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool DynamicVifsSupported {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Fan Modules support on this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool FanModulesSupported {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> FcEndHostModeReservedVsans {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Fc Uplink ports auto negotiation speed support on this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool FcUplinkPortsAutoNegotiationSupported {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Locator Beacon LED support on this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool LocatorBeaconSupported {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Maximum allowed physical ports on this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long MaxPorts {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Maximum allowed physical slots on this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long MaxSlots {
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"List of network limitations for this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public CapabilitySwitchNetworkLimits NetworkLimits {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a Switch/Fabric-Interconnect.\n* `UCS-FI-6454` - The standard 4th generation UCS Fabric Interconnect with 54 ports.\n* `UCS-FI-64108` - The expanded 4th generation UCS Fabric Interconnect with 108 ports.\n* `unknown` - Unknown device type, usage is TBD."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public CapabilitySwitchCapability.PidEnum Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> PortsSupporting100gSpeed {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> PortsSupporting10gSpeed {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> PortsSupporting1gSpeed {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> PortsSupporting25gSpeed {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> PortsSupporting40gSpeed {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> PortsSupportingBreakout {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> PortsSupportingFcoe {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> PortsSupportingServerRole {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> ReservedVsans {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Sereno Adaptor with Netflow support on this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool SerenoNetflowSupported {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"List of storage limitations for this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public CapabilitySwitchStorageLimits StorageLimits {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilitySwitchingModeCapability> SwitchingModeCapabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"List of system limitations for this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public CapabilitySwitchSystemLimits SystemLimits {
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
        
        public List<CapabilityPortRange> UnifiedPorts {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The Slider rule for Unified ports on this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string UnifiedRule {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"VID information for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilitySwitchDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilitySwitchDescriptor")]
    public class SetIntersightCapabilitySwitchDescriptor:SetCmdletBase
	{
		public SetIntersightCapabilitySwitchDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilitySwitchDescriptor();
            MethodName = "UpdateCapabilitySwitchDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The total expected memory for this hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long ExpectedMemory {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Revision for the fabric interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Revision {
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
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilitySwitchDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilitySwitchDescriptor")]
    public class RemoveIntersightCapabilitySwitchDescriptor:RemoveCmdletBase
	{
		public RemoveIntersightCapabilitySwitchDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilitySwitchDescriptor";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilityPsuManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilityPsuManufacturingDef", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilityPsuManufacturingDef:GetCmdletBase
	{
		public GetIntersightCapabilityPsuManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilityPsuManufacturingDefList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilityPsuManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilityPsuManufacturingDef")]
    public class NewIntersightCapabilityPsuManufacturingDef:NewCmdletBase
	{
		public NewIntersightCapabilityPsuManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityPsuManufacturingDef();
            MethodName = "CreateCapabilityPsuManufacturingDef";
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
        /// <para type="description">"Caption for a power supply unit."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Caption {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Description for a power supply unit."</para>
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a power supply unit."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Name for Power Supplu Unit."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ProductName {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for a power supply unit."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
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
        /// <para type="description">"VID information for a power supply unit."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilityPortGroupAggregationDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilityPortGroupAggregationDef", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilityPortGroupAggregationDef:GetCmdletBase
	{
		public GetIntersightCapabilityPortGroupAggregationDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilityPortGroupAggregationDefList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilityPortGroupAggregationDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilityPortGroupAggregationDef")]
    public class NewIntersightCapabilityPortGroupAggregationDef:NewCmdletBase
	{
		public NewIntersightCapabilityPortGroupAggregationDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityPortGroupAggregationDef();
            MethodName = "CreateCapabilityPortGroupAggregationDef";
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
        /// <para type="description">"Aggregation capability for port group."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string AggregationCap {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Indicates support for 40G port group capability."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool Hw40GPortGroupCap {
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The type of port group for which this capability is defined."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Pgtype {
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
    /// <para type="synopsis">This is the cmdlet to Get CapabilityPsuDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilityPsuDescriptor", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilityPsuDescriptor:GetCmdletBase
	{
		public GetIntersightCapabilityPsuDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilityPsuDescriptorList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilityPsuDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilityPsuDescriptor")]
    public class NewIntersightCapabilityPsuDescriptor:NewCmdletBase
	{
		public NewIntersightCapabilityPsuDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityPsuDescriptor();
            MethodName = "CreateCapabilityPsuDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Revision for the power supply."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Revision {
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
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilityServerSchemaDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilityServerSchemaDescriptor", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilityServerSchemaDescriptor:GetCmdletBase
	{
		public GetIntersightCapabilityServerSchemaDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilityServerSchemaDescriptorList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilityServerSchemaDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilityServerSchemaDescriptor")]
    public class NewIntersightCapabilityServerSchemaDescriptor:NewCmdletBase
	{
		public NewIntersightCapabilityServerSchemaDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityServerSchemaDescriptor();
            MethodName = "CreateCapabilityServerSchemaDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Redfish property name for the server."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string LocatorLedName {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Redfish version information for the server."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string RedfishSchema {
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
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilityAdapterUnitDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilityAdapterUnitDescriptor")]
    public class SetIntersightCapabilityAdapterUnitDescriptor:SetCmdletBase
	{
		public SetIntersightCapabilityAdapterUnitDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityAdapterUnitDescriptor();
            MethodName = "UpdateCapabilityAdapterUnitDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Order in which the ports are connected; sequential or cyclic."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ConnectivityOrder {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The port speed for ethernet ports in Mbps."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long EthernetPortSpeed {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The port speed for fibre channel ports in Mbps."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long FibreChannelPortSpeed {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The number of SCSI I/O Queue resources to allocate."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long FibreChannelScsiIoqLimit {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Indicates that the Azure Stack Host QoS feature is supported by this adapter."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool IsAzureQosSupported {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Indicates that the GENEVE offload feature is supported by this adapter."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool IsGeneveSupported {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Number of Dce Ports for the adapter."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long NumDcePorts {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Prom card type for the adapter."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string PromCardType {
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
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilityAdapterUnitDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilityAdapterUnitDescriptor")]
    public class RemoveIntersightCapabilityAdapterUnitDescriptor:RemoveCmdletBase
	{
		public RemoveIntersightCapabilityAdapterUnitDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilityAdapterUnitDescriptor";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilityPortGroupAggregationDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilityPortGroupAggregationDef")]
    public class SetIntersightCapabilityPortGroupAggregationDef:SetCmdletBase
	{
		public SetIntersightCapabilityPortGroupAggregationDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityPortGroupAggregationDef();
            MethodName = "UpdateCapabilityPortGroupAggregationDef";
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
        /// <para type="description">"Aggregation capability for port group."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string AggregationCap {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Indicates support for 40G port group capability."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool Hw40GPortGroupCap {
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The type of port group for which this capability is defined."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Pgtype {
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
    /// <para type="synopsis">This is the cmdlet to Remove CapabilityPortGroupAggregationDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilityPortGroupAggregationDef")]
    public class RemoveIntersightCapabilityPortGroupAggregationDef:RemoveCmdletBase
	{
		public RemoveIntersightCapabilityPortGroupAggregationDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilityPortGroupAggregationDef";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilityEquipmentPhysicalDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilityEquipmentPhysicalDef")]
    public class RemoveIntersightCapabilityEquipmentPhysicalDef:RemoveCmdletBase
	{
		public RemoveIntersightCapabilityEquipmentPhysicalDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilityEquipmentPhysicalDef";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilityEquipmentPhysicalDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilityEquipmentPhysicalDef")]
    public class SetIntersightCapabilityEquipmentPhysicalDef:SetCmdletBase
	{
		public SetIntersightCapabilityEquipmentPhysicalDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityEquipmentPhysicalDef();
            MethodName = "UpdateCapabilityEquipmentPhysicalDef";
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
        /// <para type="description">"Depth information for a Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float Depth {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Height information for a Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float Height {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Max Power information for a Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long MaxPower {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Min Power information for a Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long MinPower {
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Nominal Power information for a Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long NominalPower {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a Switch/Fabric-Interconnect.\n* `UCS-FI-6454` - The standard 4th generation UCS Fabric Interconnect with 54 ports.\n* `UCS-FI-64108` - The expanded 4th generation UCS Fabric Interconnect with 108 ports.\n* `unknown` - Unknown device type, usage is TBD."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public CapabilityEquipmentPhysicalDef.PidEnum Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
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
        /// <para type="description">"VID information for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Weight information for a Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float Weight {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Width information for a Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float Width {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilityIoCardDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilityIoCardDescriptor")]
    public class SetIntersightCapabilityIoCardDescriptor:SetCmdletBase
	{
		public SetIntersightCapabilityIoCardDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityIoCardDescriptor();
            MethodName = "UpdateCapabilityIoCardDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Number of hif ports per blade for the iocard module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long NumHifPorts {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Revision for the iocard module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Revision {
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
        /// <para type="description">"Connectivity information between UIF Uplink ports and IOM ports.\n* `inline` - UIF uplink ports and IOM ports are connected inline.\n* `cross-connected` - UIF uplink ports and IOM ports are cross-connected, a case in washington chassis."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public CapabilityIoCardDescriptor.UifConnectivityEnum UifConnectivity {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilityIoCardDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilityIoCardDescriptor")]
    public class RemoveIntersightCapabilityIoCardDescriptor:RemoveCmdletBase
	{
		public RemoveIntersightCapabilityIoCardDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilityIoCardDescriptor";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilityIoCardCapabilityDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilityIoCardCapabilityDef")]
    public class NewIntersightCapabilityIoCardCapabilityDef:NewCmdletBase
	{
		public NewIntersightCapabilityIoCardCapabilityDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityIoCardCapabilityDef();
            MethodName = "CreateCapabilityIoCardCapabilityDef";
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
        /// <para type="description">"Device connector support on Iocard."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool DcSupported {
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        
        public string Name {
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
    /// <para type="synopsis">This is the cmdlet to Get CapabilityIoCardCapabilityDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilityIoCardCapabilityDef", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilityIoCardCapabilityDef:GetCmdletBase
	{
		public GetIntersightCapabilityIoCardCapabilityDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilityIoCardCapabilityDefList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilityPsuDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilityPsuDescriptor")]
    public class SetIntersightCapabilityPsuDescriptor:SetCmdletBase
	{
		public SetIntersightCapabilityPsuDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityPsuDescriptor();
            MethodName = "UpdateCapabilityPsuDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Revision for the power supply."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Revision {
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
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilityPsuDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilityPsuDescriptor")]
    public class RemoveIntersightCapabilityPsuDescriptor:RemoveCmdletBase
	{
		public RemoveIntersightCapabilityPsuDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilityPsuDescriptor";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilitySwitchManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilitySwitchManufacturingDef")]
    public class NewIntersightCapabilitySwitchManufacturingDef:NewCmdletBase
	{
		public NewIntersightCapabilitySwitchManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilitySwitchManufacturingDef();
            MethodName = "CreateCapabilitySwitchManufacturingDef";
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
        /// <para type="description">"Caption for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Caption {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Description for Switch/Fabric-Interconnect."</para>
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Part Number for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string PartNumber {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a Switch/Fabric-Interconnect.\n* `UCS-FI-6454` - The standard 4th generation UCS Fabric Interconnect with 54 ports.\n* `UCS-FI-64108` - The expanded 4th generation UCS Fabric Interconnect with 108 ports.\n* `unknown` - Unknown device type, usage is TBD."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public CapabilitySwitchManufacturingDef.PidEnum Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Name for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ProductName {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
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
        /// <para type="description">"VID information for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilitySwitchManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilitySwitchManufacturingDef", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilitySwitchManufacturingDef:GetCmdletBase
	{
		public GetIntersightCapabilitySwitchManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilitySwitchManufacturingDefList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilityEquipmentSlotArray.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilityEquipmentSlotArray")]
    public class NewIntersightCapabilityEquipmentSlotArray:NewCmdletBase
	{
		public NewIntersightCapabilityEquipmentSlotArray()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityEquipmentSlotArray();
            MethodName = "CreateCapabilityEquipmentSlotArray";
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
        /// <para type="description">"First Index information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float FirstIndex {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Height information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float Height {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Horizontal Start Offset information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float HorizontalStartOffset {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Inline Group Separation information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float InlineGroupSeparation {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Inline Group Size information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float InlineGroupSize {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Inline Offset information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float InlineOffset {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Location information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Location {
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Number of Slots information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long NumberOfSlots {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Orientation information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Orientation {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a Switch/Fabric-Interconnect.\n* `UCS-FI-6454` - The standard 4th generation UCS Fabric Interconnect with 54 ports.\n* `UCS-FI-64108` - The expanded 4th generation UCS Fabric Interconnect with 108 ports.\n* `unknown` - Unknown device type, usage is TBD."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public CapabilityEquipmentSlotArray.PidEnum Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Selector information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Selector {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Slots per line information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long SlotsPerLine {
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
        /// <para type="description">"Transverse Group Separation information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float TransverseGroupSeparation {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Transverse Group Size information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float TransverseGroupSize {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Transverse Offset information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float TransverseOffset {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Vertical Start Offset information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float VerticalStartOffset {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"VID information for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Width information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float Width {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilityEquipmentSlotArray.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilityEquipmentSlotArray", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilityEquipmentSlotArray:GetCmdletBase
	{
		public GetIntersightCapabilityEquipmentSlotArray()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilityEquipmentSlotArrayList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilitySiocModuleDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilitySiocModuleDescriptor")]
    public class SetIntersightCapabilitySiocModuleDescriptor:SetCmdletBase
	{
		public SetIntersightCapabilitySiocModuleDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilitySiocModuleDescriptor();
            MethodName = "UpdateCapabilitySiocModuleDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Revision for the SIOC module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Revision {
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
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilitySiocModuleDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilitySiocModuleDescriptor")]
    public class RemoveIntersightCapabilitySiocModuleDescriptor:RemoveCmdletBase
	{
		public RemoveIntersightCapabilitySiocModuleDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilitySiocModuleDescriptor";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilitySwitchDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilitySwitchDescriptor", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilitySwitchDescriptor:GetCmdletBase
	{
		public GetIntersightCapabilitySwitchDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilitySwitchDescriptorList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilitySwitchDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilitySwitchDescriptor")]
    public class NewIntersightCapabilitySwitchDescriptor:NewCmdletBase
	{
		public NewIntersightCapabilitySwitchDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilitySwitchDescriptor();
            MethodName = "CreateCapabilitySwitchDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The total expected memory for this hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long ExpectedMemory {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Revision for the fabric interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Revision {
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
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilityChassisManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilityChassisManufacturingDef", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilityChassisManufacturingDef:GetCmdletBase
	{
		public GetIntersightCapabilityChassisManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilityChassisManufacturingDefList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilityChassisManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilityChassisManufacturingDef")]
    public class NewIntersightCapabilityChassisManufacturingDef:NewCmdletBase
	{
		public NewIntersightCapabilityChassisManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityChassisManufacturingDef();
            MethodName = "CreateCapabilityChassisManufacturingDef";
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
        /// <para type="description">"Caption for Chassis enclosure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Caption {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Chassis Code Name for Chassis enclosure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ChassisCodeName {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Description for Chassis enclosure."</para>
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a Chassis enclosure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Name for Chassis enclosure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ProductName {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for Chassis enclosure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
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
        /// <para type="description">"VID information for Chassis enclosure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilitySwitchCapability.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilitySwitchCapability")]
    public class SetIntersightCapabilitySwitchCapability:SetCmdletBase
	{
		public SetIntersightCapabilitySwitchCapability()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilitySwitchCapability();
            MethodName = "UpdateCapabilitySwitchCapability";
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
        /// <para type="description">"Default Fcoe VLAN associated with this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long DefaultFcoeVlan {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Dynamic VIFs support on this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool DynamicVifsSupported {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Fan Modules support on this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool FanModulesSupported {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> FcEndHostModeReservedVsans {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Fc Uplink ports auto negotiation speed support on this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool FcUplinkPortsAutoNegotiationSupported {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Locator Beacon LED support on this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool LocatorBeaconSupported {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Maximum allowed physical ports on this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long MaxPorts {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Maximum allowed physical slots on this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long MaxSlots {
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"List of network limitations for this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public CapabilitySwitchNetworkLimits NetworkLimits {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a Switch/Fabric-Interconnect.\n* `UCS-FI-6454` - The standard 4th generation UCS Fabric Interconnect with 54 ports.\n* `UCS-FI-64108` - The expanded 4th generation UCS Fabric Interconnect with 108 ports.\n* `unknown` - Unknown device type, usage is TBD."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public CapabilitySwitchCapability.PidEnum Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> PortsSupporting100gSpeed {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> PortsSupporting10gSpeed {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> PortsSupporting1gSpeed {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> PortsSupporting25gSpeed {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> PortsSupporting40gSpeed {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> PortsSupportingBreakout {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> PortsSupportingFcoe {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> PortsSupportingServerRole {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityPortRange> ReservedVsans {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Sereno Adaptor with Netflow support on this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool SerenoNetflowSupported {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"List of storage limitations for this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public CapabilitySwitchStorageLimits StorageLimits {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilitySwitchingModeCapability> SwitchingModeCapabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"List of system limitations for this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public CapabilitySwitchSystemLimits SystemLimits {
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
        
        public List<CapabilityPortRange> UnifiedPorts {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The Slider rule for Unified ports on this switch."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string UnifiedRule {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"VID information for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilitySwitchCapability.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilitySwitchCapability")]
    public class RemoveIntersightCapabilitySwitchCapability:RemoveCmdletBase
	{
		public RemoveIntersightCapabilitySwitchCapability()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilitySwitchCapability";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilityCimcFirmwareDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilityCimcFirmwareDescriptor", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilityCimcFirmwareDescriptor:GetCmdletBase
	{
		public GetIntersightCapabilityCimcFirmwareDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilityCimcFirmwareDescriptorList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilityCimcFirmwareDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilityCimcFirmwareDescriptor")]
    public class NewIntersightCapabilityCimcFirmwareDescriptor:NewCmdletBase
	{
		public NewIntersightCapabilityCimcFirmwareDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityCimcFirmwareDescriptor();
            MethodName = "CreateCapabilityCimcFirmwareDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Revision information for the server."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Revision {
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
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilityCimcFirmwareDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilityCimcFirmwareDescriptor")]
    public class RemoveIntersightCapabilityCimcFirmwareDescriptor:RemoveCmdletBase
	{
		public RemoveIntersightCapabilityCimcFirmwareDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilityCimcFirmwareDescriptor";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilityCimcFirmwareDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilityCimcFirmwareDescriptor")]
    public class SetIntersightCapabilityCimcFirmwareDescriptor:SetCmdletBase
	{
		public SetIntersightCapabilityCimcFirmwareDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityCimcFirmwareDescriptor();
            MethodName = "UpdateCapabilityCimcFirmwareDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Revision information for the server."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Revision {
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
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilityIoCardManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilityIoCardManufacturingDef", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilityIoCardManufacturingDef:GetCmdletBase
	{
		public GetIntersightCapabilityIoCardManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilityIoCardManufacturingDefList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilityIoCardManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilityIoCardManufacturingDef")]
    public class NewIntersightCapabilityIoCardManufacturingDef:NewCmdletBase
	{
		public NewIntersightCapabilityIoCardManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityIoCardManufacturingDef();
            MethodName = "CreateCapabilityIoCardManufacturingDef";
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
        /// <para type="description">"Caption for a chassis Iocard module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Caption {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Description for a chassis Iocard module."</para>
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a chassis Iocard module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Name for IO Card Module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ProductName {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for a chassis Iocard module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
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
        /// <para type="description">"VID information for a chassis Iocard module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilityEquipmentSlotArray.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilityEquipmentSlotArray")]
    public class SetIntersightCapabilityEquipmentSlotArray:SetCmdletBase
	{
		public SetIntersightCapabilityEquipmentSlotArray()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityEquipmentSlotArray();
            MethodName = "UpdateCapabilityEquipmentSlotArray";
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
        /// <para type="description">"First Index information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float FirstIndex {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Height information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float Height {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Horizontal Start Offset information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float HorizontalStartOffset {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Inline Group Separation information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float InlineGroupSeparation {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Inline Group Size information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float InlineGroupSize {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Inline Offset information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float InlineOffset {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Location information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Location {
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Number of Slots information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long NumberOfSlots {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Orientation information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Orientation {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a Switch/Fabric-Interconnect.\n* `UCS-FI-6454` - The standard 4th generation UCS Fabric Interconnect with 54 ports.\n* `UCS-FI-64108` - The expanded 4th generation UCS Fabric Interconnect with 108 ports.\n* `unknown` - Unknown device type, usage is TBD."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public CapabilityEquipmentSlotArray.PidEnum Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Selector information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Selector {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Slots per line information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long SlotsPerLine {
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
        /// <para type="description">"Transverse Group Separation information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float TransverseGroupSeparation {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Transverse Group Size information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float TransverseGroupSize {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Transverse Offset information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float TransverseOffset {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Vertical Start Offset information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float VerticalStartOffset {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"VID information for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Width information for a Switch/Fabric-Interconnect hardware."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float Width {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilityEquipmentSlotArray.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilityEquipmentSlotArray")]
    public class RemoveIntersightCapabilityEquipmentSlotArray:RemoveCmdletBase
	{
		public RemoveIntersightCapabilityEquipmentSlotArray()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilityEquipmentSlotArray";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilitySiocModuleCapabilityDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilitySiocModuleCapabilityDef")]
    public class SetIntersightCapabilitySiocModuleCapabilityDef:SetCmdletBase
	{
		public SetIntersightCapabilitySiocModuleCapabilityDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilitySiocModuleCapabilityDef();
            MethodName = "UpdateCapabilitySiocModuleCapabilityDef";
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
        /// <para type="description">"Device connector support on SIOC."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool DcSupported {
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Name {
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
    /// <para type="synopsis">This is the cmdlet to Remove CapabilitySiocModuleCapabilityDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilitySiocModuleCapabilityDef")]
    public class RemoveIntersightCapabilitySiocModuleCapabilityDef:RemoveCmdletBase
	{
		public RemoveIntersightCapabilitySiocModuleCapabilityDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilitySiocModuleCapabilityDef";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilitySiocModuleManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilitySiocModuleManufacturingDef", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilitySiocModuleManufacturingDef:GetCmdletBase
	{
		public GetIntersightCapabilitySiocModuleManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilitySiocModuleManufacturingDefList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilitySiocModuleManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilitySiocModuleManufacturingDef")]
    public class NewIntersightCapabilitySiocModuleManufacturingDef:NewCmdletBase
	{
		public NewIntersightCapabilitySiocModuleManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilitySiocModuleManufacturingDef();
            MethodName = "CreateCapabilitySiocModuleManufacturingDef";
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
        /// <para type="description">"Caption for a chassis SIOC module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Caption {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Description for a chassis SIOC module."</para>
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a chassis SIOC module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Name for SIOC Module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ProductName {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for a chassis SIOC module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
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
        /// <para type="description">"VID information for a chassis SIOC module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilityFanModuleManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilityFanModuleManufacturingDef", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilityFanModuleManufacturingDef:GetCmdletBase
	{
		public GetIntersightCapabilityFanModuleManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilityFanModuleManufacturingDefList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilityFanModuleManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilityFanModuleManufacturingDef")]
    public class NewIntersightCapabilityFanModuleManufacturingDef:NewCmdletBase
	{
		public NewIntersightCapabilityFanModuleManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityFanModuleManufacturingDef();
            MethodName = "CreateCapabilityFanModuleManufacturingDef";
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
        /// <para type="description">"Caption for a fan module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Caption {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Description for a fan module."</para>
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a fan module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Name for Fan Module Unit."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ProductName {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for a fan module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
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
        /// <para type="description">"VID information for a fan module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilityAdapterUnitDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilityAdapterUnitDescriptor")]
    public class NewIntersightCapabilityAdapterUnitDescriptor:NewCmdletBase
	{
		public NewIntersightCapabilityAdapterUnitDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityAdapterUnitDescriptor();
            MethodName = "CreateCapabilityAdapterUnitDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Order in which the ports are connected; sequential or cyclic."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ConnectivityOrder {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The port speed for ethernet ports in Mbps."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long EthernetPortSpeed {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The port speed for fibre channel ports in Mbps."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long FibreChannelPortSpeed {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The number of SCSI I/O Queue resources to allocate."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long FibreChannelScsiIoqLimit {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Indicates that the Azure Stack Host QoS feature is supported by this adapter."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool IsAzureQosSupported {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Indicates that the GENEVE offload feature is supported by this adapter."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool IsGeneveSupported {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Number of Dce Ports for the adapter."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long NumDcePorts {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Prom card type for the adapter."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string PromCardType {
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
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilityAdapterUnitDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilityAdapterUnitDescriptor", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilityAdapterUnitDescriptor:GetCmdletBase
	{
		public GetIntersightCapabilityAdapterUnitDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilityAdapterUnitDescriptorList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilityChassisDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilityChassisDescriptor")]
    public class SetIntersightCapabilityChassisDescriptor:SetCmdletBase
	{
		public SetIntersightCapabilityChassisDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityChassisDescriptor();
            MethodName = "UpdateCapabilityChassisDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Revision for the chassis enclosure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Revision {
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
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilityChassisDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilityChassisDescriptor")]
    public class RemoveIntersightCapabilityChassisDescriptor:RemoveCmdletBase
	{
		public RemoveIntersightCapabilityChassisDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilityChassisDescriptor";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilityEquipmentPhysicalDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilityEquipmentPhysicalDef", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilityEquipmentPhysicalDef:GetCmdletBase
	{
		public GetIntersightCapabilityEquipmentPhysicalDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilityEquipmentPhysicalDefList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilityEquipmentPhysicalDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilityEquipmentPhysicalDef")]
    public class NewIntersightCapabilityEquipmentPhysicalDef:NewCmdletBase
	{
		public NewIntersightCapabilityEquipmentPhysicalDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityEquipmentPhysicalDef();
            MethodName = "CreateCapabilityEquipmentPhysicalDef";
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
        /// <para type="description">"Depth information for a Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float Depth {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Height information for a Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float Height {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Max Power information for a Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long MaxPower {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Min Power information for a Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long MinPower {
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Nominal Power information for a Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public long NominalPower {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a Switch/Fabric-Interconnect.\n* `UCS-FI-6454` - The standard 4th generation UCS Fabric Interconnect with 54 ports.\n* `UCS-FI-64108` - The expanded 4th generation UCS Fabric Interconnect with 108 ports.\n* `unknown` - Unknown device type, usage is TBD."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public CapabilityEquipmentPhysicalDef.PidEnum Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
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
        /// <para type="description">"VID information for Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Weight information for a Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float Weight {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Width information for a Switch/Fabric-Interconnect."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public float Width {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilityFanModuleDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilityFanModuleDescriptor")]
    public class SetIntersightCapabilityFanModuleDescriptor:SetCmdletBase
	{
		public SetIntersightCapabilityFanModuleDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityFanModuleDescriptor();
            MethodName = "UpdateCapabilityFanModuleDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Revision for the chassis enclosure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Revision {
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
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilityFanModuleDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilityFanModuleDescriptor")]
    public class RemoveIntersightCapabilityFanModuleDescriptor:RemoveCmdletBase
	{
		public RemoveIntersightCapabilityFanModuleDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilityFanModuleDescriptor";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilityPsuManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilityPsuManufacturingDef")]
    public class SetIntersightCapabilityPsuManufacturingDef:SetCmdletBase
	{
		public SetIntersightCapabilityPsuManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityPsuManufacturingDef();
            MethodName = "UpdateCapabilityPsuManufacturingDef";
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
        /// <para type="description">"Caption for a power supply unit."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Caption {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Description for a power supply unit."</para>
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a power supply unit."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Name for Power Supplu Unit."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ProductName {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for a power supply unit."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
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
        /// <para type="description">"VID information for a power supply unit."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilityPsuManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilityPsuManufacturingDef")]
    public class RemoveIntersightCapabilityPsuManufacturingDef:RemoveCmdletBase
	{
		public RemoveIntersightCapabilityPsuManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilityPsuManufacturingDef";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilityChassisDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilityChassisDescriptor")]
    public class NewIntersightCapabilityChassisDescriptor:NewCmdletBase
	{
		public NewIntersightCapabilityChassisDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityChassisDescriptor();
            MethodName = "CreateCapabilityChassisDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Revision for the chassis enclosure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Revision {
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
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilityChassisDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilityChassisDescriptor", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilityChassisDescriptor:GetCmdletBase
	{
		public GetIntersightCapabilityChassisDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilityChassisDescriptorList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilityCatalog.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilityCatalog", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilityCatalog:GetCmdletBase
	{
		public GetIntersightCapabilityCatalog()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilityCatalogList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilitySiocModuleCapabilityDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilitySiocModuleCapabilityDef")]
    public class NewIntersightCapabilitySiocModuleCapabilityDef:NewCmdletBase
	{
		public NewIntersightCapabilitySiocModuleCapabilityDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilitySiocModuleCapabilityDef();
            MethodName = "CreateCapabilitySiocModuleCapabilityDef";
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
        /// <para type="description">"Device connector support on SIOC."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool DcSupported {
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = false,ValueFromPipeline = false)]
        
        public string Name {
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
    /// <para type="synopsis">This is the cmdlet to Get CapabilitySiocModuleCapabilityDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilitySiocModuleCapabilityDef", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilitySiocModuleCapabilityDef:GetCmdletBase
	{
		public GetIntersightCapabilitySiocModuleCapabilityDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilitySiocModuleCapabilityDefList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilityFanModuleManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilityFanModuleManufacturingDef")]
    public class SetIntersightCapabilityFanModuleManufacturingDef:SetCmdletBase
	{
		public SetIntersightCapabilityFanModuleManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityFanModuleManufacturingDef();
            MethodName = "UpdateCapabilityFanModuleManufacturingDef";
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
        /// <para type="description">"Caption for a fan module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Caption {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Description for a fan module."</para>
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a fan module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Name for Fan Module Unit."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ProductName {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for a fan module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
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
        /// <para type="description">"VID information for a fan module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilityFanModuleManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilityFanModuleManufacturingDef")]
    public class RemoveIntersightCapabilityFanModuleManufacturingDef:RemoveCmdletBase
	{
		public RemoveIntersightCapabilityFanModuleManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilityFanModuleManufacturingDef";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilitySiocModuleDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilitySiocModuleDescriptor", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilitySiocModuleDescriptor:GetCmdletBase
	{
		public GetIntersightCapabilitySiocModuleDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilitySiocModuleDescriptorList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilitySiocModuleDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilitySiocModuleDescriptor")]
    public class NewIntersightCapabilitySiocModuleDescriptor:NewCmdletBase
	{
		public NewIntersightCapabilitySiocModuleDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilitySiocModuleDescriptor();
            MethodName = "CreateCapabilitySiocModuleDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Revision for the SIOC module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Revision {
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
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilityChassisManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilityChassisManufacturingDef")]
    public class SetIntersightCapabilityChassisManufacturingDef:SetCmdletBase
	{
		public SetIntersightCapabilityChassisManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityChassisManufacturingDef();
            MethodName = "UpdateCapabilityChassisManufacturingDef";
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
        /// <para type="description">"Caption for Chassis enclosure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Caption {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Chassis Code Name for Chassis enclosure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ChassisCodeName {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Description for Chassis enclosure."</para>
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a Chassis enclosure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Name for Chassis enclosure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ProductName {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for Chassis enclosure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
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
        /// <para type="description">"VID information for Chassis enclosure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilityChassisManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilityChassisManufacturingDef")]
    public class RemoveIntersightCapabilityChassisManufacturingDef:RemoveCmdletBase
	{
		public RemoveIntersightCapabilityChassisManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilityChassisManufacturingDef";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilitySiocModuleManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilitySiocModuleManufacturingDef")]
    public class SetIntersightCapabilitySiocModuleManufacturingDef:SetCmdletBase
	{
		public SetIntersightCapabilitySiocModuleManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilitySiocModuleManufacturingDef();
            MethodName = "UpdateCapabilitySiocModuleManufacturingDef";
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
        /// <para type="description">"Caption for a chassis SIOC module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Caption {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Description for a chassis SIOC module."</para>
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a chassis SIOC module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Name for SIOC Module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ProductName {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for a chassis SIOC module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
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
        /// <para type="description">"VID information for a chassis SIOC module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilitySiocModuleManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilitySiocModuleManufacturingDef")]
    public class RemoveIntersightCapabilitySiocModuleManufacturingDef:RemoveCmdletBase
	{
		public RemoveIntersightCapabilitySiocModuleManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilitySiocModuleManufacturingDef";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CapabilityFanModuleDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCapabilityFanModuleDescriptor", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCapabilityFanModuleDescriptor:GetCmdletBase
	{
		public GetIntersightCapabilityFanModuleDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "GetCapabilityFanModuleDescriptorList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to New CapabilityFanModuleDescriptor.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.New, "IntersightCapabilityFanModuleDescriptor")]
    public class NewIntersightCapabilityFanModuleDescriptor:NewCmdletBase
	{
		public NewIntersightCapabilityFanModuleDescriptor()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityFanModuleDescriptor();
            MethodName = "CreateCapabilityFanModuleDescriptor";
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
        /// <para type="description">"An array of relationships to capabilityCapability resources."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<CapabilityCapabilityRelationship> Capabilities {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Detailed information about the endpoint."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Description {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The model of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Model {
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
        /// <para type="description">"Revision for the chassis enclosure."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Revision {
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
        /// <para type="description">"The vendor of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vendor {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The firmware or software version of the endpoint, for which this capability information is applicable."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Version {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilityCatalog.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilityCatalog")]
    public class SetIntersightCapabilityCatalog:SetCmdletBase
	{
		public SetIntersightCapabilityCatalog()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityCatalog();
            MethodName = "UpdateCapabilityCatalog";
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
        /// <para type="description">"A unique name for the catalog."</para>
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
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CapabilityIoCardManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCapabilityIoCardManufacturingDef")]
    public class SetIntersightCapabilityIoCardManufacturingDef:SetCmdletBase
	{
		public SetIntersightCapabilityIoCardManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            ModelObject = new CapabilityIoCardManufacturingDef();
            MethodName = "UpdateCapabilityIoCardManufacturingDef";
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
        /// <para type="description">"Caption for a chassis Iocard module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Caption {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Description for a chassis Iocard module."</para>
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
        /// <para type="description">"An unique identifer for a capability descriptor."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Identifier for a chassis Iocard module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Pid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Product Name for IO Card Module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string ProductName {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"SKU information for a chassis Iocard module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Sku {
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
        /// <para type="description">"VID information for a chassis Iocard module."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Vid {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Remove CapabilityIoCardManufacturingDef.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "IntersightCapabilityIoCardManufacturingDef")]
    public class RemoveIntersightCapabilityIoCardManufacturingDef:RemoveCmdletBase
	{
		public RemoveIntersightCapabilityIoCardManufacturingDef()
		{
			ApiInstance = new CapabilityApi(Config);
            MethodName = "DeleteCapabilityIoCardManufacturingDef";
		}
    }
}