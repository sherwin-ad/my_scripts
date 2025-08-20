#!/bin/bash
# Regular Colors
RED='\e[31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color
# Usage examples
echo -e "${RED}This is red text${NC}"
echo -e "${GREEN}This is green text${NC}"
echo -e "${YELLOW}This is yellow text${NC}"
echo -e "${BLUE}This is blue text${NC}"


# Bold
BOLD='\033[1m'
# Underline
UNDERLINE='\033[4m'

# Background colors
BG_RED='\033[41m'
BG_GREEN='\033[42m'
BG_YELLOW='\033[43m'
BG_BLUE='\033[44m'

# More foreground colors
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

# Usage examples
echo -e "${BOLD}${RED}Bold red text${NC}"
echo -e "${UNDERLINE}${BLUE}Underlined blue text${NC}"
echo -e "${BG_YELLOW}${BLACK}Black text on yellow background${NC}"
echo -e "${PURPLE}This is purple text${NC}"
echo -e "${CYAN}This is cyan text${NC}"
echo -e "${WHITE}This is white text${NC}"



# Additional foreground colors
BLACK='\033[0;30m'
LIGHT_RED='\033[1;31m'
LIGHT_GREEN='\033[1;32m'
LIGHT_YELLOW='\033[1;33m'
LIGHT_BLUE='\033[1;34m'
LIGHT_PURPLE='\033[1;35m'
LIGHT_CYAN='\033[1;36m'
LIGHT_WHITE='\033[1;37m'

# Additional background colors
BG_BLACK='\033[1,40m' #
BG_LIGHT_RED='\033[101m'
BG_LIGHT_GREEN='\033[102m'
BG_LIGHT_YELLOW='\033[103m'
BG_LIGHT_BLUE='\033[104m'
BG_LIGHT_PURPLE='\033[105m'
BG_LIGHT_CYAN='\033[106m'
BG_LIGHT_WHITE='\033[107m'

# Usage examples
echo -e "${BLACK}This is black text${NC}"
echo -e "${LIGHT_RED}This is light red text${NC}"
echo -e "${LIGHT_GREEN}This is light green text${NC}"
echo -e "${LIGHT_YELLOW}This is light yellow text${NC}"
echo -e "${LIGHT_BLUE}This is light blue text${NC}"
echo -e "${LIGHT_PURPLE}This is light purple text${NC}"
echo -e "${LIGHT_CYAN}This is light cyan text${NC}"
echo -e "${LIGHT_WHITE}This is light white text${NC}"

echo -e "${BG_BLACK}${WHITE}White text on black background${NC}"
echo -e "${BG_LIGHT_RED}${BLACK}Black text on light red background${NC}"
echo -e "${BG_LIGHT_GREEN}${BLACK}Black text on light green background${NC}"
echo -e "${BG_LIGHT_YELLOW}${BLACK}Black text on light yellow background${NC}"
echo -e "${BG_LIGHT_BLUE}${BLACK}Black text on light blue background${NC}"
echo -e "${BG_LIGHT_PURPLE}${BLACK}Black text on light purple background${NC}"
echo -e "${BG_LIGHT_CYAN}${BLACK}Black text on light cyan background${NC}"
echo -e "${BG_LIGHT_WHITE}${BLACK}Black text on light white background${NC}"
# ...existing code...