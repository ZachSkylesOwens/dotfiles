#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install --yes powerline fonts-powerline
sudo apt-get install --yes zsh
sudo apt-get install --yes curl
sudo apt-get install --yes git

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc

#sed -i '0,/blue/{s/blue/39d/}' ~/.oh-my-zsh/themes/agnoster.zsh-theme

#sed -i 's/# ENABLE_CORRECTION="true"/ENABLE_CORRECTION="true"/g' ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Modify
#plugins=(
#    git
#    zsh-autosuggestions
#    zsh-syntax-highlighting
#)
#ZSH_DISABLE_COMPFIX=true

# Add
#prompt_context() {
#    DEFAULT_USER="($whoami)"
#    if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#        prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
#    fi
#}

# Replace
#prompt_end() {
#    if [[ -n $CURRENT_BG ]]; then
#        echo -n " %{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR\n"
#    else
#        echo -n "%{%k%}"
#    fi
#    echo -n "%{%f%}"
#    CURRENT_BG=''
#}