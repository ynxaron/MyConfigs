# Installing and Configuring Typora
sudo pacman -S typora
# BUG: Figure out what link is used to download the 'blackout' Typora theme from github

# Installing Spotify and configuring with spicetify
echo "\nInstalling Spotify"
sudo pacman -S spotify
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
echo "Installing Spicetify"
sudo pacman -S spicetify-bin
echo "Configuring with Spicetify"
curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh
echo "Done with Configuring Spotify\n"

# Installing Zed Editor
echo "\nInstalling Zeditor"
curl https://zed.dev/install.sh | zsh
echo "Done Installing Zed Editor\n"

# Initializing zoxide
echo "\nInstalling zoxide for our zsh terminal"
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/main/install.sh | zsh
echo "Done Installing zoxide for our zsh terminal\n"

# Linking .config/zsh to $HOME/.zshrc file
echo "\nCreating a symlink from $HOME/.zshrc and $HOME/.zshenv to $HOME/.config/zsh/zshrc and $HOME/.config/zsh/zshenv"
link ~/.config/zsh/zshrc ~/.zshrc
link ~/.config/zsh/zshenv ~/.zshenv
echo "Done creating the symlinks\n"
