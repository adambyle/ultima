execute unless data block 43 31 -12 Items[{id: "minecraft:jukebox"}] run scoreboard players operation #flag map = #vote map
execute unless data block 43 31 -12 Items[{id: "minecraft:player_head"}] run scoreboard players operation #flag map = #random map
execute unless data block 43 31 -12 Items[{id: "minecraft:magenta_glazed_terracotta"}] run scoreboard players operation #flag map = #cycle map

scoreboard players set #temp map 0
execute if score #flag map matches 0 run scoreboard players operation #temp map = #server map
execute unless score #flag map matches 0 run scoreboard players operation #temp map -= #flag map

execute store success score #temp _var unless score #current map = #temp map
execute if score #temp _var matches 1 run function ult:settings/map/main/changed_map
