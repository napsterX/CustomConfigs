
### Jira Plugin configs:

#export $JIRA_URL='https://jira.insnw.net'
#export $JIRA_NAME='mkumar'
#export $JIRA_PREFIX='PBL'
#export $JIRA_RAPID_BOARD=true

### ssh-agent configs:

zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities id_rsa id_rsa2 id_github
#zstyle :omz:plugins:ssh-agent lifetime 4h
#

export FPATH="$FPATH:/opt/local/share/zsh/site-functions/"
if [ -f /opt/local/etc/profile.d/autojump.sh ]; then
    . /opt/local/etc/profile.d/autojump.sh
fi
