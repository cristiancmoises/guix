# Bash initialization for interactive non-login shells and
# for remote shells (info "(bash) Bash Startup Files").

# Export 'SHELL' to child processes.  Programs such as 'screen'
# honor it and otherwise use /bin/sh.
export SHELL

if [[ $- != *i* ]]
then
    # We are being invoked from a non-interactive shell.  If this
    # is an SSH session (as in "ssh host command"), source
    # /etc/profile so we get PATH and other essential variables.
    [[ -n "$SSH_CLIENT" ]] && source /etc/profile

    # Don't do anything else.
    return
fi

# Source the system-wide file.
[ -f /etc/bashrc ] && source /etc/bashrc
alias l='ls'
alias ls='ls -p --color=auto'
alias ll='ls -l'
alias grep='grep --color=auto'
alias del='shred -uvz'
alias delp='wipe -r '
alias q='exit'
alias n='neofetch'
alias p='pfetch'
alias ss='sudo su'
alias xxx='xkill'
alias ee='exiftool -recursive -all= '
alias e='exiftool -all= '
alias bg='feh --bg-fill '
alias yt='/home/berkeley/git/ytfzf/ytfzf'
alias ii='kitten icat'
alias enc='tar -czf - * | openssl enc -e -aes256 -out secured.tar.gz'
alias dec='openssl enc -d -aes256 -in secured.tar.gz | tar xz'
alias s='sensors'
alias clean='/home/berkeley/git/cleanall/clearner.sh'
alias e='cd ..'
alias up='/home/berkeley/git/up.sh'
alias 7x='7z x'
