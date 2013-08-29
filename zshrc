# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# zsh theme
ZSH_THEME="pygmalion"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=13

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

# aliases
alias bp="vim ~/.zshrc"
alias vp="vim ~/.vimrc"
alias v="vim"
alias c="clear" 
alias py="python"
alias goog="ping www.google.com"
alias path="echo $PATH"
alias knuth="ssh smcqueen@knuth.cs.hmc.edu"
alias wilkes="ssh smcqueen@wilkes.cs.hmc.edu"
alias grep="grep --color=auto"
alias psg="ps auxww|grep -v grep|grep"
alias ks="ls"
alias rm='~/bin/trashit'

# evernote
function note {
    /Users/McQueen/Dropbox/Hacks/note_create.sh $1
}

function edit {
    /Users/McQueen/Dropbox/Hacks/node_edit.sh $1
}

# mark and jump
export MARKPATH=$HOME/.marks
function j { 
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark { 
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark { 
    rm -i "$MARKPATH/$1"
}
function marks {
    ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\-/g' && echo
}


source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/2.7/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/usr/local/go/bin:/usr/texbin:/Users/McQueen/Dropbox/Hacks/ec2-api-tools-1.6.7.4/bin:/usr/local/share/play-2.1.2:/usr/local/go/bin
