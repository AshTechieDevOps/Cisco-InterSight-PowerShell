---
external help file: Intersight.PowerShell.dll-Help.xml
Module Name: Intersight.PowerShell
online version:
schema: 2.0.0
---

# Initialize-IntersightCapabilitySwitchCapability

## SYNOPSIS
Fill in the Synopsis

## SYNTAX

```

Initialize-IntersightCapabilitySwitchCapability [-AdditionalProperties< System.Collections.Generic.Dictionary`2[string,object]>][-ClassId< CapabilitySwitchCapability.ClassIdEnum>][-DefaultFcoeVlan< long>][-DynamicVifsSupported< bool>][-FanModulesSupported< bool>][-FcEndHostModeReservedVsans< System.Collections.Generic.List`1[Model.CapabilityPortRange]>][-FcUplinkPortsAutoNegotiationSupported< bool>][-LocatorBeaconSupported< bool>][-MaxPorts< long>][-MaxSlots< long>][-Moid< string>][-Name< string>][-NetworkLimits< Model.CapabilitySwitchNetworkLimits>][-ObjectType< CapabilitySwitchCapability.ObjectTypeEnum>][-Pid< CapabilitySwitchCapability.PidEnum>][-PortsSupporting100gSpeed< System.Collections.Generic.List`1[Model.CapabilityPortRange]>][-PortsSupporting10gSpeed< System.Collections.Generic.List`1[Model.CapabilityPortRange]>][-PortsSupporting1gSpeed< System.Collections.Generic.List`1[Model.CapabilityPortRange]>][-PortsSupporting25gSpeed< System.Collections.Generic.List`1[Model.CapabilityPortRange]>][-PortsSupporting40gSpeed< System.Collections.Generic.List`1[Model.CapabilityPortRange]>][-PortsSupportingBreakout< System.Collections.Generic.List`1[Model.CapabilityPortRange]>][-PortsSupportingFcoe< System.Collections.Generic.List`1[Model.CapabilityPortRange]>][-PortsSupportingServerRole< System.Collections.Generic.List`1[Model.CapabilityPortRange]>][-ReservedVsans< System.Collections.Generic.List`1[Model.CapabilityPortRange]>][-SerenoNetflowSupported< bool>][-Sku< string>][-StorageLimits< Model.CapabilitySwitchStorageLimits>][-SwitchingModeCapabilities< System.Collections.Generic.List`1[Model.CapabilitySwitchingModeCapability]>][-SystemLimits< Model.CapabilitySwitchSystemLimits>][-Tags< System.Collections.Generic.List`1[Model.MoTag]>][-UnifiedPorts< System.Collections.Generic.List`1[Model.CapabilityPortRange]>][-UnifiedRule< string>][-Vid< string>][-Json< SwitchParameter>][-WithHttpInfo< SwitchParameter>]

```

## DESCRIPTION

Initialize cmdlet is used to instantiate the object of complex type in the Powershell session, it does not create the object on the server.

## PARAMETERS

### -AdditionalProperties


```yaml
Type: System.Collections.Generic.Dictionary`2[string,object]
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -ClassId
The fully-qualified name of the instantiated, concrete type.\nThis property is used as a discriminator to identify the type of the payload\nwhen marshaling and unmarshaling data.

```yaml
Type: CapabilitySwitchCapability.ClassIdEnum
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -DefaultFcoeVlan
Default Fcoe VLAN associated with this switch.

```yaml
Type: long
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -DynamicVifsSupported
Dynamic VIFs support on this switch.

```yaml
Type: bool
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -FanModulesSupported
Fan Modules support on this switch.

```yaml
Type: bool
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -FcEndHostModeReservedVsans


Note :- Use Initialize-IntersightCapabilityPortRange to create the object of complex type CapabilityPortRange

```yaml
Type: System.Collections.Generic.List`1[Model.CapabilityPortRange]
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -FcUplinkPortsAutoNegotiationSupported
Fc Uplink ports auto negotiation speed support on this switch.

```yaml
Type: bool
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -LocatorBeaconSupported
Locator Beacon LED support on this switch.

```yaml
Type: bool
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -MaxPorts
Maximum allowed physical ports on this switch.

```yaml
Type: long
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -MaxSlots
Maximum allowed physical slots on this switch.

```yaml
Type: long
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -Moid
The unique identifier of this Managed Object instance.

```yaml
Type: string
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
An unique identifer for a capability descriptor.

```yaml
Type: string
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -NetworkLimits
List of network limitations for this switch.

Note :- Use Initialize-IntersightCapabilitySwitchNetworkLimits to create the object of complex type CapabilitySwitchNetworkLimits

```yaml
Type: Model.CapabilitySwitchNetworkLimits
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -ObjectType
The fully-qualified name of the instantiated, concrete type.\nThe value should be the same as the &apos;ClassId&apos; property.

```yaml
Type: CapabilitySwitchCapability.ObjectTypeEnum
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -Pid
Product Identifier for a Switch/Fabric-Interconnect.\n* `UCS-FI-6454` - The standard 4th generation UCS Fabric Interconnect with 54 ports.\n* `UCS-FI-64108` - The expanded 4th generation UCS Fabric Interconnect with 108 ports.\n* `UCS-FI-6536` - The standard 5th generation UCS Fabric Interconnect with 36 ports.\n* `unknown` - Unknown device type, usage is TBD.

```yaml
Type: CapabilitySwitchCapability.PidEnum
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -PortsSupporting100gSpeed


Note :- Use Initialize-IntersightCapabilityPortRange to create the object of complex type CapabilityPortRange

```yaml
Type: System.Collections.Generic.List`1[Model.CapabilityPortRange]
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -PortsSupporting10gSpeed


Note :- Use Initialize-IntersightCapabilityPortRange to create the object of complex type CapabilityPortRange

```yaml
Type: System.Collections.Generic.List`1[Model.CapabilityPortRange]
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -PortsSupporting1gSpeed


Note :- Use Initialize-IntersightCapabilityPortRange to create the object of complex type CapabilityPortRange

```yaml
Type: System.Collections.Generic.List`1[Model.CapabilityPortRange]
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -PortsSupporting25gSpeed


Note :- Use Initialize-IntersightCapabilityPortRange to create the object of complex type CapabilityPortRange

```yaml
Type: System.Collections.Generic.List`1[Model.CapabilityPortRange]
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -PortsSupporting40gSpeed


Note :- Use Initialize-IntersightCapabilityPortRange to create the object of complex type CapabilityPortRange

```yaml
Type: System.Collections.Generic.List`1[Model.CapabilityPortRange]
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -PortsSupportingBreakout


Note :- Use Initialize-IntersightCapabilityPortRange to create the object of complex type CapabilityPortRange

```yaml
Type: System.Collections.Generic.List`1[Model.CapabilityPortRange]
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -PortsSupportingFcoe


Note :- Use Initialize-IntersightCapabilityPortRange to create the object of complex type CapabilityPortRange

```yaml
Type: System.Collections.Generic.List`1[Model.CapabilityPortRange]
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -PortsSupportingServerRole


Note :- Use Initialize-IntersightCapabilityPortRange to create the object of complex type CapabilityPortRange

```yaml
Type: System.Collections.Generic.List`1[Model.CapabilityPortRange]
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -ReservedVsans


Note :- Use Initialize-IntersightCapabilityPortRange to create the object of complex type CapabilityPortRange

```yaml
Type: System.Collections.Generic.List`1[Model.CapabilityPortRange]
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -SerenoNetflowSupported
Sereno Adaptor with Netflow support on this switch.

```yaml
Type: bool
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -Sku
SKU information for Switch/Fabric-Interconnect.

```yaml
Type: string
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -StorageLimits
List of storage limitations for this switch.

Note :- Use Initialize-IntersightCapabilitySwitchStorageLimits to create the object of complex type CapabilitySwitchStorageLimits

```yaml
Type: Model.CapabilitySwitchStorageLimits
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -SwitchingModeCapabilities


Note :- Use Initialize-IntersightCapabilitySwitchingModeCapability to create the object of complex type CapabilitySwitchingModeCapability

```yaml
Type: System.Collections.Generic.List`1[Model.CapabilitySwitchingModeCapability]
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -SystemLimits
List of system limitations for this switch.

Note :- Use Initialize-IntersightCapabilitySwitchSystemLimits to create the object of complex type CapabilitySwitchSystemLimits

```yaml
Type: Model.CapabilitySwitchSystemLimits
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -Tags


Note :- Use Initialize-IntersightMoTag to create the object of complex type MoTag

```yaml
Type: System.Collections.Generic.List`1[Model.MoTag]
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -UnifiedPorts


Note :- Use Initialize-IntersightCapabilityPortRange to create the object of complex type CapabilityPortRange

```yaml
Type: System.Collections.Generic.List`1[Model.CapabilityPortRange]
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -UnifiedRule
The Slider rule for Unified ports on this switch.

```yaml
Type: string
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -Vid
VID information for Switch/Fabric-Interconnect.

```yaml
Type: string
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -Json
Returns the json payload received in response.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True False
Accept wildcard characters: False
```

### -WithHttpInfo
Returns the HTTP response with headers and content.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True False
Accept wildcard characters: False
```


### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## EXAMPLES

### Example 1
```powershell
PS C:\> Initialize-IntersightCapabilitySwitchCapability
```

{ Add example description here }

## INPUTS

### System.Int32

### System.String

## OUTPUTS

### TestModule.FavoriteStuff

## NOTES

## RELATED LINKS

[Initialize-IntersightCapabilityPortRange](./Initialize-IntersightCapabilityPortRange.md)

[Initialize-IntersightCapabilitySwitchNetworkLimits](./Initialize-IntersightCapabilitySwitchNetworkLimits.md)

[Initialize-IntersightCapabilitySwitchStorageLimits](./Initialize-IntersightCapabilitySwitchStorageLimits.md)

[Initialize-IntersightCapabilitySwitchSystemLimits](./Initialize-IntersightCapabilitySwitchSystemLimits.md)

[Initialize-IntersightCapabilitySwitchingModeCapability](./Initialize-IntersightCapabilitySwitchingModeCapability.md)

[Initialize-IntersightMoTag](./Initialize-IntersightMoTag.md)
