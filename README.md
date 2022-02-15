# dotfiles

This is my dotfiles (.files) repository and tooling.

## Setup home as a git bare repository

```bash
git init --bare $HOME/dotfiles
git --git-dir=$HOME/dotfiles/ --work-tree=$HOME remote add -f origin git@github.com:lemuelroberto/dotfiles.git
```
