#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2021-02-05T15:05:56Z.
# Version: 1.0.9-3562
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'Intersight' -name 'IntersightNiatelemetryNiaFeatureUsageAllOf' {
    Context 'IntersightNiatelemetryNiaFeatureUsageAllOf' {
        It 'Initialize-IntersightNiatelemetryNiaFeatureUsageAllOf' {
            # a simple test to create an object
            #$NewObject = Initialize-IntersightNiatelemetryNiaFeatureUsageAllOf -ClassId "TEST_VALUE" -ObjectType "TEST_VALUE" -ApicCount "TEST_VALUE" -AppCenterCount "TEST_VALUE" -Ave "TEST_VALUE" -BdCount "TEST_VALUE" -CallhomeSmartGroupCount "TEST_VALUE" -CloudSecPeerCount "TEST_VALUE" -CompHvCount "TEST_VALUE" -ConfigExportpCount "TEST_VALUE" -ConfigJobCount "TEST_VALUE" -ConsistencyCheckerApp "TEST_VALUE" -ContractCount "TEST_VALUE" -DnsCount "TEST_VALUE" -EigrpCount "TEST_VALUE" -EpgCount "TEST_VALUE" -FabricSetuppCount "TEST_VALUE" -FcoeNportCount "TEST_VALUE" -FcoeNportDomCount "TEST_VALUE" -FcoeNportVlanCount "TEST_VALUE" -FcoeNportVsanCount "TEST_VALUE" -FvSlaDefCount "TEST_VALUE" -HsrpCount "TEST_VALUE" -IbgpCount "TEST_VALUE" -IgmpAccessListCount "TEST_VALUE" -IgmpSnoop "TEST_VALUE" -IpEpgCount "TEST_VALUE" -IsTechSupportCollected "TEST_VALUE" -IsisCount "TEST_VALUE" -L2Multicast "TEST_VALUE" -LeafCount "TEST_VALUE" -MaintenanceModeCount "TEST_VALUE" -ManagementOverV6Count "TEST_VALUE" -MicrosoftUsegVmmEpPdCount "TEST_VALUE" -NetFlowCount "TEST_VALUE" -Nir "TEST_VALUE" -OpenStack "TEST_VALUE" -OpflexKubernetesCount "TEST_VALUE" -OspfCount "TEST_VALUE" -PoeCount "TEST_VALUE" -PortSecurityCount "TEST_VALUE" -QinVniTunnelCount "TEST_VALUE" -QosCongCount "TEST_VALUE" -QosPfcPolCount "TEST_VALUE" -RecordType "TEST_VALUE" -RecordVersion "TEST_VALUE" -RemoteLeafCount "TEST_VALUE" -ScvmmCount "TEST_VALUE" -SharedL3OutCount "TEST_VALUE" -SiteName "TEST_VALUE" -SmartCallHome "TEST_VALUE" -SmartLicense "TEST_VALUE" -SnapshotCount "TEST_VALUE" -Snmp "TEST_VALUE" -SnmpGroupCount "TEST_VALUE" -SpanCount "TEST_VALUE" -SpanDstCount "TEST_VALUE" -SpanSrcCount "TEST_VALUE" -SpineCount "TEST_VALUE" -SshOverV6Count "TEST_VALUE" -SyslogGroupCount "TEST_VALUE" -SyslogOverV6Count "TEST_VALUE" -TacacsGroupCount "TEST_VALUE" -TenantCount "TEST_VALUE" -TierTwoLeafCount "TEST_VALUE" -Twamp "TEST_VALUE" -Useg "TEST_VALUE" -VmWareVdsCount "TEST_VALUE" -VmmCtrlrpCount "TEST_VALUE" -VmmDompCount "TEST_VALUE" -VmmEpPdCount "TEST_VALUE" -VnsmDevCount "TEST_VALUE" -VpodCount "TEST_VALUE" -RegisteredDevice "TEST_VALUE"
            #$NewObject | Should -BeOfType NiatelemetryNiaFeatureUsageAllOf
            #$NewObject.property | Should -Be 0
        }
    }
}
