#!/bin/bash

#=================================================
# Logging helpers
#=================================================

readonly NORMAL=$(printf '\033[0m')
readonly BOLD=$(printf '\033[1m')
readonly faint=$(printf '\033[2m')
readonly UNDERLINE=$(printf '\033[4m')
readonly NEGATIVE=$(printf '\033[7m')
readonly RED=$(printf '\033[31m')
readonly GREEN=$(printf '\033[32m')
readonly ORANGE=$(printf '\033[33m')
readonly BLUE=$(printf '\033[34m')
readonly YELLOW=$(printf '\033[93m')
readonly WHITE=$(printf '\033[39m')

function log_title()
{
    cat << EOF
${BOLD}
 ============================================
 $1
 ============================================
${NORMAL}
EOF
}

function log_small_title()
{
    echo -e "\n${BOLD} > ${1}${NORMAL}\n"
}


function log_debug()
{
    echo "$1"
}

function log_info()
{
    echo "${1}"
}

function log_success()
{
    echo "${BOLD}${GREEN}Success: ${1}${NORMAL}"
}

function log_warning()
{
    echo "${BOLD}${ORANGE}Warning: ${1}${NORMAL}"
}

function log_error()
{
    echo "${BOLD}${RED}Error: ${1}${NORMAL}"
}

function log_critical()
{
    echo "${BOLD}${RED}Critical: ${1}${NORMAL}"
    exit 1
}

function log_report_test_success () {
    echo -e "\n${BOLD}${GREEN}--- SUCCESS ---${NORMAL}\n"
}

function log_report_test_warning () {
    echo -e "\n${BOLD}${ORANGE}--- WARNING ---${NORMAL}\n"
}

function log_report_test_failed () {
    echo -e "\n${BOLD}${RED}--- FAIL ---${NORMAL}\n"
}

