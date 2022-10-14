function Write-BGConfig {

    Import-SecurityModules
    $secretHash = ConvertTo-HashTable $script:BGConfig
    Set-Secret -Name BGConfig -Secret $secretHash

}