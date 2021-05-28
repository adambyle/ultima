# If vote mode, set the map
execute if score .map_mode flag = flag.map_mode.vote const run function ult:data/map/choose_map
execute if score .map_mode flag = flag.map_mode.random const if score .map flag matches 0 run function ult:data/map/choose_map

# Determine players, setup game
scoreboard players set @a[tag=player] score 0
execute if score .game_mode flag = flag.game_mode.duels const run function ult:start/mode/duels
execute if score .game_mode flag matches 1..2 run function ult:start/mode/multi

function ult:start/lighting

# Count the total players
scoreboard players set .total_players control 0
execute as @a[tag=player] run scoreboard players add .total_players control 1

# Announce the map (in certain cases)
title @a reset
title @a times 0 16 4
title @a subtitle ["By ", {"storage": "ult:temp", "nbt": "Author"}]

# Timeout for actual game start
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 0.75
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 1
schedule function ult:start/start 1s

clear @a

scoreboard players operation .game_state flag = flag.game_state.transition const

scoreboard players set @a afk 0
tag @a remove afk

setblock 43 31 -9 air
data modify block 43 31 -12 Lock set value "Locked"
