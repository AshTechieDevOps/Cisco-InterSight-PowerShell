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

This data type represents an array of a given type. It can be an array of primitive data or of custom data.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Default
No description available.
.PARAMETER Description
Provide a detailed description of the data type.
.PARAMETER DisplayMeta
No description available.
.PARAMETER InputParameters
JSON formatted mapping from other property of the definition to the current property. Input parameter mapping is supported only for custom data type property in workflow definition and custom data type definition. The format to specify mapping ina workflow definition when source property is of scalar types is '${workflow.input.property}'. The format to specify mapping when the source property is of object reference and mapping needs to be made to the property of the object is '${workflow.input.property.subproperty}'. The format to specify mapping in a custom data type definition is '${datatype.type.property}'. When the current property is of non-scalar type like composite custom data type, then mapping can be provided to the individual property of the custom data type like 'cdt_property:${workflow.input.property}'.
.PARAMETER Label
Descriptive label for the data type. Label can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), space ( ) or an underscore (_). The first and last character in label must be an alphanumeric character.
.PARAMETER Name
Descriptive name for the data type. Name can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-) or an underscore (_). The first and last character in name must be an alphanumeric character.
.PARAMETER Required
Specifies whether this parameter is required. The field is applicable for task and workflow.
.PARAMETER ArrayItemType
No description available.
.PARAMETER Max
Specify the maximum value of the array.
.PARAMETER Min
Specify the minimum value of the array.
.OUTPUTS

WorkflowArrayDataType<PSCustomObject>
#>

function Initialize-IntersightWorkflowArrayDataType {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.ArrayDataType")]
        [String]
        ${ClassId} = "workflow.ArrayDataType",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.ArrayDataType")]
        [String]
        ${ObjectType} = "workflow.ArrayDataType",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Default},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DisplayMeta},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InputParameters},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9]+[\sa-zA-Z0-9_'.:-]{1,92}$")]
        [String]
        ${Label},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9]+([a-zA-Z0-9-_]*[a-zA-Z0-9])*$")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Required},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ArrayItemType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Max},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Min}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowArrayDataType' | Write-Debug
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
            "Default" = ${Default}
            "Description" = ${Description}
            "DisplayMeta" = ${DisplayMeta}
            "InputParameters" = ${InputParameters}
            "Label" = ${Label}
            "Name" = ${Name}
            "Required" = ${Required}
            "ArrayItemType" = ${ArrayItemType}
            "Max" = ${Max}
            "Min" = ${Min}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowArrayDataType<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowArrayDataType<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowArrayDataType<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowArrayDataType {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowArrayDataType' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowArrayDataType
        $AllProperties = ("ClassId", "ObjectType", "Default", "Description", "DisplayMeta", "InputParameters", "Label", "Name", "Required", "ArrayItemType", "Max", "Min")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Default"))) { #optional property not found
            $Default = $null
        } else {
            $Default = $JsonParameters.PSobject.Properties["Default"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DisplayMeta"))) { #optional property not found
            $DisplayMeta = $null
        } else {
            $DisplayMeta = $JsonParameters.PSobject.Properties["DisplayMeta"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InputParameters"))) { #optional property not found
            $InputParameters = $null
        } else {
            $InputParameters = $JsonParameters.PSobject.Properties["InputParameters"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Label"))) { #optional property not found
            $Label = $null
        } else {
            $Label = $JsonParameters.PSobject.Properties["Label"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Required"))) { #optional property not found
            $Required = $null
        } else {
            $Required = $JsonParameters.PSobject.Properties["Required"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ArrayItemType"))) { #optional property not found
            $ArrayItemType = $null
        } else {
            $ArrayItemType = $JsonParameters.PSobject.Properties["ArrayItemType"].value
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

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Default" = ${Default}
            "Description" = ${Description}
            "DisplayMeta" = ${DisplayMeta}
            "InputParameters" = ${InputParameters}
            "Label" = ${Label}
            "Name" = ${Name}
            "Required" = ${Required}
            "ArrayItemType" = ${ArrayItemType}
            "Max" = ${Max}
            "Min" = ${Min}
        }

        return $PSO
    }

}

