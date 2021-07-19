#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2021-02-05T15:05:56Z.
# Version: 1.0.9-3562
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Status of an application.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Moid
The unique identifier of this Managed Object instance.
.PARAMETER Owners
No description available.
.PARAMETER Tags
No description available.
.PARAMETER VersionContext
No description available.
.PARAMETER Var0ClusterReplicationNetworkPolicy
No description available.
.PARAMETER Parent
No description available.
.PARAMETER ApiStatuses
No description available.
.PARAMETER StatusChecks
No description available.
.PARAMETER GroupStatus
No description available.
.PARAMETER SystemStatus
No description available.
.OUTPUTS

ApplianceAppStatus<PSCustomObject>
#>

function Initialize-IntersightApplianceAppStatus {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("appliance.AppStatus")]
        [String]
        ${ClassId} = "appliance.AppStatus",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("appliance.AppStatus")]
        [String]
        ${ObjectType} = "appliance.AppStatus",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Moid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Owners},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Tags},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VersionContext},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Var0ClusterReplicationNetworkPolicy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Parent},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ApiStatuses},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${StatusChecks},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${GroupStatus},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SystemStatus}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightApplianceAppStatus' | Write-Debug
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
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "_0_ClusterReplicationNetworkPolicy" = ${Var0ClusterReplicationNetworkPolicy}
            "Parent" = ${Parent}
            "ApiStatuses" = ${ApiStatuses}
            "StatusChecks" = ${StatusChecks}
            "GroupStatus" = ${GroupStatus}
            "SystemStatus" = ${SystemStatus}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApplianceAppStatus<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApplianceAppStatus<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApplianceAppStatus<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToApplianceAppStatus {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightApplianceAppStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightApplianceAppStatus
        $AllProperties = ("ClassId", "ObjectType", "AccountMoid", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "Owners", "SharedScope", "Tags", "VersionContext", "_0_ClusterReplicationNetworkPolicy", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "ApiStatuses", "AppLabel", "OperationalStatus", "ReadyCount", "ReplicaCount", "RestartCount1Hour", "RestartCount24Hours", "RestartCount5Mins", "RestartCountTotal", "RunningCount", "StatusChecks", "GroupStatus", "SystemStatus")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'ClassId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClassId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'ClassId' missing."
        } else {
            $ClassId = $JsonParameters.PSobject.Properties["ClassId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ObjectType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'ObjectType' missing."
        } else {
            $ObjectType = $JsonParameters.PSobject.Properties["ObjectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AccountMoid"))) { #optional property not found
            $AccountMoid = $null
        } else {
            $AccountMoid = $JsonParameters.PSobject.Properties["AccountMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CreateTime"))) { #optional property not found
            $CreateTime = $null
        } else {
            $CreateTime = $JsonParameters.PSobject.Properties["CreateTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DomainGroupMoid"))) { #optional property not found
            $DomainGroupMoid = $null
        } else {
            $DomainGroupMoid = $JsonParameters.PSobject.Properties["DomainGroupMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ModTime"))) { #optional property not found
            $ModTime = $null
        } else {
            $ModTime = $JsonParameters.PSobject.Properties["ModTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Moid"))) { #optional property not found
            $Moid = $null
        } else {
            $Moid = $JsonParameters.PSobject.Properties["Moid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Owners"))) { #optional property not found
            $Owners = $null
        } else {
            $Owners = $JsonParameters.PSobject.Properties["Owners"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SharedScope"))) { #optional property not found
            $SharedScope = $null
        } else {
            $SharedScope = $JsonParameters.PSobject.Properties["SharedScope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["Tags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VersionContext"))) { #optional property not found
            $VersionContext = $null
        } else {
            $VersionContext = $JsonParameters.PSobject.Properties["VersionContext"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_0_ClusterReplicationNetworkPolicy"))) { #optional property not found
            $Var0ClusterReplicationNetworkPolicy = $null
        } else {
            $Var0ClusterReplicationNetworkPolicy = $JsonParameters.PSobject.Properties["_0_ClusterReplicationNetworkPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Ancestors"))) { #optional property not found
            $Ancestors = $null
        } else {
            $Ancestors = $JsonParameters.PSobject.Properties["Ancestors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Parent"))) { #optional property not found
            $Parent = $null
        } else {
            $Parent = $JsonParameters.PSobject.Properties["Parent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PermissionResources"))) { #optional property not found
            $PermissionResources = $null
        } else {
            $PermissionResources = $JsonParameters.PSobject.Properties["PermissionResources"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DisplayNames"))) { #optional property not found
            $DisplayNames = $null
        } else {
            $DisplayNames = $JsonParameters.PSobject.Properties["DisplayNames"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ApiStatuses"))) { #optional property not found
            $ApiStatuses = $null
        } else {
            $ApiStatuses = $JsonParameters.PSobject.Properties["ApiStatuses"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AppLabel"))) { #optional property not found
            $AppLabel = $null
        } else {
            $AppLabel = $JsonParameters.PSobject.Properties["AppLabel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperationalStatus"))) { #optional property not found
            $OperationalStatus = $null
        } else {
            $OperationalStatus = $JsonParameters.PSobject.Properties["OperationalStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ReadyCount"))) { #optional property not found
            $ReadyCount = $null
        } else {
            $ReadyCount = $JsonParameters.PSobject.Properties["ReadyCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ReplicaCount"))) { #optional property not found
            $ReplicaCount = $null
        } else {
            $ReplicaCount = $JsonParameters.PSobject.Properties["ReplicaCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RestartCount1Hour"))) { #optional property not found
            $RestartCount1Hour = $null
        } else {
            $RestartCount1Hour = $JsonParameters.PSobject.Properties["RestartCount1Hour"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RestartCount24Hours"))) { #optional property not found
            $RestartCount24Hours = $null
        } else {
            $RestartCount24Hours = $JsonParameters.PSobject.Properties["RestartCount24Hours"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RestartCount5Mins"))) { #optional property not found
            $RestartCount5Mins = $null
        } else {
            $RestartCount5Mins = $JsonParameters.PSobject.Properties["RestartCount5Mins"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RestartCountTotal"))) { #optional property not found
            $RestartCountTotal = $null
        } else {
            $RestartCountTotal = $JsonParameters.PSobject.Properties["RestartCountTotal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RunningCount"))) { #optional property not found
            $RunningCount = $null
        } else {
            $RunningCount = $JsonParameters.PSobject.Properties["RunningCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StatusChecks"))) { #optional property not found
            $StatusChecks = $null
        } else {
            $StatusChecks = $JsonParameters.PSobject.Properties["StatusChecks"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "GroupStatus"))) { #optional property not found
            $GroupStatus = $null
        } else {
            $GroupStatus = $JsonParameters.PSobject.Properties["GroupStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SystemStatus"))) { #optional property not found
            $SystemStatus = $null
        } else {
            $SystemStatus = $JsonParameters.PSobject.Properties["SystemStatus"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AccountMoid" = ${AccountMoid}
            "CreateTime" = ${CreateTime}
            "DomainGroupMoid" = ${DomainGroupMoid}
            "ModTime" = ${ModTime}
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "SharedScope" = ${SharedScope}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "_0_ClusterReplicationNetworkPolicy" = ${Var0ClusterReplicationNetworkPolicy}
            "Ancestors" = ${Ancestors}
            "Parent" = ${Parent}
            "PermissionResources" = ${PermissionResources}
            "DisplayNames" = ${DisplayNames}
            "ApiStatuses" = ${ApiStatuses}
            "AppLabel" = ${AppLabel}
            "OperationalStatus" = ${OperationalStatus}
            "ReadyCount" = ${ReadyCount}
            "ReplicaCount" = ${ReplicaCount}
            "RestartCount1Hour" = ${RestartCount1Hour}
            "RestartCount24Hours" = ${RestartCount24Hours}
            "RestartCount5Mins" = ${RestartCount5Mins}
            "RestartCountTotal" = ${RestartCountTotal}
            "RunningCount" = ${RunningCount}
            "StatusChecks" = ${StatusChecks}
            "GroupStatus" = ${GroupStatus}
            "SystemStatus" = ${SystemStatus}
        }

        return $PSO
    }

}
