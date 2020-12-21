#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2020-12-08T20:53:20Z.
# Version: 1.0.9-2908
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Read a 'fault.Instance' resource.

.DESCRIPTION

No description available.

.PARAMETER Moid
The unique Moid identifier of a resource instance.

.PARAMETER ReturnType

Select the return type (optional): application/json, text/csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

FaultInstance
#>
function Get-IntersightFaultInstanceByMoid {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Moid},
        [String]
        [ValidateSet("application/json", "text/csv", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")]
        $ReturnType,
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-IntersightFaultInstanceByMoid' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-IntersightConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json', 'text/csv', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet')

        if ($ReturnType) {
            # use the return type (MIME) provided by the user
            $LocalVarAccepts = @($ReturnType)
        }

        $LocalVarUri = '/api/v1/fault/Instances/{Moid}'
        if (!$Moid) {
            throw "Error! The required parameter `Moid` missing when calling getFaultInstanceByMoid."
        }
        $LocalVarUri = $LocalVarUri.replace('{Moid}', $Moid)

        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['cookieAuth'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `cookieAuth` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
        }




        $LocalVarResult = Invoke-IntersightApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "FaultInstance" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Read a 'fault.Instance' resource.

.DESCRIPTION

No description available.

.PARAMETER VarFilter
Filter criteria for the resources to return. A URI with a $filter query option identifies a subset of the entries from the Collection of Entries. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the $filter option. The expression language that is used in $filter queries supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false).

.PARAMETER Orderby
Determines what properties are used to sort the collection of resources.

.PARAMETER Top
Specifies the maximum number of resources to return in the response.

.PARAMETER Skip
Specifies the number of resources to skip in the response.

.PARAMETER Select
Specifies a subset of properties to return.

.PARAMETER Expand
Specify additional attributes or related resources to return in addition to the primary resources.

.PARAMETER Apply
Specify one or more transformation operations to perform aggregation on the resources. The transformations are processed in order with the output from a transformation being used as input for the subsequent transformation. The ""$apply"" query takes a sequence of set transformations, separated by forward slashes to express that they are consecutively applied, i.e. the result of each transformation is the input to the next transformation. Supported aggregation methods are ""aggregate"" and ""groupby"". The **aggregate** transformation takes a comma-separated list of one or more aggregate expressions as parameters and returns a result set with a single instance, representing the aggregated value for all instances in the input set. The **groupby** transformation takes one or two parameters and 1. Splits the initial set into subsets where all instances in a subset have the same values for the grouping properties specified in the first parameter, 2. Applies set transformations to each subset according to the second parameter, resulting in a new set of potentially different structure and cardinality, 3. Ensures that the instances in the result set contain all grouping properties with the correct values for the group, 4. Concatenates the intermediate result sets into one result set. A groupby transformation affects the structure of the result set.

.PARAMETER Count
The $count query specifies the service should return the count of the matching resources, instead of returning the resources.

.PARAMETER Inlinecount
The $inlinecount query option allows clients to request an inline count of the matching resources included with the resources in the response.

.PARAMETER At
Similar to ""$filter"", but ""at"" is specifically used to filter versioning information properties for resources to return. A URI with an ""at"" Query Option identifies a subset of the Entries from the Collection of Entries identified by the Resource Path section of the URI. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the query option. The expression language that is used in at operators supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false) or any of the additional literal representations shown in the Abstract Type System section.

.PARAMETER Tags
The 'tags' parameter is used to request a summary of the Tag utilization for this resource. When the 'tags' parameter is specified, the response provides a list of tag keys, the number of times the key has been used across all documents, and the tag values that have been assigned to the tag key.

.PARAMETER ReturnType

Select the return type (optional): application/json, text/csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

FaultInstanceResponse
#>
function Get-IntersightFaultInstanceList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${VarFilter},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Orderby},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Top},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Skip},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Select},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Expand},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Apply},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Count},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("allpages", "none")]
        [String]
        ${Inlinecount},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${At},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Tags},
        [String]
        [ValidateSet("application/json", "text/csv", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")]
        $ReturnType,
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-IntersightFaultInstanceList' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-IntersightConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json', 'text/csv', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet')

        if ($ReturnType) {
            # use the return type (MIME) provided by the user
            $LocalVarAccepts = @($ReturnType)
        }

        $LocalVarUri = '/api/v1/fault/Instances'

        if ($VarFilter) {
            $LocalVarQueryParameters['$filter'] = $VarFilter
        }

        if ($Orderby) {
            $LocalVarQueryParameters['$orderby'] = $Orderby
        }

        if ($Top) {
            $LocalVarQueryParameters['$top'] = $Top
        }

        if ($Skip) {
            $LocalVarQueryParameters['$skip'] = $Skip
        }

        if ($Select) {
            $LocalVarQueryParameters['$select'] = $Select
        }

        if ($Expand) {
            $LocalVarQueryParameters['$expand'] = $Expand
        }

        if ($Apply) {
            $LocalVarQueryParameters['$apply'] = $Apply
        }

        if ($Count) {
            $LocalVarQueryParameters['$count'] = $Count
        }

        if ($Inlinecount) {
            $LocalVarQueryParameters['$inlinecount'] = $Inlinecount
        }

        if ($At) {
            $LocalVarQueryParameters['at'] = $At
        }

        if ($Tags) {
            $LocalVarQueryParameters['tags'] = $Tags
        }

        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['cookieAuth'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `cookieAuth` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
        }




        $LocalVarResult = Invoke-IntersightApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "FaultInstanceResponse" `
                                -IsBodyNullable $false

        # process oneOf response
        $LocalVarResult["Response"] = ConvertFrom-IntersightJsonToFaultInstanceResponse (ConvertTo-Json $LocalVarResult["Response"] -Depth 100)

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Update a 'fault.Instance' resource.

.DESCRIPTION

No description available.

.PARAMETER Moid
The unique Moid identifier of a resource instance.

.PARAMETER FaultInstance
The 'fault.Instance' resource to update.

.PARAMETER IfMatch
For methods that apply server-side changes, and in particular for PUT, If-Match can be used to prevent the lost update problem. It can check if the modification of a resource that the user wants to upload will not override another change that has been done since the original resource was fetched. If the request cannot be fulfilled, the 412 (Precondition Failed) response is returned. When modifying a resource using POST or PUT, the If-Match header must be set to the value of the resource ModTime property after which no lost update problem should occur. For example, a client send a GET request to obtain a resource, which includes the ModTime property. The ModTime indicates the last time the resource was created or modified. The client then sends a POST or PUT request with the If-Match header set to the ModTime property of the resource as obtained in the GET request.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

FaultInstance
#>
function Set-IntersightFaultInstance {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Moid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${FaultInstance},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IfMatch},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Set-IntersightFaultInstance' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-IntersightConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json', 'application/json-patch+json')

        $LocalVarUri = '/api/v1/fault/Instances/{Moid}'
        if (!$Moid) {
            throw "Error! The required parameter `Moid` missing when calling patchFaultInstance."
        }
        $LocalVarUri = $LocalVarUri.replace('{Moid}', $Moid)

        if ($IfMatch) {
            $LocalVarHeaderParameters['If-Match'] = $IfMatch
        }

        if (!$FaultInstance) {
            throw "Error! The required parameter `FaultInstance` missing when calling patchFaultInstance."
        }

        $LocalVarBodyParameter = $FaultInstance | ConvertTo-Json -Depth 100

        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['cookieAuth'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `cookieAuth` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
        }




        $LocalVarResult = Invoke-IntersightApiClient -Method 'PATCH' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "FaultInstance" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Update a 'fault.Instance' resource.

.DESCRIPTION

No description available.

.PARAMETER Moid
The unique Moid identifier of a resource instance.

.PARAMETER FaultInstance
The 'fault.Instance' resource to update.

.PARAMETER IfMatch
For methods that apply server-side changes, and in particular for PUT, If-Match can be used to prevent the lost update problem. It can check if the modification of a resource that the user wants to upload will not override another change that has been done since the original resource was fetched. If the request cannot be fulfilled, the 412 (Precondition Failed) response is returned. When modifying a resource using POST or PUT, the If-Match header must be set to the value of the resource ModTime property after which no lost update problem should occur. For example, a client send a GET request to obtain a resource, which includes the ModTime property. The ModTime indicates the last time the resource was created or modified. The client then sends a POST or PUT request with the If-Match header set to the ModTime property of the resource as obtained in the GET request.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

FaultInstance
#>
function Update-IntersightFaultInstance {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Moid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${FaultInstance},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IfMatch},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Update-IntersightFaultInstance' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-IntersightConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json', 'application/json-patch+json')

        $LocalVarUri = '/api/v1/fault/Instances/{Moid}'
        if (!$Moid) {
            throw "Error! The required parameter `Moid` missing when calling updateFaultInstance."
        }
        $LocalVarUri = $LocalVarUri.replace('{Moid}', $Moid)

        if ($IfMatch) {
            $LocalVarHeaderParameters['If-Match'] = $IfMatch
        }

        if (!$FaultInstance) {
            throw "Error! The required parameter `FaultInstance` missing when calling updateFaultInstance."
        }

        $LocalVarBodyParameter = $FaultInstance | ConvertTo-Json -Depth 100

        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['cookieAuth'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `cookieAuth` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
        }




        $LocalVarResult = Invoke-IntersightApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "FaultInstance" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

