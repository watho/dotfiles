# Powerline-Shell
# https://github.com/milkbikis/powerline-shell
#
# ANSI CODES - SEPARATE MULTIPLE VALUES WITH ;
#
#  0  reset          4  underline
#  1  bold           7  inverse
#
# FG  BG  COLOR     FG  BG  COLOR
# 30  40  black     34  44  blue
# 31  41  red       35  45  magenta
# 32  42  green     36  46  cyan
# 33  43  yellow    37  47  white
function _update_ps1() {
    PS1="$(~/powerline-shell/powerline-shell.py $? 2> /dev/null)"
}

#if [ "$TERM" != "linux" ]; then
#  export  PROMPT_COMMAND="_update_ps1;"
#fi
