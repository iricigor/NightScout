function ConvertToMMolPerL {

    #
    # Converts values in mg/dl to mmol/L
    #

    [CmdletBinding()]
    param(
        [Parameter(Mandatory)][int]$mgdl,
        [Parameter()][string]$Precision=1
    )

    $mmol = $mgdl / 18.0182
    $mmol = [math]::Round($mmol,$Precision)

    return $mmol
    
}