# Get rid of the ls background colors
eval "$(dircolors -p | \
    sed 's/ 4[0-9];/ 01;/; s/;4[0-9];/;01;/g; s/;4[0-9] /;01 /' | \
    dircolors /dev/stdin)"
    
# Path to oh-my-zsh installation.
export ZSH="/home/ajunaidi/.oh-my-zsh"

# Set theme
ZSH_THEME="refined"

# Load plugins
plugins=(git zsh-autosuggestions fzf)

# Get history
HISTSIZE=10000
SAVEHIST=10000

# Get the autocomplete feature
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # include dot files

# Vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
# zle-line-init() {
#     zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
#     echo -ne "\e[5 q"
# }
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

#  Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'  

# Directory aliases
alias coding='cd ~/coding'
alias bin='cd /usr/local/bin'
alias uoft='cd /mnt/c/Users/AJ/OneDriveUofT/Documents/UofT'
alias invpsy='cd ~/coding/invpsych_gproject'
alias docs='cd /mnt/c/Users/AJ/OneDriveUofT/Documents'

# Executable aliases
alias tmux-ipython='tmux-ipython.sh'
alias tmux-invpsy='tmux-invpsy.sh'
alias md-beamer='md_beamer.sh'
alias pytex='pythontex.sh'

# Display for WSL2
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
export LIBGL_ALWAYS_INDIRECT=1
sudo /etc/init.d/dbus start &> /dev/null
export GDK_SCALE=1
export GDK_DPI_SCALE=2
export XDG_RUNTIME_DIR=/var/run/user/1000
export RUNLEVEL=3
export NO_AT_BRIDGE=1

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ajunaidi/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ajunaidi/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ajunaidi/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ajunaidi/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Set default browser - good for when opening markdown previews
export BROWSER='/mnt/c/Program Files/Google/Chrome/Application/chrome.exe'

# Change the color of autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=39'

# Cd to home directory when start
cd ~

# Load fzf and general settings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_BASE="$HOME/.fzf"
export FZF_DEFAULT_COMMAND='find .'

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null 
