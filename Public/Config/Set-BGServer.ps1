function Set-BGServer {

    [CmdletBinding()]
    param (
        [Parameter(Mandatory)][string]$ServerName
    )

    if ($BG.Server -and $BG.Server -ne $ServerName) {
        Write-Warning "Overriding BG Server setting '$($script:BG.Server)' with '$ServerName'"
    }
    $BG.Server = $ServerName
}