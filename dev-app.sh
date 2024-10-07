#!/bin/bash
SESH="portfolio"

tmux has-session -t $SESH 2>/dev/null

if [ $? != 0 ]; then
    tmux new-session -d -s $SESH -n "editor"
    
    tmux send-keys -t $SESH:editor "cd ~/coding/web/Portfolio" C-m
    tmux send-keys -t $SESH:editor "nvim ." C-m

    tmux new-window -t $SESH -n "server"
    tmux send-keys -t $SESH:server "cd ~/coding/web/Portfolio" C-m
    tmux send-keys -t $SESH:server "dotnet run" C-m

    tmux new-window -t $SESH -n "docker"
    tmux send-keys -t $SESH:docker "sudo docker run -t backend" C-m
    
    tmux new-window -t $SESH -n "database"
    tmux send-keys -t $SESH:database "sudo mysql" C-m

    tmux new-window -t $SESH -n "logs"
    tmux send-keys -t $SESH:logs "tail -f ~/coding/web/Portfolio"

    tmux set-option -t $SESH status on
    tmux set-option -t $SESH status-style fg=white,bg=black
    tmux set-option -t $SESH status-left "#[fg=green]Session: #S #[fg=yellow]"
    tmux set-option -t $SESH status-left-length 40
    tmux set-option -t $SESH status-right "#[fg=cyan]%d %b %R"

    tmux set-window-option -t $SESH window-status-style fg=cyan,bg=black
    tmux set-window-option -t $SESH:database window-status-style bg=black
    tmux set-window-option -t $SESH window-status-current-style fg=white,bg=black


    tmux select-window -t $SESH:editor
fi
tmux attach-session -t $SESH
