# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/john/.oh-my-zsh"
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="garyblessington"
# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux)

source $ZSH/oh-my-zsh.sh

# User configuration
export HISTSIZE=500000
export SAVEHIST=500000
# export MANPATH="/usr/local/man:$MANPATH"

# Cursor
#echo -e -n "\x1b[\x30 q" # changes to blinking block
#echo -e -n "\x1b[\x31 q" # changes to blinking block also
# echo -e -n "\x1b[\x32 q" # changes to steady block
#echo -e -n "\x1b[\x33 q" # changes to blinking underline
#echo -e -n "\x1b[\x34 q" # changes to steady underline
#echo -e -n "\x1b[\x35 q" # changes to blinking bar
#echo -e -n "\x1b[\x36 q" # changes to steady bar

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Find new executables in path
# zstyle ':completion:*' rehash true

#This causes pasted URLs to be automatically escaped, without needing to disable globbing.
# autoload -Uz bracketed-paste-magic
# zle -N bracketed-paste bracketed-paste-magic
# autoload -Uz url-quote-magic
# zle -N self-insert url-quote-magic

# --- Remembering recent directories ---
# --- NOTE: Doesn't work if you have more than one zsh session open, and attempt to cd, due to a conflict in both sessions writing to the same file. ---
# DIRSTACKFILE="$HOME/.cache/zsh/dirs"
#  if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
#    dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
#    [[ -d $dirstack[1] ]] && cd $dirstack[1]
#  fi
#  chpwd() {
#    print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
#  }

# DIRSTACKSIZE=50