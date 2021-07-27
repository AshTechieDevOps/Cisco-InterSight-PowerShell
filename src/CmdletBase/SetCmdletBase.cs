﻿using Intersight.Client;
using System;
using System.Collections.Generic;
using System.Management.Automation;
using System.Text;

namespace Intersight.PowerShell
{
	public class SetCmdletBase:CmdletBase
	{
		public SetCmdletBase()
		{
		}

		protected override void BeginProcessing()
		{
			if (CmdletBase.Config == null || CmdletBase.Config.HttpSigningConfiguration == null)
			{
				throw new Exception("Intersight environment is not configured. Use the cmdlet Set-IntersightConfiguration to configure it.");
			}
		}

		protected override void ProcessRecord()
		{
			try
			{
				if(this.ModelObject == null)
				{
					throw new Exception(string.Format("{0} ModelObject should not be null", this.MyInvocation.InvocationName));
				}

				if (!this.MyInvocation.BoundParameters.ContainsKey("Moid"))
				{
					throw new Exception("Moid cannot be empty or null.");
				}

				this.ModelObject = GetMoByMoid(this.MyInvocation.BoundParameters["Moid"]);
				var propertyList = this.ModelObject.GetType().GetProperties();
				foreach (var item in propertyList)
				{
						
					if (this.MyInvocation.BoundParameters.ContainsKey(item.Name))
					{
						item.SetValue(ModelObject, this.MyInvocation.BoundParameters[item.Name]);
					}
				}

				var methodInfo = GetMethodInfo(MethodName);
				var moidVal = ModelObject.GetType().GetProperty("Moid").GetValue(ModelObject);
				Object[] argList = new[] { moidVal,ModelObject, null };
				var result = methodInfo.Invoke(ApiInstance, argList);
				WriteObject(result);

			}
			catch (Exception ex)
			{
				throw ex.InnerException ?? ex;
			}
		}

		private object GetMoByMoid(object moid)
		{
			string methodName = string.Format("{0}ByMoid",this.MyInvocation.MyCommand.Name.Replace("Set-Intersight","Get"));
			var getMethodInfo = this.ApiInstance.GetType().GetMethod(methodName);
			if(getMethodInfo != null)
			{
				object[] argList = new[] { moid };
				var result = getMethodInfo.Invoke(ApiInstance, argList);
				return result;
			}
			return ModelObject;
		}
	}
}
