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

Properties for the task definition like the inputs, outputs, timeout and retry policies. Tasks are the building blocks for workflows.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER ExternalMeta
When set to false the task definition can only be used by internal system workflows. When set to true then the task can be included in user defined workflows.
.PARAMETER InputDefinition
No description available.
.PARAMETER OutputDefinition
No description available.
.PARAMETER RetryCount
The number of times a task should be tried before marking as failed.
.PARAMETER RetryDelay
The delay in seconds after which the the task is re-tried.
.PARAMETER RetryPolicy
The retry policy for the task. * `Fixed` - The enum specifies the option as Fixed where the task retry happens after fixed time specified by RetryDelay.
.PARAMETER SupportStatus
Supported status of the definition. * `Supported` - The definition is a supported version and there will be no changes to the mandatory inputs or outputs. * `Beta` - The definition is a Beta version and this version can under go changes until the version is marked supported. * `Deprecated` - The version of definition is deprecated and typically there will be a higher version of the same definition that has been added.
.PARAMETER Timeout
The timeout value in seconds after which task will be marked as timed out. Max allowed value is 7 days.
.PARAMETER TimeoutPolicy
The timeout policy for the task. * `Timeout` - The enum specifies the option as Timeout where task will be timed out after the specified time in Timeout property. * `Retry` - The enum specifies the option as Retry where task will be re-tried.
.OUTPUTS

WorkflowProperties<PSCustomObject>
#>

function Initialize-IntersightWorkflowProperties {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.Properties")]
        [String]
        ${ClassId} = "workflow.Properties",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.Properties")]
        [String]
        ${ObjectType} = "workflow.Properties",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ExternalMeta} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${InputDefinition},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${OutputDefinition},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${RetryCount} = 3,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${RetryDelay} = 60,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Fixed")]
        [String]
        ${RetryPolicy} = "Fixed",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Supported", "Beta", "Deprecated")]
        [String]
        ${SupportStatus} = "Supported",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Timeout} = 600,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Timeout", "Retry")]
        [String]
        ${TimeoutPolicy} = "Timeout"
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowProperties' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if ($RetryCount -and $RetryCount -gt 256) {
          throw "invalid value for 'RetryCount', must be smaller than or equal to 256."
        }

        if ($RetryCount -and $RetryCount -lt 0) {
          throw "invalid value for 'RetryCount', must be greater than or equal to 0."
        }

        if ($RetryDelay -and $RetryDelay -gt 86400) {
          throw "invalid value for 'RetryDelay', must be smaller than or equal to 86400."
        }

        if ($RetryDelay -and $RetryDelay -lt 10) {
          throw "invalid value for 'RetryDelay', must be greater than or equal to 10."
        }

        if ($Timeout -and $Timeout -gt 604800) {
          throw "invalid value for 'Timeout', must be smaller than or equal to 604800."
        }

        if ($Timeout -and $Timeout -lt 10) {
          throw "invalid value for 'Timeout', must be greater than or equal to 10."
        }

        
        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "ExternalMeta" = ${ExternalMeta}
            "InputDefinition" = ${InputDefinition}
            "OutputDefinition" = ${OutputDefinition}
            "RetryCount" = ${RetryCount}
            "RetryDelay" = ${RetryDelay}
            "RetryPolicy" = ${RetryPolicy}
            "SupportStatus" = ${SupportStatus}
            "Timeout" = ${Timeout}
            "TimeoutPolicy" = ${TimeoutPolicy}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowProperties<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowProperties<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowProperties<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowProperties {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowProperties' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowProperties
        $AllProperties = ("ClassId", "ObjectType", "ExternalMeta", "InputDefinition", "OutputDefinition", "RetryCount", "RetryDelay", "RetryPolicy", "SupportStatus", "Timeout", "TimeoutPolicy")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExternalMeta"))) { #optional property not found
            $ExternalMeta = $null
        } else {
            $ExternalMeta = $JsonParameters.PSobject.Properties["ExternalMeta"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InputDefinition"))) { #optional property not found
            $InputDefinition = $null
        } else {
            $InputDefinition = $JsonParameters.PSobject.Properties["InputDefinition"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutputDefinition"))) { #optional property not found
            $OutputDefinition = $null
        } else {
            $OutputDefinition = $JsonParameters.PSobject.Properties["OutputDefinition"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RetryCount"))) { #optional property not found
            $RetryCount = $null
        } else {
            $RetryCount = $JsonParameters.PSobject.Properties["RetryCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RetryDelay"))) { #optional property not found
            $RetryDelay = $null
        } else {
            $RetryDelay = $JsonParameters.PSobject.Properties["RetryDelay"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RetryPolicy"))) { #optional property not found
            $RetryPolicy = $null
        } else {
            $RetryPolicy = $JsonParameters.PSobject.Properties["RetryPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SupportStatus"))) { #optional property not found
            $SupportStatus = $null
        } else {
            $SupportStatus = $JsonParameters.PSobject.Properties["SupportStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Timeout"))) { #optional property not found
            $Timeout = $null
        } else {
            $Timeout = $JsonParameters.PSobject.Properties["Timeout"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TimeoutPolicy"))) { #optional property not found
            $TimeoutPolicy = $null
        } else {
            $TimeoutPolicy = $JsonParameters.PSobject.Properties["TimeoutPolicy"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "ExternalMeta" = ${ExternalMeta}
            "InputDefinition" = ${InputDefinition}
            "OutputDefinition" = ${OutputDefinition}
            "RetryCount" = ${RetryCount}
            "RetryDelay" = ${RetryDelay}
            "RetryPolicy" = ${RetryPolicy}
            "SupportStatus" = ${SupportStatus}
            "Timeout" = ${Timeout}
            "TimeoutPolicy" = ${TimeoutPolicy}
        }

        return $PSO
    }

}

