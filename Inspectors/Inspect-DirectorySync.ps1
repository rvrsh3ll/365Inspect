Function Inspect-DirectorySync{
	$permissions = Get-MgOrganization

		If ($permissions.OnPremisesSyncEnabled -eq $true) {
			$lastSync = $permissions.OnPremisesLastSyncDateTime
			return "Directory Synchronization is enabled. Last synced $lastSync"
		}
	Return $null
}

Return Inspect-DirectorySync