# ~/.bash_profile or ~/.profile

# Source .bashrc from ~/.config if it exists
if [ -f ~/.config/bash/.bashrc ]; then
    source ~/.config/bash/.bashrc
fi

# Alias definitions
# Aliases should be placed in ~/.bashrc, but you can place some here as well
alias ll='ls -lah' # List all files with detailed information
alias gs='git status' # Show the status of the Git repository

# Source any additional custom scripts or configurations
if [ -f ~/.config/bash/utilities/alias_setup.sh ]; then
    source ~/.config/bash/utilities/alias_setup.sh
fi
if [ -f ~/.config/bash/utilities/custom_greeting.sh ]; then
    source ~/.config/bash/utilities/custom_greeting.sh
fi