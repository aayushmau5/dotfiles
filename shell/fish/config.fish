set fish_greeting

# asdf
source /opt/homebrew/opt/asdf/libexec/asdf.fish

alias ls="lsd --icon never -F"
alias ll="lsd --icon never -A -F"
alias vim="nvim"
# alias fontrefresh="sudo fc-cache -fv"
alias nd="npm run dev"
alias ns="npm start"
alias mp="cd ~/Documents/my-projects"
alias temp="cd ~/Documents/temp"
# alias cat="batcat"
alias c="open $1 -a \"Cursor\""
alias v="open $1 -a \"Visual Studio Code\""

# fish_default_key_bindings
# set -U fish_key_bindings fish_default_key_bindings
# set fish_prompt_pwd_dir_length 0
fish_vi_key_bindings

# Enable shell history for `iex`

# export ERL_AFLAGS="-kernel prevent_overlapping_partitions false shell_history enabled -proto_dist inet6_tcp"
export ERL_AFLAGS="-kernel shell_history enabled"
export PATH="$PATH:/Users/aayushmau5/.config/emacs/bin"
export REMOTE_COOKIE=""
export REMOTE_REMOTE_NODE=""
export MEOWUI_SECRET=""
# direnv stuff
# direnv hook fish | source

if status is-interactive
	#and not set -q TMUX
	#	exec tmux
    atuin init fish | source
end

