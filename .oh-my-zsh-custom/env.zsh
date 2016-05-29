export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:.git/safe/../../bin:/usr/local/sbin"
export PATH="$PATH:/Users/anhdat/.bin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/Users/anhdat/.local/bin:$PATH"
# /Users/anhdat/.rvm/gems/ruby-2.3.0/bin

export EDITOR="subl -w"
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
# Tell grep to highlight matches
# export GREP_OPTIONS='—color=auto'
# Case-insensitive globbing (used in pathname expansion)
# shopt -s nocaseglob
# Autocorrect typos in path names when using `cd`
# shopt -s cdspell

# swiftenv
export SWIFTENV_ROOT="$HOME/.swiftenv"
export PATH="$SWIFTENV_ROOT/bin:$PATH"

# export WORKON_HOME=~/envs

# export GIT_AUTHOR_DATE="2016-05-10T17:15:54"
# export GIT_COMMITTER_DATE="2016-05-10T17:15:54"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Fix window name not display correctly on tmux using tmuxinator
export DISABLE_AUTO_TITLE=true

source $ZSH_CUSTOM/tokens.zsh