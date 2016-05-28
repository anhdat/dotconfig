# Unix
alias ll="ls -al"
alias ln="ln -v"
alias mkdir="mkdir -p"
alias e="$EDITOR"
alias v="$VISUAL"

# neovim ftw
alias vim=nvim
alias vi=nvim

# Bundler
alias b="bundle"

# Rails
alias migrate="rake db:migrate db:rollback && rake db:migrate"
alias s="rspec"

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'

# -------------------------------------------------------------------
# System aliases
# -------------------------------------------------------------------
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias tl=tldr
# reload keyboard layout pie
alias repie='rm -rf ~/Library/Keyboard\ Layouts/pie.bundle &&\
cp -r ~/Dropbox/Keyboard/pie.bundle ~/Library/Keyboard\ Layouts'
# terminal-notifier has bug with tmux
alias terminal-notifier='reattach-to-user-namespace terminal-notifier'

# -------------------------------------------------------------------
# Git aliases
# -------------------------------------------------------------------

alias ga='git add -A'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'

alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'


alias git_get_parrent_branch="git show-branch -a | ack '\*' | ack -v "$current_branch" | \
head -n1 | sed 's/.*\[\(.*\)\].*/\1/' | sed 's/[\^~].*//'"

alias gbparent=git_get_parrent_branch
alias gbcurrent='git rev-parse --abbrev-ref HEAD'
alias hubcompare='current_branch=`gbcurrent` && \
                  parent_branch=`gbparent` && \
                  hub compare $parent_branch...$current_branch'

# -------------------------------------------------------------------
# Triip aliases
# -------------------------------------------------------------------
alias wp='workon triip'
alias triipcd='cd ~/Developer/triip/Triip/'
alias herokushell='heroku run python manage.py shell -a '
alias triipdeploy='foreman run python triip-deploy.py '

alias triipbackupdata='heroku pg:backups capture -a triip-production'
alias triipdownloaddata='curl -o latest.dump `heroku pg:backups public-url -a triip-production`'
alias triiprestoredata='heroku pg:backups capture -a triip-production && \
curl -o latest.dump `heroku pg:backups public-url -a triip-production` && \
pg_restore --verbose --clean --no-acl --no-owner -j 2 -h localhost -U $USER -d triip latest.dump'
alias triipdbfromdump='pg_restore --verbose --clean --no-acl --no-owner -j 2 -h localhost -U $USER -d triip latest.dump'
alias triiprecreatedb="psql -c 'drop database triip;' && \
psql -c 'create database triip;'"
alias triipmigrate='foreman run python manage.py makemigrations && \
foreman run python manage.py migrate'

alias compare='open https://github.com/triip/Triip/compare/...$(current_branch)'
alias compareMaster='open https://github.com/triip/Triip/compare/master...$(current_branch)'
alias compareDev='open https://github.com/triip/Triip/compare/develop...$(current_branch)'
# -------------------------------------------------------------------
# Convenient places
# -------------------------------------------------------------------
alias dev='cd ~/Developer/'


# -------------------------------------------------------------------
# Terminal aliases
# -------------------------------------------------------------------
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias zshrc="vim ~/.zshrc && reload"
alias cask="brew cask"


# -------------------------------------------------------------------
# Xcode aliases
# -------------------------------------------------------------------
alias purgeallbuilds='rm -rf ~/Library/Developer/Xcode/DerivedData/*'

# -------------------------------------------------------------------
# Miscellaneous aliases
# -------------------------------------------------------------------
alias brewcd='cd "$(brew --repository)"/Library/Taps/caskroom/homebrew-cask'
alias explorer='ranger'
alias muxa='tmux attach -t'
alias mux='tmuxinator'

alias quitDropbox='quit Dropbox'
alias openDropbox='open ~/Applications/Dropbox.app'
alias readDjango='subl /Users/anhdat/.virtualenvs/triip/lib/python2.7/site-packages/django'
