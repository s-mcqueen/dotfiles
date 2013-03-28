export CLICOLOR=1          
export LSCOLORS=GxFxCxDxBxegedabagaced

alias bp="vim ~/.bash_profile"
alias pp="subl /etc/profile"
alias vp="vim ~/.vimrc"
alias v="vim"
alias ss="subl"
alias school="cd; cd Dropbox/School/BY_YEAR/4-Senior_Year/Senior_Spring/; ls"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias c="clear"
alias py="python"

alias hack="cd; cd Dropbox/Hacks; ls"
alias focus="cd; sudo vim /etc/hosts;"

alias sml="echo remember that sml acting like its in my path here is an alias hack...; /usr/local/smlnj-110.60/bin/sml"
alias ls="ls -F"
alias lsa="ls -a -F"
alias lsl="ls -l -a -F"
alias path="echo $PATH"


alias knuth="ssh smcqueen@knuth.cs.hmc.edu"
alias wilkes="ssh smcqueen@wilkes.cs.hmc.edu"

function git-branch-name {
    echo $(git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
    }
function git-dirty {
    st=$(git status 2>/dev/null | tail -n 1)
    if [[ $st != "nothing to commit (working directory clean)" ]]
    then
        echo "*"
    fi
    }
function git-unpushed {
    brinfo=$(git branch -v | grep $(git-branch-name))
    if [[ $brinfo =~ ("[ahead "([[:digit:]]*)) ]]
    then
        echo "[${BASH_REMATCH[2]}]"
    fi
    }

function gitify {
    status=$(git status 2>/dev/null | tail -n 1)
    if [[ $status == "" ]]
    then
        echo ""
    else
        echo "($(git-branch-name))$(git-dirty)$(git-unpushed)"
    fi
    }
    
PS1="\$(gitify)\$ "

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

PATH=$PATH:.
export PATH
