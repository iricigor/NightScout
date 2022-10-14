function Import-SecurityModules {

    [CmdletBinding()]
    param ()

    $securityModules = @('Microsoft.PowerShell.SecretManagement','Microsoft.PowerShell.SecretStore')
    $installedModules = Get-Module -ListAvailable -Name $securityModules

    foreach ($module in $securityModules) {
        if ($module -notin $installedModules.Name) {
            Write-Verbose "Installing $module"
            Install-Module -Name $module -Force -Scope CurrentUser
        }
    }

    $BGVaultName = 'BGSecretVault'
    if (Get-SecretVault $BGVaultName -ea 0) {
        Write-Debug "$BGVaultName already exists"
    } else {
        Write-Verbose "Creating $BGVaultName..."
        Register-SecretVault -Name $BGVaultName -ModuleName Microsoft.PowerShell.SecretStore
    }
}