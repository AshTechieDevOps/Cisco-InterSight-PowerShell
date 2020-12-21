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

Workflow definition is a collection of tasks that are sequenced in a certain way using control tasks. The tasks in the workflow definition is represented as a directed acyclic graph where each node in the graph is a task and the edges in the graph are transitions from one task to another.

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
.PARAMETER DefaultVersion
When true this will be the workflow version that is used when a specific workflow definition version is not specified. The default version is used when user executes a workflow without specifying a version or when workflow is included in another workflow without a specific version. The very first workflow definition created with a name will be set as the default version, after that user can explicitly set any version of the workflow definition as the default version.
.PARAMETER Description
The description for this workflow.
.PARAMETER InputDefinition
No description available.
.PARAMETER InputParameterSet
No description available.
.PARAMETER Label
A user friendly short name to identify the workflow. Label can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.), colon (:), space ( ) or an underscore (_).
.PARAMETER Name
The name for this workflow. You can have multiple versions of the workflow with the same name. Name can only contain letters (a-z, A-Z), numbers (0-9), hyphen (-), period (.) or an underscore (_).
.PARAMETER OutputDefinition
No description available.
.PARAMETER OutputParameters
The output mappings for the workflow. The outputs for worflows will generally be task output variables that we want to export out at the end of the workflow. The format to specify the mapping is '${Source.output.JsonPath}'. 'Source' is the name of the task within the workflow. You can map any task output to a workflow output as long as the types are compatible. Following this is JSON path expression to extract JSON fragment from source's output.
.PARAMETER Properties
No description available.
.PARAMETER Tasks
No description available.
.PARAMETER UiInputFilters
No description available.
.PARAMETER UiRenderingData
This will hold the data needed for workflow to be rendered in the user interface.
.PARAMETER ValidationInformation
No description available.
.PARAMETER Version
The version of the workflow to support multiple versions.
.PARAMETER Catalog
No description available.
.PARAMETER WorkflowMetadata
No description available.
.OUTPUTS

WorkflowWorkflowDefinition<PSCustomObject>
#>

function Initialize-IntersightWorkflowWorkflowDefinition {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.WorkflowDefinition")]
        [String]
        ${ClassId} = "workflow.WorkflowDefinition",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.WorkflowDefinition")]
        [String]
        ${ObjectType} = "workflow.WorkflowDefinition",
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
        [System.Nullable[Boolean]]
        ${DefaultVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${InputDefinition},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${InputParameterSet},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9]+[\sa-zA-Z0-9_.:-]{1,92}$")]
        [String]
        ${Label},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9_.-]{1,64}$")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${OutputDefinition},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OutputParameters},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Properties},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Tasks},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${UiInputFilters},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UiRenderingData},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ValidationInformation},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Version} = 1,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Catalog},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${WorkflowMetadata}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowWorkflowDefinition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if ($Version -and $Version -lt 1) {
          throw "invalid value for 'Version', must be greater than or equal to 1."
        }

        
        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "Parent" = ${Parent}
            "DefaultVersion" = ${DefaultVersion}
            "Description" = ${Description}
            "InputDefinition" = ${InputDefinition}
            "InputParameterSet" = ${InputParameterSet}
            "Label" = ${Label}
            "Name" = ${Name}
            "OutputDefinition" = ${OutputDefinition}
            "OutputParameters" = ${OutputParameters}
            "Properties" = ${Properties}
            "Tasks" = ${Tasks}
            "UiInputFilters" = ${UiInputFilters}
            "UiRenderingData" = ${UiRenderingData}
            "ValidationInformation" = ${ValidationInformation}
            "Version" = ${Version}
            "Catalog" = ${Catalog}
            "WorkflowMetadata" = ${WorkflowMetadata}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowWorkflowDefinition<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowWorkflowDefinition<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowWorkflowDefinition<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowWorkflowDefinition {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowWorkflowDefinition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowWorkflowDefinition
        $AllProperties = ("ClassId", "ObjectType", "AccountMoid", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "Owners", "SharedScope", "Tags", "VersionContext", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "DefaultVersion", "Description", "InputDefinition", "InputParameterSet", "Label", "LicenseEntitlement", "MaxTaskCount", "Name", "OutputDefinition", "OutputParameters", "Properties", "Tasks", "UiInputFilters", "UiRenderingData", "ValidationInformation", "Version", "Catalog", "WorkflowMetadata")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DefaultVersion"))) { #optional property not found
            $DefaultVersion = $null
        } else {
            $DefaultVersion = $JsonParameters.PSobject.Properties["DefaultVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InputDefinition"))) { #optional property not found
            $InputDefinition = $null
        } else {
            $InputDefinition = $JsonParameters.PSobject.Properties["InputDefinition"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InputParameterSet"))) { #optional property not found
            $InputParameterSet = $null
        } else {
            $InputParameterSet = $JsonParameters.PSobject.Properties["InputParameterSet"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Label"))) { #optional property not found
            $Label = $null
        } else {
            $Label = $JsonParameters.PSobject.Properties["Label"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LicenseEntitlement"))) { #optional property not found
            $LicenseEntitlement = $null
        } else {
            $LicenseEntitlement = $JsonParameters.PSobject.Properties["LicenseEntitlement"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MaxTaskCount"))) { #optional property not found
            $MaxTaskCount = $null
        } else {
            $MaxTaskCount = $JsonParameters.PSobject.Properties["MaxTaskCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutputDefinition"))) { #optional property not found
            $OutputDefinition = $null
        } else {
            $OutputDefinition = $JsonParameters.PSobject.Properties["OutputDefinition"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OutputParameters"))) { #optional property not found
            $OutputParameters = $null
        } else {
            $OutputParameters = $JsonParameters.PSobject.Properties["OutputParameters"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Properties"))) { #optional property not found
            $Properties = $null
        } else {
            $Properties = $JsonParameters.PSobject.Properties["Properties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Tasks"))) { #optional property not found
            $Tasks = $null
        } else {
            $Tasks = $JsonParameters.PSobject.Properties["Tasks"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UiInputFilters"))) { #optional property not found
            $UiInputFilters = $null
        } else {
            $UiInputFilters = $JsonParameters.PSobject.Properties["UiInputFilters"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UiRenderingData"))) { #optional property not found
            $UiRenderingData = $null
        } else {
            $UiRenderingData = $JsonParameters.PSobject.Properties["UiRenderingData"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ValidationInformation"))) { #optional property not found
            $ValidationInformation = $null
        } else {
            $ValidationInformation = $JsonParameters.PSobject.Properties["ValidationInformation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Version"))) { #optional property not found
            $Version = $null
        } else {
            $Version = $JsonParameters.PSobject.Properties["Version"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Catalog"))) { #optional property not found
            $Catalog = $null
        } else {
            $Catalog = $JsonParameters.PSobject.Properties["Catalog"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "WorkflowMetadata"))) { #optional property not found
            $WorkflowMetadata = $null
        } else {
            $WorkflowMetadata = $JsonParameters.PSobject.Properties["WorkflowMetadata"].value
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
            "DefaultVersion" = ${DefaultVersion}
            "Description" = ${Description}
            "InputDefinition" = ${InputDefinition}
            "InputParameterSet" = ${InputParameterSet}
            "Label" = ${Label}
            "LicenseEntitlement" = ${LicenseEntitlement}
            "MaxTaskCount" = ${MaxTaskCount}
            "Name" = ${Name}
            "OutputDefinition" = ${OutputDefinition}
            "OutputParameters" = ${OutputParameters}
            "Properties" = ${Properties}
            "Tasks" = ${Tasks}
            "UiInputFilters" = ${UiInputFilters}
            "UiRenderingData" = ${UiRenderingData}
            "ValidationInformation" = ${ValidationInformation}
            "Version" = ${Version}
            "Catalog" = ${Catalog}
            "WorkflowMetadata" = ${WorkflowMetadata}
        }

        return $PSO
    }

}

