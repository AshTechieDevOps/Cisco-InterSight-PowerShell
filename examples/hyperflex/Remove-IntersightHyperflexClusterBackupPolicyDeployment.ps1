
#Get the HyperflexClusterBackupPolicyDeployment to delete
$HyperflexClusterBackupPolicyDeployment = Remove-IntersightHyperflexClusterBackupPolicyDeployment -Name HyperflexClusterBackupPolicyDeploymentName
$HyperflexClusterBackupPolicyDeployment | Remove-IntersightHyperflexClusterBackupPolicyDeployment

#Remove the server profile by Moid.
Remove-IntersightHyperflexClusterBackupPolicyDeployment -Moid 123bc2222287wee