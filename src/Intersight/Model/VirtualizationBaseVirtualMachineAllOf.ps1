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

Definition of the list of properties defined in 'virtualization.BaseVirtualMachine', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data. The enum values provides the list of concrete types that can be instantiated from this abstract type.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property. The enum values provides the list of concrete types that can be instantiated from this abstract type.
.PARAMETER Capacity
No description available.
.PARAMETER GuestInfo
No description available.
.PARAMETER HypervisorType
Type of hypervisor where the virtual machine is hosted for example ESXi. * `ESXi` - The hypervisor running on the HyperFlex cluster is a Vmware ESXi hypervisor of any version. * `HyperFlexAp` - The hypervisor running on the HyperFlex cluster is Cisco HyperFlex Application Platform. * `Hyper-V` - The hypervisor running on the HyperFlex cluster is Microsoft Hyper-V. * `Unknown` - The hypervisor running on the HyperFlex cluster is not known.
.PARAMETER Identity
The internally generated identity of this VM. This entity is not manipulated by users. It aids in uniquely identifying the virtual machine object. For VMware, this is MOR (managed object reference).
.PARAMETER IpAddress
No description available.
.PARAMETER MemoryCapacity
No description available.
.PARAMETER Name
User-provided name to identify the virtual machine.
.PARAMETER PowerState
Power state of the virtual machine. * `Unknown` - The entity's power state is unknown. * `PoweredOn` - The entity is powered on. * `PoweredOff` - The entity is powered down. * `StandBy` - The entity is in standby mode. * `Paused` - The entity is in pause state.
.PARAMETER ProcessorCapacity
No description available.
.PARAMETER Uuid
The uuid of this virtual machine. The uuid is internally generated and not user specified.
.OUTPUTS

VirtualizationBaseVirtualMachineAllOf<PSCustomObject>
#>

function Initialize-IntersightVirtualizationBaseVirtualMachineAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.HxapVirtualMachine", "virtualization.VmwareVirtualMachine")]
        [String]
        ${ClassId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.HxapVirtualMachine", "virtualization.VmwareVirtualMachine")]
        [String]
        ${ObjectType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Capacity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${GuestInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ESXi", "HyperFlexAp", "Hyper-V", "Unknown")]
        [String]
        ${HypervisorType} = "ESXi",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Identity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${IpAddress},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${MemoryCapacity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Unknown", "PoweredOn", "PoweredOff", "StandBy", "Paused")]
        [String]
        ${PowerState} = "Unknown",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ProcessorCapacity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$")]
        [String]
        ${Uuid}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightVirtualizationBaseVirtualMachineAllOf' | Write-Debug
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
            "Capacity" = ${Capacity}
            "GuestInfo" = ${GuestInfo}
            "HypervisorType" = ${HypervisorType}
            "Identity" = ${Identity}
            "IpAddress" = ${IpAddress}
            "MemoryCapacity" = ${MemoryCapacity}
            "Name" = ${Name}
            "PowerState" = ${PowerState}
            "ProcessorCapacity" = ${ProcessorCapacity}
            "Uuid" = ${Uuid}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VirtualizationBaseVirtualMachineAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to VirtualizationBaseVirtualMachineAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VirtualizationBaseVirtualMachineAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToVirtualizationBaseVirtualMachineAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightVirtualizationBaseVirtualMachineAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightVirtualizationBaseVirtualMachineAllOf
        $AllProperties = ("ClassId", "ObjectType", "Capacity", "GuestInfo", "HypervisorType", "Identity", "IpAddress", "MemoryCapacity", "Name", "PowerState", "ProcessorCapacity", "Uuid")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Capacity"))) { #optional property not found
            $Capacity = $null
        } else {
            $Capacity = $JsonParameters.PSobject.Properties["Capacity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "GuestInfo"))) { #optional property not found
            $GuestInfo = $null
        } else {
            $GuestInfo = $JsonParameters.PSobject.Properties["GuestInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HypervisorType"))) { #optional property not found
            $HypervisorType = $null
        } else {
            $HypervisorType = $JsonParameters.PSobject.Properties["HypervisorType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Identity"))) { #optional property not found
            $Identity = $null
        } else {
            $Identity = $JsonParameters.PSobject.Properties["Identity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IpAddress"))) { #optional property not found
            $IpAddress = $null
        } else {
            $IpAddress = $JsonParameters.PSobject.Properties["IpAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MemoryCapacity"))) { #optional property not found
            $MemoryCapacity = $null
        } else {
            $MemoryCapacity = $JsonParameters.PSobject.Properties["MemoryCapacity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PowerState"))) { #optional property not found
            $PowerState = $null
        } else {
            $PowerState = $JsonParameters.PSobject.Properties["PowerState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProcessorCapacity"))) { #optional property not found
            $ProcessorCapacity = $null
        } else {
            $ProcessorCapacity = $JsonParameters.PSobject.Properties["ProcessorCapacity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Uuid"))) { #optional property not found
            $Uuid = $null
        } else {
            $Uuid = $JsonParameters.PSobject.Properties["Uuid"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Capacity" = ${Capacity}
            "GuestInfo" = ${GuestInfo}
            "HypervisorType" = ${HypervisorType}
            "Identity" = ${Identity}
            "IpAddress" = ${IpAddress}
            "MemoryCapacity" = ${MemoryCapacity}
            "Name" = ${Name}
            "PowerState" = ${PowerState}
            "ProcessorCapacity" = ${ProcessorCapacity}
            "Uuid" = ${Uuid}
        }

        return $PSO
    }

}

