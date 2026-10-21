function Get-LargeFiles {
    param(
        [Parameter(Mandatory)]
        [string]$Path,

        [int]$Top = 20
    )

    Get-ChildItem $Path -Recurse -File -ErrorAction SilentlyContinue |
        Sort-Object Length -Descending |
        Select-Object -First $Top @{
            Name = 'SizeGB'
            Expression = { [math]::Round($_.Length / 1GB, 2) }
        }, FullName
}