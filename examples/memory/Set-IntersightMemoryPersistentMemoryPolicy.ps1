
#Get the MemoryPersistentMemoryPolicy to delete
$MemoryPersistentMemoryPolicy = Get-IntersightMemoryPersistentMemoryPolicy -Name MemoryPersistentMemoryPolicyName
$MemoryPersistentMemoryPolicy | Set-IntersightMemoryPersistentMemoryPolicy -Description 'Updated description'