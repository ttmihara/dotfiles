# Aliases
New-Alias -Name "e" explorer -errorAction SilentlyContinue
New-Alias -Name "cz" chezmoi -errorAction SilentlyContinue

# KeyHandler
Set-PSReadlineKeyHandler -Chord ctrl+d -Function ViExit
Set-PSReadlineKeyHandler -Chord ctrl+u -Function BackwardKillLine
Set-PSReadLineKeyHandler -Chord UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Chord DownArrow -Function HistorySearchForward
Set-PSReadlineKeyHandler -Chord ctrl+n -Function NextHistory
Set-PSReadlineKeyHandler -Chord ctrl+p -Function PreviousHistory
