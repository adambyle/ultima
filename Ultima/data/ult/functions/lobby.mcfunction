# Go to the lobby
    #alias vector lobby 45 30 -12
    tp @s 45 30 -12 0 0
    gamemode adventure
    clear
    effect clear @s night_vision
    team join lobby
    function ult:settings/player/main
    effect give @s instant_health 1 2 true
