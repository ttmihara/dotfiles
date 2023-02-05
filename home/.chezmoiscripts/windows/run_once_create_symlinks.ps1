# Self-elevate the script if required
if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
  if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
    $CommandLine = "-NoExit -File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
    Start-Process -FilePath PowerShell.exe -Verb Runas -ArgumentList $CommandLine
    # Prevent script from exiting before creating symlink
    Write-Output "Press Enter key to continue..."
    Read-Host
    Exit
  }
}

# Neovim
New-Item -ItemType SymbolicLink -Path "$HOME\AppData\Local\nvim" -Target "$HOME\.config\nvim" -Confirm
# PowerShell
New-Item -ItemType SymbolicLink -Path "$PROFILE" -Target "$HOME\.config\powershell\Microsoft.PowerShell_profile.ps1" -Confirm
# AutoHotkey
New-Item -ItemType SymbolicLink -Path "$HOME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Main.ahk" -Target "$HOME\.local\share\AutoHotkey\Main.ahk" -Confirm
