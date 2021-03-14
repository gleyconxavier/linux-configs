# Update everything
sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y

# Install tools
sudo apt install plank git conky conky-all lm-sensors terminator qbittorrent redis flameshot fonts-firacode curl zsh -y

# snap apps
sudo snap install postman

#oh-my-zsh config
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

# Install spotify :3
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get install spotify-client -y

# send message that we're done
echo "Yay! Configuration done!"

# Made by http://github.com/gleyconxavier
