# PowerShell Toolbox

A collection of practical PowerShell functions for developers, system administrators, and power users.

The goal of this project is simple:

- Save time on repetitive tasks
- Provide memorable aliases for common operations
- Keep all useful personal utilities in one place
- Share tools that may help others

## Features

### Storage & Files

| Command | Function | Description |
|----------|----------|-------------|
| size | Get-FolderSize | Show subfolder sizes in GB |
| largefiles | Get-LargeFiles | Find the largest files in a directory |
| emptydirs | Get-EmptyDirectories | Find empty directories |
| hash | Get-FileHashEx | Calculate SHA256 file hash |

### Networking

| Command | Function | Description |
|----------|----------|-------------|
| myip | Get-PublicIP | Get public IP address |
| testport | Test-Port | Test TCP connectivity to a port |

### System

| Command | Function | Description |
|----------|----------|-------------|
| uptime | Get-Uptime | Show system uptime |
| diskusage | Get-DiskUsage | Show disk usage summary |

### Utilities

| Command | Function | Description |
|----------|----------|-------------|
| guid | New-GuidEx | Generate a GUID |

---

## Project Structure

```text
powershell-toolbox/
│
├── Functions/
│   ├── Get-FolderSize.ps1
│   ├── Get-LargeFiles.ps1
│   ├── Get-FileHashEx.ps1
│   ├── Get-PublicIP.ps1
│   ├── Get-Uptime.ps1
│   ├── Get-EmptyDirectories.ps1
│   ├── Test-Port.ps1
│   ├── New-GuidEx.ps1
│   └── Get-DiskUsage.ps1
│
├── Aliases.ps1
├── Import-Toolbox.ps1
├── LICENSE
└── README.md
```

---

## Installation

### Clone Repository

```powershell
git clone https://github.com/<your-user>/powershell-toolbox.git
```

### Load Toolbox

```powershell
. .\Import-Toolbox.ps1
```

---

## Automatic Loading

To load the toolbox every time PowerShell starts:

Open your profile:

```powershell
notepad $PROFILE
```

Add:

```powershell
. "C:\Git\powershell-toolbox\Import-Toolbox.ps1"
```

Adjust the path if necessary.

Reload profile:

```powershell
. $PROFILE
```

---

## Examples

### Show Folder Sizes

```powershell
size C:\Users
```

### Find Largest Files

```powershell
largefiles C:\ -Top 20
```

### Check Public IP

```powershell
myip
```

### Generate GUID

```powershell
guid
```

### Check Port Connectivity

```powershell
testport github.com 443
```

### Display Disk Usage

```powershell
diskusage
```

---

## Aliases

```text
size         -> Get-FolderSize
largefiles   -> Get-LargeFiles
emptydirs    -> Get-EmptyDirectories
hash         -> Get-FileHashEx
myip         -> Get-PublicIP
uptime       -> Get-Uptime
testport     -> Test-Port
guid         -> New-GuidEx
diskusage    -> Get-DiskUsage
```

---

## Contributing

Suggestions, bug reports, and improvements are welcome.

If a function solves a common problem and makes life easier from the command line, it probably belongs in this toolbox.

---

## License

Licensed under the MIT License.

See the LICENSE file for details.