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

Definition of the list of properties defined in 'appliance.DeviceClaim', excluding properties defined in parent classes.

.PARAMETER Hostname
Hostname or IP address of the endpoint device the user wants to claim.
.PARAMETER Password
Password to be used to login to the endpoint device.
.PARAMETER PlatformType
Platform type of the endpoint device.
.PARAMETER RequestId
User defined claim request identifier set by the UI. The RequestId field is not a mandatory. The Intersight Appliance will assign a unique value automatically if the field is not set.
.PARAMETER Username
Username to log in to the endpoint device.
.PARAMETER Account
No description available.
.OUTPUTS

ApplianceDeviceClaimAllOf<PSCustomObject>
#>

function Initialize-IntersightApplianceDeviceClaimAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Hostname},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("", "APIC", "DCNM", "UCSFI", "UCSFIISM", "IMC", "IMCM4", "IMCM5", "UCSIOM", "HX", "HyperFlexAP", "UCSD", "IntersightAppliance", "PureStorageFlashArray", "NetAppOntap", "EmcScaleIo", "EmcVmax", "EmcVplex", "EmcXtremIo", "VmwareVcenter", "MicrosoftHyperV", "AppDynamics", "Dynatrace", "MicrosoftSqlServer", "Kubernetes", "MicrosoftAzure", "ServiceEngine", "IMCBlade")]
        [String]
        ${PlatformType} = "",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequestId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Account}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightApplianceDeviceClaimAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        
        $PSO = [PSCustomObject]@{
            "Hostname" = ${Hostname}
            "Password" = ${Password}
            "PlatformType" = ${PlatformType}
            "RequestId" = ${RequestId}
            "Username" = ${Username}
            "Account" = ${Account}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApplianceDeviceClaimAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApplianceDeviceClaimAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApplianceDeviceClaimAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToApplianceDeviceClaimAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightApplianceDeviceClaimAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightApplianceDeviceClaimAllOf
        $AllProperties = ("DeviceId", "Hostname", "IsPasswordSet", "Message", "Password", "PlatformType", "RequestId", "SecurityToken", "Status", "Username", "Account")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeviceId"))) { #optional property not found
            $DeviceId = $null
        } else {
            $DeviceId = $JsonParameters.PSobject.Properties["DeviceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Hostname"))) { #optional property not found
            $Hostname = $null
        } else {
            $Hostname = $JsonParameters.PSobject.Properties["Hostname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IsPasswordSet"))) { #optional property not found
            $IsPasswordSet = $null
        } else {
            $IsPasswordSet = $JsonParameters.PSobject.Properties["IsPasswordSet"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["Message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["Password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PlatformType"))) { #optional property not found
            $PlatformType = $null
        } else {
            $PlatformType = $JsonParameters.PSobject.Properties["PlatformType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RequestId"))) { #optional property not found
            $RequestId = $null
        } else {
            $RequestId = $JsonParameters.PSobject.Properties["RequestId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SecurityToken"))) { #optional property not found
            $SecurityToken = $null
        } else {
            $SecurityToken = $JsonParameters.PSobject.Properties["SecurityToken"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["Status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["Username"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Account"))) { #optional property not found
            $Account = $null
        } else {
            $Account = $JsonParameters.PSobject.Properties["Account"].value
        }

        $PSO = [PSCustomObject]@{
            "DeviceId" = ${DeviceId}
            "Hostname" = ${Hostname}
            "IsPasswordSet" = ${IsPasswordSet}
            "Message" = ${Message}
            "Password" = ${Password}
            "PlatformType" = ${PlatformType}
            "RequestId" = ${RequestId}
            "SecurityToken" = ${SecurityToken}
            "Status" = ${Status}
            "Username" = ${Username}
            "Account" = ${Account}
        }

        return $PSO
    }

}

