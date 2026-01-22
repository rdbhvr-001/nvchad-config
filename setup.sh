#!/bin/bash

# This is my custom configuration for neovim, forked from nvchad and customised as per my requirements.
# It has lazy loader enabled and dashboard on start. Powered by nvchad and neovim.
# If you want a blazing fast IDE like experience in a minimal terminal interface, this is an apt configuration for you.
# Start the setup process by the installer
CONFIG_DIR="$HOME/.config"
# Install neovim again in arch linux if it did not exist : Safety purposes
echo "[Info] Need to install neovim"
sudo pacman -S neovim --needed
echo ""
# Install ripgrep, a dependency for neovim
echo "[Info] Need to install ripgrep"
sudo pacman -S ripgrep --needed
echo ""
# Backup any old nvim configs if it existed
if [[ -d "$CONFIG_DIR/nvim" ]]; then
    echo "[Info] Backing up your nvim config to $CONFIG_DIR/nvim.old"
    mv -v ~/.config/nvim ~/.config/nvim.old
fi
echo ""
# Copy my config to the ~/.config/nvim
echo "[Info] Copying my nvim config to $CONFIG_DIR/nvim"
echo "[Tip] For restoring your old config : Follow the steps in your terminal."
echo "      [Step 1] rm -rf ~/.config/nvim"
echo "      [Step 2] mv ~/.config/nvim.old ~/.config/nvim"
echo ""
cp -rv ./chadvim $CONFIG_DIR/nvim
echo "[+] Done, Enjoy nvim"


