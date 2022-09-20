function Get-BGLastValue {
    [CmdletBinding()]
    param()
    # GetLastEntry

    $Response = CallAPI '/api/v1/entries?count=1'
    # return value
    ConvertStringToBGVRaw $Response

}
