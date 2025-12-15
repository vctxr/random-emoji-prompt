# Custom random emoji prompt
HOST_NAME=elias

emojis=("🍣" "🥚" "🥐" "🍔" "🍕" "🍤" "🍟" "🥝" "🍍" "🍉" "🍺" "🍞" "🥗" "🍖")

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}
NEWLINE=$'\n'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PROMPT='$NEWLINE$fg[red]$HOST_NAME: $fg_bold[magenta]%c$fg[green]$(parse_git_branch)$reset_color$NEWLINE'
PROMPT+='$EMOJI ➜ '
