# ttmihara/dotfiles

## Installation

### Windows

To install [`scoop`](https://github.com/ScoopInstaller/Scoop)
```powershell
iwr -useb get.scoop.sh | iex
```

To install [`chezmoi`](https://github.com/twpayne/chezmoi).
```
scoop install chezmoi
```

To setup this repo
```
chezmoi init ttmihara
```

### Tips
To clear the state of all `run_onchange_` and `run_once_` scripts. See
[chezmoi user guide](https://www.chezmoi.io/user-guide/use-scripts-to-perform-actions/#clear-the-state-of-all-run_onchange_-and-run_once_-scripts).
```
chezmoi state delete-bucket --bucket=scriptState
```
