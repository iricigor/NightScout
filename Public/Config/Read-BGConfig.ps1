function Read-BGConfig {

    Import-SecurityModules
    $secret = Get-Secret -Name BGConfig

    $script:BGConfig.APIKey = $secret.APIKey
    $script:BGConfig.Server = ConvertTo-PlainString -SecureString $secret.Server


}