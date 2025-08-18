#!/bin/bash

# Define an array of quotes
ARRAY_QUOTES=(
"The greatest glory in living lies not in never falling, but in rising every time we fall. - Nelson Mandela"
"The way to get started is to quit talking and begin doing. - Walt Disney"
"Your time is limited, don't waste it living someone else's life. - Steve Jobs"
"If life were predictable it would cease to be life, and be without flavor. - Eleanor Roosevelt"
"If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success."
)

echo $(( RANDOM % 5 )) # Print a random number between 0 and 99

echo $ARRAY_QUOTES # Print the length of the first quote
echo "1st quote: ${ARRAY_QUOTES[0]}" # Print the first quote
echo "2nd quote: ${ARRAY_QUOTES[1]}" # Print the second quote
echo "3rd quote: ${ARRAY_QUOTES[2]}" # Print the third quote
echo "4th quote: ${ARRAY_QUOTES[3]}" # Print the fourth quote
echo "5th quote: ${ARRAY_QUOTES[4]}" # Print the fifth quote
echo "All quotes: ${ARRAY_QUOTES[@]}" # Print all quotes

# Print a random quote
RANDOM_QUOTE=${ARRAY_QUOTES[$(( RANDOM % ${#ARRAY_QUOTES[@]} ))]}
echo "Random Quote: $RANDOM_QUOTE" # Print a random quote

# Colors in Bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
VIOLET='\033[0;35m'
NC='\033[0m' # No Color

ARRAY_COLORS=(
    "RED"
    "GREEN"
    "YELLOW"
    "BLUE"
    "VIOLET"    
)

RANDOM_COLOR=${ARRAY_COLORS[$(( RANDOM % ${#ARRAY_COLORS[@]} ))]}
echo -e "${!RANDOM_COLOR}Random Color: ${RANDOM_QUOTE}${NC}" # Print a random color text