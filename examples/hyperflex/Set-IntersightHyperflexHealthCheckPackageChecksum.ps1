
#Get the HyperflexHealthCheckPackageChecksum to Update
$HyperflexHealthCheckPackageChecksum = Get-IntersightHyperflexHealthCheckPackageChecksum -Name HyperflexHealthCheckPackageChecksumName
$HyperflexHealthCheckPackageChecksum | Set-IntersightHyperflexHealthCheckPackageChecksum -Description 'Updated description'
