$account1 = Get-IntersightIamaccount -Moid '<Replace with Moid>'

$appliance_remote_file_import1 = New-IntersightApplianceRemoteFileImport -Account $account1 -Filename 'appliance_file.txt' -Hostname 'localhost' -Password 'ChangeMe' -Path '/remote/host/' -Port 22 -Protocol 'sftp' -Username 'admin'