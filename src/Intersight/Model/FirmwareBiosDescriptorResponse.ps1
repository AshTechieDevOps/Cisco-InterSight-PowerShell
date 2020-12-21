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

The response body of a HTTP GET request for the 'firmware.BiosDescriptor' resource. The value may be one of the following types. 1. When 'tag' is specified in the URL query, the response schema     is a summary of the tag usage. 1. When '$apply' is specified in the URL query, the response schema     is dynamically-generated schema based on the $apply value. 1. When '$count' is specified in the URL query, the response is     a simple object providing the count of the resources. 1. In all other cases, the response is a list of 'firmware.BiosDescriptor' resources.

.PARAMETER Json

JSON object

.OUTPUTS

FirmwareBiosDescriptorResponse<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToFirmwareBiosDescriptorResponse {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        $JsonData = ConvertFrom-Json -InputObject $Json
        # check if the discriminator value is 'firmware.BiosDescriptor.List'
        if ($JsonData.PSobject.Properties["ObjectType"].value -eq "firmware.BiosDescriptor.List") {
            # try to match FirmwareBiosDescriptorList defined in the oneOf schemas
            try {
                $matchInstance = ConvertFrom-IntersightJsonToFirmwareBiosDescriptorList $Json

                foreach($property in $matchInstance.PsObject.Properties) {
                    if ($null -ne $property.Value) {
                        $matchType = "FirmwareBiosDescriptorList"
                        return [PSCustomObject]@{
                            "ActualType" = ${matchType}
                            "ActualInstance" = ${matchInstance}
                            "oneOfSchemas" = @("FirmwareBiosDescriptorList", "MoAggregateTransform", "MoDocumentCount", "MoTagSummary")
                        }
                    }
                }
            } catch {
                # fail to match the schema defined in oneOf with the discriminator lookup, proceed to the next one
                Write-Debug "Failed to match 'FirmwareBiosDescriptorList' defined in oneOf (IntersightFirmwareBiosDescriptorResponse) using the discriminator lookup (firmware.BiosDescriptor.List). Proceeding with the typical oneOf type matching."
            }
        }

        # check if the discriminator value is 'mo.AggregateTransform'
        if ($JsonData.PSobject.Properties["ObjectType"].value -eq "mo.AggregateTransform") {
            # try to match MoAggregateTransform defined in the oneOf schemas
            try {
                $matchInstance = ConvertFrom-IntersightJsonToMoAggregateTransform $Json

                foreach($property in $matchInstance.PsObject.Properties) {
                    if ($null -ne $property.Value) {
                        $matchType = "MoAggregateTransform"
                        return [PSCustomObject]@{
                            "ActualType" = ${matchType}
                            "ActualInstance" = ${matchInstance}
                            "oneOfSchemas" = @("FirmwareBiosDescriptorList", "MoAggregateTransform", "MoDocumentCount", "MoTagSummary")
                        }
                    }
                }
            } catch {
                # fail to match the schema defined in oneOf with the discriminator lookup, proceed to the next one
                Write-Debug "Failed to match 'MoAggregateTransform' defined in oneOf (IntersightFirmwareBiosDescriptorResponse) using the discriminator lookup (mo.AggregateTransform). Proceeding with the typical oneOf type matching."
            }
        }

        # check if the discriminator value is 'mo.DocumentCount'
        if ($JsonData.PSobject.Properties["ObjectType"].value -eq "mo.DocumentCount") {
            # try to match MoDocumentCount defined in the oneOf schemas
            try {
                $matchInstance = ConvertFrom-IntersightJsonToMoDocumentCount $Json

                foreach($property in $matchInstance.PsObject.Properties) {
                    if ($null -ne $property.Value) {
                        $matchType = "MoDocumentCount"
                        return [PSCustomObject]@{
                            "ActualType" = ${matchType}
                            "ActualInstance" = ${matchInstance}
                            "oneOfSchemas" = @("FirmwareBiosDescriptorList", "MoAggregateTransform", "MoDocumentCount", "MoTagSummary")
                        }
                    }
                }
            } catch {
                # fail to match the schema defined in oneOf with the discriminator lookup, proceed to the next one
                Write-Debug "Failed to match 'MoDocumentCount' defined in oneOf (IntersightFirmwareBiosDescriptorResponse) using the discriminator lookup (mo.DocumentCount). Proceeding with the typical oneOf type matching."
            }
        }

        # check if the discriminator value is 'mo.TagSummary'
        if ($JsonData.PSobject.Properties["ObjectType"].value -eq "mo.TagSummary") {
            # try to match MoTagSummary defined in the oneOf schemas
            try {
                $matchInstance = ConvertFrom-IntersightJsonToMoTagSummary $Json

                foreach($property in $matchInstance.PsObject.Properties) {
                    if ($null -ne $property.Value) {
                        $matchType = "MoTagSummary"
                        return [PSCustomObject]@{
                            "ActualType" = ${matchType}
                            "ActualInstance" = ${matchInstance}
                            "oneOfSchemas" = @("FirmwareBiosDescriptorList", "MoAggregateTransform", "MoDocumentCount", "MoTagSummary")
                        }
                    }
                }
            } catch {
                # fail to match the schema defined in oneOf with the discriminator lookup, proceed to the next one
                Write-Debug "Failed to match 'MoTagSummary' defined in oneOf (IntersightFirmwareBiosDescriptorResponse) using the discriminator lookup (mo.TagSummary). Proceeding with the typical oneOf type matching."
            }
        }

        # try to match FirmwareBiosDescriptorList defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-IntersightJsonToFirmwareBiosDescriptorList $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "FirmwareBiosDescriptorList"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'FirmwareBiosDescriptorList' defined in oneOf (IntersightFirmwareBiosDescriptorResponse). Proceeding to the next one if any."
        }

        # try to match MoAggregateTransform defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-IntersightJsonToMoAggregateTransform $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "MoAggregateTransform"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'MoAggregateTransform' defined in oneOf (IntersightFirmwareBiosDescriptorResponse). Proceeding to the next one if any."
        }

        # try to match MoDocumentCount defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-IntersightJsonToMoDocumentCount $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "MoDocumentCount"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'MoDocumentCount' defined in oneOf (IntersightFirmwareBiosDescriptorResponse). Proceeding to the next one if any."
        }

        # try to match MoTagSummary defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-IntersightJsonToMoTagSummary $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "MoTagSummary"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'MoTagSummary' defined in oneOf (IntersightFirmwareBiosDescriptorResponse). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([FirmwareBiosDescriptorList, MoAggregateTransform, MoDocumentCount, MoTagSummary]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("FirmwareBiosDescriptorList", "MoAggregateTransform", "MoDocumentCount", "MoTagSummary")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([FirmwareBiosDescriptorList, MoAggregateTransform, MoDocumentCount, MoTagSummary]). JSON Payload: $($Json)"
        }
    }
}


