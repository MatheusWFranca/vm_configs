$key = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\OneDrive'
$value = 'DisableFileSyncNGSC'
$valueData = 0
$valueType = [Microsoft.Win32.RegistryValueKind]::DWord

try {
    [Microsoft.Win32.Registry]::SetValue($key, $value, $valueData, $valueType)
    Write-Host "Registry value set successfully."
} catch {
    Write-Host "An error occurred: $_"
}
