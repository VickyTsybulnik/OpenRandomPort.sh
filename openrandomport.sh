#!/bin/bash

#assigning port Var

PORT=$(shuf -i 1024-65535 -n 1)
echo "Opening Port: $PORT"



#open port
nc -lk $PORT $ LISTENER_PID=$!
echo $LISTENER_PID
echo "Port $PORT is now open CTRL+C to stop"
wait $LISTENER_PID
