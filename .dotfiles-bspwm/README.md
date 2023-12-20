# Dotfiles for zshell

---

## usage

```sh
echo ".dotfiles" >> $HOME/.gitignore
git clone --bare https://github.com/Sonder9927/dotfiles-zsh.git .dotfiles
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout -f
dotfiles config --local status.showUntrackdFiles no
```
