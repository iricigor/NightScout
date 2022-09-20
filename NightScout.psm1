Push-Location $PSSCriptRoot

Write-Host "Importing classes.."
. ./Classes.ps1

$PrivateFunctions = Get-ChildItem -Path ./Private -Filter *.ps1 -Recurse
Write-Host "`nImporting $($PrivateFunctions.Count) private functions.."
foreach ($file in Get-ChildItem -Path ./Private -Filter *.ps1 -Recurse) {
    Write-Host "  Importing $($file.Name)..."
    . $file.FullName
}

$PublicFunctions = Get-ChildItem -Path ./Public -Filter *.ps1 -Recurse
Write-Host "`nImporting $($PublicFunctions.Count) public functions.."
foreach ($file in Get-ChildItem -Path ./Public -Filter *.ps1 -Recurse) {
    Write-Host "  Importing $($file.Name)..."
    . $file.FullName
}

Export-ModuleMember -Function $PublicFunctions.BaseName
Pop-Location