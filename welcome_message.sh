#!/bin/bash

# Get the current time, hour, and date
TIME=$(date +"%I:%M %p")
HOUR=$(date +"%H")
DAY=$(date +"%A")

# ANSI escape codes for colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
NC='\033[0m' # No Color

# Determine the greeting based on the hour
if [ "$HOUR" -ge 5 ] && [ "$HOUR" -lt 12 ]; then
    GREETING="Good Morning"
elif [ "$HOUR" -ge 12 ] && [ "$HOUR" -lt 18 ]; then
    GREETING="Good Afternoon"
else
    GREETING="Good Evening"
fi

# Customize the message with colors
echo -e "${GREEN}$GREETING, noxic.${NC}"
echo -e "It's ${CYAN}$TIME${NC} on a wonderful ${YELLOW}$DAY${NC}!"

