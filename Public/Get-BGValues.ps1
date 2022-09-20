function Get-BGValues () {

    [CmdletBinding()]
    param (
        [Parameter(Mandatory)][int]$Count
    )

    $Response = CallAPI "/api/v1/entries?count=$Count"

    # return value
    ConvertStringToBGVRaw $Response

}