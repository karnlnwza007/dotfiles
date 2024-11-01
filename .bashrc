#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -la'
alias py='python'
alias grep='grep --color=auto'
alias nf='neofetch'
alias get_idf='. $HOME/esp/esp-idf/export.sh'
PS1='[\u@\h \W]\$ '

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/karn/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/karn/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<

export QSYS_ROOTDIR="/home/karn/intelFPGA_lite/23.1std/quartus/sopc_builder/bin"
export PATH="$PATH:/home/karn/intelFPGA_lite/23.1std/quartus/bin"
