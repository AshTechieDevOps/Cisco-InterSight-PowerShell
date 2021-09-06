using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;
using Intersight.Api;
using Intersight.Model;

namespace Intersight.PowerShell
{
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Initialize ConnectorpackConnectorPackUpdate.</para>
    /// </summary>
    [Cmdlet(VerbsData.Initialize, "IntersightConnectorpackConnectorPackUpdate")]
    public class InitializeIntersightConnectorpackConnectorPackUpdate:PSCmdlet
	{
		public InitializeIntersightConnectorpackConnectorPackUpdate()
		{
            ClassId = ConnectorpackConnectorPackUpdate.ClassIdEnum.ConnectorpackConnectorPackUpdate;
            ObjectType = ConnectorpackConnectorPackUpdate.ObjectTypeEnum.ConnectorpackConnectorPackUpdate;
            
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
        /// <para type="description">"The fully-qualified name of the instantiated, concrete type.\nThis property is used as a discriminator to identify the type of the payload\nwhen marshaling and unmarshaling data."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public ConnectorpackConnectorPackUpdate.ClassIdEnum ClassId {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The fully-qualified name of the instantiated, concrete type.\nThe value should be the same as the 'ClassId' property."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public ConnectorpackConnectorPackUpdate.ObjectTypeEnum ObjectType {
            get;
            set;
        }

        protected override void ProcessRecord()
        {
             Intersight.Model.ConnectorpackConnectorPackUpdate initObject = new Intersight.Model.ConnectorpackConnectorPackUpdate();
            if (this.MyInvocation.BoundParameters.ContainsKey("AdditionalProperties"))
            {
                initObject.AdditionalProperties = this.AdditionalProperties;
            }
            initObject.ClassId = this.ClassId;
            initObject.ObjectType = this.ObjectType;
            WriteObject(initObject);
        }

    }
}