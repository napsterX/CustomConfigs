
HISTFILE=$HOME/.zhistory
HISTSIZE=1000000
SAVEHIST=1000000

TZ="Asia/Calcutta"
HOSTNAME="`hostname`"

stty erase ^H &>/dev/null

if [ -z "${STY}" -a -t 0 ]; then
    reattach () {
        if [ -n "${SSH_AUTH_SOCK}" ]; then
            ln -snf "${SSH_AUTH_SOCK}" "${HOME}/.ssh/agent-screen"
            SSH_AUTH_SOCK="${HOME}/.ssh/agent-screen" export SSH_AUTH_SOCK
        fi
        screen -A -D -RR ${1:+"$@"}
    }
fi

ulimit  -S -n 2048
ulimit -n 4096

export I10C_OPSDB_PASSWORD=opsadmin
export PYTHONPATH=/opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/
export v="vpn.insnw.net"
export h="hq.instart.co"
export EDITOR=vim

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

autoload -U compinit compaudit promptinit
compaudit
promptinit
compinit

# Setting the configs of Adam2 prompt with colors

#prompt adam2 green cyan cyan white
#prompt fire
#prompt fade
#prompt adam2

# Figure out the SHORT hostname
if [[ "$OSTYPE" = darwin* ]]; then
  # macOS's $HOST changes with dhcp, etc. Use ComputerName if possible.
  SHORT_HOST=$(scutil --get ComputerName 2>/dev/null) || SHORT_HOST=${HOST/.*/}
else
  SHORT_HOST=${HOST/.*/}
fi

PATH="/opt/local/bin:/Users/mkumar/nap/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/sbin:/usr/sbin:/usr/local/mysql/bin:/Users/mkumar/Library/Python/2.7/bin:/Users/mkumar/Library/Python/3.6/bin:$PATH"
