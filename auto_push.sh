#!/bin/bash
cd "C:/Users/ftake/Documents/GitHub/omnifood" || exit

while true; do
    # Stage all changes
    git add .

    # Check if there is anything to commit
    if ! git diff-index --quiet HEAD --; then
        # Commit with a timestamp message (adjust branch name if needed)
        git commit -m "Last update $(date)"
        git push origin main
    else
        echo "No changes to commit at $(date)"
    fi

    # Wait 60 seconds before checking again
    sleep 60
done
