source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ---- Eza (better ls) -----

alias ls="eza --icons=always"


# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"
alias cd="z"

alias dots="cd ~/Github/dotfiles"
alias lazydots="cd ~/Github/dotfiles && lazygit"
alias conf="cd ~/.config"
alias nvimconf="cd ~/.config && nvim"
alias zshrc="nvim ~/.zshrc"
alias github="cd ~/Github"

eval "$(starship init zsh)"

# setup
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export STARSHIP_CACHE=~/.config/starship/cache
export HOMEBREW_NO_AUTO_UPDATE=1

if [[ $(tty) == *"pts"* ]]; then
    fastfetch
else
    fastfetch
fi

alias smallbonsai="cbonsai -L 20 -l -i -w 1 -M 2 -t 0.02"
alias clock="tty-clock -C 1 -c -b"
alias cdclear="cd && clear"
alias clearfetch="cd && clear && fastfetch"
alias python="python3"
