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

eval "$(starship init zsh)"

# setup
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export HOMEBREW_NO_AUTO_UPDATE=1
