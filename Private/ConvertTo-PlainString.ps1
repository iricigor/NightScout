function ConvertTo-PlainString {
    param(
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [securestring[]]$SecureString
    )
    begin {
        # begin block
    }
    process {
        foreach ($item in $SecureString) {
            [pscredential]::new('a', $item).GetNetworkCredential().Password
        }
    }
    end {
        # end block
    }
}