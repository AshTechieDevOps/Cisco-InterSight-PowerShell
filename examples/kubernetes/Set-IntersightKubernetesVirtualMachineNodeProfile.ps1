
#Get the KubernetesVirtualMachineNodeProfile to Update
$KubernetesVirtualMachineNodeProfile = Get-IntersightKubernetesVirtualMachineNodeProfile -Name KubernetesVirtualMachineNodeProfileName
$KubernetesVirtualMachineNodeProfile | Set-IntersightKubernetesVirtualMachineNodeProfile -Description 'Updated description'