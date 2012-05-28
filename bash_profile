alias g='git'
complete -o default -o nospace -F _git g

export PS1="\[\033[38m\]\u@\h\[\033[01;34m\] \w \[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[00m\]$\[\033[00m\] "
