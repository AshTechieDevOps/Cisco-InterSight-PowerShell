#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2020-07-16T08:45:19Z.
# Version: 1.0.9-2020
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Definition of the list of properties defined in 'connector.StartStream', excluding properties defined in parent classes.

.PARAMETER BatchSize
The number of outputs from a plugin to collect into a single message. Applicable only to streams that involve polling plugins and plugins which support emitting batchable data. Default value of zero indicates no batching.
.PARAMETER ForceRebuild
Flag to force a rebuild of an existing stream. To be used if a stream is unable to recover itself in response to dropped messages.
.PARAMETER VarInput
Input to the plugin to start the start the stream or collect stream messages.
.PARAMETER KeepAliveInterval
Interval at which device should emit a keepalive message for this stream. Device will also expect a keepalive response from the cloud within the interval. If zero, no keepalive is required and stream should not timeout.
.PARAMETER PluginName
The plugin to run the stream on.
.PARAMETER PollInterval
The desired interval to emit messages from this stream. The stream plugin will poll plugins at this interval to create a stream event.
.PARAMETER Priority
The priority level to apply to messages emitted by this stream.
.PARAMETER ProtocolVersion
The version of the device connector stream protocol. Used to change behavior of the device connector stream plugin based on the version of the Intersight service. Allows for multiple versions of Intersight services to interact with the stream plugin of devices.
.PARAMETER ResponseTopic
The topic for the device connector to publish messages to.
.OUTPUTS

ConnectorStartStreamAllOf<PSCustomObject>
#>

function Initialize-IntersightConnectorStartStreamAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${BatchSize},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ForceRebuild},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarInput},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${KeepAliveInterval},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PluginName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${PollInterval},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Priority},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ProtocolVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ResponseTopic}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightConnectorStartStreamAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "BatchSize" = ${BatchSize}
            "ForceRebuild" = ${ForceRebuild}
            "Input" = ${VarInput}
            "KeepAliveInterval" = ${KeepAliveInterval}
            "PluginName" = ${PluginName}
            "PollInterval" = ${PollInterval}
            "Priority" = ${Priority}
            "ProtocolVersion" = ${ProtocolVersion}
            "ResponseTopic" = ${ResponseTopic}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConnectorStartStreamAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConnectorStartStreamAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConnectorStartStreamAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToConnectorStartStreamAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightConnectorStartStreamAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightConnectorStartStreamAllOf
        $AllProperties = ("BatchSize", "ForceRebuild", "Input", "KeepAliveInterval", "PluginName", "PollInterval", "Priority", "ProtocolVersion", "ResponseTopic")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BatchSize"))) { #optional property not found
            $BatchSize = $null
        } else {
            $BatchSize = $JsonParameters.PSobject.Properties["BatchSize"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ForceRebuild"))) { #optional property not found
            $ForceRebuild = $null
        } else {
            $ForceRebuild = $JsonParameters.PSobject.Properties["ForceRebuild"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Input"))) { #optional property not found
            $VarInput = $null
        } else {
            $VarInput = $JsonParameters.PSobject.Properties["Input"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "KeepAliveInterval"))) { #optional property not found
            $KeepAliveInterval = $null
        } else {
            $KeepAliveInterval = $JsonParameters.PSobject.Properties["KeepAliveInterval"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PluginName"))) { #optional property not found
            $PluginName = $null
        } else {
            $PluginName = $JsonParameters.PSobject.Properties["PluginName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PollInterval"))) { #optional property not found
            $PollInterval = $null
        } else {
            $PollInterval = $JsonParameters.PSobject.Properties["PollInterval"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Priority"))) { #optional property not found
            $Priority = $null
        } else {
            $Priority = $JsonParameters.PSobject.Properties["Priority"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProtocolVersion"))) { #optional property not found
            $ProtocolVersion = $null
        } else {
            $ProtocolVersion = $JsonParameters.PSobject.Properties["ProtocolVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ResponseTopic"))) { #optional property not found
            $ResponseTopic = $null
        } else {
            $ResponseTopic = $JsonParameters.PSobject.Properties["ResponseTopic"].value
        }

        $PSO = [PSCustomObject]@{
            "BatchSize" = ${BatchSize}
            "ForceRebuild" = ${ForceRebuild}
            "Input" = ${VarInput}
            "KeepAliveInterval" = ${KeepAliveInterval}
            "PluginName" = ${PluginName}
            "PollInterval" = ${PollInterval}
            "Priority" = ${Priority}
            "ProtocolVersion" = ${ProtocolVersion}
            "ResponseTopic" = ${ResponseTopic}
        }

        return $PSO
    }

}

