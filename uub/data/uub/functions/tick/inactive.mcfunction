# If any players join, simply reload
execute as @a unless score @s game_id = #server game_id run function uub:load

# Clean up entities
kill @e[type=item]
clear @a cactus

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
