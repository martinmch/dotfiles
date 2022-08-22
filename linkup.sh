#!/usr/bin/env sh
set -e

if [ ! -d ~/.ssh ]; then
    echo "Please setup ssh key to continue link up"
    exit 1
fi

rm -f   ~/.bashrc \
        ~/.vimrc \
        ~/.Xresources

for f in .bash_history .sqlite_history .mysql_history; do
    rm -f ~/$f
    ln -s /dev/null ~/$f
done
chmod 700 ~

dotfiles="$HOME/documents/dotfiles"

if [ -d "$dotfiles" ]; then
    cd "$dotfiles"
    git pull --ff-only
else
    if [ -d ~/.ssh ]; then
        remote="git@github.com:martinmch/dotfiles.git"
    else
        remote="https://github.com/martinmch/dotfiles.git"
    fi
    mkdir -p $(dirname $dotfiles)
    git clone "$remote" "$dotfiles"
fi

(
    cd "$dotfiles"
    for f in .???*; do
	  if [ -d  "$f" ]; then
	      continue
	  fi
        rm -f ~/$f
        (cd ~/; ln -s "$dotfiles"/$f $f)
    done
)


# Done linking up dotfiles.
# Now we need to set up secrets, files and applications.

(
  sudo mkdir -p /usr/share/fonts/truetype/ttf-monaco
  sudo ln -s $(dirname "$0")/fonts/ttf-monaco/Monaco_Linux.ttf /usr/share/fonts/truetype/ttf-monaco/Monaco_Linux.ttf
  sudo mkdir -p /usr/share/fonts/truetype/sfp
  sudo mkdir -p /usr/share/fonts/opentype/sfp
  for f in $(dirname "$0")/fonts/San-Francisco-Pro-Fonts/*.otf; do sudo ln -s "$f" /usr/share/fonts/opentype/sfp/"$f"; done
  for f in $(dirname "$0")/fonts/San-Francisco-Pro-Fonts/*.ttf; do sudo ln -s "$f" /usr/share/fonts/truetype/sfp/"$f"; done

)

setup_gitsecret () {
    echo<<EOF > ~/.gitconfig_secret
[user]
    name  =
    email =
EOF
    vim ~/.gitconfig_secret
}

install_firefox () {
    if [[ "$(whoami)" != 'root' ]];
    then
        # This is a lie. We're not checking if we can access opt.
        dieError "cannot access '/opt/firefox/': Permission denied"
    fi

    firefoxURL="https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US"
    wget -qO "$firefoxURL" firefox.tar.bz2
    mkdir -p /opt/firefox/
    tar -xf firefox.tar.bz2 /opt/firefox/
    chmod -R 755 /opt/firefox
    mv /usr/bin/firefox /usr/bin/firefox.apt
    ln -s /opt/firefox/firefox /usr/bin/firefox
    rm firefox.tar.bz2
}

# Setup pcloud
