function Get-DiskUsage {

    Get-CimInstance Win32_LogicalDisk |
        Where-Object DriveType -eq 3 |
        Select-Object DeviceID,
            @{Name='SizeGB';Expression={[math]::Round($_.Size/1GB,2)}},
            @{Name='FreeGB';Expression={[math]::Round($_.FreeSpace/1GB,2)}},
            @{Name='UsedGB';Expression={[math]::Round(($_.Size-$_.FreeSpace)/1GB,2)}}
}