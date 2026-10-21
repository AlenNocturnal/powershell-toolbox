function Get-Uptime {
    $os = Get-CimInstance Win32_OperatingSystem

    [PSCustomObject]@{
        Computer = $env:COMPUTERNAME
        LastBoot = $os.LastBootUpTime
        Uptime = (Get-Date) - $os.LastBootUpTime
    }
}