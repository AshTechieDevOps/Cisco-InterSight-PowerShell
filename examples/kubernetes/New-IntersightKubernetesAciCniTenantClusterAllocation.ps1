$organization1 = Get-IntersightOrganizationOrganization -Name 'default'

$kubernetes_aci_cni_tenant_cluster_allocation1 = New-IntersightKubernetesAciCniTenantClusterAllocation -Organization $organization1