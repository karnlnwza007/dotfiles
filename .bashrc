#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias zed='zeditor'
alias ls='ls --color=auto'
alias ll='ls --color=auto -l'
alias la='ls --color=auto -la'
# enable - disable eDP-1
alias edp='bash ~/dotfiles/toggle_eDP.sh'
alias py='python'
alias grep='grep --color=auto'
alias nf='neofetch'
#alias get_idf='. $HOME/esp/esp-idf/export.sh'
#alias to compile and flash using arduino-cli
alias arduinoburn="bash ~/arduinoburn.sh"
PS1='[\u@\h \W]\$ '

#source 
. $HOME/esp/esp-idf/export.sh
neofetch

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
export LM_LICENSE_FILE=/home/karn/intelFPGA_lite/23.1std/questa_fse/license.dat
export PATH=/home/karn/intelFPGA_lite/23.1std/questa_fse/bin:$PATH
