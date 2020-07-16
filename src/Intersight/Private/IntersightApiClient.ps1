#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2020-07-16T08:45:19Z.
# Version: 1.0.9-2020
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

function Invoke-IntersightApiClient {
    [OutputType('System.Collections.Hashtable')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory)]
        [string]$Uri,
        [Parameter(Mandatory)]
        [AllowEmptyCollection()]
        [string[]]$Accepts,
        [Parameter(Mandatory)]
        [AllowEmptyCollection()]
        [string[]]$ContentTypes,
        [Parameter(Mandatory)]
        [hashtable]$HeaderParameters,
        [Parameter(Mandatory)]
        [hashtable]$FormParameters,
        [Parameter(Mandatory)]
        [hashtable]$QueryParameters,
        [Parameter(Mandatory)]
        [hashtable]$CookieParameters,
        [Parameter(Mandatory)]
        [AllowEmptyString()]
        [string]$Body,
        [Parameter(Mandatory)]
        [string]$Method,
        [Parameter(Mandatory)]
        [AllowEmptyString()]
        [string]$ReturnType
    )

    'Calling method: Invoke-IntersightApiClient' | Write-Debug
    $PSBoundParameters | Out-DebugParameter | Write-Debug

    $Configuration = Get-IntersightConfiguration
    $RequestUri = $Configuration["BaseUrl"] + $Uri
    $SkipCertificateCheck = $Configuration["SkipCertificateCheck"]

    # cookie parameters
    foreach ($Parameter in $CookieParameters.GetEnumerator()) {
        if ($Parameter.Name -eq "cookieAuth") {
            $HeaderParameters["Cookie"] = $Parameter.Value
        } else {
            $HeaderParameters[$Parameter.Name] = $Parameter.Value
        }
    }
    if ($CookieParameters -and $CookieParameters.Count -gt 1) {
        Write-Warning "Multipe cookie parameters found. Curently only the first one is supported/used"
    }

    # accept, content-type headers
    $Accept = SelectHeaders -Headers $Accepts
    if ($Accept) {
        $HeaderParameters['Accept'] = $Accept
    }

    $ContentType= SelectHeaders -Headers $ContentTypes
    if ($ContentType) {
        $HeaderParameters['Content-Type'] = $ContentType
    }

    # add default headers if any
    foreach ($header in $Configuration["DefaultHeaders"].GetEnumerator()) {
        $HeaderParameters[$header.Name] = $header.Value
    }


    # constrcut URL query string
    $HttpValues = [System.Web.HttpUtility]::ParseQueryString([String]::Empty)
    foreach ($Parameter in $QueryParameters.GetEnumerator()) {
        if ($Parameter.Value.Count -gt 1) { // array
            foreach ($Value in $Parameter.Value) {
                $HttpValues.Add($Parameter.Key + '[]', $Value)
            }
        } else {
            $HttpValues.Add($Parameter.Key,$Parameter.Value)
        }
    }
    # Build the request and load it with the query string.
    $UriBuilder = [System.UriBuilder]($RequestUri)
    $UriBuilder.Query = $HttpValues.ToString()

    # include form parameters in the request body
    if ($FormParameters -and $FormParameters.Count -gt 0) {
        $RequestBody = $FormParameters
    }

    if ($Body) {
        $RequestBody = $Body
    }

    # http signature authentication
    $httpSigningConfig = Get-IntersightConfigurationHttpSigning
    if ($null -ne $httpSigningConfig) {
        $httpSignHeaderArgument = @{
            Method     = $Method
            UriBuilder = $UriBuilder
            Body       = $Body
            RequestHeader = $HeaderParameters
        }
        $signedHeader = Get-IntersightHttpSignedHeader @httpSignHeaderArgument
        if($null -ne $signedHeader -and $signedHeader.Count -gt 0){
            foreach($item in $signedHeader.GetEnumerator()){
                $HeaderParameters[$item.Name] = $item.Value
            }
        }
    }

    if ($SkipCertificateCheck -eq $true) {
        $Response = Invoke-WebRequest -Uri $UriBuilder.Uri `
                                  -Method $Method `
                                  -Headers $HeaderParameters `
                                  -Body $RequestBody `
                                  -ErrorAction Stop `
                                  -UseBasicParsing `
                                  -SkipCertificateCheck

    } else {
        $Response = Invoke-WebRequest -Uri $UriBuilder.Uri `
                                  -Method $Method `
                                  -Headers $HeaderParameters `
                                  -Body $RequestBody `
                                  -ErrorAction Stop `
                                  -UseBasicParsing
    }

    return @{
        Response = DeserializeResponse -Response $Response -ReturnType $ReturnType -ContentTypes $Response.Headers["Content-Type"]
        StatusCode = $Response.StatusCode
        Headers = $Response.Headers
    }
}

# Select JSON MIME if present, otherwise choose the first one if available
function SelectHeaders {
    Param(
        [Parameter(Mandatory)]
        [AllowEmptyCollection()]
        [String[]]$Headers
    )

    foreach ($Header in $Headers) {
        if (IsJsonMIME -MIME $Header) {
            return $Header
        }
    }

    if (!($Headers) -or $Headers.Count -eq 0) {
        return $null
    } else {
        return $Headers[0] # return the first one
    }
}

function IsJsonMIME {
    Param(
        [Parameter(Mandatory)]
        [string]$MIME
    )

    if ($MIME -match "(?i)^(application/json|[^;/ \t]+/[^;/ \t]+[+]json)[ \t]*(;.*)?$") {
        return $true
    } else {
        return $false
    }
}

function DeserializeResponse {
    Param(
        [Parameter(Mandatory)]
        [AllowEmptyString()]
        [string]$ReturnType,
        [Parameter(Mandatory)]
        [AllowEmptyString()]
        [string]$Response,
        [Parameter(Mandatory)]
        [AllowEmptyCollection()]
        [string[]]$ContentTypes
    )

    If ([string]::IsNullOrEmpty($ReturnType)) { # void response
        return $Response
    } Elseif ($ReturnType -match '\[\]$') { # array
        return ConvertFrom-Json $Response
    } Elseif (@("String", "Boolean", "System.DateTime") -contains $ReturnType) { # string, boolean ,datetime
        return $Response
    } Else { # others (e.g. model, file)
        if ($ContentTypes) {
            $ContentType = $null
            if ($ContentTypes.Count -gt 1) {
                $ContentType = SelectHeaders -Headers $ContentTypes
            } else {
                $ContentType = $ContentTypes[0]
            }

            if (IsJsonMIME -MIME $ContentType) { # JSON
                return ConvertFrom-Json $Response
            } else { # XML, file, etc
                return $Response
            }
        } else { # no content type in response header, returning raw response
            return $Response
        }
    }
}
