#Get the SoftwarerepositoryCategoryMapperModel to delete
$SoftwarerepositoryCategoryMapperModel = Get-IntersightSoftwarerepositoryCategoryMapperModel -Name SoftwarerepositoryCategoryMapperModelName
$SoftwarerepositoryCategoryMapperModel | Remove-IntersightSoftwarerepositoryCategoryMapperModel

#Remove the SoftwarerepositoryCategoryMapperModel by Moid.
Remove-IntersightSoftwarerepositoryCategoryMapperModel -Moid '<Replace with Moid>'
