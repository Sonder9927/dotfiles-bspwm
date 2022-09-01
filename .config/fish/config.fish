
if status is-interactive
    # Commands to run in interactive sessions can go here
end

# PATH
set PATH /home/merak/.local/bin $PATH

# editor
set -gx EDITOR lvim

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/merak/Applications/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
