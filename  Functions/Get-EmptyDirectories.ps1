function Get-EmptyDirectories {
    param(
        [Parameter(Mandatory)]
        [string]$Path
    )

    Get-ChildItem $Path -Recurse -Directory |
        Where-Object {
            @(Get-ChildItem $_.FullName -Force).Count -eq 0
        } |
        Select-Object FullName
}