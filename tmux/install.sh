cp ./.tmux.conf "$HOME/.tmux.conf"
cd "$HOME" || exit
tmux source-file ./.tmux.conf
