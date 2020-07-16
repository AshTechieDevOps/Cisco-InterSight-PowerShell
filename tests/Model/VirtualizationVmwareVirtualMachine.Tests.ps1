#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2020-07-16T08:45:19Z.
# Version: 1.0.9-2020
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'Intersight' -name 'IntersightVirtualizationVmwareVirtualMachine' {
    Context 'IntersightVirtualizationVmwareVirtualMachine' {
        It 'Initialize-IntersightVirtualizationVmwareVirtualMachine' {
            # a simple test to create an object
            #$NewObject = Initialize-IntersightVirtualizationVmwareVirtualMachine -AccountMoid "TEST_VALUE" -ClassId "TEST_VALUE" -CreateTime "TEST_VALUE" -DomainGroupMoid "TEST_VALUE" -ModTime "TEST_VALUE" -Moid "TEST_VALUE" -ObjectType "TEST_VALUE" -Owners "TEST_VALUE" -SharedScope "TEST_VALUE" -Tags "TEST_VALUE" -VersionContext "TEST_VALUE" -Ancestors "TEST_VALUE" -Parent "TEST_VALUE" -PermissionResources "TEST_VALUE" -DisplayNames "TEST_VALUE" -RegisteredDevice "TEST_VALUE" -Capacity "TEST_VALUE" -GuestInfo "TEST_VALUE" -HypervisorType "TEST_VALUE" -Identity "TEST_VALUE" -IpAddress "TEST_VALUE" -MemoryCapacity "TEST_VALUE" -Name "TEST_VALUE" -PowerState "TEST_VALUE" -ProcessorCapacity "TEST_VALUE" -Uuid "TEST_VALUE" -Annotation "TEST_VALUE" -BootTime "TEST_VALUE" -ConfigName "TEST_VALUE" -ConnectionState "TEST_VALUE" -CpuHotAddEnabled "TEST_VALUE" -CpuShares "TEST_VALUE" -CpuSocketInfo "TEST_VALUE" -CustomAttributes "TEST_VALUE" -DefaultPowerOffType "TEST_VALUE" -DhcpEnabled "TEST_VALUE" -DiskCommitInfo "TEST_VALUE" -DnsServerList "TEST_VALUE" -DnsSuffixList "TEST_VALUE" -Folder "TEST_VALUE" -GuestState "TEST_VALUE" -InstanceUuid "TEST_VALUE" -IsTemplate "TEST_VALUE" -MacAddress "TEST_VALUE" -MemShares "TEST_VALUE" -MemoryHotAddEnabled "TEST_VALUE" -NetworkCount "TEST_VALUE" -PortGroups "TEST_VALUE" -ProtectedVm "TEST_VALUE" -RemoteDisplayInfo "TEST_VALUE" -RemoteDisplayVncEnabled "TEST_VALUE" -ResourcePool "TEST_VALUE" -ResourcePoolOwner "TEST_VALUE" -ResourcePoolParent "TEST_VALUE" -ToolRunningStatus "TEST_VALUE" -ToolsVersion "TEST_VALUE" -VmDiskCount "TEST_VALUE" -VmOverallStatus "TEST_VALUE" -VmPath "TEST_VALUE" -VmVersion "TEST_VALUE" -VmVnicCount "TEST_VALUE" -VnicDeviceConfigId "TEST_VALUE" -Cluster "TEST_VALUE" -Datacenter "TEST_VALUE" -Datastores "TEST_VALUE" -VarHost "TEST_VALUE"
            #$NewObject | Should -BeOfType VirtualizationVmwareVirtualMachine
            #$NewObject.property | Should -Be 0
        }
    }
}
