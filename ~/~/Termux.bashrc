# ~/.bashrc for Termux
# ─────────────────
#clear

#######################
# PATH (customisable) |
#######################
export PATH=$HOME/bin:$PATH

####################
# Colors & Styling |
####################
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
MAGENTA="\033[0;35m"
CYAN="\033[0;36m"
WHITE="\033[0;37m"
RESET="\033[0m"

# Bold colors
RESET_bold='\[\e[0m\]'
BOLD_BLUE='\[\e[1;34m\]'
BOLD_GREEN='\[\e[1;32m\]'
BOLD_GREY='\[\e[0;90m\]'
BOLD_CYAN='\[\e[1;36m\]'
BOLD_RED_196='\[\e[1;38;5;196m\]'

#########################
# CyberFreak PS1 Prompt |
#########################
# main
#PS1='\n\[\e[1;31m\]\u🐧\h \[\e[0;90m\](\A)\[\e[0m\]\n\[\e[1;34m\]\w\[\e[0m\] \
#$(if [ $? -eq 0 ]; then echo "\[\e[0;32m\]"; else echo "\[\e[0;31m\]"; fi) \
#\n\[\e[0;36m\]❯❯ \[\e[0m\]'

:<< 'main#'
PS1='\n'${BOLD_RED_196}'\u🐧\h '${BOLD_CYAN}'(\A)'${RESET_bold}'\n'${BOLD_BLUE}'\w'${RESET_bold}' \
$(if [ $? -eq 0 ]; then echo "'${BOLD_GREEN}'"; else echo "'${BOLD_RED_196}'"; fi) \
\n'${BOLD_CYAN}'❯❯ '${RESET_bold}
main#

:<< 'main1'
PS1='\n'${BOLD_RED_196}'\u🐧\h '${BOLD_GREY}'(\A)'${RESET_bold}'\n'${BOLD_BLUE}'\w'${RESET_bold}' \
$(if [ $? -eq 0 ]; then echo "'${BOLD_GREEN}'"; else echo "'${BOLD_RED_196}'"; fi) \
\n'${BOLD_CYAN}'❯❯ '${RESET_bold}
main1

## PROMPT SANDBOXING  ##
#PS1="\n${BOLD_BLUE}╭───(${BOLD_GREEN}\u${BOLD_CYAN}🐧\h${BOLD_BLUE})—[${BOLD_RED_196}\W${BOLD_BLUE}]${BOLD_CYAN} \$(if [[ -n \$VIRTUAL_ENV ]]; then echo \"(\$(basename \$VIRTUAL_ENV))\"; fi)\n${BOLD_BLUE}╰─➤ \$ ${RESET_bold}"

# only dir view
#PS1='\n'"${BOLD_RED_196}"'┌──['"${BOLD_CYAN}"'\w'"${BOLD_RED_196}"']\n└➤ $ '"${RESET_bold}"
PS1='\n'"${BOLD_CYAN}"'╭───['"${BOLD_BLUE}"'\w'"${BOLD_CYAN}"']\n└─➤ $ '"${RESET_bold}"


###########
# Aliases #
###########
alias ls='pwd; echo -e ""; command ls --color=auto'
alias ll='ls -lah --color=auto'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias c='clear'
alias cls='clear && ls'
alias x='exit'

alias cmds='history'
alias cc='history -c'

alias docs='cd storage/shared/Documents && ls'
# online
alias update='pkg update && pkg upgrade -y'
alias termux-fix='termux-reload-settings && echo "✅ Reloaded Termux settings"'

# misc
alias py='python3'
alias py2='python2'
alias check='python3 -m py_compile' #shows SyntaxError, effective for checking..

alias edit='nano ~/.bashrc'
alias save='source ~/.bashrc'
alias prof='nano ~/.profile'
alias ok='source ~/.profile'
#———————————————————————————————————#

# 🎨 Terminal colors (optional tweak)
export CLICOLOR=1
export LS_COLORS='di=1;36:ln=1;35:so=1;33:pi=1;33:ex=1;32:bd=1;34:cd=1;34:su=1;31:sg=1;33:tw=1;34:ow=1;36:'

# 🦾 Optional Fortune if installed
if command -v figlet &>/dev/null && command -v neofetch &>/dev/null; then
    neofetch
fi
