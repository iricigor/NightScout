function Set-BGServer {

    [CmdletBinding()]
    param (
        [Parameter(Mandatory)][string]$ServerName
    )

    if ($BGConfig.Server -and $BGConfig.Server -ne $ServerName) {
        Write-Warning "Overriding BGConfig Server setting '$($script:BGConfig.Server)' with '$ServerName'"
    }
    $BGConfig.Server = $ServerName
}