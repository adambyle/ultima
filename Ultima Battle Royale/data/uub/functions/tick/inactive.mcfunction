# If any players join, simply reload
execute as @a unless score @s game_id = #server game_id run function uub:reset

# Clean up entities
kill @e[type=item]
clear @a[gamemode=!creative] cactus

# Test for button presses
execute positioned 45 31 -3 if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] as @p run function uub:start/pressed
execute if block 43 31 -9 polished_blackstone_button[powered=true] run function uub:settings/mode

# Reset settings buttons
setblock 43 31 -9 polished_blackstone_button[powered=false,facing=west,face=floor]
data remove block 43 31 -12 Lock

# Map settings handler
execute if score #maps menu = #map menu unless data block 43 31 -12 Items[{id:"minecraft:gold_block"}] run function uub:settings/map/featured
execute if score #maps menu = #map menu unless data block 43 31 -12 Items[{id:"minecraft:grass_block"}] run function uub:settings/map/default
execute if score #maps menu = #map menu run function uub:settings/map/main
execute if score #maps menu = #map.default menu unless data block 43 31 -12 Items[{id:"minecraft:structure_void"}] run function uub:settings/map/main
execute if score #maps menu = #map.featured menu unless data block 43 31 -12 Items[{id:"minecraft:structure_void"}] run function uub:settings/map/main
execute if score #maps menu = #map.default menu run function uub:settings/map/default
execute if score #maps menu = #map.featured menu run function uub:settings/map/featured

execute as @a[tag=player] if score @s menu = #vote menu run function uub:settings/ender_chest/vote

execute as @a if score @s menu = #vote menu at @s unless entity @e[tag=vote_station,distance=..1] run function uub:settings/ender_chest/main

# Use chestplate to show opt status
clear @a[gamemode=!creative] leather_chestplate
replaceitem entity @a[tag=spectator] armor.chest leather_chestplate{display: {color: 3881787}}
replaceitem entity @a[tag=player,scores={ready=0}] armor.chest leather_chestplate{display: {color: 12132384}}
replaceitem entity @a[tag=player,scores={ready=1}] armor.chest leather_chestplate{display: {color: 2040492}}
