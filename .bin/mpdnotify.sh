song=$(mpc current)

image="/usr/share/icons/Yaru/256x256/apps/gnome-music.png"
ffmpeg -y -i "$(mpc --format "$music_library"/%file% | head -n 1)" /tmp/mpd_cover.jpg > /dev/null 2>&1
if [ ! -f "/tmp/mpd/oldsong" ]; then
    mkdir -p "/tmp/mpd"
    echo "$song" > "/tmp/mpd/oldsong"
    oldsong=""
else
    oldsong=$(cat /tmp/mpd/oldsong)
fi


if [ "$song" != "$oldsong" ]; then
    dunstify -a "changeVolume" \
        -u low \
        -i /tmp/mpd_cover.jpg \
        "<b>Now playing:</b>" "$song"
fi

