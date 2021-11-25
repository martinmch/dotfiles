dotfiles="$HOME/documents/dotfiles"
ln -s $HOME/documents/dotfiles/.bashrc           $HOME/.bashrc
ln -s $HOME/documents/dotfiles/.bashrc.d         $HOME/.bashrc.d
ln -s $HOME/documents/dotfiles/.vimrc            $HOME/.vimrc
ln -s $HOME/documents/dotfiles/.vim              $HOME/.vim
ln -s $HOME/documents/dotfiles/.bin              $HOME/.bin
ln -s $HOME/documents/dotfiles/.gitconfig        $HOME/.gitconfig
ln -s $HOME/documents/dotfiles/.Xresources       $HOME/.Xresources
ln -s $HOME/documents/dotfiles/.config/i3/config $HOME/.config/i3/config

setup_gitsecret () {
    echo<<EOF > .gitconfig_secret
[user]
    name  =
    email =
EOF
    vim .gitconfig_secret
    cp    $HOME/documents/dotfiles/.gitconfig_secret $HOME/.gitconfig_secret
}

install_firefox () {
    # Download firefox to /opt/firefox/
    # chmod -R 755 /opt/firefox
    # ln -s /opt/firefox/firefox /usr/bin/firefox
}


# git clone notes $HOME/notes
# git clone todo $HOME/todo

# Nextcloud:
#   music
#   pictures
#   books
