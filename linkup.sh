dotfiles="$HOME/documents/dotfiles"
ln -s $HOME/documents/dotfiles/.bashrc $HOME/.bashrc
ln -s $HOME/documents/dotfiles/.bashrc.d $HOME/.bashrc.d
ln -s $HOME/documents/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/documents/dotfiles/.vim $HOME/.vim
ln -s $HOME/documents/dotfiles/.bin $HOME/.bin
ln -s $HOME/documents/dotfiles/.gitconfig $HOME/.gitconfig
ln -s $HOME/documents/dotfiles/.Xresources $HOME/.Xresources
ln -s $HOME/documents/dotfiles/.config/i3/config $HOME/.config/i3/config
cp $HOME/documents/dotfiles/.gitconfig_secret $HOME/.gitconfig_secret
vim .gitconfig_secret

git clone https://github.com/todotxt/todo.txt-cli.git tools/todo.txt
ln -s $HOME/documents/dotfiles/tools/todo.txt/todo.sh $HOME/documents/dotfiles/.bin/todo.sh


# wget pictures to $HOME/pictures
# wget notes $HOME/notes
# sync music to /srv/music
# sync todo to $HOME/todo
