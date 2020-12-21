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

This specifies configuration policies for a managed network switch.

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
.PARAMETER Parent
No description available.
.PARAMETER Description
Description of the profile.
.PARAMETER Name
Name of the concrete profile.
.PARAMETER Type
Defines the type of the profile. Accepted value is instance. * `instance` - The profile defines the configuration for a specific instance of a target.
.PARAMETER SrcTemplate
No description available.
.PARAMETER Action
User initiated action. Each profile type has its own supported actions. For HyperFlex cluster profile, the supported actions are -- Validate, Deploy, Continue, Retry, Abort, Unassign For server profile, the support actions are -- Deploy, Unassign.
.PARAMETER ConfigContext
No description available.
.PARAMETER ConfigChanges
No description available.
.PARAMETER AssignedSwitch
No description available.
.PARAMETER AssociatedSwitch
No description available.
.PARAMETER ConfigResult
No description available.
.PARAMETER SwitchClusterProfile
No description available.
.OUTPUTS

FabricSwitchProfile<PSCustomObject>
#>

function Initialize-IntersightFabricSwitchProfile {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("fabric.SwitchProfile")]
        [String]
        ${ClassId} = "fabric.SwitchProfile",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("fabric.SwitchProfile")]
        [String]
        ${ObjectType} = "fabric.SwitchProfile",
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
        ${Parent},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^[a-zA-Z0-9]+[\sa-zA-Z0-9_'.:-]*$")]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9_.-]{1,64}$")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("instance")]
        [String]
        ${Type} = "instance",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SrcTemplate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Action},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ConfigContext},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ConfigChanges},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AssignedSwitch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AssociatedSwitch},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ConfigResult},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SwitchClusterProfile}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightFabricSwitchProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if (!$Description -and $Description.length -gt 1024) {
            throw "invalid value for 'Description', the character length must be smaller than or equal to 1024."
        }

        
        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "Description" = ${Description}
            "Name" = ${Name}
            "Type" = ${Type}
            "SrcTemplate" = ${SrcTemplate}
            "Action" = ${Action}
            "ConfigContext" = ${ConfigContext}
            "ConfigChanges" = ${ConfigChanges}
            "AssignedSwitch" = ${AssignedSwitch}
            "AssociatedSwitch" = ${AssociatedSwitch}
            "ConfigResult" = ${ConfigResult}
            "SwitchClusterProfile" = ${SwitchClusterProfile}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FabricSwitchProfile<PSCustomObject>

.DESCRIPTION

Convert from JSON to FabricSwitchProfile<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FabricSwitchProfile<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToFabricSwitchProfile {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightFabricSwitchProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightFabricSwitchProfile
        $AllProperties = ("ClassId", "ObjectType", "AccountMoid", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "Description", "Name", "Type", "SrcTemplate", "Action", "ConfigContext", "ConfigChanges", "AssignedSwitch", "AssociatedSwitch", "ConfigChangeDetails", "ConfigResult", "RunningWorkflows", "SwitchClusterProfile")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["Type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SrcTemplate"))) { #optional property not found
            $SrcTemplate = $null
        } else {
            $SrcTemplate = $JsonParameters.PSobject.Properties["SrcTemplate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Action"))) { #optional property not found
            $Action = $null
        } else {
            $Action = $JsonParameters.PSobject.Properties["Action"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConfigContext"))) { #optional property not found
            $ConfigContext = $null
        } else {
            $ConfigContext = $JsonParameters.PSobject.Properties["ConfigContext"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConfigChanges"))) { #optional property not found
            $ConfigChanges = $null
        } else {
            $ConfigChanges = $JsonParameters.PSobject.Properties["ConfigChanges"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AssignedSwitch"))) { #optional property not found
            $AssignedSwitch = $null
        } else {
            $AssignedSwitch = $JsonParameters.PSobject.Properties["AssignedSwitch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AssociatedSwitch"))) { #optional property not found
            $AssociatedSwitch = $null
        } else {
            $AssociatedSwitch = $JsonParameters.PSobject.Properties["AssociatedSwitch"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConfigChangeDetails"))) { #optional property not found
            $ConfigChangeDetails = $null
        } else {
            $ConfigChangeDetails = $JsonParameters.PSobject.Properties["ConfigChangeDetails"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConfigResult"))) { #optional property not found
            $ConfigResult = $null
        } else {
            $ConfigResult = $JsonParameters.PSobject.Properties["ConfigResult"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RunningWorkflows"))) { #optional property not found
            $RunningWorkflows = $null
        } else {
            $RunningWorkflows = $JsonParameters.PSobject.Properties["RunningWorkflows"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SwitchClusterProfile"))) { #optional property not found
            $SwitchClusterProfile = $null
        } else {
            $SwitchClusterProfile = $JsonParameters.PSobject.Properties["SwitchClusterProfile"].value
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
            "Ancestors" = ${Ancestors}
            "Parent" = ${Parent}
            "PermissionResources" = ${PermissionResources}
            "DisplayNames" = ${DisplayNames}
            "Description" = ${Description}
            "Name" = ${Name}
            "Type" = ${Type}
            "SrcTemplate" = ${SrcTemplate}
            "Action" = ${Action}
            "ConfigContext" = ${ConfigContext}
            "ConfigChanges" = ${ConfigChanges}
            "AssignedSwitch" = ${AssignedSwitch}
            "AssociatedSwitch" = ${AssociatedSwitch}
            "ConfigChangeDetails" = ${ConfigChangeDetails}
            "ConfigResult" = ${ConfigResult}
            "RunningWorkflows" = ${RunningWorkflows}
            "SwitchClusterProfile" = ${SwitchClusterProfile}
        }

        return $PSO
    }

}

