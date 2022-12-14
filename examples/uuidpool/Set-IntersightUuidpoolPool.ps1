# Get the organization.
$organization = Get-IntersightOrganizationOrganization -Name 'default'

# Get the UuidpoolPool to Update
$UuidpoolPool = Get-IntersightUuidpoolPool -Name UuidpoolPoolName

# Update the UuidpoolPool
$uuidpool_pool1 = $UuidpoolPool | Set-IntersightUuidpoolPool -Description 'update demo uuidpool_pool'