---
external help file: Intersight.PowerShell.dll-Help.xml
Module Name: Intersight.PowerShell
online version:
schema: 2.0.0
---

# Set-IntersightFabricUplinkRole

## SYNOPSIS
Fill in the Synopsis

## SYNTAX

```

Set-IntersightFabricUplinkRole [-AdditionalProperties< Dictionary<string,object>>][-AdminSpeed< FabricUplinkRole.AdminSpeedEnum>][-AggregatePortId< long>][-Fec< FabricUplinkRole.FecEnum>][-FlowControlPolicy< FabricFlowControlPolicyRelationship>][-LinkControlPolicy< FabricLinkControlPolicyRelationship>][[-Moid]< string>][-PortId< long>][-PortPolicy< FabricPortPolicyRelationship>][-SlotId< long>][-Tags< List<MoTag>>]

```

## DESCRIPTION
Update a &amp;apos;FabricUplinkRole&amp;apos; resource.

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

### -AdminSpeed
Admin configured speed for the port.\n* `Auto` - Admin configurable speed AUTO ( default ).\n* `1Gbps` - Admin configurable speed 1Gbps.\n* `10Gbps` - Admin configurable speed 10Gbps.\n* `25Gbps` - Admin configurable speed 25Gbps.\n* `40Gbps` - Admin configurable speed 40Gbps.\n* `100Gbps` - Admin configurable speed 100Gbps.

```yaml
Type: FabricUplinkRole.AdminSpeedEnum
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -AggregatePortId
Breakout port Identifier of the Switch Interface.\nWhen a port is not configured as a breakout port, the aggregatePortId is set to 0, and unused.\nWhen a port is configured as a breakout port, the &apos;aggregatePortId&apos; port number as labeled on the equipment,\ne.g. the id of the port on the switch.

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

### -Fec
Forward error correction configuration for the port.\n* `Auto` - Forward error correction option &amp;apos;Auto&amp;apos;.\n* `Cl91` - Forward error correction option &amp;apos;cl91&amp;apos;.\n* `Cl74` - Forward error correction option &amp;apos;cl74&amp;apos;.

```yaml
Type: FabricUplinkRole.FecEnum
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -FlowControlPolicy
A reference to a fabricFlowControlPolicy resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline.

 Note:- To get the relationship object pass the MO to the cmdlet Get-IntersightMoMoRef 
or use the cmdlet Initialize-IntersightMoMoRef.

```yaml
Type: FabricFlowControlPolicyRelationship
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -LinkControlPolicy
A reference to a fabricLinkControlPolicy resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline.

 Note:- To get the relationship object pass the MO to the cmdlet Get-IntersightMoMoRef 
or use the cmdlet Initialize-IntersightMoMoRef.

```yaml
Type: FabricLinkControlPolicyRelationship
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

Required: true
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -PortId
Port Identifier of the Switch/FEX/Chassis Interface.\nWhen a port is not configured as a breakout port, the portId is the port number as labeled on the equipment,\ne.g. the id of the port on the switch, FEX or chassis.\nWhen a port is configured as a breakout port, the &apos;portId&apos; represents the port id on the fanout side of the breakout cable.

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

### -PortPolicy
A reference to a fabricPortPolicy resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline.

 Note:- To get the relationship object pass the MO to the cmdlet Get-IntersightMoMoRef 
or use the cmdlet Initialize-IntersightMoMoRef.

```yaml
Type: FabricPortPolicyRelationship
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```

### -SlotId
Slot Identifier of the Switch/FEX/Chassis Interface.

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

### -Tags


Note :- Use Initialize-IntersightMoTag to create the object of complex type MoTag

```yaml
Type: System.Collections.Generic.List`1[MoTag]
Parameter Sets: (All)
Aliases:

Required: false
Position: Named
Default value: None
Accept pipeline input: True True (ByPropertyName)
Accept wildcard characters: False
```


### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## EXAMPLES

### Example 1
```powershell
PS C:\> Set-IntersightFabricUplinkRole
```

{ Add example description here }

## INPUTS

### System.Int32

### System.String

## OUTPUTS

### TestModule.FavoriteStuff

## NOTES

## RELATED LINKS

[New-IntersightFabricUplinkRole](./New-IntersightFabricUplinkRole.md)

[Get-IntersightFabricUplinkRole](./Get-IntersightFabricUplinkRole.md)

[Remove-IntersightFabricUplinkRole](./Remove-IntersightFabricUplinkRole.md)