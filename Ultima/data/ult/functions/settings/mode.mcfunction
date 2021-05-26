scoreboard players add .game_mode flag 1

execute if score .game_mode flag > flag.game_mode.brawl const run scoreboard players set .game_mode flag 0

execute if score .game_mode flag = flag.game_mode.duels const run data modify entity @e[tag=text_display.mode_name,limit=1] CustomName set value '{"text": "Duels", "color": "aqua", "italic": true}'
execute if score .game_mode flag = flag.game_mode.royale const run data modify entity @e[tag=text_display.mode_name,limit=1] CustomName set value '{"text": "Royale", "color": "aqua", "italic": true}'
execute if score .game_mode flag = flag.game_mode.brawl const run data modify entity @e[tag=text_display.mode_name,limit=1] CustomName set value '{"text": "Brawl", "color": "aqua", "italic": true}'
execute if score .game_mode flag = #ultimate game_mode run data modify entity @e[tag=text_display.mode_name,limit=1] CustomName set value '{"text": "Ultimate", "color": "aqua", "italic": true}'

setblock 43 31 -9 polished_blackstone_button[face=floor, facing=west]
