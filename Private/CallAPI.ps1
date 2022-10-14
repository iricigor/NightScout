function CallAPI ([string]$suffix) {

    if (!$BGConfig.Server) {
        throw 'Please set the server name using command Set-BGServer'
    }

    $url = $BGConfig.Server + $suffix
    Write-Verbose "Calling endpoint $url"

    $Headers = @{
        'Accept' = 'application/json'
        'Content-Type' = 'application/json'
        'API-SECRET' = ConvertFrom-SecureString $BGConfig.APIKey -AsPlainText
    }

    $Response = Invoke-WebRequest -Uri $url -Method Get -Verbose:$false -Headers $Headers 

    Write-Verbose "Received response with length: $($Response.Content.Length)"
    return $Response.Content
}