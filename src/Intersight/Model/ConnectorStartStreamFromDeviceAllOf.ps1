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

Definition of the list of properties defined in 'connector.StartStreamFromDevice', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER MemberId
The asset.ClusterMember member identity that is opening this stream.
.PARAMETER MemberStream
The stream is to be started against the cluster member.
.PARAMETER StreamConfig
Any extra configuration needed to open/identify a stream.
.PARAMETER StreamType
Identifies the type of stream to open to the device. The Intersight service will validate that the device should open a stream of this type and if so build a stream configuration and send it down to the device. The streamType should identify a unique stream to open to a device, that is if the device sends a stream open message and a stream of that type is already open in the cloud the existing stream should be re-used.
.PARAMETER Topic
The topic the device should send the stream open message to.
.OUTPUTS

ConnectorStartStreamFromDeviceAllOf<PSCustomObject>
#>

function Initialize-IntersightConnectorStartStreamFromDeviceAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("connector.StartStreamFromDevice")]
        [String]
        ${ClassId} = "connector.StartStreamFromDevice",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("connector.StartStreamFromDevice")]
        [String]
        ${ObjectType} = "connector.StartStreamFromDevice",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MemberId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${MemberStream},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StreamConfig},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StreamType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Topic}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightConnectorStartStreamFromDeviceAllOf' | Write-Debug
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
            "MemberId" = ${MemberId}
            "MemberStream" = ${MemberStream}
            "StreamConfig" = ${StreamConfig}
            "StreamType" = ${StreamType}
            "Topic" = ${Topic}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConnectorStartStreamFromDeviceAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConnectorStartStreamFromDeviceAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConnectorStartStreamFromDeviceAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToConnectorStartStreamFromDeviceAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightConnectorStartStreamFromDeviceAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightConnectorStartStreamFromDeviceAllOf
        $AllProperties = ("ClassId", "ObjectType", "MemberId", "MemberStream", "StreamConfig", "StreamType", "Topic")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MemberId"))) { #optional property not found
            $MemberId = $null
        } else {
            $MemberId = $JsonParameters.PSobject.Properties["MemberId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MemberStream"))) { #optional property not found
            $MemberStream = $null
        } else {
            $MemberStream = $JsonParameters.PSobject.Properties["MemberStream"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StreamConfig"))) { #optional property not found
            $StreamConfig = $null
        } else {
            $StreamConfig = $JsonParameters.PSobject.Properties["StreamConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StreamType"))) { #optional property not found
            $StreamType = $null
        } else {
            $StreamType = $JsonParameters.PSobject.Properties["StreamType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Topic"))) { #optional property not found
            $Topic = $null
        } else {
            $Topic = $JsonParameters.PSobject.Properties["Topic"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "MemberId" = ${MemberId}
            "MemberStream" = ${MemberStream}
            "StreamConfig" = ${StreamConfig}
            "StreamType" = ${StreamType}
            "Topic" = ${Topic}
        }

        return $PSO
    }

}

