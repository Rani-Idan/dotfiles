#!/bin/bash -x

stow fish
stow tmux
stow vim

sudo stow --target=/etc/ logid 
sudo stow --target=/etc/systemd/system/ services
sudo stow --target=/root/ vim

pushd services/
for service in *.service; 
do
    sudo systemctl enable $service
    sudo systemctl start $service
done
popd


curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo curl -fLo /root/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
