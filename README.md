
## Install zsh (and helpful plugins)

```bash
sudo apt-get install zsh -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

## Config paths

```bash
# Alacritty
vim ~/.config/alacritty/alacritty.yml

# Zsh
vim ~/.zshrc

# Vim
vim ~/.vimrc

# NeoVim
vim ~/.config/nvim/init.vim

# tmux
vim ~/.tmux.conf

# kitty
vim ~/.config/kitty/kitty.conf
```
