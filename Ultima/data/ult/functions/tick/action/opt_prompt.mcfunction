scoreboard players set .temp _var 0
execute if score .game_mode flag = flag.game_mode.duels const run scoreboard players set .temp _var 1
execute if score .game_mode flag = flag.game_mode.brawl const run scoreboard players set .temp _var 1
execute as @s[tag=participating] run scoreboard players set .temp _var 0

tellraw @s[tag=player] [{"text": "If you need to leave the game for some reason, ", "color": "yellow"}, {"text": "click here to opt out.", "underlined":true, "clickEvent": {"action": "run_command", "value": "/trigger action set 1"}}]
execute if score .temp _var matches 1 run tellraw @s[tag=spectator,gamemode=spectator] [{"text": "If you want to join the fun, you'll need to use the ender chest to opt in. ", "color": "yellow"}, {"text": "Click here to go to the lobby.", "underlined":true, "clickEvent": {"action": "run_command", "value": "/trigger action set 2"}}]
execute if score .temp _var matches 0 run tellraw @s[tag=spectator,gamemode=spectator] [{"text": "If you need, you can ", "color": "yellow"}, {"text": "click here to go to the lobby.", "underlined":true, "clickEvent": {"action": "run_command", "value": "/trigger action set 2"}}]
