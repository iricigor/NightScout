function Set-BGAPIKey {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$false)][securestring]$APIKey
    )

    if (-not $APIKey) {
        $APIKey = Read-Host -Prompt "API Key" -AsSecureString
    }

    if ($BGConfig.APIKey -and $BGConfig.APIKey -ne $APIKey) {
        Write-Warning 'Overriding BGConfig API Key setting with new value'
    }

    $BGConfig.APIKey = $APIKey
}