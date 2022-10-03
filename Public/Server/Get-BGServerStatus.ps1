function Get-BGServerStatus {
    [CmdletBinding()]
    param()
    # GetLastEntry

    $Response = CallAPI '/api/v1/status.json'
    
    # return value
    $Response | ConvertFrom-Json | Select-Object -ExcludeProperty settings

}
