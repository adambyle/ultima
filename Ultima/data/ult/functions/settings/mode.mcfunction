# Increment game mode
    scoreboard players add .game_mode flag 1
    execute if score .game_mode flag > flag.game_mode.brawl const run scoreboard players operation .game_mode flag = flag.game_mode.duels const

# Set display
    function ult:data/mode/display

# Allow quick button pressing
    setblock 43 31 -9 polished_blackstone_button[face=floor, facing=west]
