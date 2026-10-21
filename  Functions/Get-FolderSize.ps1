function Get-FolderSize {
    param(
        [Parameter(Mandatory)]
        [string]$Path
    )

    Get-ChildItem $Path -Directory | ForEach-Object {
        $folderSize = (Get-ChildItem $_.FullName -Recurse -File -ErrorAction SilentlyContinue |
                       Measure-Object Length -Sum).Sum

        [PSCustomObject]@{
            Folder = $_.FullName
            SizeGB = :Round($folderSize / 1GB, 2)
        }
    } | Sort-Object SizeGB -Descending
}