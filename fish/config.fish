if status is-interactive
    # Starship custom prompt
    starship init fish | source

    # Detect terminal type
    switch "$TERM"
        case "foot"
            # Foot → only Caelestia art
            cat ~/.local/state/caelestia/sequences.txt 2> /dev/null

            function mark_prompt_start --on-event fish_prompt
                echo -en "\e]133;A\e\\"
            end

        case "alacritty"
            # Alacritty → only Pokémon
            # pokeget random

        case "*"
            # Any other terminal → do nothing special
    end
end
