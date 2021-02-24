#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2021-02-05T15:05:56Z.
# Version: 1.0.9-3562
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'Intersight' -name 'IntersightHyperflexClusterProfileAllOf' {
    Context 'IntersightHyperflexClusterProfileAllOf' {
        It 'Initialize-IntersightHyperflexClusterProfileAllOf' {
            # a simple test to create an object
            #$NewObject = Initialize-IntersightHyperflexClusterProfileAllOf -ClassId "TEST_VALUE" -ObjectType "TEST_VALUE" -DataIpAddress "TEST_VALUE" -HostNamePrefix "TEST_VALUE" -HypervisorControlIpAddress "TEST_VALUE" -HypervisorType "TEST_VALUE" -MacAddressPrefix "TEST_VALUE" -MgmtIpAddress "TEST_VALUE" -MgmtPlatform "TEST_VALUE" -Replication "TEST_VALUE" -StorageDataVlan "TEST_VALUE" -StorageType "TEST_VALUE" -WwxnPrefix "TEST_VALUE" -AssociatedCluster "TEST_VALUE" -AssociatedComputeCluster "TEST_VALUE" -AutoSupport "TEST_VALUE" -ClusterNetwork "TEST_VALUE" -ClusterStorage "TEST_VALUE" -ConfigResult "TEST_VALUE" -ExtFcStorage "TEST_VALUE" -ExtIscsiStorage "TEST_VALUE" -Httpproxypolicy "TEST_VALUE" -LocalCredential "TEST_VALUE" -NodeConfig "TEST_VALUE" -NodeProfileConfig "TEST_VALUE" -Organization "TEST_VALUE" -ProxySetting "TEST_VALUE" -RunningWorkflows "TEST_VALUE" -SoftwareVersion "TEST_VALUE" -SysConfig "TEST_VALUE" -UcsmConfig "TEST_VALUE" -VcenterConfig "TEST_VALUE"
            #$NewObject | Should -BeOfType HyperflexClusterProfileAllOf
            #$NewObject.property | Should -Be 0
        }
    }
}
