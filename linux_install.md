
* Download eget and move the binary to "/usr/local/bin"
* Now download the binaries sequentially:
    ```sh
    apt update
    apt install build-essential
    apt install nala
    nala install libssl libssl-dev
    nala install zsh
    nala install jq
    nala install ccze lnav
    nala install ugrep
    nala install moreutils
    nala install tmux
    nala install tshark
    nala install wireshark
    updatedb
    ldconfig
    eget ducaale/xh --to ~/.local/bin
    eget rs/curlie --to ~/.local/bin
    eget BurntSushi/xsv --to ~/.local/bin
    eget mithrandie/csvq --to ~/.local/bin
    eget aristocratos/btop --to ~/.local/bin
    eget zyedidia/micro --to ~/.local/bin
    eget kellyjonbrazil/jc/ --to ~/.local/bin
    eget Peltoche/lsd --to ~/.local/bin
    eget dandavison/delta --to ~/.local/bin
    eget sharkdp/hexyl --to ~/.local/bin
    eget tomnomnom/gron --to ~/.local/bin
    eget PaulJuliusMartinez/jless --to ~/.local/bin
    eget shenwei356/csvtk --to ~/.local/bin
    eget theryangeary/choose --to ~/.local/bin
    eget your-tools/ruplacer --to ~/.local/bin
    eget https://github.com/tstack/lnav/releases/download/v0.11.1/lnav-0.11.1-x86_64-linux-musl.zip --to ~/.local/bin
    eget junegunn/fzf --to ~/.local/bin
    eget http://www.stahlworks.com/dev/sfk/sfk-linux-64.exe --to ~/.local/bin
    eget ogham/dog --to ~/.local/bin
    eget BurntSushi/ripgrep --to ~/.local/bin
    eget phiresky/ripgrep-all --to ~/.local/bin
    eget sharkdp/fd --to ~/.local/bin
    eget chmln/sd --to ~/.local/bin
    eget vishaltelangre/ff --to ~/.local/bin
    eget sharkdp/hyperfine --to ~/.local/bin
    eget gcla/termshark --to ~/.local/bin
    eget bootandy/dust --to ~/.local/bin
    eget solidiquis/erdtree --to ~/.local/bin
    eget sharkdp/bat --to ~/.local/bin
    eget svenstaro/miniserve --to ~/.local/bin
    eget cantino/mcfly --to ~/.local/bin
    eget antonmedv/fx --to ~/.local/bin
    eget Svetlitski/fcp --to ~/.local/bin
    eget kellyjonbrazil/jtbl --to ~/.local/bin
    mv ~/.local/bin/jtbl ~/.local/bin/jtable
    # Manipulator plugin for micro (https://github.com/NicolaiSoeborg/manipulator-plugin)
    micro -plugin install manipulator
    ```

* Install `zsh`
    ```sh
    curl -fsSL https://raw.githubusercontent.com/sujit/dotfiles/main/p10k-tony-lambiris.zsh -o ~/p10k-tony-lambiris.zsh
    sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
    git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
    ```
* Enable the following plugins in `~/.zshrc`
    ```
    fzf-tab
	gitfast
	sudo # Auto-prefix sudo <DoubleEsc>
	last-working-dir
	zsh-completions
	zsh-interactive-cd
	git-auto-fetch
	zsh-autosuggestions
	fast-syntax-highlighting
	history-substring-search
	virtualenv
	encode64
	colored-man-pages
	copyfile
	copypath
	docker
	docker-compose
	extract
	zsh-z
	# enable hsi to search history
	history
    ```
* Add following entries at EOF in `~/.zshrc`
    ```
    HISTFILE="$HOME/.zhistory"
    HISTSIZE=10000000
    SAVEHIST=10000000
    DISABLE_AUTO_TITLE="true"
    DISABLE_MAGIC_FUNCTIONS="true"  # Helps to paste clipboard faster!

    setopt BANG_HIST                 # Treat the '!' character specially during expansion.
    setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
    setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
    setopt SHARE_HISTORY             # Share history between all sessions.
    setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
    setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
    setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
    setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
    setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
    setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
    setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
    setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
    setopt HIST_BEEP                 # Beep when accessing nonexistent history.

    # Do not print the trailing % symbol in STDOUT
    PROMPT_EOL_MARK=''

    export LANGUAGE=en_US.UTF-8
    export LANG=en_US.UTF-8
    export LC_CTYPE=en_US.UTF-8
    export LC_ALL=en_US.UTF-8

    alias curl='curlie'
    alias ls='lsd -al '
    alias tree='et'
    alias cp='fcp'
    alias vim='/opt/tools/nvim/bin/nvim'
    alias tb="nc termbin.com 9999"
    alias hexdump='hexyl ${*}'
    alias diff='delta --dark --syntax-theme gruvbox ${*}'

    eval "$(mcfly init zsh)"
    export MCFLY_FUZZY=true
    export MCFLY_RESULTS=30
    export MCFLY_RESULTS_SORT=LAST_RUN
    export MCFLY_PROMPT="❯"

    function offload_fix() {
        sudo ethtool -K <ethID> tx off rx off sg off tso off gro off
    }

    # zstyle customizations
    # --BEGIN--
    # Handle upper and lowercase as one during auto-completion
    zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
    # Show custom warning when there is nothing
    zstyle ':completion:*:warnings'         format 'Too bad there is nothing'
    # Separate matches into groups
    zstyle ':completion:*:matches'          group 'yes'
    # Use the tag name as group name
    zstyle ':completion:*'                  group-name ''
    # activate color-completion
    zstyle ':completion:*:default'          list-colors ${(s.:.)LS_COLORS}
    # format on completion
    zstyle ':completion:*:descriptions'     format $'%{\e[0;31m%}completing %B%d%b%{\e[0m%}'
    # activate menu
    zstyle ':completion:*:history-words'    menu yes
    # ignore duplicate entries
    zstyle ':completion:*:history-words'    remove-all-dups yes
    zstyle ':completion:*:history-words'    stop yes
    # Activate menu selection
    zstyle ':completion:*'                  menu select
    # Provide verbose completion information
    zstyle ':completion:*'                  verbose true
    # Describe options in full
    zstyle ':completion:*:options'          description 'yes'
    # --END--

    # Fzf stuff

    # --BEGIN--
    export FZF_DEFAULT_OPTS="
    --layout=reverse
    --info=inline
    --height=80%
    --multi
    --preview-window=:hidden
    --preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
    --color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
    --prompt='∼ ' --pointer='▶' --marker='✓'
    --bind '?:toggle-preview'
    --bind 'ctrl-a:select-all'
    --bind 'ctrl-y:execute-silent(echo {+} | pbcopy)'
    --bind 'ctrl-e:execute(echo {+} | xargs -o vim)'
    --bind 'ctrl-v:execute(code {+})'
    "

    # Find hidden files as a default behavior
    export FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude '.git' --exclude 'node_modules'"

    # Add global alias  "| fzf" automagically as a suffix
    alias -g Z='| fzf'
    ```
