# Validate the decision to opt in
    scoreboard players set .temp var 0
    # OK if game not in progress
    execute unless score .game_state flag = flag.game_state.active const run scoreboard players set .temp var 1
    # OK if brawl mode
    execute if score .game_mode flag = flag.game_mode.brawl const run scoreboard players set .temp var 1
    # OK if duels mode
    execute if score .game_mode flag = flag.game_mode.duels const run scoreboard players set .temp var 1
    # Not OK if already played this round
    execute as @s[tag=participating] run scoreboard players set .temp var 0

# Warn if unsuccessful, let player in otherwise
    execute if score .temp var matches 0 run tellraw @s[tag=chat.s.e] [{"text": "S: ", "color": "dark_gray"}, {"text": "You can't opt into this game! Wait until afterwards.", "color": "#F3722C"}]
    execute if score .temp var matches 0 run tellraw @s[tag=chat.s.l] [{"text": "S: ", "color": "dark_gray"}, {"text": "Wait until next game.", "color": "#F3722C"}]
    execute if score .temp var matches 1 run function ult:settings/opt/in/success

# Clean up
    function ult:settings/player/main
    execute if entity @a[tag=ready] run function ult:start/ready/update_notice
