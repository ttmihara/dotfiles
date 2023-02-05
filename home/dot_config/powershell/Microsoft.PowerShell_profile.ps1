# chezmoi completion
if (Get-Command chezmoi -errorAction SilentlyContinue)
{
  . $HOME/.config/powershell/chezmoi_completion.ps1
}

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

# Aliases
. $HOME/.config/powershell/aliases.ps1
