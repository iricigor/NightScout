function Set-BGAPIKey {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$false)][securestring]$APIKey
    )

    if (-not $APIKey) {
        $APIKey = Read-Host -Prompt "API Key" -AsSecureString
    }

    if ($BG.APIKey -and $BG.APIKey -ne $APIKey) {
        Write-Warning 'Overriding BG API Key setting with new value'
    }

    $BG.APIKey = $APIKey
}