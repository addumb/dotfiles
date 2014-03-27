function mkcd() {
    mkdir -p $1
    cd $1
}

export HISTSIZE=99999999999999999999
export HISTFILESIZE=99999999999999999999999
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "
export TERM=screen-256color-bce

if [ -f ~/.git-prompt.sh ]; then
    . ~/.git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_PS1_SHOWCOLORHINTS=true
    GIT_PS1_UNTRACKEDFILES=true
    PS1='\[\033[00;37m\]\t \[\033[00;32m\]\u@\h\[\033[00m\]:\[\033[00;34m\]\w\[\033[00m\]\[\033[00m\]$(__git_ps1 "(%s)")\$ '
fi
export PATH=~/.rbenv/bin:~/.gem/ruby/1.8/bin:~/bin:$EC2_HOME/bin:~/android-studio/bin:~/packer/:$PATH
export EDITOR=vim
export JAVA_HOME=/usr/lib/jvm/java-7-oracle-1.7.0.7/

source ~/.awsrc

complete -C aws_completer aws 

eval "$(rbenv init -)"

fortune -s | cowsay -f `randomsay` | lolcat
