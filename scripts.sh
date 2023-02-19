alias gccw='gcc -Wall -Wextra -Werror'
alias norm='norminette -R CheckForbiddenSourceHeader'
alias norminet_install='cd /tmp && git clone https://github.com/cacharle/c_formatter_42 && cd c_formatter_42 && pip3 install -e .'
alias norminet='python3 -m c_formatter_42'

# text editor
alias nvim="~/nvim-linux64/bin/nvim"
alias vim="~/nvim-linux64/bin/nvim"

# alias for github
alias gcm='f(){git commit -m "$@"; unset -f f}; f'
alias gaa='git add -A'
alias gp='git push'
alias gpl='git pull'

# alias for quality of life
alias c='clear'
alias src='source ~/.zshrc'

# getobjs() {
#   local src_dir="$1"
#   ls -R "${src_dir}" | grep .c | sed 's|'"${src_dir}"'|objs|g' | sed -z 's/\n/ /g' | sed 's/.c/.o/g' | clipcopy
# }

gets() {
	find $1 -type f | sed 's/^/.\//' | sed 's/$/\\/' | clipcopy
}

gets_objs() {
	find $1 -type f | sed 's/^/.\//' | sed 's/$/\\/' | sed 's/\.c/\.o/' | clipcopy
}
