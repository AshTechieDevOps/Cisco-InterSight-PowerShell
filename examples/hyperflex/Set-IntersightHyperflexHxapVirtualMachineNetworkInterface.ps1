
#Get the HyperflexHxapVirtualMachineNetworkInterface to Update
$HyperflexHxapVirtualMachineNetworkInterface = Get-IntersightHyperflexHxapVirtualMachineNetworkInterface -Name HyperflexHxapVirtualMachineNetworkInterfaceName
$HyperflexHxapVirtualMachineNetworkInterface | Set-IntersightHyperflexHxapVirtualMachineNetworkInterface -Description 'Updated description'