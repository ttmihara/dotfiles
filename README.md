# ttmihara/dotfiles

## Installation

### Windows

1. To install [`scoop`](https://github.com/ScoopInstaller/Scoop)
```powershell
iwr -useb get.scoop.sh | iex
```

2. To install [`chezmoi`](https://github.com/twpayne/chezmoi).
```
scoop install chezmoi
```

3. To setup this repo
```
chezmoi init ttmihara
```

### Tips
To clear the state of all `run_onchange_` and `run_once_` scripts. See
[chezmoi user guide](https://www.chezmoi.io/user-guide/use-scripts-to-perform-actions/#clear-the-state-of-all-run_onchange_-and-run_once_-scripts).
```
chezmoi state delete-bucket --bucket=scriptState
```
