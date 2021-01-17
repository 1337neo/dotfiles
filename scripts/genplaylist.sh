youtube-dl --get-title --get-id --ignore-errors --quiet 2> /dev/null $2 | awk '{ if(NR%2) {printf "%s", $0} else {print " https://youtube.com/watch?v="$1} }' > $HOME/playlists/$1

