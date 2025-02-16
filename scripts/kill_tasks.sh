#!/bin/bash

function kp {
    local PORT=$1

    if [[ -z $PORT ]]; then
        echo "Usage: kill_process_on_port <port_number>"
        return 1
    fi

    # Find the PID of the process using the given port
    local PID=$(lsof -ti:$PORT)

    if [[ -n $PID ]]; then
        echo "Process with PID $PID is using port $PORT. Killing it now..."
        kill -9 $PID
        echo "Process on port $PORT has been killed."
    else
        echo "No process found using port $PORT."
    fi
}
