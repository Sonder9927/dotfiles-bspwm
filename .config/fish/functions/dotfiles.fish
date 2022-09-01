function dotfiles
  git --git-dir=$HOME/.dotfiles-bspwm --work-tree=$HOME $argv
end
