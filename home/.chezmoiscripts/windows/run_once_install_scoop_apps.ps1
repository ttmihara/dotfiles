if (Get-Command scoop -errorAction SilentlyContinue)
{
  $scoop_apps = @(
    # Utils
    'sudo',
    'git',
    'curl',
    '7zip',
    'autohotkey',
    'windows-terminal',

    # Encryption
    'age',
    'bitwarden-cli',

    # Editors
    'neovim',
    'vscode',

    # CLI utils
    'starship',
    'zoxide'
    'fd',
    'fzf',
    'psfzf'
    'ripgrep',

    # Documentation
    'joplin',
    'sumatrapdf'
    )

  Write-Host "The following scoop apps will be installed:`n"
  Write-Host $scoop_apps "`n"
  $answer = Read-host "Do you want to continue? [Y/n] (default [n])"
  if ($answer -eq 'Y') 
  {
    # Install apps above
    scoop bucket add extras
    scoop install $scoop_apps
  }else{
    Write-Host 'Abort.'
  }
}
