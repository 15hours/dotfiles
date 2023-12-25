#!/usr/bin/env zsh


if [[ -z $STOW_FOLDERS ]]; then
    STOW_FOLDERS="i3,polybar,alacritty,polybar,nvim,tmux,zsh,profile,Code"
fi

if [[ -z $DOTFILES ]]; then
    DOTFILES=$HOME/dotfiles
fi


pushd $DOTFILES
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    echo "stow $folder"
    stow -D $folder
    stow $folder
done
popd
