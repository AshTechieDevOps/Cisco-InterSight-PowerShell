using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;
using Intersight.Api;
using Intersight.Model;

namespace Intersight.PowerShell
{
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Initialize FeedbackFeedbackData.</para>
    /// </summary>
    [Cmdlet(VerbsData.Initialize, "IntersightFeedbackFeedbackData")]
    public class InitializeIntersightFeedbackFeedbackData:PSCmdlet
	{
		public InitializeIntersightFeedbackFeedbackData()
		{
            ClassId = FeedbackFeedbackData.ClassIdEnum.FeedbackFeedbackData;
            Evaluation = FeedbackFeedbackData.EvaluationEnum.Excellent;
            ObjectType = FeedbackFeedbackData.ObjectTypeEnum.FeedbackFeedbackData;
            Type = FeedbackFeedbackData.TypeEnum.Evaluation;
            
		}
        // <summary>
        /// <para type="description">"Account name of the feedback sender. Copied in order to be persisted in case of account removal."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string AccountName {
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
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<string> AlternativeFollowUpEmails {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The fully-qualified name of the instantiated, concrete type.\nThis property is used as a discriminator to identify the type of the payload\nwhen marshaling and unmarshaling data."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public FeedbackFeedbackData.ClassIdEnum ClassId {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Text of the feedback as provided by the user, if it is a bug or a comment."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Comment {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"User's email address details."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Email {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Evalation rating as provided by the user to capture user sentiment regarding the issue.\n* `Excellent` - Option that specifies user's excelent evaluation.\n* `Poor` - Option that specifies user's poor evaluation.\n* `Fair` - Option that specifies user's fair evaluation.\n* `Good` - Option that specifies user's good evaluation."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public FeedbackFeedbackData.EvaluationEnum Evaluation {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"If a user is open for follow-up or not."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool FollowUp {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The fully-qualified name of the instantiated, concrete type.\nThe value should be the same as the 'ClassId' property."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public FeedbackFeedbackData.ObjectTypeEnum ObjectType {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Bunch of last traceId for reproducing user last activity."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public object TraceIds {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Type of the feedback from user.\n* `Evaluation` - User's feedback classified as an evaluation.\n* `Bug` - User's feedback classified as a bug."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public FeedbackFeedbackData.TypeEnum Type {
            get;
            set;
        }

        protected override void ProcessRecord()
        {
             Intersight.Model.FeedbackFeedbackData initObject = new Intersight.Model.FeedbackFeedbackData();
            if (this.MyInvocation.BoundParameters.ContainsKey("AccountName"))
            {
                initObject.AccountName = this.AccountName;
            }
            if (this.MyInvocation.BoundParameters.ContainsKey("AdditionalProperties"))
            {
                initObject.AdditionalProperties = this.AdditionalProperties;
            }
            if (this.MyInvocation.BoundParameters.ContainsKey("AlternativeFollowUpEmails"))
            {
                initObject.AlternativeFollowUpEmails = this.AlternativeFollowUpEmails;
            }
            initObject.ClassId = this.ClassId;
            if (this.MyInvocation.BoundParameters.ContainsKey("Comment"))
            {
                initObject.Comment = this.Comment;
            }
            if (this.MyInvocation.BoundParameters.ContainsKey("Email"))
            {
                initObject.Email = this.Email;
            }
            if (this.MyInvocation.BoundParameters.ContainsKey("Evaluation"))
            {
                initObject.Evaluation = this.Evaluation;
            }
            if (this.MyInvocation.BoundParameters.ContainsKey("FollowUp"))
            {
                initObject.FollowUp = this.FollowUp;
            }
            initObject.ObjectType = this.ObjectType;
            if (this.MyInvocation.BoundParameters.ContainsKey("TraceIds"))
            {
                initObject.TraceIds = this.TraceIds;
            }
            if (this.MyInvocation.BoundParameters.ContainsKey("Type"))
            {
                initObject.Type = this.Type;
            }
            WriteObject(initObject);
        }

    }
}