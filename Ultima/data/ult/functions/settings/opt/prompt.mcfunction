scoreboard players set .temp var 0
execute if score .game_mode flag = flag.game_mode.duels const run scoreboard players set .temp var 1
execute if score .game_mode flag = flag.game_mode.brawl const run scoreboard players set .temp var 1
execute as @s[tag=participating] run scoreboard players set .temp var 0

tellraw @s[tag=player, tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"text": "If you need to leave the game for some reason, ", "color": "#F9C74F"}, {"text": "click here to opt out.", "underlined": true, "color": "#F9C74F", "clickEvent": {"action": "run_command", "value": "/trigger action set 2"}}]
execute if score .temp var matches 1 run tellraw @s[gamemode=spectator, tag=spectator, tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"text": "If you want to join the fun, you'll need to use the ender chest to opt in. ", "color": "#F9C74F"}, {"text": "Click here to go to the lobby.", "underlined": true, "color": "#F9C74F", "clickEvent": {"action": "run_command", "value": "/trigger action set 3"}}]
execute if score .temp var matches 0 run tellraw @s[gamemode=spectator, tag=spectator, tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"text": "If you need, you can ", "color": "#F9C74F"}, {"text": "click here to go to the lobby.", "underlined": true, "color": "#F9C74F", "clickEvent": {"action": "run_command", "value": "/trigger action set 3"}}]

tellraw @s[tag=player, tag=!chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"text": "Opt out.", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger action set 2"}}]
tellraw @s[gamemode=spectator, tag=spectator, tag=!chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"text": "Lobby.", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger action set 3"}}]
