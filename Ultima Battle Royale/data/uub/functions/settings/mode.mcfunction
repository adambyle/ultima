scoreboard players add #flag game_mode 1

execute if score #flag game_mode > #ultimate game_mode run scoreboard players set #flag game_mode 0

execute if score #flag game_mode = #duels game_mode run data modify entity @e[tag=text_display.mode_name,limit=1] CustomName set value '{"text": "Duels","color": "aqua","italic": true}'
execute if score #flag game_mode = #royale game_mode run data modify entity @e[tag=text_display.mode_name,limit=1] CustomName set value '{"text": "Royale","color": "aqua","italic": true}'
execute if score #flag game_mode = #brawl game_mode run data modify entity @e[tag=text_display.mode_name,limit=1] CustomName set value '{"text": "Brawl","color": "aqua","italic": true}'
execute if score #flag game_mode = #ultimate game_mode run data modify entity @e[tag=text_display.mode_name,limit=1] CustomName set value '{"text": "Ultimate","color": "aqua","italic": true}'
