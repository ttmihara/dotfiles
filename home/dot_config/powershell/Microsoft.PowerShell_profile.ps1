# chezmoi completion
if (Get-Command chezmoi -errorAction SilentlyContinue)
{
  . $HOME/.config/powershell/chezmoi_completion.ps1
}

# scoop completion
Import-Module "$($(Get-Item $(Get-Command scoop.ps1).Path).Directory.Parent.FullName)\modules\scoop-completion" -errorAction SilentlyContinue

# setup starship prompt
if (Get-Command starship -errorAction SilentlyContinue)
{
  Invoke-Expression (&starship init powershell)
}

# zoxide
if (Get-Command zoxide -errorAction SilentlyContinue)
{
  Invoke-Expression (& {
      $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
      (zoxide init --hook $hook powershell | Out-String)
  })
}

# PSFzf
if (Get-Command Set-PSFzfOption -errorAction SilentlyContinue)
{
  Set-PsFzfOption
}

# Aliases
. $HOME/.config/powershell/aliases.ps1
