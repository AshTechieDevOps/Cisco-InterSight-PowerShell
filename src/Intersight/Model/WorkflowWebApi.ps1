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

This models a single Web API request within a batch of requests that get executed within a single workflow task.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Body
The optional request body that is sent as part of this API request. The request body can contain a golang template that can be populated with task input parameters and previous API output parameters.
.PARAMETER ContentType
Intersight Orchestrator, with the support of response parser specification, can extract the values from API responses and map them to task output parameters. The value extraction is supported for response content types XML and JSON. The type of the content that gets passed as payload and response in this API.
.PARAMETER Description
A description that task designer can add to individual API requests that explain  what the API call is about.
.PARAMETER Label
A user friendly label that task designers have given to the batch API request.
.PARAMETER Name
A reference name for this API request within the batch API request. This name shall be used to map the API output parameters to subsequent API input parameters within a batch API task.
.PARAMETER Outcomes
All the possible outcomes of this API are captured here. Outcomes property is a collection property of type workflow.Outcome objects. The outcomes can be mapped to the message to be shown. The outcomes are evaluated in the order they are given. At the end of the outcomes list, an catchall success/fail outcome can be added with condition as 'true'. This is an optional property and if not specified the task will be marked as success.
.PARAMETER ResponseSpec
The optional grammar specification for parsing the response to extract the required values. The specification should have extraction specification specified for all the API output parameters.
.PARAMETER SkipOnCondition
The skip expression, if provided, allows the batch API executor to skip the api execution when the given expression evaluates to true. The expression is given as such a golang template that has to be evaluated to a final content true/false. The expression is an optional and in case not provided, the API will always be executed.
.PARAMETER StartDelay
The delay in seconds after which the API needs to be executed. By default, the given API is executed immediately. Specifying a start delay adds to the delay to execution. Start Delay is not supported for the first API in the Batch and cumulative delay of all the APIs in the Batch should not exceed the task time out.
.PARAMETER Timeout
The duration in seconds by which the API response is expected from the API target. If the end point does not respond for the API request within this timeout duration, the task will be marked as failed.
.PARAMETER Cookies
Collection of key value pairs to set in the request header as Cookie list.
.PARAMETER EndpointRequestType
If the target type is Endpoint, this property determines whether the request is to be handled as internal request or external request by the device connector. * `Internal` - The endpoint API executed is an internal request handled by the device connector plugin. * `External` - The endpoint API request is passed through by the device connector.
.PARAMETER Headers
Collection of key value pairs to set in the request header.
.PARAMETER Method
The HTTP method to be executed in the given URL (GET, POST, PUT, etc). If the value is not specified, GET will be used as default.
.PARAMETER MoType
The type of the intersight object for which API request is to be made. The property is valid in case of Intersight API calls and the base url is automatically prepended based on the value.
.PARAMETER Protocol
The accepted web protocol values are http and https.
.PARAMETER TargetType
If the web API is to be executed in a remote device connected to the Intersight through device connector, 'Endpoint' is expected as the value whereas if the API is an Intersight API, 'Local' is expected as the value.
.PARAMETER Url
The URL of the resource in the target to which the API request is made.
.OUTPUTS

WorkflowWebApi<PSCustomObject>
#>

function Initialize-IntersightWorkflowWebApi {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.WebApi")]
        [String]
        ${ClassId} = "workflow.WebApi",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.WebApi")]
        [String]
        ${ObjectType} = "workflow.WebApi",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Body},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ContentType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Label},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Outcomes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ResponseSpec},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SkipOnCondition},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${StartDelay},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Timeout},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Cookies},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Internal", "External")]
        [String]
        ${EndpointRequestType} = "Internal",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Headers},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Method},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MoType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Protocol},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TargetType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowWebApi' | Write-Debug
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
            "Body" = ${Body}
            "ContentType" = ${ContentType}
            "Description" = ${Description}
            "Label" = ${Label}
            "Name" = ${Name}
            "Outcomes" = ${Outcomes}
            "ResponseSpec" = ${ResponseSpec}
            "SkipOnCondition" = ${SkipOnCondition}
            "StartDelay" = ${StartDelay}
            "Timeout" = ${Timeout}
            "Cookies" = ${Cookies}
            "EndpointRequestType" = ${EndpointRequestType}
            "Headers" = ${Headers}
            "Method" = ${Method}
            "MoType" = ${MoType}
            "Protocol" = ${Protocol}
            "TargetType" = ${TargetType}
            "Url" = ${Url}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowWebApi<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowWebApi<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowWebApi<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowWebApi {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowWebApi' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowWebApi
        $AllProperties = ("ClassId", "ObjectType", "AssetTargetMoid", "Body", "ContentType", "Description", "Label", "Name", "Outcomes", "ResponseSpec", "SkipOnCondition", "StartDelay", "Timeout", "Cookies", "EndpointRequestType", "Headers", "Method", "MoType", "Protocol", "TargetType", "Url")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AssetTargetMoid"))) { #optional property not found
            $AssetTargetMoid = $null
        } else {
            $AssetTargetMoid = $JsonParameters.PSobject.Properties["AssetTargetMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Body"))) { #optional property not found
            $Body = $null
        } else {
            $Body = $JsonParameters.PSobject.Properties["Body"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ContentType"))) { #optional property not found
            $ContentType = $null
        } else {
            $ContentType = $JsonParameters.PSobject.Properties["ContentType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Outcomes"))) { #optional property not found
            $Outcomes = $null
        } else {
            $Outcomes = $JsonParameters.PSobject.Properties["Outcomes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ResponseSpec"))) { #optional property not found
            $ResponseSpec = $null
        } else {
            $ResponseSpec = $JsonParameters.PSobject.Properties["ResponseSpec"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SkipOnCondition"))) { #optional property not found
            $SkipOnCondition = $null
        } else {
            $SkipOnCondition = $JsonParameters.PSobject.Properties["SkipOnCondition"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StartDelay"))) { #optional property not found
            $StartDelay = $null
        } else {
            $StartDelay = $JsonParameters.PSobject.Properties["StartDelay"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Timeout"))) { #optional property not found
            $Timeout = $null
        } else {
            $Timeout = $JsonParameters.PSobject.Properties["Timeout"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Cookies"))) { #optional property not found
            $Cookies = $null
        } else {
            $Cookies = $JsonParameters.PSobject.Properties["Cookies"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndpointRequestType"))) { #optional property not found
            $EndpointRequestType = $null
        } else {
            $EndpointRequestType = $JsonParameters.PSobject.Properties["EndpointRequestType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Headers"))) { #optional property not found
            $Headers = $null
        } else {
            $Headers = $JsonParameters.PSobject.Properties["Headers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Method"))) { #optional property not found
            $Method = $null
        } else {
            $Method = $JsonParameters.PSobject.Properties["Method"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MoType"))) { #optional property not found
            $MoType = $null
        } else {
            $MoType = $JsonParameters.PSobject.Properties["MoType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Protocol"))) { #optional property not found
            $Protocol = $null
        } else {
            $Protocol = $JsonParameters.PSobject.Properties["Protocol"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TargetType"))) { #optional property not found
            $TargetType = $null
        } else {
            $TargetType = $JsonParameters.PSobject.Properties["TargetType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Url"))) { #optional property not found
            $Url = $null
        } else {
            $Url = $JsonParameters.PSobject.Properties["Url"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AssetTargetMoid" = ${AssetTargetMoid}
            "Body" = ${Body}
            "ContentType" = ${ContentType}
            "Description" = ${Description}
            "Label" = ${Label}
            "Name" = ${Name}
            "Outcomes" = ${Outcomes}
            "ResponseSpec" = ${ResponseSpec}
            "SkipOnCondition" = ${SkipOnCondition}
            "StartDelay" = ${StartDelay}
            "Timeout" = ${Timeout}
            "Cookies" = ${Cookies}
            "EndpointRequestType" = ${EndpointRequestType}
            "Headers" = ${Headers}
            "Method" = ${Method}
            "MoType" = ${MoType}
            "Protocol" = ${Protocol}
            "TargetType" = ${TargetType}
            "Url" = ${Url}
        }

        return $PSO
    }

}

