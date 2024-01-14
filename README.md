# dotfiles-zsh

## 安装

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
curl -sS https://starship.rs/install.sh

# zshrc
mv .zshrc .oldzshrc
mv dotfiles/.zshrc .zshrc
```

## 注意

1. 需要重启终端。
2. 安装 fzf-tab 需要先更新最新版本的 fzf，插件加载位置要在 `compinit` 之后，在
`zsh-autosuggestions` 和
`fast-syntax-highlighting` 之前。

## 工具

 `.zshrc` 中有额外下载的工具，没下载就取消 `alias` 别名。
 可以选择性安装：

- [Modern Unix](https://github.com/ibraheemdev/modern-unix)
- z.lua
- lvim
- ranger
- lf
- thefuck
