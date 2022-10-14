function Get-BGValues () {

    [CmdletBinding()]
    param (
        [Parameter(Mandatory)][int]$Count
    )

    $Response = CallAPI "/api/v1/entries.json?count=$Count"

    # return value
    $Response | ConvertFrom-Json
}