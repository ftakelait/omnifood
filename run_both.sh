#!/bin/bash
# Change to your repository directory
cd /c/Users/ftake/Documents/GitHub/omnifood

# Start the auto push script in the background
./auto_push.sh &

# Start the Python auto refresh script in the background
python auto_refresh.py &

# Wait for both processes to finish (which, in this case, will be never until you stop them)
wait
