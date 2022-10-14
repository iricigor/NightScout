function ConvertTo-HashTable {
    param(
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [object[]]$InputObject
    )
    begin {
        # begin block
    }
    process {
        foreach ($item in $InputObject) {
            $hash = @{}
            $item.psobject.properties | Foreach { $hash[$_.Name] = $_.Value }
            $hash
        }
    }
    end {
        # enb block
    }
}