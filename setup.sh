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
# Remove notification centre
# launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null
# to turn back, run this line below and restart computer
# launchctl load -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null


# Safari
# Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Hide Safari’s bookmarks bar by default
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Hide Safari’s sidebar in Top Sites
defaults write com.apple.Safari ShowSidebarInTopSites -bool false

# Disable Safari’s thumbnail cache for History and Top Sites
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Make Safari’s search banners default to Contains instead of Starts With
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false


# Reload affected applications
killall Dock
killall Finder
