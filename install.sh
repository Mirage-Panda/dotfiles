# this is important if the user clones the repo elsewhere
export dotfiles_directory=$(pwd)
echo "Dotfiles directory: $dotfiles_directory"

# you dont even need this part
echo "User directory: $HOME"

# here come the links
link_config_directory_default_yes() {
    local directory_name="$1"
    local source_path="$dotfiles_directory/configs/$directory_name"
    local target_path="$HOME/.config/"

    read -p "Do you want to link $directory_name? [Y/n] " answer
    if [[ -z "$answer" || "$answer" =~ ^[Yy]$ ]]; then
        ln -s "$source_path" "$target_path"
        echo "Linked $directory_name"
    else
        echo "Skipped $directory_name"
    fi
}

link_config_directory_default_no() {
    local directory_name="$1"
    local source_path="$dotfiles_directory/configs/$directory_name"
    local target_path="$HOME/.config/$directory_name"

    read -p "Do you want to link $directory_name? [y/N] " answer
    if [[ "$answer" =~ ^[Yy]$ ]]; then
        ln -s "$source_path" "$target_path"
        echo "Linked $directory_name"
    else
        echo "Skipped $directory_name"
    fi
}

link_config_directory_default_no "aerospace"
link_config_directory_default_no "alacritty"
link_config_directory_default_yes "borders"
link_config_directory_default_yes "btop"
link_config_directory_default_yes "cava"
link_config_directory_default_yes "fastfetch"
link_config_directory_default_no "iterm2"
link_config_directory_default_yes "kitty"
link_config_directory_default_yes "nvim"
link_config_directory_default_yes "sketchybar"
link_config_directory_default_yes "skhd"
link_config_directory_default_yes "starship"
link_config_directory_default_yes "yabai"

# i dont know whats happening here AHH
# read -p "Do you want to link zshrc? [Y/n] " answer
# if [[ -z "$answer" || "$answer" =~ ^[Yy]$ ]]; then
#     ln -s $dotfiles_directory/zshrc $HOME/.zshrc
#     echo "Linked zshrc"
# else
#     echo "Skipped zshrc"
# fi
