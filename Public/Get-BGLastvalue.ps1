function Get-BGLastValue {
    [CmdletBinding()]
    param()
    # GetLastEntry

    $Response = CallAPI '/api/v1/entries.json?count=1'
    # return value
    $Response | ConvertFrom-Json

}
