# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# [Sujit] Setting tercolor to 256bit colors
export DEFAULT_USER="$(whoami)"
source=virtualenvwrapper.sh

# Change TERM to screen only if terminal type is tmux
# if [ ! "$TMUX" = "" ]; then export TERM=xterm-256color; fi

# Fix tmux zsh auto-suggest plugin color issues
# Only enable if the above doesn't work
# export TERM=xterm-256color

# Path to your oh-my-zsh installation.
export ZSH="/Users/sujit/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes


#################################################
# [Sujit] Custom ZSH changes goes here
# ZSH_THEME="robbyrussell"
# POWERLEVEL9K_MODE='awesome-fontconfig'
# POWERLEVEL9K_DISABLE_RPROMPT=true
# POWERLEVEL9K_TIME_BACKGROUND="black"


ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"
# POWERLEVEL9K_COLOR_SCHEME='light'
# POWERLEVEL9K_TIME_FOREGROUND="249"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="clear"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="015"
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_left"
# POWERLEVEL9K_TIME_BACKGROUND='blue'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv time)
DISABLE_MAGIC_FUNCTIONS="true"  # Helps to paste clipboard faster!
# DISABLE_LS_COLORS="false"       # Disables highlighting folder colors
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true


# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	gitfast
	last-working-dir
	zsh-completions
	zsh-interactive-cd
	git-auto-fetch
	zsh-autosuggestions
	zsh-syntax-highlighting
	history-substring-search
	virtualenv
	encode64
	colored-man-pages
	copyfile
	copydir
	docker
	docker-compose
	zsh-pandoc-completion
	extract
#	pipenv
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconf="vim ~/.zshrc"
alias procs='sudo procs --color=always --sortd cpu '
# alias ohmyzsh="mate ~/.oh-my-zsh"

prompt_context() {}
#  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
#  fi
#}

# My custom aliases
alias tshark='tshark --color ${*} '
alias grep='ggrep ${*} --color=auto'
alias zipdump='python /usr/local/bin/zipdump.py ${*}'
alias gitdiff='git diff --word-diff=color --word-diff=porcelain ${*} '
alias tb="nc termbin.com 9999"
alias hexdump='hexyl ${*}'
alias pup='pup --color ${*}'
alias sd='sd -p ${*}'
alias cp='cp -riv ${*} '
alias rm='rm -v -i ${*} '
alias cat='bat --theme 1337 ${*}'
alias talosdl="wget -c --no-check-certificate https://www.snort.org/rules/snortrules-snapshot-2983.tar.gz?oinkcode=b96fd3d48fa1eb109307e4d40ae03e589f74e0a -O talos.tar.gz"
alias cvesearch='python ~/tools/cvesearch/cvesearch.py -s ${*}'
# alias ls='exa -lh --git -s modified '			# Exa
alias ls='lsd -lt ' 								# LSDeluxe
# alias server='ran -p 8080 -l=true -r=${*}'
alias server='ran -p 8080 -l=true '
alias mvim='mvim -v '
alias diff='delta --dark --syntax-theme gruvbox ${*}'
alias ssldump='/usr/local/Cellar/ssldump/0.9b3/sbin/ssldump ${*}'
alias fixpcap_csum='for file in *.pcap; do tcprewrite -C -i "$file" -o "fix_$file"; done;'
alias fixpcap_mac_csum='for file in *.pcap; do tcprewrite --enet-dmac=1c:f2:9a:d0:be:ef --enet-smac=8c:85:90:d0:de:ad -C -i "$file" -o "fix_mac_csum_$file"; done;'
alias fixpcap_mac_ip_csum='for file in *.pcap; do tcprewrite --srcipmap=0.0.0.0/0:10.100.200.10 --dstipmap=0.0.0.0/0:10.100.200.20 --enet-dmac=1c:f2:9a:d0:be:ef --enet-smac=8c:85:90:d0:de:ad -C -i "$file" -o "fix_mac_ip_csum_$file"; done;'
alias fixpcap_csum_mtu='for file in *.pcap; do tcprewrite --mtu=1500 --mtu-trunc -i "$file" -o "fix_csum_mtu_$file" -C; done;'
alias bbcp='bbcp -P 2 -w 2M -s 10 ${*}'
alias nano='kibi ${*}'
alias vturl='vt url --include="**.result" ${*}'
alias br='broot ${*}'


export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=5"
#export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=11"
#export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=244"
#export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan"
#export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=3"


# Create directory and instantly cd to it
function mkc () {
    mkdir -v -p "$@" && cd "$@"
}


# [Sujit] Construct zsh completions
# --------------------------------------
# Advanced tab/command completion
autoload -U compinit
compinit


ctags=/usr/local/bin/ctags

# broot init broot (generated via br first-run)
source /Users/sujit/Library/Preferences/org.dystroy.broot/launcher/bash/br

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# [SUJIT] Remove duplicates from bash_history (~/.bashrc or ~/.bash_profile -> and then source)
# --BEGIN--
# export HISTCONTROL=ignoreboth:erasedups
# --END--


# [SUJIT] Remove duplicates from zsh history
# --------------------------------------
# --BEGIN--
HISTFILE="$HOME/.zhistory"
HISTSIZE=10000000
SAVEHIST=10000000

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
# --END--


# [SUJIT] FZF related stuff
# --------------------------------------
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

# find-in-files (fif <search_string>)
fif() {
    if [ ! "$#" -gt 0 ]; then
        echo "Need a string to search for!";
        return 1;
    fi
    rg --files-with-matches --no-messages "$1" | fzf $FZF_PREVIEW_WINDOW --preview "rg --ignore-case --pretty --context 10 '$1' {}"
}
# --END--


# [SUJIT] broot (br) settings
# --------------------------------------
# --BEGIN--
# broot tree functionality
function tree {
     br -c :pt "$@"
}
# --END--


# [SUJIT] Visual Bell/Beep settings
# Turn off all beeps
unsetopt BEEP
# Turn off autocomplete beeps
# unsetopt LIST_BEEP


# Enable ls colors with sane colors
# export LSCOLORS="Gxfxcxdxbxegedabagacad"
export LS_COLORS="di=34;40:ln=36;40:so=35;40:pi=33;40:ex=32;40:bd=1;33;40:cd=1;33;40:su=0;41:sg=0;43:tw=0;42:ow=34;40:"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
export LSCOLORS="exgxfxdacxDaDaxbadacex"
