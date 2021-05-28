execute unless data block 43 31 -12 Items[{id: "minecraft:jukebox"}] run scoreboard players operation .map_mode flag = flag.map_mode.vote const
execute unless data block 43 31 -12 Items[{id: "minecraft:player_head"}] run scoreboard players operation .map_mode flag = flag.map_mode.random const
execute unless data block 43 31 -12 Items[{id: "minecraft:magenta_glazed_terracotta"}] run scoreboard players operation .map_mode flag = flag.map_mode.cycle const

scoreboard players set .temp map 0
execute if score .map_mode flag matches 0 run scoreboard players operation .temp map = .map flag
execute unless score .map_mode flag matches 0 run scoreboard players operation .temp map -= .map_mode flag

execute store success score .temp _var unless score #current map = .temp map
execute if score .temp _var matches 1 run function ult:settings/map/main/changed_map
