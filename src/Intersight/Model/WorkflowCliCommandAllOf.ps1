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

Definition of the list of properties defined in 'workflow.CliCommand', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Command
The command to run on the device connector.
.PARAMETER EndPrompt
The regex string that identifies the end of the command response.
.PARAMETER ExpectPrompts
No description available.
.PARAMETER SkipStatusCheck
Skips the execution status check of the terminal command. One use case for this is while exiting the terminal session from esxi host.
.PARAMETER TerminalEnd
If this flag is set, it marks the end of the terminal session where the previous commands were executed.
.PARAMETER TerminalStart
If this flag is set, the execution of this command initiates a terminal session in which the subsequent CLI commands are executed until a command with terminalEnd flag is encountered or the end of the batch.
.PARAMETER Type
The type of the command - can be interactive or non-interactive. * `NonInteractive` - The CLI command is not an interactive command. * `Interactive` - The CLI command is executed in interactive mode and the command must provide the expects andanswers.
.OUTPUTS

WorkflowCliCommandAllOf<PSCustomObject>
#>

function Initialize-IntersightWorkflowCliCommandAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.CliCommand")]
        [String]
        ${ClassId} = "workflow.CliCommand",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.CliCommand")]
        [String]
        ${ObjectType} = "workflow.CliCommand",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Command},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EndPrompt},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ExpectPrompts},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SkipStatusCheck},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${TerminalEnd},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${TerminalStart},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("NonInteractive", "Interactive")]
        [String]
        ${Type} = "NonInteractive"
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowCliCommandAllOf' | Write-Debug
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
            "Command" = ${Command}
            "EndPrompt" = ${EndPrompt}
            "ExpectPrompts" = ${ExpectPrompts}
            "SkipStatusCheck" = ${SkipStatusCheck}
            "TerminalEnd" = ${TerminalEnd}
            "TerminalStart" = ${TerminalStart}
            "Type" = ${Type}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowCliCommandAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowCliCommandAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowCliCommandAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowCliCommandAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowCliCommandAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowCliCommandAllOf
        $AllProperties = ("ClassId", "ObjectType", "Command", "EndPrompt", "ExpectPrompts", "SkipStatusCheck", "TerminalEnd", "TerminalStart", "Type")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Command"))) { #optional property not found
            $Command = $null
        } else {
            $Command = $JsonParameters.PSobject.Properties["Command"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EndPrompt"))) { #optional property not found
            $EndPrompt = $null
        } else {
            $EndPrompt = $JsonParameters.PSobject.Properties["EndPrompt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ExpectPrompts"))) { #optional property not found
            $ExpectPrompts = $null
        } else {
            $ExpectPrompts = $JsonParameters.PSobject.Properties["ExpectPrompts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SkipStatusCheck"))) { #optional property not found
            $SkipStatusCheck = $null
        } else {
            $SkipStatusCheck = $JsonParameters.PSobject.Properties["SkipStatusCheck"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TerminalEnd"))) { #optional property not found
            $TerminalEnd = $null
        } else {
            $TerminalEnd = $JsonParameters.PSobject.Properties["TerminalEnd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TerminalStart"))) { #optional property not found
            $TerminalStart = $null
        } else {
            $TerminalStart = $JsonParameters.PSobject.Properties["TerminalStart"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["Type"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Command" = ${Command}
            "EndPrompt" = ${EndPrompt}
            "ExpectPrompts" = ${ExpectPrompts}
            "SkipStatusCheck" = ${SkipStatusCheck}
            "TerminalEnd" = ${TerminalEnd}
            "TerminalStart" = ${TerminalStart}
            "Type" = ${Type}
        }

        return $PSO
    }

}

