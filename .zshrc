# Prompt setup
autoload -Uz vcs_info
precmd() {vcs_info}
zstyle ':vcs_info:git:*' formats '%F{yellow}%B% (%b)'

setopt PROMPT_SUBST
PROMPT='%F{green}%B% %c ${vcs_info_msg_0_} %F{blue}%B% // %F{red}%B% ♥ %F{default}%B% '

# Aliases
alias l="ls -lah"
alias gitage="git for-each-ref --sort=authordate --format '%(color:blue)%(refname:short)  %(align:left,10)%(color:red)%(authordate:human)%(end) %(align:left,20)%(color:reset)%(authorname)%(end)' refs/heads"

function reload(){
  source ~/.zshrc
}