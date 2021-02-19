# If vote mode, set the map
execute if score #flag map = #vote map run function uub:data/choose_map

function uub:data/set_map_data

# Determine players, setup game
execute if score #flag game_mode = #duels game_mode run function uub:start/mode/duels
execute if score #flag game_mode matches 1..2 run function uub:start/mode/multi

scoreboard players set @a[tag=player] score 0
scoreboard objectives setdisplay belowName health
scoreboard objectives setdisplay list health
scoreboard objectives setdisplay sidebar score

# Count the total players
scoreboard players set #server pn 0
execute as @a[tag=player] run scoreboard players add #server pn 1

# Announce the map (in certain cases)
title @a reset
title @a times 0 16 4
title @a subtitle ["By ",{"storage": "uub:map_data","nbt": "Author"}]
execute if score #flag map > #select map run title @a title {"storage": "uub:map_data","nbt": "Name","color": "green"}

# Timeout for actual game start
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 0.75
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 1
schedule function uub:start/start 1s

clear @a

scoreboard players set #flag game_state 2