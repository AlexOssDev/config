# Aliases
alias ls="exa"
alias la="exa -a"
alias ll="exa -lah"
alias lt="ll --ignore-glob=\"node_modules|target|.git|*.ttf\" --tree"

alias code="flatpak run com.visualstudio.code"

# Shortcuts
abbr -a l ls
abbr -a d docker
abbr -a g git

abbr -a gs git status
abbr -a gc git commit
abbr -a ga git add .
abbr -a gl git log --oneline --graph
abbr -a gf git fetch
abbr -a gm git branch -m main

abbr -a sl ls
abbr -a py python3
abbr -a ctr docker run -it --rm --name=

# Config
starship init fish | source
set fish_greeting ""
set -x EDITOR nvim

# Colorscheme
