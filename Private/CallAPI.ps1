function CallAPI ([string]$suffix) {

    if (!$Env:BGServer) {
        throw 'Please set the server name using command Set-BGServer'
    }

    $url = $Env:BGServer + $suffix
    Write-Verbose "Calling endpoint $url"
    $Response = Invoke-WebRequest -Uri $url -Method Get -Verbose:$false #-Headers $headers 

    Write-Verbose "Received response with length: $($Response.Content.Length)"
    return $Response.Content
}