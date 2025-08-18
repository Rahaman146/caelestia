function fish_greeting
    switch "$TERM"
        case foot
            echo -ne '\x1b[38;5;16m' # Set colour to primary

            #echo '     ______           __          __  _       '
            #echo '    / ____/___ ____  / /__  _____/ /_(_)___ _ '
            #echo '   / /   / __ `/ _ \/ / _ \/ ___/ __/ / __ `/ '
            #echo '  / /___/ /_/ /  __/ /  __(__  ) /_/ / /_/ /  '
            #echo '  \____/\__,_/\___/_/\___/____/\__/_/\__,_/   '

            #echo  '       ____        __                               '
            #echo  '      / __ \____ _/ /_  ____ _____ ___  ____ _____  '
            #echo  '     / /_/ / __ `/ __ \/ __ `/ __ `__ \/ __ `/ __ \ '
            #echo  '    / _, _/ /_/ / / / / /_/ / / / / / / /_/ / / / / '
            #echo  '   /_/ |_|\__,_/_/ /_/\__,_/_/ /_/ /_/\__,_/_/ /_/  '	

            echo '	 _    ____________  ____________   '
            echo '	| |  / / ____/ __ \/ ____/  _/ /   '
            echo '	| | / / __/ / /_/ / / __ / // /    '
            echo '	| |/ / /___/ _, _/ /_/ // // /___  '
            echo '	|___/_____/_/ |_|\____/___/_____/  '

            set_color normal
            fastfetch --key-padding-left 5

            #cat ~/.local/state/caelestia/sequences.txt 2> /dev/null
        case alacritty
            pokemon-colorscripts --random
            #pokeget random | less -S
        case "*"
            # Other terms → nothing special
    end
end
