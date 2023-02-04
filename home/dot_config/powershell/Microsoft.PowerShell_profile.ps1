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

# Aliases
. $HOME/.config/powershell/aliases.ps1
