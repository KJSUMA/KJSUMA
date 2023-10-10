#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
    local count=$(ls -l | grep -v ^l | wc -l)
    echo "$count"
}

# Main logic
actual_count=$(count_files)

while true; do
    echo "Guess the number of files in the current directory:"
    read user_guess

    if [[ $user_guess -lt $actual_count ]]; then
        echo "Too low! Try again."
    elif [[ $user_guess -gt $actual_count ]]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed correctly."
        break
    fi
done

