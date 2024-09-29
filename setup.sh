#!/usr/bin/env bash

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# System
# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "


# Finder
# Set sidebar icon size to medium - default:2
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Disable the focus ring animation - default:true
defaults write NSGlobalDomain NSUseAnimatedFocusRing -bool false

# Add title bar icons for finder - default:false
defaults write com.apple.universalaccess "showWindowTitlebarIcons" -bool true

# Disable animations - default:false
defaults write com.apple.finder DisableAllAnimations -bool true

# Enable status bar - default:false
defaults write com.apple.finder ShowStatusBar -bool true

# Enable path bar - default:false
defaults write com.apple.finder ShowStatusBar -bool true

# Keep folders on top when sorting by name - default:false
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Search the current folders
# Codes for other search scopes: `SCcf` (current), `SCsp` (previous), `SCev` (this Mac)- default:SCev
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable warning when changing file extensions - default:false
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Avoid creating .DS_Store files on network or USB volumes - default:false
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Show the ~/Library folder
chflags nohidden ~/Library && xattr -d com.apple.FinderInfo ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes

# Dock
# Change minimize/maximize window effect - default: "genie"
defaults write com.apple.dock mineffect -string "scale"

# Don’t animate opening applications from the Dock - default:true
defaults write com.apple.dock launchanim -bool false


# Mission control
# Group windows by application - default:false
defaults write com.apple.dock expose-group-by-app -bool true

# Use list view in all Finder windows
# Codes for the other view modes: `icnv`, `clmv`, `glyv` - default:icnv
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false


# Writing
# Disable automatic capitalisation
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Bare-bones-ify
# Remove dock - default:0
# defaults write com.apple.dock autohide-delay -float 2000
# Remove launchpad gesture - default:1
# defaults write com.apple.dock showLaunchpadGestureEnabled -int 0

# Reload affected applications
killall Dock
killall Finder
