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

Definition of the list of properties defined in 'hyperflex.SysConfigPolicy', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER DnsDomainName
The DNS Search Domain Name. This setting applies to HyperFlex Data Platform 3.0 or later only.
.PARAMETER DnsServers
No description available.
.PARAMETER NtpServers
No description available.
.PARAMETER Timezone
The timezone of the HyperFlex cluster's system clock. * `Pacific/Niue` -  * `Pacific/Pago_Pago` -  * `Pacific/Honolulu` -  * `Pacific/Rarotonga` -  * `Pacific/Tahiti` -  * `Pacific/Marquesas` -  * `America/Anchorage` -  * `Pacific/Gambier` -  * `America/Los_Angeles` -  * `America/Tijuana` -  * `America/Vancouver` -  * `America/Whitehorse` -  * `Pacific/Pitcairn` -  * `America/Dawson_Creek` -  * `America/Denver` -  * `America/Edmonton` -  * `America/Hermosillo` -  * `America/Mazatlan` -  * `America/Phoenix` -  * `America/Yellowknife` -  * `America/Belize` -  * `America/Chicago` -  * `America/Costa_Rica` -  * `America/El_Salvador` -  * `America/Guatemala` -  * `America/Managua` -  * `America/Mexico_City` -  * `America/Regina` -  * `America/Tegucigalpa` -  * `America/Winnipeg` -  * `Pacific/Galapagos` -  * `America/Bogota` -  * `America/Cancun` -  * `America/Cayman` -  * `America/Guayaquil` -  * `America/Havana` -  * `America/Iqaluit` -  * `America/Jamaica` -  * `America/Lima` -  * `America/Nassau` -  * `America/New_York` -  * `America/Panama` -  * `America/Port-au-Prince` -  * `America/Rio_Branco` -  * `America/Toronto` -  * `Pacific/Easter` -  * `America/Caracas` -  * `America/Asuncion` -  * `America/Barbados` -  * `America/Boa_Vista` -  * `America/Campo_Grande` -  * `America/Cuiaba` -  * `America/Curacao` -  * `America/Grand_Turk` -  * `America/Guyana` -  * `America/Halifax` -  * `America/La_Paz` -  * `America/Manaus` -  * `America/Martinique` -  * `America/Port_of_Spain` -  * `America/Porto_Velho` -  * `America/Puerto_Rico` -  * `America/Santo_Domingo` -  * `America/Thule` -  * `Atlantic/Bermuda` -  * `America/St_Johns` -  * `America/Araguaina` -  * `America/Argentina/Buenos_Aires` -  * `America/Bahia` -  * `America/Belem` -  * `America/Cayenne` -  * `America/Fortaleza` -  * `America/Godthab` -  * `America/Maceio` -  * `America/Miquelon` -  * `America/Montevideo` -  * `America/Paramaribo` -  * `America/Recife` -  * `America/Santiago` -  * `America/Sao_Paulo` -  * `Antarctica/Palmer` -  * `Antarctica/Rothera` -  * `Atlantic/Stanley` -  * `America/Noronha` -  * `Atlantic/South_Georgia` -  * `America/Scoresbysund` -  * `Atlantic/Azores` -  * `Atlantic/Cape_Verde` -  * `Africa/Abidjan` -  * `Africa/Accra` -  * `Africa/Bissau` -  * `Africa/Casablanca` -  * `Africa/El_Aaiun` -  * `Africa/Monrovia` -  * `America/Danmarkshavn` -  * `Atlantic/Canary` -  * `Atlantic/Faroe` -  * `Atlantic/Reykjavik` -  * `Etc/GMT` -  * `Europe/Dublin` -  * `Europe/Lisbon` -  * `Europe/London` -  * `Africa/Algiers` -  * `Africa/Ceuta` -  * `Africa/Lagos` -  * `Africa/Ndjamena` -  * `Africa/Tunis` -  * `Africa/Windhoek` -  * `Europe/Amsterdam` -  * `Europe/Andorra` -  * `Europe/Belgrade` -  * `Europe/Berlin` -  * `Europe/Brussels` -  * `Europe/Budapest` -  * `Europe/Copenhagen` -  * `Europe/Gibraltar` -  * `Europe/Luxembourg` -  * `Europe/Madrid` -  * `Europe/Malta` -  * `Europe/Monaco` -  * `Europe/Oslo` -  * `Europe/Paris` -  * `Europe/Prague` -  * `Europe/Rome` -  * `Europe/Stockholm` -  * `Europe/Tirane` -  * `Europe/Vienna` -  * `Europe/Warsaw` -  * `Europe/Zurich` -  * `Africa/Cairo` -  * `Africa/Johannesburg` -  * `Africa/Maputo` -  * `Africa/Tripoli` -  * `Asia/Amman` -  * `Asia/Beirut` -  * `Asia/Damascus` -  * `Asia/Gaza` -  * `Asia/Jerusalem` -  * `Asia/Nicosia` -  * `Europe/Athens` -  * `Europe/Bucharest` -  * `Europe/Chisinau` -  * `Europe/Helsinki` -  * `Europe/Istanbul` -  * `Europe/Kaliningrad` -  * `Europe/Kiev` -  * `Europe/Riga` -  * `Europe/Sofia` -  * `Europe/Tallinn` -  * `Europe/Vilnius` -  * `Africa/Khartoum` -  * `Africa/Nairobi` -  * `Antarctica/Syowa` -  * `Asia/Baghdad` -  * `Asia/Qatar` -  * `Asia/Riyadh` -  * `Europe/Minsk` -  * `Europe/Moscow` -  * `Asia/Tehran` -  * `Asia/Baku` -  * `Asia/Dubai` -  * `Asia/Tbilisi` -  * `Asia/Yerevan` -  * `Europe/Samara` -  * `Indian/Mahe` -  * `Indian/Mauritius` -  * `Indian/Reunion` -  * `Asia/Kabul` -  * `Antarctica/Mawson` -  * `Asia/Aqtau` -  * `Asia/Aqtobe` -  * `Asia/Ashgabat` -  * `Asia/Dushanbe` -  * `Asia/Karachi` -  * `Asia/Tashkent` -  * `Asia/Yekaterinburg` -  * `Indian/Kerguelen` -  * `Indian/Maldives` -  * `Asia/Calcutta` -  * `Asia/Kolkata` -  * `Asia/Colombo` -  * `Asia/Katmandu` -  * `Antarctica/Vostok` -  * `Asia/Almaty` -  * `Asia/Bishkek` -  * `Asia/Dhaka` -  * `Asia/Omsk` -  * `Asia/Thimphu` -  * `Indian/Chagos` -  * `Asia/Rangoon` -  * `Indian/Cocos` -  * `Antarctica/Davis` -  * `Asia/Bangkok` -  * `Asia/Hovd` -  * `Asia/Jakarta` -  * `Asia/Krasnoyarsk` -  * `Asia/Saigon` -  * `Indian/Christmas` -  * `Antarctica/Casey` -  * `Asia/Brunei` -  * `Asia/Choibalsan` -  * `Asia/Hong_Kong` -  * `Asia/Irkutsk` -  * `Asia/Kuala_Lumpur` -  * `Asia/Macau` -  * `Asia/Makassar` -  * `Asia/Manila` -  * `Asia/Shanghai` -  * `Asia/Singapore` -  * `Asia/Taipei` -  * `Asia/Ulaanbaatar` -  * `Australia/Perth` -  * `Asia/Pyongyang` -  * `Asia/Dili` -  * `Asia/Jayapura` -  * `Asia/Seoul` -  * `Asia/Tokyo` -  * `Asia/Yakutsk` -  * `Pacific/Palau` -  * `Australia/Adelaide` -  * `Australia/Darwin` -  * `Antarctica/DumontDUrville` -  * `Asia/Magadan` -  * `Asia/Vladivostok` -  * `Australia/Brisbane` -  * `Australia/Hobart` -  * `Australia/Sydney` -  * `Pacific/Chuuk` -  * `Pacific/Guam` -  * `Pacific/Port_Moresby` -  * `Pacific/Efate` -  * `Pacific/Guadalcanal` -  * `Pacific/Kosrae` -  * `Pacific/Norfolk` -  * `Pacific/Noumea` -  * `Pacific/Pohnpei` -  * `Asia/Kamchatka` -  * `Pacific/Auckland` -  * `Pacific/Fiji` -  * `Pacific/Funafuti` -  * `Pacific/Kwajalein` -  * `Pacific/Majuro` -  * `Pacific/Nauru` -  * `Pacific/Tarawa` -  * `Pacific/Wake` -  * `Pacific/Wallis` -  * `Pacific/Apia` -  * `Pacific/Enderbury` -  * `Pacific/Fakaofo` -  * `Pacific/Tongatapu` -  * `Pacific/Kiritimati` -
.PARAMETER ClusterProfiles
An array of relationships to hyperflexClusterProfile resources.
.PARAMETER Organization
No description available.
.OUTPUTS

HyperflexSysConfigPolicyAllOf<PSCustomObject>
#>

function Initialize-IntersightHyperflexSysConfigPolicyAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.SysConfigPolicy")]
        [String]
        ${ClassId} = "hyperflex.SysConfigPolicy",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("hyperflex.SysConfigPolicy")]
        [String]
        ${ObjectType} = "hyperflex.SysConfigPolicy",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^$|^([a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?\.)*[a-zA-Z]{2,63}$")]
        [String]
        ${DnsDomainName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${DnsServers},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${NtpServers},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Pacific/Niue", "Pacific/Pago_Pago", "Pacific/Honolulu", "Pacific/Rarotonga", "Pacific/Tahiti", "Pacific/Marquesas", "America/Anchorage", "Pacific/Gambier", "America/Los_Angeles", "America/Tijuana", "America/Vancouver", "America/Whitehorse", "Pacific/Pitcairn", "America/Dawson_Creek", "America/Denver", "America/Edmonton", "America/Hermosillo", "America/Mazatlan", "America/Phoenix", "America/Yellowknife", "America/Belize", "America/Chicago", "America/Costa_Rica", "America/El_Salvador", "America/Guatemala", "America/Managua", "America/Mexico_City", "America/Regina", "America/Tegucigalpa", "America/Winnipeg", "Pacific/Galapagos", "America/Bogota", "America/Cancun", "America/Cayman", "America/Guayaquil", "America/Havana", "America/Iqaluit", "America/Jamaica", "America/Lima", "America/Nassau", "America/New_York", "America/Panama", "America/Port-au-Prince", "America/Rio_Branco", "America/Toronto", "Pacific/Easter", "America/Caracas", "America/Asuncion", "America/Barbados", "America/Boa_Vista", "America/Campo_Grande", "America/Cuiaba", "America/Curacao", "America/Grand_Turk", "America/Guyana", "America/Halifax", "America/La_Paz", "America/Manaus", "America/Martinique", "America/Port_of_Spain", "America/Porto_Velho", "America/Puerto_Rico", "America/Santo_Domingo", "America/Thule", "Atlantic/Bermuda", "America/St_Johns", "America/Araguaina", "America/Argentina/Buenos_Aires", "America/Bahia", "America/Belem", "America/Cayenne", "America/Fortaleza", "America/Godthab", "America/Maceio", "America/Miquelon", "America/Montevideo", "America/Paramaribo", "America/Recife", "America/Santiago", "America/Sao_Paulo", "Antarctica/Palmer", "Antarctica/Rothera", "Atlantic/Stanley", "America/Noronha", "Atlantic/South_Georgia", "America/Scoresbysund", "Atlantic/Azores", "Atlantic/Cape_Verde", "Africa/Abidjan", "Africa/Accra", "Africa/Bissau", "Africa/Casablanca", "Africa/El_Aaiun", "Africa/Monrovia", "America/Danmarkshavn", "Atlantic/Canary", "Atlantic/Faroe", "Atlantic/Reykjavik", "Etc/GMT", "Europe/Dublin", "Europe/Lisbon", "Europe/London", "Africa/Algiers", "Africa/Ceuta", "Africa/Lagos", "Africa/Ndjamena", "Africa/Tunis", "Africa/Windhoek", "Europe/Amsterdam", "Europe/Andorra", "Europe/Belgrade", "Europe/Berlin", "Europe/Brussels", "Europe/Budapest", "Europe/Copenhagen", "Europe/Gibraltar", "Europe/Luxembourg", "Europe/Madrid", "Europe/Malta", "Europe/Monaco", "Europe/Oslo", "Europe/Paris", "Europe/Prague", "Europe/Rome", "Europe/Stockholm", "Europe/Tirane", "Europe/Vienna", "Europe/Warsaw", "Europe/Zurich", "Africa/Cairo", "Africa/Johannesburg", "Africa/Maputo", "Africa/Tripoli", "Asia/Amman", "Asia/Beirut", "Asia/Damascus", "Asia/Gaza", "Asia/Jerusalem", "Asia/Nicosia", "Europe/Athens", "Europe/Bucharest", "Europe/Chisinau", "Europe/Helsinki", "Europe/Istanbul", "Europe/Kaliningrad", "Europe/Kiev", "Europe/Riga", "Europe/Sofia", "Europe/Tallinn", "Europe/Vilnius", "Africa/Khartoum", "Africa/Nairobi", "Antarctica/Syowa", "Asia/Baghdad", "Asia/Qatar", "Asia/Riyadh", "Europe/Minsk", "Europe/Moscow", "Asia/Tehran", "Asia/Baku", "Asia/Dubai", "Asia/Tbilisi", "Asia/Yerevan", "Europe/Samara", "Indian/Mahe", "Indian/Mauritius", "Indian/Reunion", "Asia/Kabul", "Antarctica/Mawson", "Asia/Aqtau", "Asia/Aqtobe", "Asia/Ashgabat", "Asia/Dushanbe", "Asia/Karachi", "Asia/Tashkent", "Asia/Yekaterinburg", "Indian/Kerguelen", "Indian/Maldives", "Asia/Calcutta", "Asia/Kolkata", "Asia/Colombo", "Asia/Katmandu", "Antarctica/Vostok", "Asia/Almaty", "Asia/Bishkek", "Asia/Dhaka", "Asia/Omsk", "Asia/Thimphu", "Indian/Chagos", "Asia/Rangoon", "Indian/Cocos", "Antarctica/Davis", "Asia/Bangkok", "Asia/Hovd", "Asia/Jakarta", "Asia/Krasnoyarsk", "Asia/Saigon", "Indian/Christmas", "Antarctica/Casey", "Asia/Brunei", "Asia/Choibalsan", "Asia/Hong_Kong", "Asia/Irkutsk", "Asia/Kuala_Lumpur", "Asia/Macau", "Asia/Makassar", "Asia/Manila", "Asia/Shanghai", "Asia/Singapore", "Asia/Taipei", "Asia/Ulaanbaatar", "Australia/Perth", "Asia/Pyongyang", "Asia/Dili", "Asia/Jayapura", "Asia/Seoul", "Asia/Tokyo", "Asia/Yakutsk", "Pacific/Palau", "Australia/Adelaide", "Australia/Darwin", "Antarctica/DumontDUrville", "Asia/Magadan", "Asia/Vladivostok", "Australia/Brisbane", "Australia/Hobart", "Australia/Sydney", "Pacific/Chuuk", "Pacific/Guam", "Pacific/Port_Moresby", "Pacific/Efate", "Pacific/Guadalcanal", "Pacific/Kosrae", "Pacific/Norfolk", "Pacific/Noumea", "Pacific/Pohnpei", "Asia/Kamchatka", "Pacific/Auckland", "Pacific/Fiji", "Pacific/Funafuti", "Pacific/Kwajalein", "Pacific/Majuro", "Pacific/Nauru", "Pacific/Tarawa", "Pacific/Wake", "Pacific/Wallis", "Pacific/Apia", "Pacific/Enderbury", "Pacific/Fakaofo", "Pacific/Tongatapu", "Pacific/Kiritimati")]
        [String]
        ${Timezone} = "Pacific/Niue",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ClusterProfiles},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightHyperflexSysConfigPolicyAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if (!$DnsDomainName -and $DnsDomainName.length -gt 253) {
            throw "invalid value for 'DnsDomainName', the character length must be smaller than or equal to 253."
        }

        if (!$DnsDomainName -and $DnsDomainName.length -lt 0) {
            throw "invalid value for 'DnsDomainName', the character length must be great than or equal to 0."
        }

        
        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "DnsDomainName" = ${DnsDomainName}
            "DnsServers" = ${DnsServers}
            "NtpServers" = ${NtpServers}
            "Timezone" = ${Timezone}
            "ClusterProfiles" = ${ClusterProfiles}
            "Organization" = ${Organization}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HyperflexSysConfigPolicyAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to HyperflexSysConfigPolicyAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HyperflexSysConfigPolicyAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToHyperflexSysConfigPolicyAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightHyperflexSysConfigPolicyAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightHyperflexSysConfigPolicyAllOf
        $AllProperties = ("ClassId", "ObjectType", "DnsDomainName", "DnsServers", "NtpServers", "Timezone", "ClusterProfiles", "Organization")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DnsDomainName"))) { #optional property not found
            $DnsDomainName = $null
        } else {
            $DnsDomainName = $JsonParameters.PSobject.Properties["DnsDomainName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DnsServers"))) { #optional property not found
            $DnsServers = $null
        } else {
            $DnsServers = $JsonParameters.PSobject.Properties["DnsServers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NtpServers"))) { #optional property not found
            $NtpServers = $null
        } else {
            $NtpServers = $JsonParameters.PSobject.Properties["NtpServers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Timezone"))) { #optional property not found
            $Timezone = $null
        } else {
            $Timezone = $JsonParameters.PSobject.Properties["Timezone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClusterProfiles"))) { #optional property not found
            $ClusterProfiles = $null
        } else {
            $ClusterProfiles = $JsonParameters.PSobject.Properties["ClusterProfiles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "DnsDomainName" = ${DnsDomainName}
            "DnsServers" = ${DnsServers}
            "NtpServers" = ${NtpServers}
            "Timezone" = ${Timezone}
            "ClusterProfiles" = ${ClusterProfiles}
            "Organization" = ${Organization}
        }

        return $PSO
    }

}

