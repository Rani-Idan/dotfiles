#!/bin/bash -x

stow fish
stow tmux
stow vim

sudo stow --target=/etc/ logid 
sudo stow --target=/etc/systemd/system/ services

pushd services/
for service in *.service; 
do
    sudo systemctl enable $service
    sudo systemctl start $service
done
popd
