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

Definition of the list of properties defined in 'hyperflex.Cluster', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER AlarmSummary
No description available.
.PARAMETER Summary
No description available.
.PARAMETER Health
No description available.
.PARAMETER RegisteredDevice
No description available.
.OUTPUTS

HyperflexClusterAllOf<PSCustomObject>
#>

function Initialize-IntersightHyperflexClusterAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.Cluster")]
        [String]
        ${ClassId} = "hyperflex.Cluster",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.Cluster")]
        [String]
        ${ObjectType} = "hyperflex.Cluster",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AlarmSummary},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Summary},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Health},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightHyperflexClusterAllOf' | Write-Debug
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
            "AlarmSummary" = ${AlarmSummary}
            "Summary" = ${Summary}
            "Health" = ${Health}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HyperflexClusterAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to HyperflexClusterAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HyperflexClusterAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToHyperflexClusterAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightHyperflexClusterAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightHyperflexClusterAllOf
        $AllProperties = ("ClassId", "ObjectType", "AlarmSummary", "CapacityRunway", "ClusterName", "ClusterType", "ClusterUuid", "ComputeNodeCount", "ConvergedNodeCount", "DeploymentType", "DeviceId", "FltAggr", "HxVersion", "HxdpBuildVersion", "HypervisorType", "HypervisorVersion", "Summary", "UtilizationPercentage", "UtilizationTrendPercentage", "VmCount", "Alarm", "Health", "Nodes", "RegisteredDevice", "StorageContainers", "Volumes")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AlarmSummary"))) { #optional property not found
            $AlarmSummary = $null
        } else {
            $AlarmSummary = $JsonParameters.PSobject.Properties["AlarmSummary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CapacityRunway"))) { #optional property not found
            $CapacityRunway = $null
        } else {
            $CapacityRunway = $JsonParameters.PSobject.Properties["CapacityRunway"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClusterName"))) { #optional property not found
            $ClusterName = $null
        } else {
            $ClusterName = $JsonParameters.PSobject.Properties["ClusterName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClusterType"))) { #optional property not found
            $ClusterType = $null
        } else {
            $ClusterType = $JsonParameters.PSobject.Properties["ClusterType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClusterUuid"))) { #optional property not found
            $ClusterUuid = $null
        } else {
            $ClusterUuid = $JsonParameters.PSobject.Properties["ClusterUuid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ComputeNodeCount"))) { #optional property not found
            $ComputeNodeCount = $null
        } else {
            $ComputeNodeCount = $JsonParameters.PSobject.Properties["ComputeNodeCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConvergedNodeCount"))) { #optional property not found
            $ConvergedNodeCount = $null
        } else {
            $ConvergedNodeCount = $JsonParameters.PSobject.Properties["ConvergedNodeCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeploymentType"))) { #optional property not found
            $DeploymentType = $null
        } else {
            $DeploymentType = $JsonParameters.PSobject.Properties["DeploymentType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeviceId"))) { #optional property not found
            $DeviceId = $null
        } else {
            $DeviceId = $JsonParameters.PSobject.Properties["DeviceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FltAggr"))) { #optional property not found
            $FltAggr = $null
        } else {
            $FltAggr = $JsonParameters.PSobject.Properties["FltAggr"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HxVersion"))) { #optional property not found
            $HxVersion = $null
        } else {
            $HxVersion = $JsonParameters.PSobject.Properties["HxVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HxdpBuildVersion"))) { #optional property not found
            $HxdpBuildVersion = $null
        } else {
            $HxdpBuildVersion = $JsonParameters.PSobject.Properties["HxdpBuildVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HypervisorType"))) { #optional property not found
            $HypervisorType = $null
        } else {
            $HypervisorType = $JsonParameters.PSobject.Properties["HypervisorType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HypervisorVersion"))) { #optional property not found
            $HypervisorVersion = $null
        } else {
            $HypervisorVersion = $JsonParameters.PSobject.Properties["HypervisorVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Summary"))) { #optional property not found
            $Summary = $null
        } else {
            $Summary = $JsonParameters.PSobject.Properties["Summary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UtilizationPercentage"))) { #optional property not found
            $UtilizationPercentage = $null
        } else {
            $UtilizationPercentage = $JsonParameters.PSobject.Properties["UtilizationPercentage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UtilizationTrendPercentage"))) { #optional property not found
            $UtilizationTrendPercentage = $null
        } else {
            $UtilizationTrendPercentage = $JsonParameters.PSobject.Properties["UtilizationTrendPercentage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VmCount"))) { #optional property not found
            $VmCount = $null
        } else {
            $VmCount = $JsonParameters.PSobject.Properties["VmCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Alarm"))) { #optional property not found
            $Alarm = $null
        } else {
            $Alarm = $JsonParameters.PSobject.Properties["Alarm"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Health"))) { #optional property not found
            $Health = $null
        } else {
            $Health = $JsonParameters.PSobject.Properties["Health"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Nodes"))) { #optional property not found
            $Nodes = $null
        } else {
            $Nodes = $JsonParameters.PSobject.Properties["Nodes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StorageContainers"))) { #optional property not found
            $StorageContainers = $null
        } else {
            $StorageContainers = $JsonParameters.PSobject.Properties["StorageContainers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Volumes"))) { #optional property not found
            $Volumes = $null
        } else {
            $Volumes = $JsonParameters.PSobject.Properties["Volumes"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AlarmSummary" = ${AlarmSummary}
            "CapacityRunway" = ${CapacityRunway}
            "ClusterName" = ${ClusterName}
            "ClusterType" = ${ClusterType}
            "ClusterUuid" = ${ClusterUuid}
            "ComputeNodeCount" = ${ComputeNodeCount}
            "ConvergedNodeCount" = ${ConvergedNodeCount}
            "DeploymentType" = ${DeploymentType}
            "DeviceId" = ${DeviceId}
            "FltAggr" = ${FltAggr}
            "HxVersion" = ${HxVersion}
            "HxdpBuildVersion" = ${HxdpBuildVersion}
            "HypervisorType" = ${HypervisorType}
            "HypervisorVersion" = ${HypervisorVersion}
            "Summary" = ${Summary}
            "UtilizationPercentage" = ${UtilizationPercentage}
            "UtilizationTrendPercentage" = ${UtilizationTrendPercentage}
            "VmCount" = ${VmCount}
            "Alarm" = ${Alarm}
            "Health" = ${Health}
            "Nodes" = ${Nodes}
            "RegisteredDevice" = ${RegisteredDevice}
            "StorageContainers" = ${StorageContainers}
            "Volumes" = ${Volumes}
        }

        return $PSO
    }

}

