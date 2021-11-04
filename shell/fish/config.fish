set fish_greeting

starship init fish | source

set -g fish_prompt_pwd_dir_length 1

alias ls="exa --icons"
alias ll="exa --long --icons"
alias vim="nvim"
alias fontrefresh="sudo fc-cache -fv"
alias c="clear"
alias search="pacman -Ss"
alias update="yay"
alias downloadPkg="sudo pacman -S"
alias nd="npm run dev"
alias ns="npm start"

fish_vi_key_bindings
# set -U fish_key_bindings fish_default_key_bindings

# export nvm_default_version=v14.18.1
export BROWSER=firefox
