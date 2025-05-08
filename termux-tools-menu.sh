#!/bin/bash
# Termux Cool Tools Menu Script by g4ngggaaa x GitHub x ai

# Colors for styling
RED='\033[1;31m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
MAGENTA='\033[1;35m'
BLUE='\033[1;34m'
RESET='\033[0m'

# ASCII Art Header function
header() {
cat << "EOF"
▇◤▔▔▔▔▔▔▔◥▇
▇▏◥▇◣┊◢▇◤▕▇
▇▏▃▆▅▎▅▆▃▕▇
▇▏╱▔▕▎▔▔╲▕▇
▇◣◣▃▅▎▅▃◢◢▇
▇▇◣◥▅▅▅◤◢▇▇
▇▇▇◣╲▇╱◢▇▇▇
EOF
}

# Creator Info function
creator_info() {
    echo -e "${CYAN}Created by: g4ngggaaa x GitHub x ai${RESET}"
    echo
}

# Menu function
menu() {
    echo -e "${YELLOW}Select a Tool to Install/Run:${RESET}"
    echo -e "${GREEN}1.${RESET} Nmap - Network Scanner"
    echo -e "${GREEN}2.${RESET} Metasploit Framework"
    echo -e "${GREEN}3.${RESET} SQLMap - Automated SQL Injection Tool"
    echo -e "${GREEN}4.${RESET} Hydra - Password Cracker"
    echo -e "${GREEN}5.${RESET} Beef - Browser Exploitation Framework"
    echo -e "${GREEN}6.${RESET} Termux-Style - Terminal customization"
    echo -e "${GREEN}7.${RESET} Update & Upgrade Termux"
    echo -e "${GREEN}8.${RESET} Exit"
    echo
    echo -n -e "${MAGENTA}Enter your choice [1-8]: ${RESET}"
}

# Functions to explain and install/run each tool
explain_nmap() {
    clear
    header
    echo -e "${YELLOW}Nmap (Network Mapper) is a powerful network scanner used to discover hosts and services on a computer network.${RESET}"
    echo -e "${CYAN}It helps in network inventory, managing service upgrade schedules, and monitoring host or service uptime.${RESET}"
    echo
    echo -e "${MAGENTA}Press Enter to start installing Nmap...${RESET}"
    read -r
}

install_nmap() {
    explain_nmap
    echo -e "${BLUE}Installing Nmap...${RESET}"
    pkg update && pkg upgrade -y
    pkg install nmap -y
    echo -e "${GREEN}Nmap installed! Run it typing 'nmap' in the terminal.${RESET}"
}

explain_msf() {
    clear
    header
    echo -e "${YELLOW}Metasploit Framework is a sophisticated penetration testing framework and exploitation tool.${RESET}"
    echo -e "${CYAN}It provides information about security vulnerabilities and aids in developing and executing exploit code against remote targets.${RESET}"
    echo
    echo -e "${MAGENTA}Press Enter to start installing Metasploit Framework...${RESET}"
    read -r
}

install_msf() {
    explain_msf
    echo -e "${BLUE}Installing Metasploit...${RESET}"
    pkg update && pkg upgrade -y
    pkg install unstable-repo -y
    pkg install metasploit -y
    echo -e "${GREEN}Metasploit installed! Run it with 'msfconsole'.${RESET}"
}

explain_sqlmap() {
    clear
    header
    echo -e "${YELLOW}SQLMap is an automated tool for SQL injection and database takeover.${RESET}"
    echo -e "${CYAN}It automates the process of detecting and exploiting SQL injection flaws and taking over database servers.${RESET}"
    echo
    echo -e "${MAGENTA}Press Enter to start installing SQLMap...${RESET}"
    read -r
}

install_sqlmap() {
    explain_sqlmap
    echo -e "${BLUE}Installing SQLMap...${RESET}"
    pkg update && pkg upgrade -y
    pkg install python -y
    pip install sqlmap
    echo -e "${GREEN}SQLMap installed! Run it typing 'sqlmap' in the terminal.${RESET}"
}

explain_hydra() {
    clear
    header
    echo -e "${YELLOW}Hydra is a fast network logon cracker which supports many different services.${RESET}"
    echo -e "${CYAN}It helps in brute forcing of remote authentication services including FTP, HTTP, HTTPS, SMB, several databases and more.${RESET}"
    echo
    echo -e "${MAGENTA}Press Enter to start installing Hydra...${RESET}"
    read -r
}

install_hydra() {
    explain_hydra
    echo -e "${BLUE}Installing Hydra...${RESET}"
    pkg update && pkg upgrade -y
    pkg install hydra -y
    echo -e "${GREEN}Hydra installed! Run it typing 'hydra' in the terminal.${RESET}"
}

explain_beef() {
    clear
    header
    echo -e "${YELLOW}Beef (Browser Exploitation Framework) is a powerful tool to exploit web browsers.${RESET}"
    echo -e "${CYAN}It allows penetration testers to hook one or more web browsers and use them as beachheads for launching directed command modules and further attacks.${RESET}"
    echo
    echo -e "${MAGENTA}Press Enter to start installing Beef...${RESET}"
    read -r
}

install_beef() {
    explain_beef
    echo -e "${BLUE}Installing Beef - Browser Exploitation Framework...${RESET}"
    pkg update && pkg upgrade -y
    pkg install git ruby -y
    git clone https://github.com/beefproject/beef.git ~/beef
    cd ~/beef || return
    gem install bundler
    bundle install
    echo -e "${GREEN}Beef installed in ~/beef directory.${RESET}"
    echo -e "${YELLOW}To run Beef: cd ~/beef && ./beef${RESET}"
}

explain_termux_style() {
    clear
    header
    echo -e "${YELLOW}Termux-Style is a terminal customization tool that allows you to change terminal themes and fonts easily.${RESET}"
    echo -e "${CYAN}It lets you personalize the look and feel of your Termux environment with colorful themes and fonts.${RESET}"
    echo
    echo -e "${MAGENTA}Press Enter to start installing Termux-Style...${RESET}"
    read -r
}

install_termux_style() {
    explain_termux_style
    echo -e "${BLUE}Installing Termux-Style for terminal customization...${RESET}"
    pkg update && pkg upgrade -y
    pkg install git -y
    git clone https://github.com/adi1090x/termux-style.git ~/termux-style
    cd ~/termux-style || return
    bash install.sh
    echo -e "${GREEN}Termux-Style installed! Use command 'termux-style' to customize your terminal.${RESET}"
}

explain_update_upgrade() {
    clear
    header
    echo -e "${YELLOW}This will update package lists and upgrade all installed packages in your Termux environment.${RESET}"
    echo -e "${CYAN}Keeping your Termux packages updated helps maintain stability and security.${RESET}"
    echo
    echo -e "${MAGENTA}Press Enter to continue with updating and upgrading...${RESET}"
    read -r
}

update_upgrade() {
    explain_update_upgrade
    echo -e "${BLUE}Updating & upgrading Termux packages...${RESET}"
    pkg update && pkg upgrade -y
    echo -e "${GREEN}Termux is up to date.${RESET}"
}

# Main loop
while true; do
    clear
    header
    creator_info
    menu
    read -r choice
    case $choice in
        1) install_nmap ;;
        2) install_msf ;;
        3) install_sqlmap ;;
        4) install_hydra ;;
        5) install_beef ;;
        6) install_termux_style ;;
        7) update_upgrade ;;
        8) echo -e "${RED}Exiting... Bye!${RESET}" ; exit 0 ;;
        *) echo -e "${RED}Invalid option, try again.${RESET}" ; sleep 2 ;;
    esac
    echo
    echo -e "${CYAN}Press Enter to return to menu...${RESET}"
    read -r
done
</content>
</create_file>
