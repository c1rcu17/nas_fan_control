#!/bin/sh

SESSION=PID_fan_control

if tmux has-session -t $SESSION 2>/dev/null; then
    exec tmux attach-session -t $SESSION
fi

tmux new-session -c "$(dirname "$(readlink -f "$0")")" -s $SESSION -d './PID_fan_control.pl'
