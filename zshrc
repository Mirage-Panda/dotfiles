source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Eza and zoxide
alias ls="eza --icons=always"
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

alias smallbonsai="cbonsai -L 20 -l -i -w 1 -M 2 -t 0.02"
alias clock="tty-clock -C 1 -c -b"
alias cdclear="cd && clear"
alias clearfetch="cd && clear && fastfetch"
alias python="python3"
alias cmatrix="unimatrix -n -s 96 -l o"
alias neofetch="fastfetch"

# fastfetch only on first terminal window
LIVE_COUNTER=$(ps a | awk '{print $2}' | grep -vi "tty*" | uniq | wc -l);
if [ $LIVE_COUNTER -eq 1 ]; then
    fastfetch
else
    fortune -s -n 100 magic wisdom science goedel | cowsay -f owl
fi
