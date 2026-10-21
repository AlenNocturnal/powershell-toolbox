function Get-PublicIP {
    (Invoke-RestMethod "https://api.ipify.org")
}