function Test-Port {
    param(
        [Parameter(Mandatory)]
        [string]$ComputerName,

        [Parameter(Mandatory)]
        [int]$Port
    )

    Test-NetConnection $ComputerName -Port $Port
}