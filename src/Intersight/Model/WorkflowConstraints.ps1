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

Captures the constraints for valid parameter values.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER EnumList
No description available.
.PARAMETER Max
Allowed maximum value of the parameter if parameter is integer/float or maximum length of the parameter if the parameter is string. When max and min are set to 0, then the limits are not checked.
.PARAMETER Min
Allowed minimum value of the parameter if parameter is integer/float or minimum length of the parameter if the parameter is string. When max and min are set to 0, then the limits are not checked.
.PARAMETER Regex
When the parameter is a string this regular expression is used to ensure the value is valid.
.OUTPUTS

WorkflowConstraints<PSCustomObject>
#>

function Initialize-IntersightWorkflowConstraints {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.Constraints")]
        [String]
        ${ClassId} = "workflow.Constraints",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.Constraints")]
        [String]
        ${ObjectType} = "workflow.Constraints",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${EnumList},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Max},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Min},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Regex}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowConstraints' | Write-Debug
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
            "EnumList" = ${EnumList}
            "Max" = ${Max}
            "Min" = ${Min}
            "Regex" = ${Regex}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowConstraints<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowConstraints<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowConstraints<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowConstraints {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowConstraints' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowConstraints
        $AllProperties = ("ClassId", "ObjectType", "EnumList", "Max", "Min", "Regex")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EnumList"))) { #optional property not found
            $EnumList = $null
        } else {
            $EnumList = $JsonParameters.PSobject.Properties["EnumList"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Max"))) { #optional property not found
            $Max = $null
        } else {
            $Max = $JsonParameters.PSobject.Properties["Max"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Min"))) { #optional property not found
            $Min = $null
        } else {
            $Min = $JsonParameters.PSobject.Properties["Min"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Regex"))) { #optional property not found
            $Regex = $null
        } else {
            $Regex = $JsonParameters.PSobject.Properties["Regex"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "EnumList" = ${EnumList}
            "Max" = ${Max}
            "Min" = ${Min}
            "Regex" = ${Regex}
        }

        return $PSO
    }

}

