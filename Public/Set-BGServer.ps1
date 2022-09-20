function Set-BGServer {

    [CmdletBinding()]
    param (
        [Parameter(Mandatory)][string]$ServerName
    )

    if (!($Env:BGServer)) {
        Write-Warning "Overriding BGServer environment variable $($Env:BGServer)"
    }
    $Env:BGServer = $ServerName
} 