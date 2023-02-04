# Completion
. $HOME/.config/powershell/chezmoi_completion.ps1

if (Get-Command starship -errorAction SilentlyContinue)
{
  Invoke-Expression (&starship init powershell)
}
