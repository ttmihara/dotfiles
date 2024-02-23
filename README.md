# ttmihara/dotfiles

## Installation

### Step 1. Install [Chezmoi](https://www.chezmoi.io/install/)
<details>
<summary>Linux</summary>

Install the latest version via [Snap](https://snapcraft.io/):

```sh
snap install chezmoi --classic
```
</details>

<details>
<summary>Windows</summary>

Install the latest version via [`Scoop`](https://github.com/ScoopInstaller/Scoop):

```powershell
scoop install chezmoi
```
</details>



### Step 2. Setup this repo
```
chezmoi init ttmihara
```

### Tips
To clear the state of all `run_onchange_` and `run_once_` scripts. See
[chezmoi user guide](https://www.chezmoi.io/user-guide/use-scripts-to-perform-actions/#clear-the-state-of-all-run_onchange_-and-run_once_-scripts).
```
chezmoi state delete-bucket --bucket=scriptState
```
