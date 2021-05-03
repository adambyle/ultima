# If vote mode, set the map
execute if score #flag map = #vote map run function ult:data/choose_map
execute if score #flag map = #random map if score #server map matches 0 run function ult:data/choose_map
execute if score #flag game_mode = #ultimate game_mode run scoreboard players set #server map 0

function ult:data/set_map_data

# Determine players, setup game
scoreboard players set @a[tag=player] score 0
execute if score #flag game_mode = #duels game_mode run function ult:start/mode/duels
execute if score #flag game_mode = #ultimate game_mode run function ult:start/mode/ultimate
execute if score #flag game_mode matches 1..2 run function ult:start/mode/multi

function ult:start/lighting

# Count the total players
scoreboard players set #server pn 0
execute as @a[tag=player] run scoreboard players add #server pn 1

# Announce the map (in certain cases)
title @a reset
title @a times 0 16 4
title @a subtitle ["By ",{"storage": "ult:temp","nbt": "Author"}]
execute if score #flag map > #select map unless score #flag game_mode = #ultimate game_mode run title @a[tag=!parkour] title {"storage": "ult:temp","nbt": "Map","color": "green"}
execute if score #flag map > #select map unless score #flag game_mode = #ultimate game_mode run title @a[tag=parkour, tag=player] title {"storage": "ult:temp","nbt": "Map","color": "green"}

# Timeout for actual game start
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 0.75
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 1
schedule function ult:start/start 1s

clear @a

scoreboard players set #flag game_state 2

scoreboard players set @a afk 0
tag @a remove afk

setblock 43 31 -9 air
data modify block 43 31 -12 Lock set value "Locked"
