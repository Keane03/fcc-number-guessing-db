#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

# Check if the username exists
USERNAME_AVAIL=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")

if [[ -z $USERNAME_AVAIL ]]
then
    # Insert the new user if it doesn't exist
    INSERT_USER=$($PSQL "INSERT INTO users (username) VALUES('$USERNAME')")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
else
    # If the username exists, show the games played and best game statistics
    GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
    BEST_GAME=$($PSQL "SELECT MIN(number_guesses) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Generate a random number for the secret number
RANDOM_NUM=$((1 + $RANDOM % 1000))
GUESS=1
echo "Guess the secret number between 1 and 1000:"

# Start the guessing loop
while read NUM
do
    # If input is not a valid integer
    if [[ ! $NUM =~ ^[0-9]+$ ]]
    then
        echo "That is not an integer, guess again:"
    else
        # Check if the guess is correct
        if [[ $NUM -eq $RANDOM_NUM ]]
        then
            break
        else
            # Check if the guess is too high or too low
            if [[ $NUM -gt $RANDOM_NUM ]]
            then
                echo -n "It's lower than that, guess again: "
            elif [[ $NUM -lt $RANDOM_NUM ]]
            then
                echo -n "It's higher than that, guess again: "
            fi
        fi
    fi
    GUESS=$(( GUESS + 1 ))  # Increment the guess counter
done

# When the correct number is guessed, show the result
if [[ $GUESS == 1 ]]
then
    echo "You guessed it in $GUESS tries. The secret number was $RANDOM_NUM. Nice job!"
else
    echo "You guessed it in $GUESS tries. The secret number was $RANDOM_NUM. Nice job!"
fi

# Get user_id from the users table
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

# Insert the game result into the games table
INSERT_GAME=$($PSQL "INSERT INTO games(number_guesses, user_id) VALUES($GUESS, $USER_ID)")
