# Set up new players
execute as @a unless score @s online matches 1 run function ult:tick/action/welcome

# Clean up entities
kill @e[type=item]
clear @a[gamemode=!creative] cactus

# Test for button presses
execute positioned 45 31 -3 if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] as @p run function ult:start/pressed
execute if block 43 31 -9 polished_blackstone_button[powered=true] run function ult:settings/mode

# Map settings handler
execute if score .map_menu flag = #map menu unless data block 43 31 -12 Items[{id: "minecraft:gold_block"}] run function ult:settings/map/featured
execute if score .map_menu flag = #map menu unless data block 43 31 -12 Items[{id: "minecraft:crafting_table"}] run function ult:settings/map/default
execute if score .map_menu flag = #map menu run function ult:settings/map/main
execute if score .map_menu flag = #map.default menu unless data block 43 31 -12 Items[{id: "minecraft:structure_void"}] run function ult:settings/map/main
execute if score .map_menu flag = #map.featured menu unless data block 43 31 -12 Items[{id: "minecraft:structure_void"}] run function ult:settings/map/main
execute if score .map_menu flag = #map.default menu run function ult:settings/map/default
execute if score .map_menu flag = #map.featured menu run function ult:settings/map/featured

execute as @a[tag=player] if score @s menu = menu.vote const run function ult:settings/ender_chest/vote

execute as @a if score @s menu = menu.vote const at @s unless entity @e[tag=vote_station,distance=..2] run function ult:settings/ender_chest/main

# Use chestplate to show opt status
clear @a[gamemode=!creative] leather_chestplate
item replace entity @a[tag=spectator] armor.chest with leather_chestplate{display: {color: 3881787}}
item replace entity @a[tag=player,scores={ready=0}] armor.chest with leather_chestplate{display: {color: 1557856}}
item replace entity @a[tag=player,scores={ready=1}] armor.chest with leather_chestplate{display: {color: 2040492}}
