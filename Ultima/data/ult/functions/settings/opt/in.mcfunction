# Validate the decision to opt in
    scoreboard players set .temp _var 0
    # OK if game not in progress
    execute if score .game_state flag = flag.game_state.inactive const run scoreboard players set .temp _var 1
    # OK if brawl mode
    execute if score .game_mode flag = flag.game_mode.brawl const run scoreboard players set .temp _var 1
    # OK if duels mode
    execute if score .game_mode flag = flag.game_mode.duels const run scoreboard players set .temp _var 1
    # Not OK if already played this round
    execute as @s[tag=participating] run scoreboard players set .temp _var 0

# Warn if unsuccessful, let player in otherwise
    execute if score .temp _var matches 0 run tellraw @s [{"text": "Opt >> ", "color": "dark_red", "bold": true}, {"text": "You can't opt into this game! Wait until afterwards.", "bold": false}]
    execute if score .temp _var matches 1 run function ult:settings/opt/in/success

# Clean up
    function ult:settings/ender_chest/main
