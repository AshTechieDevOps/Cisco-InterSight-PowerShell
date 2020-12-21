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

Definition of the list of properties defined in 'workflow.PrimitiveDataProperty', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Constraints
No description available.
.PARAMETER InventorySelector
No description available.
.PARAMETER Secure
Intersight supports secure properties as task input/output. The values of these properties are encrypted and stored in Intersight. This flag marks the property to be secure when it is set to true.
.PARAMETER Type
Specify the enum type for primitive data type. * `string` - Enum to specify a string data type. * `integer` - Enum to specify an integer32 data type. * `float` - Enum to specify a float64 data type. * `boolean` - Enum to specify a boolean data type. * `json` - Enum to specify a json data type. * `enum` - Enum to specify a enum data type which is a list of pre-defined strings.
.OUTPUTS

WorkflowPrimitiveDataPropertyAllOf<PSCustomObject>
#>

function Initialize-IntersightWorkflowPrimitiveDataPropertyAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.PrimitiveDataProperty")]
        [String]
        ${ClassId} = "workflow.PrimitiveDataProperty",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.PrimitiveDataProperty")]
        [String]
        ${ObjectType} = "workflow.PrimitiveDataProperty",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Constraints},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${InventorySelector},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Secure},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("string", "integer", "float", "boolean", "json", "enum")]
        [String]
        ${Type} = "string"
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowPrimitiveDataPropertyAllOf' | Write-Debug
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
            "Constraints" = ${Constraints}
            "InventorySelector" = ${InventorySelector}
            "Secure" = ${Secure}
            "Type" = ${Type}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowPrimitiveDataPropertyAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowPrimitiveDataPropertyAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowPrimitiveDataPropertyAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowPrimitiveDataPropertyAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowPrimitiveDataPropertyAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowPrimitiveDataPropertyAllOf
        $AllProperties = ("ClassId", "ObjectType", "Constraints", "InventorySelector", "Secure", "Type")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Constraints"))) { #optional property not found
            $Constraints = $null
        } else {
            $Constraints = $JsonParameters.PSobject.Properties["Constraints"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InventorySelector"))) { #optional property not found
            $InventorySelector = $null
        } else {
            $InventorySelector = $JsonParameters.PSobject.Properties["InventorySelector"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Secure"))) { #optional property not found
            $Secure = $null
        } else {
            $Secure = $JsonParameters.PSobject.Properties["Secure"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["Type"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Constraints" = ${Constraints}
            "InventorySelector" = ${InventorySelector}
            "Secure" = ${Secure}
            "Type" = ${Type}
        }

        return $PSO
    }

}

