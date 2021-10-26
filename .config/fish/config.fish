source ~/.config/fish/alias.fish

# Configure Jump
# status --is-interactive; and source (jump shell fish | psub)

# Load all saved ssh keys
# /usr/bin/ssh-add -A ^/dev/null

#micro
export MICRO_TRUECOLOR=1


set TERM "xterm-256color"

#paths:
  if status --is-login
    set -gx PATH $PATH /home/nivin/Dev/flutter/bin
end

#git config backup
alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'


# Fish syntax highlighting
set -g fish_color_autosuggestion '555'  'brblack'
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape 'bryellow'  '--bold'
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match 'bryellow'  '--background=brblack'
set -g fish_color_selection 'white'  '--bold'  '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline

#aliases
#source ~/.bash_aliases


neofetch | lolcat

# Install Starship
starship init fish | source
