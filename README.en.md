# dotfiles-zsh

## install

```sh
# zshell
sudo apt-get install zsh
chsh -s /bin/zsh
# ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# fzf
sudo apt-get autoremove fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# plugins
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zshrc
mv .zshrc .oldzshrc
mv dotfiles/.zshrc .zshrc
```

## plugins

- fzf-tab
    **NOTE: fzf-tab needs to be loaded after `compinit`, but before plugins which will wrap widgets, such as [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) or [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)!!**
    **NOTE 2: fzf-tab ALSO needs [fzf](https://github.com/junegunn/fzf) installed, otherwise it cannot work!**
- fast-syntax-highlighting
- zsh-autosuggestions
