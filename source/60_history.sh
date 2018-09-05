# History settings

# Allow use to re-edit a faild history substitution.
#shopt -s histreedit
# History expansions will be verified before execution.
#shopt -s histverify

# Entries beginning with space aren't added into history, and duplicate
# entries will be erased (leaving the most recent entry).
HISTCONTROL=ignoreboth:erasedups
# Give history timestamps.
#export HISTTIMEFORMAT="[%Y-%m-%d - %H:%M:%S] "
# Lots o' history.
HISTSIZE=10000
HISTFILESIZE=10000

shopt -s histappend              # append new history items to .bash_history
#PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"   # mem/file sync
#export PROMPT_COMMAND="history -a; ${PROMPT_COMMAND}"   # mem/file sync
# PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"   # mem/file sync
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ;} history -w"
#export PROMPT_COMMAND="history -n; history -w; history -c; history -r"
