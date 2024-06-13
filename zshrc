# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH_DISABLE_COMPFIX=true
export ZSH="/Users/sujit/.oh-my-zsh"
if [ ! "$TMUX" = "" ]; then export TERM=xterm-256color; fi


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# [SUJIT]
# ZSH_THEME="robbyrussell"
# disabled temporarily
ZSH_THEME="powerlevel10k/powerlevel10k"
export PROMPT_EOL_MARK=''
export POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_last"
export POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=’red’
# Uncomment the following line to disable auto-setting terminal title.
export DISABLE_AUTO_TITLE="true"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    # autoswitch_virtualenv
    gitfast
    poetry
    macos
    docker
    sudo
    macos
    fzf-tab
    last-working-dir
    fzf-dir-navigator
    fast-syntax-highlighting
    zsh-autosuggestions
    history-substring-search
    virtualenv
    encode64
    colored-man-pages
    copyfile
    copypath
    extract
    zsh-z
    history
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"

# [SUJIT] Leverage the native diffing feature from kitty
# alias diff='icdiff '
# alias ya='yazi'
alias difft='difft --display side-by-side-show-both'
alias venv_where_poetry='poetry env info'
alias venv_where_pipenv='pipenv --venv'
alias geoiplookup2='/Users/sujit/workspace/maxmind/geoiplookup2'
alias ntrace='ntrace -g en --ipv4 '
alias chepy='/Users/sujit/tools/chepy/.venv/bin/chepy'
alias magika='/Users/sujit/Library/Caches/pypoetry/virtualenvs/magika-HwT1Md0X-py3.11/bin/magika -r'
alias pdfmerge='/Users/sujit/Library/Caches/pypoetry/virtualenvs/pdftools-P2q5f4lV-py3.11/bin/pdfmerge '
alias klp='python3 /usr/local/bin/klp.py '
alias tlsx='/Users/sujit/dev/projectdiscovery/tlsx -silent -sni TLSClient -dns -expired -mismatched -self-signed -revoked -so -se -so -tv -wc -ve -max-version tls12 -json -ja3 -jarm -ct all --timeout 4'
alias katana='katana -timeout 4 -silent -jsonl'
alias httpx='httpx -silent -j -favicon -hash md5,sha1,sha256,mmh3 -jarm -title -server -method -asn -ip -cname -timeout 4 -retries 0 '
alias jqp='jqp -t dracula '
alias vd='/Users/sujit/.local/share/virtualenvs/visidata-QrqPmVv0/bin/vd'
alias speedtest2='python3 /opt/speedtest.py --simple'
alias shodan='/Users/sujit/Library/Caches/pypoetry/virtualenvs/shodan-io-nZ-hBCmo-py3.11/bin/shodan'
alias censys='/Users/sujit/Library/Caches/pypoetry/virtualenvs/censys-api-lyJ6ABgU-py3.11/bin/censys'
alias termgraph='/Users/sujit/Library/Caches/pypoetry/virtualenvs/graphs-termgraph-zf9fn7KM-py3.11/bin/termgraph'
alias greynoise='/Users/sujit/Library/Caches/pypoetry/virtualenvs/greynoise-cli-0chp3Dbh-py3.11/bin/greynoise'
alias py='python '
alias tlsscan='tls-scan -a --pretty --cacert="/opt/ca-bundle.crt" 2>/dev/null --concurrency=5 '
alias tls-scan='tls-scan -a --pretty --cacert="/opt/ca-bundle.crt" 2>/dev/null --concurrency=5 '
alias get='got -c 10 -H "User-Agent: Mozilla/5.0" '
alias lc='lolcat '
alias diff='delta -s '
alias wtfis='/Users/sujit/tools/wtfis/.venv/bin/wtfis'
# alias echo='echo -n '
# alias tree='et -y inverted'
alias tree=tre
alias fake='/Users/sujit/tools/fake_data_generator/bin/fake'   # Generate fake data
alias faker='/Users/sujit/tools/fake_data_generator/bin/faker' # Yet another better substitute
alias et='et -H -s size'
alias gpl='git pull'
alias gs='git status'
alias ga='git add'
# alias grep='rg '
alias exif='exiftool'
alias xh='xh -F -s solarized'
alias ccze='ccze -A -o nolookups'
alias top='btop'
# alias zq='/System/Volumes/Data/Applications/Brim.app/Contents/Resources/app.asar.unpacked/zdeps/zq '
# alias zed='/System/Volumes/Data/Applications/Brim.app/Contents/Resources/app.asar.unpacked/zdeps/zed '
alias brimcap='/System/Volumes/Data/Applications/Brim.app/Contents/Resources/app.asar.unpacked/zdeps/brimcap'
alias aria2c='aria2c -x10 --file-allocation=none'
alias aria='aria2c -x10 --file-allocation=none'
alias removecrlf="sd '\n' '' $1"
alias d="kitten diff"
alias zmv='zmv -n'
alias grep='ug'
alias server='miniserve --verbose -g -u -p 80 -D -F -O desc ${*}'
# alias server='server -p 80 -t 10 -c gzip '
alias server3='server3 -w .'
# alias jq='gojq'
alias jq='jaq'  # jaq is much faster than gojq
alias st='stew'
alias jd='jd -color'
alias du='dust -r'
# alias vim='~/nvim/bin/nvim '
alias vim='/usr/local/bin/nvim'
alias neovim='/usr/local/bin/nvim'
alias nvim='/usr/local/bin/nvim'
alias zshconfig="vim ~/.zshrc"
# alias cat='bat --theme Catpuccin-frappe ${*}'
alias cat='bat --theme DarkNeon ${*}'
# alias sd='sd -p'
alias curl='curlie ${*} '
alias rm='rm -v -i ${*} '
alias gitdiff='git difftool --no-symlinks --dir-diff'
alias tb="nc termbin.com 9999"
alias hexyl='hexyl --character-table=ascii '
alias hexdump='hexyl --character-table=ascii ${*}'
alias find='fd'
alias fd='fd -j 20 -H ${*} '
alias vt_domain='vt --include _id,categories,last_analysis_stats,total_votes domain '
alias vt_ip='vt --include _id,categories,last_analysis_stats,total_votes ip '
alias mpv='open -a ~/tools/mpv/mpv.app '
alias json2jsonl="jq -c -M '.[]' ${*}"
alias jsonl2json="jq -s -M '.' ${*}"
alias hg='kitten hyperlinked_grep'


# toolong command line log viewer
alias tl='/Users/sujit/.local/share/virtualenvs/toolong-dagGcht0/bin/tl'


# eza aliases
alias ld='eza -lD'                                # List dirs only
alias lf='eza -lF --color=always | rg -v /'       # List files only
alias lh='eza -dl .* --group-directories-first'   # List hidden files only
alias ll='eza -al --group-directories-first'      # List everything with directories first
alias la='eza -al --group-directories-first'      # List everything with directories first
# alias ls='eza -alF --color=always --sort=size | rg -v /'  # List files only sorted by size
alias lt='eza -al --sort=modified'                # List everything sorted by time updated
alias ls='eza --hyperlink -al --sort=modified'                # List everything sorted by time updated
alias lst='eza -al --sort=modified --tree'        # Tree view


compresspdf(){
   # gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$1 $2
   gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$1 $2
}

# Configure tre command to access files with their indexes (e<index>)
tre() { command tre "$@" -e && source "/tmp/tre_aliases_$USER" 2>/dev/null; }


# Custom JQ filter functions
jq_filter_SingleArrayToString() {
    # tlsx command output (specific fields filtering)
    # jq '(.version_enum) |= .[0] | (.domains) |= .[0] | (.issuer_org) |= .[0] | (.subject_org) |= .[0]'
    # jq 'walk(if type == "array" and length == 1 then .[0] else . end)'
    jq 'walk(if type == "array" and length == 1 then .[0] elif type == "array" then . else . end)'
}

EDITOR=nvim
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000

export HISTTIMEFORMAT="[%F %T] "
HIST_STAMPS="yyyy-mm-dd"         # Add timestamps to history records
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

# AWS EC2Kali
function ssh_ec2kali () {
    ssh -i ~/keys/sujit.key kali@ec2kali
}

# Yazi shell wrapper
function ya() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Create directory and instantly cd to it
function mkc () {
    mkdir -v -p "$@" && cd "$@"
}

function decode() {
    echo "$1" | base64 -d ; echo
}

function pretty_csv {
    cat "$@" | sed 's/,/ ,/g' | column -t -s, | less -S
}

function pretty_tsv {
    column -t -s $'\t' -n "$@" | less -F -S -X -K
}

function ssh_tunnel_dogfoodaws() {
    echo "[*]SSH tunneling to Dogfood AWS..."
    ssh -L 8443:localhost:24162 sghosal@aca9704.bastions.awake.cloud
}

function ssh_pit_ubuntu (){
    echo "[*]Connecting to Ubuntu (PIT) ec2 instance..."
    ssh -i /Users/sujit/gitrepo/pit/PIT-dc/keys/ubuntu_18_device.pem ubuntu@ec2-34-209-136-3.us-west-2.compute.amazonaws.com
}

function ssh_pit_kali (){
    echo "[*]Connecting to Kali (PIT) ec2 instance..."
    ssh -i /Users/sujit/gitrepo/pit/PIT-dc/keys/kali_device.pem kali@ec2-54-185-237-223.us-west-2.compute.amazonaws.com
}

function ssh_awake_bastion () {
    # ssh -D 9001 sghosal@bastion.in.zimbly.co
    echo "[*]Tunneling to bastion via SSH..."
    ssh -o ServerAliveInterval=2 -D 9001 sghosal@bastion.in.zimbly.co
}

# export FZF_DEFAULT_OPTS="
# --layout=reverse
# --info=inline
# --height=80%
# --multi
# --preview-window=:hidden
# --preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
# --color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
# --prompt='∼ ' --pointer='▶' --marker='✓'
# --bind '?:toggle-preview'
# --bind 'ctrl-a:select-all'
# --bind 'ctrl-y:execute-silent(echo {+} | pbcopy)'
# --bind 'ctrl-e:execute(echo {+} | xargs -o vim)'
# --bind 'ctrl-v:execute(code {+})'
# "

# Find hidden files as a default behavior
export FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude '.git' --exclude 'node_modules'"

# Disable Cloud-Nuke telemetry
export DISABLE_TELEMETRY=true

# Add global alias  "| fzf" automagically as a suffix
alias -g Z='| fzf'

# rga (ripgrep-all) with fzf functionality
# rga_fzf() {
# 	RG_PREFIX="rga --files-with-matches"
# 	local file
# 	file="$(
# 		FZF_DEFAULT_COMMAND="$RG_PREFIX '$1'" \
# 			fzf --sort --preview="[[ ! -z {} ]] && rga --pretty --context 5 {q} {}" \
# 				--phony -q "$1" \
# 				--bind "change:reload:$RG_PREFIX {q}" \
# 				--preview-window="70%:wrap"
# 	)" &&
# 	echo "opening $file" &&
# 	xdg-open "$file"
# }

# find-in-files (fif <search_string>)
# fif() {
#     if [ ! "$#" -gt 0 ]; then
#         echo "Need a string to search for!";
#         return 1;
#     fi
#     rg --files-with-matches --no-messages "$1" | fzf $FZF_PREVIEW_WINDOW --preview "rg --ignore-case --pretty --context 10 '$1' {}"
# }

# ripgrep -> fzf -> vim [QUERY]
fif() (
  RELOAD='reload:rg --column --color=always --smart-case {q} || :'
  OPENER='if [[ $FZF_SELECT_COUNT -eq 0 ]]; then
            nvim {1} +{2}     # No selection. Open the current line in Vim.
          else
            nvim +cw -q {+f}  # Build quickfix list for the selected items.
          fi'
  fzf < /dev/null \
      --disabled --ansi --multi \
      --bind "start:$RELOAD" --bind "change:$RELOAD" \
      --bind "enter:become:$OPENER" \
      --bind "ctrl-o:execute:$OPENER" \
      --bind 'alt-a:select-all,alt-d:deselect-all,ctrl-/:toggle-preview' \
      --delimiter : \
      --preview 'bat --style=full --color=always --highlight-line {2} {1}' \
      --preview-window '~4,+{2}+4/3,<80(up)' \
      --query "$*"
)

# Enable ls colors with sane colors
# export LSCOLORS="Gxfxcxdxbxegedabagacad"
# export LS_COLORS="di=34;40:ln=36;40:so=35;40:pi=33;40:ex=32;40:bd=1;33;40:cd=1;33;40:su=0;41:sg=0;43:tw=0;42:ow=34;40:"
# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# export LSCOLORS="exgxfxdacxDaDaxbadacex"

# [SUJIT]
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
# zstyle ':completion:*:descriptions'     format $'%{\e[0;31m%}completing %B%d%b%{\e[0m%}'
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
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

# few more...
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
zstyle ':completion:*' file-list all
zstyle ':completion:*' verbose yes

zstyle ':autocomplete:*' widget-style menu-select
bindkey -M menuselect '\r' accept-line

# --END--

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=5"
DISABLE_MAGIC_FUNCTIONS="true"  # Helps to paste clipboard faster!
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2 # Shorten directory length

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Initialize atuin for auto completions
eval "$(atuin init zsh --disable-up-arrow)"

# Initialize mcfly auto completions
# eval "$(mcfly init zsh)"
# export MCFLY_FUZZY=0
# export MCFLY_PROMPT="❯"
# export MCFLY_RESULTS=40
# export MCFLY_RESULTS_SORT=LAST_RUN
# export MCFLY_KEY_SCHEME=vim

# pipenv auto-complete
eval "$(_PIPENV_COMPLETE=zsh_source pipenv)"

# ax log viewer auto-complete
eval "$(ax --completion-script-zsh)"

# Set of custom functions
function ssh_awake_bastion {
    echo "[*]Forwarding on TCP/9001.."
	ssh -D 9001 sghosal@bastion.in.zimbly.co
}

source /Users/sujit/.config/broot/launcher/bash/br

# Gives pretty nifty status render but looks ugly for tmux
# disabled termporarily
source ~/p10k-tony-lambiris.zsh

export XMQ_BG=dark

# export PATH="$HOME/.poetry/bin:$PATH"
# export PATH="/Users/sujit/Library/Python/3.9/bin:$PATH"
# export PATH="/Users/sujit/Library/Python/3.10/bin:$PATH"
export PATH="/Users/sujit/.local/bin:$PATH"
export NETWORKSAGE_API_KEY='hM2V0a0GZ2UsbvdNZzvzlHKL5XBCdtu3'


# Starship prompt configs
# eval "$(starship init zsh)"

# Accept any SSH Host keys (Helpful during ansible automation)
export ANSIBLE_HOST_KEY_CHECKING=False

export SHODAN_API_KEY=dDsDFiPqTEZkeug7k1qrUOJrUcOl0PDH

# OpenObserve Configs
export ZO_ROOT_USER_EMAIL="root@example.com"
export ZO_ROOT_USER_PASSWORD="Complexpass#123"
alias openobserve='/Users/sujit/tools/openobserve/openobserve '
complete -o default -C /usr/local/bin/ipinfo ipinfo
export FOFA_EMAIL=hex.dsm@gmail.com
export FOFA_KEY=7ef3bdf03e589cca01dd1edcebcac57c
complete -o default -C /usr/local/bin/matchip matchip


# Generated for pdtm. Do not edit.
export PATH=$PATH:/Users/sujit/.pdtm/go/bin

# ProjectDiscovery
export PDCP_API_KEY=6a20c58f-63db-4daf-b9ec-61d63fafecac

# MaxMind (mmdbctl completions)
autoload -U +X bashcompinit && bashcompinit
complete -o default -C /usr/local/bin/mmdbctl mmdbctl

# Custom oh-my-posh configs
# [Disabled this prompt to verify if it eats up memory resouces]
# eval "$(oh-my-posh init zsh --config ~/.poshthemes/atomic.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.poshthemes/montys.omp.json)"
# eval "$(starship init zsh)"
