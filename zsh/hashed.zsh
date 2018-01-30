
# next lets set some enviromental/shell pref stuff up
# setopt NOHUP
# setopt NOTIFY
# setopt NO_FLOW_CONTROL

# setopt AUTO_LIST      # these two should be turned off
# setopt AUTO_REMOVE_SLASH
# setopt AUTO_RESUME        # tries to resume command of same name
#
#  # setopt HASH_CMDS      # turns on hashing
#
#

#PS1="[$PR_MAGENTA%n$PR_NO_COLOR@$PR_GREEN%U%m%u$PR_NO_COLOR:$PR_RED%2c$PR_NO_COLOR]%(!.#.$) "
#RPS1="$PR_CYAN(%D{%m-%d %H:%M})$PR_NO_COLOR"
#

#set e=`echo x | tr x '\033'`
#set g=`echo x | tr x '\07'`
#set host=`uname -n`
#alias setstatline 'echo -n "${e}7${e}[25;1f${e}[OK ${host:h}:${cwd}${e}8"'
#alias settitle 'echo -n "${e}2;${host:h}:${cwd}${g}"'
#alias cd 'cd\! && settitle'
#alias pushd 'pushd \!* && settitle'
#alias popd 'popd \!* && settitle'
