fish_vi_mode

set -U EDITOR nvim

if test -e ~/.aliases
  source ~/.aliases
end

# alias tmux for proper coloring
alias tmux="env TERM=xterm-256color tmux"

set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish

set -g fisher_file ~/.fishfile

if test -e ~/.config/fish/config.fish.local
  source ~/.config/fish/config.fish.local
end
