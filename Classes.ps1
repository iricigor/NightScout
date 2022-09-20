Class BGValueRaw {


    #
    # Example object
    #
    # "2022-09-18T17:09:23.000Z"
    # 1663520963000
    # 249
    # "Flat"
    # "share2"


    #
    # Define properties
    #
    [ValidateNotNullOrEmpty()][string]$TimeStampString
    [ValidateNotNullOrEmpty()][string]$TimeStampLong
    [ValidateNotNullOrEmpty()][long]$BGValue
    [ValidateNotNullOrEmpty()][string]$Description1
    [ValidateNotNullOrEmpty()][string]$Description2


    #
    # Define constructor
    #

    BGValueRaw([string]$TimeStampString, [string]$TimeStampLong, [long]$BGValue, [string]$Description1, [string]$Description2) {
        $this.TimeStampString = $TimeStampString
        $this.TimeStampLong = $TimeStampLong
        $this.BGValue = $BGValue
        $this.Description1 = $Description1
        $this.Description2 = $Description2
    }

}
