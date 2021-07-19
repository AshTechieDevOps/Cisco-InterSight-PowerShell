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

Definition of the list of properties defined in 'hyperflex.HealthCheckExecutionSnapshot', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Cause
Information detailing the possible cause of the healthcheck failure, if the check fails.
.PARAMETER HealthCheckDefinition
No description available.
.PARAMETER HxCluster
No description available.
.PARAMETER RegisteredDevice
No description available.
.PARAMETER Workflow
No description available.
.OUTPUTS

HyperflexHealthCheckExecutionSnapshotAllOf<PSCustomObject>
#>

function Initialize-IntersightHyperflexHealthCheckExecutionSnapshotAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.HealthCheckExecutionSnapshot")]
        [String]
        ${ClassId} = "hyperflex.HealthCheckExecutionSnapshot",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.HealthCheckExecutionSnapshot")]
        [String]
        ${ObjectType} = "hyperflex.HealthCheckExecutionSnapshot",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Cause},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${HealthCheckDefinition},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${HxCluster},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Workflow}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightHyperflexHealthCheckExecutionSnapshotAllOf' | Write-Debug
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
            "Cause" = ${Cause}
            "HealthCheckDefinition" = ${HealthCheckDefinition}
            "HxCluster" = ${HxCluster}
            "RegisteredDevice" = ${RegisteredDevice}
            "Workflow" = ${Workflow}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HyperflexHealthCheckExecutionSnapshotAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to HyperflexHealthCheckExecutionSnapshotAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HyperflexHealthCheckExecutionSnapshotAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToHyperflexHealthCheckExecutionSnapshotAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightHyperflexHealthCheckExecutionSnapshotAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightHyperflexHealthCheckExecutionSnapshotAllOf
        $AllProperties = ("ClassId", "ObjectType", "Category", "Cause", "CompletionTime", "HealthCheckDetails", "HealthCheckExecutionErrorDetails", "HealthCheckExecutionErrorSummary", "HealthCheckExecutionStatus", "HealthCheckResult", "HealthCheckSummary", "HxDeviceName", "HealthCheckDefinition", "HxCluster", "RegisteredDevice", "Workflow")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Category"))) { #optional property not found
            $Category = $null
        } else {
            $Category = $JsonParameters.PSobject.Properties["Category"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Cause"))) { #optional property not found
            $Cause = $null
        } else {
            $Cause = $JsonParameters.PSobject.Properties["Cause"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CompletionTime"))) { #optional property not found
            $CompletionTime = $null
        } else {
            $CompletionTime = $JsonParameters.PSobject.Properties["CompletionTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HealthCheckDetails"))) { #optional property not found
            $HealthCheckDetails = $null
        } else {
            $HealthCheckDetails = $JsonParameters.PSobject.Properties["HealthCheckDetails"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HealthCheckExecutionErrorDetails"))) { #optional property not found
            $HealthCheckExecutionErrorDetails = $null
        } else {
            $HealthCheckExecutionErrorDetails = $JsonParameters.PSobject.Properties["HealthCheckExecutionErrorDetails"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HealthCheckExecutionErrorSummary"))) { #optional property not found
            $HealthCheckExecutionErrorSummary = $null
        } else {
            $HealthCheckExecutionErrorSummary = $JsonParameters.PSobject.Properties["HealthCheckExecutionErrorSummary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HealthCheckExecutionStatus"))) { #optional property not found
            $HealthCheckExecutionStatus = $null
        } else {
            $HealthCheckExecutionStatus = $JsonParameters.PSobject.Properties["HealthCheckExecutionStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HealthCheckResult"))) { #optional property not found
            $HealthCheckResult = $null
        } else {
            $HealthCheckResult = $JsonParameters.PSobject.Properties["HealthCheckResult"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HealthCheckSummary"))) { #optional property not found
            $HealthCheckSummary = $null
        } else {
            $HealthCheckSummary = $JsonParameters.PSobject.Properties["HealthCheckSummary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HxDeviceName"))) { #optional property not found
            $HxDeviceName = $null
        } else {
            $HxDeviceName = $JsonParameters.PSobject.Properties["HxDeviceName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HealthCheckDefinition"))) { #optional property not found
            $HealthCheckDefinition = $null
        } else {
            $HealthCheckDefinition = $JsonParameters.PSobject.Properties["HealthCheckDefinition"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HxCluster"))) { #optional property not found
            $HxCluster = $null
        } else {
            $HxCluster = $JsonParameters.PSobject.Properties["HxCluster"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Workflow"))) { #optional property not found
            $Workflow = $null
        } else {
            $Workflow = $JsonParameters.PSobject.Properties["Workflow"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Category" = ${Category}
            "Cause" = ${Cause}
            "CompletionTime" = ${CompletionTime}
            "HealthCheckDetails" = ${HealthCheckDetails}
            "HealthCheckExecutionErrorDetails" = ${HealthCheckExecutionErrorDetails}
            "HealthCheckExecutionErrorSummary" = ${HealthCheckExecutionErrorSummary}
            "HealthCheckExecutionStatus" = ${HealthCheckExecutionStatus}
            "HealthCheckResult" = ${HealthCheckResult}
            "HealthCheckSummary" = ${HealthCheckSummary}
            "HxDeviceName" = ${HxDeviceName}
            "HealthCheckDefinition" = ${HealthCheckDefinition}
            "HxCluster" = ${HxCluster}
            "RegisteredDevice" = ${RegisteredDevice}
            "Workflow" = ${Workflow}
        }

        return $PSO
    }

}
