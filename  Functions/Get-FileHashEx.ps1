function Get-FileHashEx {
    param(
        [Parameter(Mandatory)]
        [string]$Path
    )

    Get-FileHash $Path -Algorithm SHA256
}