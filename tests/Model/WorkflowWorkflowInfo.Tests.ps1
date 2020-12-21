#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2020-12-08T20:53:20Z.
# Version: 1.0.9-2908
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'Intersight' -name 'IntersightWorkflowWorkflowInfo' {
    Context 'IntersightWorkflowWorkflowInfo' {
        It 'Initialize-IntersightWorkflowWorkflowInfo' {
            # a simple test to create an object
            #$NewObject = Initialize-IntersightWorkflowWorkflowInfo -ClassId "TEST_VALUE" -ObjectType "TEST_VALUE" -AccountMoid "TEST_VALUE" -CreateTime "TEST_VALUE" -DomainGroupMoid "TEST_VALUE" -ModTime "TEST_VALUE" -Moid "TEST_VALUE" -Owners "TEST_VALUE" -SharedScope "TEST_VALUE" -Tags "TEST_VALUE" -VersionContext "TEST_VALUE" -Ancestors "TEST_VALUE" -Parent "TEST_VALUE" -PermissionResources "TEST_VALUE" -DisplayNames "TEST_VALUE" -Action "TEST_VALUE" -CleanupTime "TEST_VALUE" -Email "TEST_VALUE" -EndTime "TEST_VALUE" -FailedWorkflowCleanupDuration "TEST_VALUE" -VarInput "TEST_VALUE" -InstId "TEST_VALUE" -Internal "TEST_VALUE" -LastAction "TEST_VALUE" -Message "TEST_VALUE" -MetaVersion "TEST_VALUE" -Name "TEST_VALUE" -Output "TEST_VALUE" -PauseReason "TEST_VALUE" -Progress "TEST_VALUE" -Properties "TEST_VALUE" -RetryFromTaskName "TEST_VALUE" -Src "TEST_VALUE" -StartTime "TEST_VALUE" -Status "TEST_VALUE" -SuccessWorkflowCleanupDuration "TEST_VALUE" -TraceId "TEST_VALUE" -Type "TEST_VALUE" -UserActionRequired "TEST_VALUE" -UserId "TEST_VALUE" -WaitReason "TEST_VALUE" -WorkflowCtx "TEST_VALUE" -WorkflowMetaType "TEST_VALUE" -WorkflowTaskCount "TEST_VALUE" -Var0RollbackWorkflow "TEST_VALUE" -Var1SwitchProfile "TEST_VALUE" -Var2ClusterProfile "TEST_VALUE" -Account "TEST_VALUE" -AssociatedObject "TEST_VALUE" -Organization "TEST_VALUE" -ParentTaskInfo "TEST_VALUE" -PendingDynamicWorkflowInfo "TEST_VALUE" -Permission "TEST_VALUE" -TaskInfos "TEST_VALUE" -WorkflowDefinition "TEST_VALUE"
            #$NewObject | Should -BeOfType WorkflowWorkflowInfo
            #$NewObject.property | Should -Be 0
        }
    }
}
