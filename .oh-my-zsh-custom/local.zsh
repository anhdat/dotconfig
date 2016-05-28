# virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source /Users/anhdat/.rvm/scripts/rvm

# swiftenv
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

# brew-file wrap
# to update brewfile when run brew install and uninstall
if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

# brew-file completions
for d in "/share/zsh-completions" "/share/zsh/zsh-site-functions";do
  brew_completion=$(brew --prefix 2>/dev/null)$d
  if [ $? -eq 0 ] && [ -d "$brew_completion" ];then
    fpath=($brew_completion $fpath)
  fi
done

autoload -U compinit && compinit

quit() {
    osascript -e "quit app \"$1\""
}

hello() {
    echo "hello $1"
}

# jump around with fasd
eval "$(fasd --init auto)"
