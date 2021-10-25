HOST_NAME=elias

red='\e[0;31m'      # Red
purple='\e[1;35m'   # Bold Purple
green='\e[0;32m'    # Green
reset='\e[0m'       # Text Reset

emojis=("🍣" "🥚" "🥐" "🍔" "🍕" "🍤" "🍟" "🥝" "🍍" "🍉" "🍺" "🥥" "🥬" "🥯" "🍞" "🧋" "🥗" "🍖")

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\n$red$HOST_NAME: $purple\w$green\$(parse_git_branch)$reset\n$EMOJI > "
