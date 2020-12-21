#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2020-12-08T20:53:20Z.
# Version: 1.0.9-2908
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

A credential which can be used to authenticate with a managed target.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data. The enum values provides the list of concrete types that can be instantiated from this abstract type.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property. The enum values provides the list of concrete types that can be instantiated from this abstract type.
.OUTPUTS

AssetCredential<PSCustomObject>
#>

function Initialize-IntersightAssetCredential {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("access.AddressType", "adapter.AdapterConfig", "adapter.DceInterfaceSettings", "adapter.EthSettings", "adapter.FcSettings", "adapter.PortChannelSettings", "appliance.ApiStatus", "appliance.CertRenewalPhase", "appliance.KeyValuePair", "appliance.StatusCheck", "asset.AddressInformation", "asset.ApiKeyCredential", "asset.ClientCertificateCredential", "asset.CloudConnection", "asset.ConnectionControlMessage", "asset.ContractInformation", "asset.CustomerInformation", "asset.DeviceInformation", "asset.DeviceStatistics", "asset.DeviceTransaction", "asset.GlobalUltimate", "asset.HttpConnection", "asset.IntersightDeviceConnectorConnection", "asset.OauthClientIdSecretCredential", "asset.OrchestrationHitachiVirtualStoragePlatformOptions", "asset.OrchestrationService", "asset.ParentConnectionSignature", "asset.ProductInformation", "asset.SudiInfo", "asset.TargetStatusDetails", "asset.UsernamePasswordCredential", "asset.WorkloadOptimizerAmazonWebServicesBillingOptions", "asset.WorkloadOptimizerMicrosoftAzureEnterpriseAgreementOptions", "asset.WorkloadOptimizerMicrosoftAzureServicePrincipalOptions", "asset.WorkloadOptimizerService", "asset.WorkloadOptimizerVmwareVcenterOptions", "boot.Bootloader", "boot.Iscsi", "boot.LocalCdd", "boot.LocalDisk", "boot.Nvme", "boot.PchStorage", "boot.Pxe", "boot.San", "boot.SdCard", "boot.UefiShell", "boot.Usb", "boot.VirtualMedia", "capability.PortRange", "capability.SwitchNetworkLimits", "capability.SwitchStorageLimits", "capability.SwitchSystemLimits", "capability.SwitchingModeCapability", "cmrf.CmRf", "comm.IpV4Interface", "comm.IpV6Interface", "compute.AlarmSummary", "compute.IpAddress", "compute.PersistentMemoryModule", "compute.PersistentMemoryOperation", "compute.ServerConfig", "cond.AlarmSummary", "config.MoRef", "connector.CloseStreamMessage", "connector.CommandControlMessage", "connector.CommandTerminalStream", "connector.ExpectPrompt", "connector.FetchStreamMessage", "connector.FileChecksum", "connector.FileMessage", "connector.HttpRequest", "connector.SshConfig", "connector.SshMessage", "connector.StartStream", "connector.StartStreamFromDevice", "connector.StreamAcknowledge", "connector.StreamInput", "connector.StreamKeepalive", "connector.Url", "connector.XmlApiMessage", "connectorpack.ConnectorPackUpdate", "content.ComplexType", "content.Parameter", "content.TextParameter", "equipment.IoCardIdentity", "fabric.LldpSettings", "fabric.PortIdentifier", "fabric.QosClass", "fabric.VlanSettings", "fcpool.Block", "feedback.FeedbackData", "firmware.ChassisUpgradeImpact", "firmware.CifsServer", "firmware.ComponentImpact", "firmware.ComponentMeta", "firmware.DirectDownload", "firmware.FabricUpgradeImpact", "firmware.FirmwareInventory", "firmware.HttpServer", "firmware.NetworkShare", "firmware.NfsServer", "firmware.ServerUpgradeImpact", "forecast.Model", "hcl.Constraint", "hcl.Firmware", "hcl.HardwareCompatibilityProfile", "hcl.Product", "hyperflex.AlarmSummary", "hyperflex.AppSettingConstraint", "hyperflex.DiskStatus", "hyperflex.FeatureLimitEntry", "hyperflex.HealthCheckScriptInfo", "hyperflex.HxLinkDt", "hyperflex.HxNetworkAddressDt", "hyperflex.HxResiliencyInfoDt", "hyperflex.HxUuIdDt", "hyperflex.HxZoneResiliencyInfoDt", "hyperflex.IpAddrRange", "hyperflex.LogicalAvailabilityZone", "hyperflex.MacAddrPrefixRange", "hyperflex.NamedVlan", "hyperflex.NamedVsan", "hyperflex.ServerFirmwareVersionInfo", "hyperflex.ServerModelEntry", "hyperflex.StPlatformClusterHealingInfo", "hyperflex.StPlatformClusterResiliencyInfo", "hyperflex.Summary", "hyperflex.VdiskConfig", "hyperflex.VmDisk", "hyperflex.VmInterface", "hyperflex.WwxnPrefixRange", "i18n.Message", "i18n.MessageParam", "iaas.LicenseKeysInfo", "iaas.LicenseUtilizationInfo", "iaas.WorkflowSteps", "iam.AccountPermissions", "iam.ClientMeta", "iam.EndPointPasswordProperties", "iam.FeatureDefinition", "iam.GroupPermissionToRoles", "iam.LdapBaseProperties", "iam.LdapDnsParameters", "iam.PermissionReference", "iam.PermissionToRoles", "iam.Rule", "iam.SsoSessionAttributes", "imcconnector.WebUiMessage", "infra.HardwareInfo", "infra.MetaData", "inventory.InventoryMo", "ippool.IpV4Block", "ippool.IpV4Config", "ippool.IpV6Block", "ippool.IpV6Config", "kubernetes.ActionInfo", "kubernetes.CalicoConfig", "kubernetes.ClusterCertificateConfiguration", "kubernetes.ClusterManagementConfig", "kubernetes.Configuration", "kubernetes.DaemonSetStatus", "kubernetes.DeploymentStatus", "kubernetes.EsxiVirtualMachineInfraConfig", "kubernetes.HyperFlexApVirtualMachineInfraConfig", "kubernetes.IngressStatus", "kubernetes.KeyValue", "kubernetes.LoadBalancer", "kubernetes.NodeAddress", "kubernetes.NodeGroupLabel", "kubernetes.NodeGroupTaint", "kubernetes.NodeInfo", "kubernetes.NodeSpec", "kubernetes.NodeStatus", "kubernetes.ObjectMeta", "kubernetes.PodStatus", "kubernetes.ProxyConfig", "kubernetes.ServiceStatus", "kubernetes.StatefulSetStatus", "macpool.Block", "memory.PersistentMemoryGoal", "memory.PersistentMemoryLocalSecurity", "memory.PersistentMemoryLogicalNamespace", "meta.AccessPrivilege", "meta.DisplayNameDefinition", "meta.PropDefinition", "meta.RelationshipDefinition", "mo.MoRef", "mo.Tag", "mo.VersionContext", "niaapi.Detail", "niaapi.NewReleaseDetail", "niaapi.RevisionInfo", "niaapi.SoftwareRegex", "niaapi.VersionRegexPlatform", "niatelemetry.Diskinfo", "onprem.ImagePackage", "onprem.Schedule", "onprem.UpgradeNote", "onprem.UpgradePhase", "os.Answers", "os.Ipv4Configuration", "os.Ipv6Configuration", "os.PhysicalDisk", "os.PhysicalDiskResponse", "os.PlaceHolder", "os.VirtualDrive", "os.VirtualDriveResponse", "os.WindowsParameters", "pkix.DistinguishedName", "pkix.EcdsaKeySpec", "pkix.EddsaKeySpec", "pkix.RsaAlgorithm", "pkix.SubjectAlternateName", "policy.ConfigChange", "policy.ConfigContext", "policy.ConfigResultContext", "policyinventory.JobInfo", "recovery.BackupSchedule", "resource.PerTypeCombinedSelector", "resource.Selector", "resource.SourceToPermissionResources", "resource.SourceToPermissionResourcesHolder", "sdcard.Diagnostics", "sdcard.Drivers", "sdcard.HostUpgradeUtility", "sdcard.OperatingSystem", "sdcard.Partition", "sdcard.ServerConfigurationUtility", "sdcard.UserPartition", "sdwan.NetworkConfigurationType", "sdwan.TemplateInputsType", "snmp.Trap", "snmp.User", "softwarerepository.ApplianceUpload", "softwarerepository.CifsServer", "softwarerepository.ConstraintModels", "softwarerepository.HttpServer", "softwarerepository.ImportResult", "softwarerepository.LocalMachine", "softwarerepository.NfsServer", "storage.HitachiArrayUtilization", "storage.HitachiCapacity", "storage.HitachiInitiator", "storage.Initiator", "storage.LocalDisk", "storage.PureArrayUtilization", "storage.PureDiskUtilization", "storage.PureHostUtilization", "storage.PureReplicationBlackout", "storage.PureVolumeUtilization", "storage.RemoteKeySetting", "storage.SpanGroup", "storage.StorageContainerUtilization", "storage.VirtualDriveConfig", "storage.VolumeUtilization", "syslog.LocalFileLoggingClient", "syslog.RemoteLoggingClient", "tam.Action", "tam.ApiDataSource", "tam.Identifiers", "tam.PsirtSeverity", "tam.QueryEntry", "tam.SecurityAdvisoryDetails", "tam.TextFsmTemplateDataSource", "techsupportmanagement.ApplianceParam", "techsupportmanagement.NiaParam", "techsupportmanagement.PlatformParam", "ucsd.ConnectorPack", "ucsd.UcsdRestoreParameters", "ucsdconnector.RestClientMessage", "uuidpool.UuidBlock", "virtualization.ActionInfo", "virtualization.CloudInitConfig", "virtualization.ComputeCapacity", "virtualization.CpuInfo", "virtualization.EsxiCloneCustomSpec", "virtualization.EsxiOvaCustomSpec", "virtualization.EsxiVmComputeConfiguration", "virtualization.EsxiVmConfiguration", "virtualization.EsxiVmNetworkConfiguration", "virtualization.EsxiVmStorageConfiguration", "virtualization.GuestInfo", "virtualization.HxapVmConfiguration", "virtualization.MemoryCapacity", "virtualization.NetworkInterface", "virtualization.ProductInfo", "virtualization.StorageCapacity", "virtualization.VirtualDiskConfig", "virtualization.VirtualMachineDisk", "virtualization.VmEsxiDisk", "virtualization.VmwareRemoteDisplayInfo", "virtualization.VmwareResourceConsumption", "virtualization.VmwareVmCpuShareInfo", "virtualization.VmwareVmCpuSocketInfo", "virtualization.VmwareVmDiskCommitInfo", "virtualization.VmwareVmMemoryShareInfo", "vmedia.Mapping", "vnic.ArfsSettings", "vnic.Cdn", "vnic.CompletionQueueSettings", "vnic.EthInterruptSettings", "vnic.EthRxQueueSettings", "vnic.EthTxQueueSettings", "vnic.FcErrorRecoverySettings", "vnic.FcInterruptSettings", "vnic.FcQueueSettings", "vnic.FlogiSettings", "vnic.NvgreSettings", "vnic.PlacementSettings", "vnic.PlogiSettings", "vnic.RoceSettings", "vnic.RssHashSettings", "vnic.ScsiQueueSettings", "vnic.TcpOffloadSettings", "vnic.UsnicSettings", "vnic.VifStatus", "vnic.VlanSettings", "vnic.VmqSettings", "vnic.VsanSettings", "vnic.VxlanSettings", "workflow.ArrayDataType", "workflow.AssociatedRoles", "workflow.CliCommand", "workflow.Constraints", "workflow.CustomArrayItem", "workflow.CustomDataProperty", "workflow.CustomDataType", "workflow.DecisionCase", "workflow.DecisionTask", "workflow.DefaultValue", "workflow.DisplayMeta", "workflow.DynamicWorkflowActionTaskList", "workflow.EnumEntry", "workflow.ExpectPrompt", "workflow.FailureEndTask", "workflow.FileDownloadOp", "workflow.FileOperations", "workflow.FileTemplateOp", "workflow.FileTransfer", "workflow.ForkTask", "workflow.InitiatorContext", "workflow.InternalProperties", "workflow.JoinTask", "workflow.LoopTask", "workflow.Message", "workflow.MoReferenceArrayItem", "workflow.MoReferenceDataType", "workflow.MoReferenceProperty", "workflow.ParameterSet", "workflow.PrimitiveArrayItem", "workflow.PrimitiveDataProperty", "workflow.PrimitiveDataType", "workflow.Properties", "workflow.ResultHandler", "workflow.RollbackTask", "workflow.RollbackWorkflowTask", "workflow.SshCmd", "workflow.SshConfig", "workflow.SshSession", "workflow.StartTask", "workflow.SubWorkflowTask", "workflow.SuccessEndTask", "workflow.TargetContext", "workflow.TargetDataType", "workflow.TargetProperty", "workflow.TaskConstraints", "workflow.TaskRetryInfo", "workflow.UiInputFilter", "workflow.ValidationError", "workflow.ValidationInformation", "workflow.WaitTask", "workflow.WaitTaskPrompt", "workflow.WebApi", "workflow.WorkerTask", "workflow.WorkflowCtx", "workflow.WorkflowInfoProperties", "workflow.WorkflowProperties", "workflow.XmlApi", "x509.Certificate")]
        [String]
        ${ClassId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("access.AddressType", "adapter.AdapterConfig", "adapter.DceInterfaceSettings", "adapter.EthSettings", "adapter.FcSettings", "adapter.PortChannelSettings", "appliance.ApiStatus", "appliance.CertRenewalPhase", "appliance.KeyValuePair", "appliance.StatusCheck", "asset.AddressInformation", "asset.ApiKeyCredential", "asset.ClientCertificateCredential", "asset.CloudConnection", "asset.ConnectionControlMessage", "asset.ContractInformation", "asset.CustomerInformation", "asset.DeviceInformation", "asset.DeviceStatistics", "asset.DeviceTransaction", "asset.GlobalUltimate", "asset.HttpConnection", "asset.IntersightDeviceConnectorConnection", "asset.OauthClientIdSecretCredential", "asset.OrchestrationHitachiVirtualStoragePlatformOptions", "asset.OrchestrationService", "asset.ParentConnectionSignature", "asset.ProductInformation", "asset.SudiInfo", "asset.TargetStatusDetails", "asset.UsernamePasswordCredential", "asset.WorkloadOptimizerAmazonWebServicesBillingOptions", "asset.WorkloadOptimizerMicrosoftAzureEnterpriseAgreementOptions", "asset.WorkloadOptimizerMicrosoftAzureServicePrincipalOptions", "asset.WorkloadOptimizerService", "asset.WorkloadOptimizerVmwareVcenterOptions", "boot.Bootloader", "boot.Iscsi", "boot.LocalCdd", "boot.LocalDisk", "boot.Nvme", "boot.PchStorage", "boot.Pxe", "boot.San", "boot.SdCard", "boot.UefiShell", "boot.Usb", "boot.VirtualMedia", "capability.PortRange", "capability.SwitchNetworkLimits", "capability.SwitchStorageLimits", "capability.SwitchSystemLimits", "capability.SwitchingModeCapability", "cmrf.CmRf", "comm.IpV4Interface", "comm.IpV6Interface", "compute.AlarmSummary", "compute.IpAddress", "compute.PersistentMemoryModule", "compute.PersistentMemoryOperation", "compute.ServerConfig", "cond.AlarmSummary", "config.MoRef", "connector.CloseStreamMessage", "connector.CommandControlMessage", "connector.CommandTerminalStream", "connector.ExpectPrompt", "connector.FetchStreamMessage", "connector.FileChecksum", "connector.FileMessage", "connector.HttpRequest", "connector.SshConfig", "connector.SshMessage", "connector.StartStream", "connector.StartStreamFromDevice", "connector.StreamAcknowledge", "connector.StreamInput", "connector.StreamKeepalive", "connector.Url", "connector.XmlApiMessage", "connectorpack.ConnectorPackUpdate", "content.ComplexType", "content.Parameter", "content.TextParameter", "equipment.IoCardIdentity", "fabric.LldpSettings", "fabric.PortIdentifier", "fabric.QosClass", "fabric.VlanSettings", "fcpool.Block", "feedback.FeedbackData", "firmware.ChassisUpgradeImpact", "firmware.CifsServer", "firmware.ComponentImpact", "firmware.ComponentMeta", "firmware.DirectDownload", "firmware.FabricUpgradeImpact", "firmware.FirmwareInventory", "firmware.HttpServer", "firmware.NetworkShare", "firmware.NfsServer", "firmware.ServerUpgradeImpact", "forecast.Model", "hcl.Constraint", "hcl.Firmware", "hcl.HardwareCompatibilityProfile", "hcl.Product", "hyperflex.AlarmSummary", "hyperflex.AppSettingConstraint", "hyperflex.DiskStatus", "hyperflex.FeatureLimitEntry", "hyperflex.HealthCheckScriptInfo", "hyperflex.HxLinkDt", "hyperflex.HxNetworkAddressDt", "hyperflex.HxResiliencyInfoDt", "hyperflex.HxUuIdDt", "hyperflex.HxZoneResiliencyInfoDt", "hyperflex.IpAddrRange", "hyperflex.LogicalAvailabilityZone", "hyperflex.MacAddrPrefixRange", "hyperflex.NamedVlan", "hyperflex.NamedVsan", "hyperflex.ServerFirmwareVersionInfo", "hyperflex.ServerModelEntry", "hyperflex.StPlatformClusterHealingInfo", "hyperflex.StPlatformClusterResiliencyInfo", "hyperflex.Summary", "hyperflex.VdiskConfig", "hyperflex.VmDisk", "hyperflex.VmInterface", "hyperflex.WwxnPrefixRange", "i18n.Message", "i18n.MessageParam", "iaas.LicenseKeysInfo", "iaas.LicenseUtilizationInfo", "iaas.WorkflowSteps", "iam.AccountPermissions", "iam.ClientMeta", "iam.EndPointPasswordProperties", "iam.FeatureDefinition", "iam.GroupPermissionToRoles", "iam.LdapBaseProperties", "iam.LdapDnsParameters", "iam.PermissionReference", "iam.PermissionToRoles", "iam.Rule", "iam.SsoSessionAttributes", "imcconnector.WebUiMessage", "infra.HardwareInfo", "infra.MetaData", "inventory.InventoryMo", "ippool.IpV4Block", "ippool.IpV4Config", "ippool.IpV6Block", "ippool.IpV6Config", "kubernetes.ActionInfo", "kubernetes.CalicoConfig", "kubernetes.ClusterCertificateConfiguration", "kubernetes.ClusterManagementConfig", "kubernetes.Configuration", "kubernetes.DaemonSetStatus", "kubernetes.DeploymentStatus", "kubernetes.EsxiVirtualMachineInfraConfig", "kubernetes.HyperFlexApVirtualMachineInfraConfig", "kubernetes.IngressStatus", "kubernetes.KeyValue", "kubernetes.LoadBalancer", "kubernetes.NodeAddress", "kubernetes.NodeGroupLabel", "kubernetes.NodeGroupTaint", "kubernetes.NodeInfo", "kubernetes.NodeSpec", "kubernetes.NodeStatus", "kubernetes.ObjectMeta", "kubernetes.PodStatus", "kubernetes.ProxyConfig", "kubernetes.ServiceStatus", "kubernetes.StatefulSetStatus", "macpool.Block", "memory.PersistentMemoryGoal", "memory.PersistentMemoryLocalSecurity", "memory.PersistentMemoryLogicalNamespace", "meta.AccessPrivilege", "meta.DisplayNameDefinition", "meta.PropDefinition", "meta.RelationshipDefinition", "mo.MoRef", "mo.Tag", "mo.VersionContext", "niaapi.Detail", "niaapi.NewReleaseDetail", "niaapi.RevisionInfo", "niaapi.SoftwareRegex", "niaapi.VersionRegexPlatform", "niatelemetry.Diskinfo", "onprem.ImagePackage", "onprem.Schedule", "onprem.UpgradeNote", "onprem.UpgradePhase", "os.Answers", "os.Ipv4Configuration", "os.Ipv6Configuration", "os.PhysicalDisk", "os.PhysicalDiskResponse", "os.PlaceHolder", "os.VirtualDrive", "os.VirtualDriveResponse", "os.WindowsParameters", "pkix.DistinguishedName", "pkix.EcdsaKeySpec", "pkix.EddsaKeySpec", "pkix.RsaAlgorithm", "pkix.SubjectAlternateName", "policy.ConfigChange", "policy.ConfigContext", "policy.ConfigResultContext", "policyinventory.JobInfo", "recovery.BackupSchedule", "resource.PerTypeCombinedSelector", "resource.Selector", "resource.SourceToPermissionResources", "resource.SourceToPermissionResourcesHolder", "sdcard.Diagnostics", "sdcard.Drivers", "sdcard.HostUpgradeUtility", "sdcard.OperatingSystem", "sdcard.Partition", "sdcard.ServerConfigurationUtility", "sdcard.UserPartition", "sdwan.NetworkConfigurationType", "sdwan.TemplateInputsType", "snmp.Trap", "snmp.User", "softwarerepository.ApplianceUpload", "softwarerepository.CifsServer", "softwarerepository.ConstraintModels", "softwarerepository.HttpServer", "softwarerepository.ImportResult", "softwarerepository.LocalMachine", "softwarerepository.NfsServer", "storage.HitachiArrayUtilization", "storage.HitachiCapacity", "storage.HitachiInitiator", "storage.Initiator", "storage.LocalDisk", "storage.PureArrayUtilization", "storage.PureDiskUtilization", "storage.PureHostUtilization", "storage.PureReplicationBlackout", "storage.PureVolumeUtilization", "storage.RemoteKeySetting", "storage.SpanGroup", "storage.StorageContainerUtilization", "storage.VirtualDriveConfig", "storage.VolumeUtilization", "syslog.LocalFileLoggingClient", "syslog.RemoteLoggingClient", "tam.Action", "tam.ApiDataSource", "tam.Identifiers", "tam.PsirtSeverity", "tam.QueryEntry", "tam.SecurityAdvisoryDetails", "tam.TextFsmTemplateDataSource", "techsupportmanagement.ApplianceParam", "techsupportmanagement.NiaParam", "techsupportmanagement.PlatformParam", "ucsd.ConnectorPack", "ucsd.UcsdRestoreParameters", "ucsdconnector.RestClientMessage", "uuidpool.UuidBlock", "virtualization.ActionInfo", "virtualization.CloudInitConfig", "virtualization.ComputeCapacity", "virtualization.CpuInfo", "virtualization.EsxiCloneCustomSpec", "virtualization.EsxiOvaCustomSpec", "virtualization.EsxiVmComputeConfiguration", "virtualization.EsxiVmConfiguration", "virtualization.EsxiVmNetworkConfiguration", "virtualization.EsxiVmStorageConfiguration", "virtualization.GuestInfo", "virtualization.HxapVmConfiguration", "virtualization.MemoryCapacity", "virtualization.NetworkInterface", "virtualization.ProductInfo", "virtualization.StorageCapacity", "virtualization.VirtualDiskConfig", "virtualization.VirtualMachineDisk", "virtualization.VmEsxiDisk", "virtualization.VmwareRemoteDisplayInfo", "virtualization.VmwareResourceConsumption", "virtualization.VmwareVmCpuShareInfo", "virtualization.VmwareVmCpuSocketInfo", "virtualization.VmwareVmDiskCommitInfo", "virtualization.VmwareVmMemoryShareInfo", "vmedia.Mapping", "vnic.ArfsSettings", "vnic.Cdn", "vnic.CompletionQueueSettings", "vnic.EthInterruptSettings", "vnic.EthRxQueueSettings", "vnic.EthTxQueueSettings", "vnic.FcErrorRecoverySettings", "vnic.FcInterruptSettings", "vnic.FcQueueSettings", "vnic.FlogiSettings", "vnic.NvgreSettings", "vnic.PlacementSettings", "vnic.PlogiSettings", "vnic.RoceSettings", "vnic.RssHashSettings", "vnic.ScsiQueueSettings", "vnic.TcpOffloadSettings", "vnic.UsnicSettings", "vnic.VifStatus", "vnic.VlanSettings", "vnic.VmqSettings", "vnic.VsanSettings", "vnic.VxlanSettings", "workflow.ArrayDataType", "workflow.AssociatedRoles", "workflow.CliCommand", "workflow.Constraints", "workflow.CustomArrayItem", "workflow.CustomDataProperty", "workflow.CustomDataType", "workflow.DecisionCase", "workflow.DecisionTask", "workflow.DefaultValue", "workflow.DisplayMeta", "workflow.DynamicWorkflowActionTaskList", "workflow.EnumEntry", "workflow.ExpectPrompt", "workflow.FailureEndTask", "workflow.FileDownloadOp", "workflow.FileOperations", "workflow.FileTemplateOp", "workflow.FileTransfer", "workflow.ForkTask", "workflow.InitiatorContext", "workflow.InternalProperties", "workflow.JoinTask", "workflow.LoopTask", "workflow.Message", "workflow.MoReferenceArrayItem", "workflow.MoReferenceDataType", "workflow.MoReferenceProperty", "workflow.ParameterSet", "workflow.PrimitiveArrayItem", "workflow.PrimitiveDataProperty", "workflow.PrimitiveDataType", "workflow.Properties", "workflow.ResultHandler", "workflow.RollbackTask", "workflow.RollbackWorkflowTask", "workflow.SshCmd", "workflow.SshConfig", "workflow.SshSession", "workflow.StartTask", "workflow.SubWorkflowTask", "workflow.SuccessEndTask", "workflow.TargetContext", "workflow.TargetDataType", "workflow.TargetProperty", "workflow.TaskConstraints", "workflow.TaskRetryInfo", "workflow.UiInputFilter", "workflow.ValidationError", "workflow.ValidationInformation", "workflow.WaitTask", "workflow.WaitTaskPrompt", "workflow.WebApi", "workflow.WorkerTask", "workflow.WorkflowCtx", "workflow.WorkflowInfoProperties", "workflow.WorkflowProperties", "workflow.XmlApi", "x509.Certificate")]
        [String]
        ${ObjectType}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightAssetCredential' | Write-Debug
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
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AssetCredential<PSCustomObject>

.DESCRIPTION

Convert from JSON to AssetCredential<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AssetCredential<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToAssetCredential {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightAssetCredential' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightAssetCredential
        $AllProperties = ("ClassId", "ObjectType")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property `ClassId` missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClassId"))) {
            throw "Error! JSON cannot be serialized due to the required property `ClassId` missing."
        } else {
            $ClassId = $JsonParameters.PSobject.Properties["ClassId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ObjectType"))) {
            throw "Error! JSON cannot be serialized due to the required property `ObjectType` missing."
        } else {
            $ObjectType = $JsonParameters.PSobject.Properties["ObjectType"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
        }

        return $PSO
    }

}

