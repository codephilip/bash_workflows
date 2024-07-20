# ~/.config/.bashrc

# Source global definitions if they exist
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Source user-specific aliases and functions
if [ -f ~/.config/bash/utilities/alias_setup.sh ]; then
    source ~/.config/bash/utilities/alias_setup.sh
fi

# Enable color support for various commands if terminal supports colors
if [[ "$TERM" == xterm-color || "$TERM" == *-256color ]]; then
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color|*-256color)
    color_prompt=yes
    ;;
esac

# Change the prompt
if [ "$color_prompt" = yes ]; then
    PS1='[\[\e[0;32m\]\u@\h \[\e[0;33m\]\w\[\e[0m\]]\$ '
else
    PS1='[\u@\h \w]\$ '
fi

# Add user's bin directories to PATH
export PATH=$HOME/bin:$HOME/.local/bin:$PATH

# Enable programmable completion features
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
elif [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

# Set the default text editor to vim
export EDITOR='vim'

# Aliases for safety to prompt before deleting, copying, or moving files
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Display a custom greeting with system information
if [ -f ~/.config/bash/utilities/custom_greeting.sh ]; then
    source ~/.config/bash/utilities/custom_greeting.sh
fi
