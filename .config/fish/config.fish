function fish_greeting
end
if status is-interactive
    # Commands to run in interactive sessions can go here
end

# PATH
set -x PATH /home/merak/.cargo/bin $PATH
set -x PATH /home/merak/.npm/bin $PATH
set -x PATH /home/merak/.local/bin $PATH
set -x PATH /home/merak/go/bin $PATH

# editor
set -gx EDITOR lvim

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/merak/Applications/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

fish_config theme choose "Rosé Pine"
scheme set dracula
thefuck --alias | source

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/merak/.ghcup/bin $PATH # ghcup-env
uv generate-shell-completion fish | source
