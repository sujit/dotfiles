
## Install zsh (and helpful plugins)

```bash
sudo apt update
sudo apt install build-essential autoconf git clang libclang-dev g++ -y
sudo apt install zsh -y
sudo updatedb
sudo ldconfig
curl -fsSL https://raw.githubusercontent.com/sujit/dotfiles/main/p10k-tony-lambiris.zsh -o ~/p10k-tony-lambiris.zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z
git clone https://github.com/MichaelAquilina/zsh-autoswitch-virtualenv.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/autoswitch_virtualenv
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
autoload -U zmv # Mass rename files
echo "source ~/p10k-tony-lambiris.zsh" >> ~/.zshrc
```

> **NOTE:** <br/> A quick alternative if you would want to install ZSH + Prezto using a single command
> [git repo](https://github.com/JGroxz/presto-prezto)

## Config paths

# Yazi (terminal file manager)
# Bins required (Install before loading plugins): ouch/rg/gf/fzf/hexyl/miller/glow
vim ~/.config/yazi/yazi.toml         # plugins goes to "plugins" dir

# Alacritty
vim ~/.config/alacritty/alacritty.yml

# WezTerm (Lua-based)
vim ~/.wezterm.lua

# Zsh
vim ~/.zshrc

# Vim
vim ~/.vimrc

# NeoVim
vim ~/.config/nvim/init.vim

# tmux
vim ~/.tmux.conf

# kitty
cp theme-rigel.conf theme-gruvbox.conf ~/.config/kitty/ 
vim ~/.config/kitty/kitty.conf
```

## References

* [ZSH Color codes](https://github.com/Powerlevel9k/powerlevel9k/wiki/Stylizing-Your-Prompt)
