execute unless score .map_menu flag = #map menu run data remove block 43 31 -12 Items
scoreboard players operation .map_menu flag = #map menu

clear @a[gamemode=!creative] gold_block
clear @a[gamemode=!creative] crafting_table
clear @a[gamemode=!creative] jukebox
clear @a[gamemode=!creative] player_head
clear @a[gamemode=!creative] magenta_glazed_terracotta
clear @a[gamemode=!creative] structure_void

scoreboard players set #current map 0
execute if score .map_mode flag matches 0 run scoreboard players operation #current map = .map flag
execute unless score .map_mode flag matches 0 run scoreboard players operation #current map -= .map_mode flag

execute if data block 43 31 -12 Items[0] run function ult:settings/map/main_test

replaceitem block 43 31 -12 container.3 gold_block{display: {Name:'{"text": "Featured maps", "color": "gold", "italic":false, "bold":true}',Lore: ['{"text": "Choose from player-made maps.", "color": "gray"}']}}
replaceitem block 43 31 -12 container.5 crafting_table{display: {Name:'{"text": "Default maps", "color": "dark_green", "italic":false, "bold":true}',Lore: ['{"text": "Choose from the default maps.", "color": "gray"}']}}

replaceitem block 43 31 -12 container.20 jukebox{display: {Name:'{"text": "Vote Map", "color": "dark_red", "italic":false, "bold":true}',Lore: ['{"text": "Vote between three different maps before the game.", "color": "gray"}']}}
replaceitem block 43 31 -12 container.22 player_head{display: {Name:'{"text": "Random Map", "color": "dark_aqua", "italic":false, "bold":true}',Lore: ['{"text": "Play a completely random map each game.", "color": "gray"}']},SkullOwner: {Id: [I;747841846,649743677,-1669641069,-1832488580],Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjg4ZmE5NzNlYTQ0NGNjODA4NzY4ZWE0OGJmMjY1N2FlOWE1NmMwYWY2MDI3NWU4NDQ2M2IxOTU2MjliY2UifX19"}]}}}
replaceitem block 43 31 -12 container.24 magenta_glazed_terracotta{display: {Name:'{"text": "Cycle Map", "color": "dark_purple", "italic":false, "bold":true}',Lore: ['{"text": "Go through every map in order.", "color": "gray"}']}}

execute if score .map_mode flag = flag.map_mode.vote const run data modify block 43 31 -12 Items[{id: "minecraft:jukebox"}].tag.display.Lore append value '{"text": "Selected.", "color": "green"}'
execute if score .map_mode flag = flag.map_mode.random const run data modify block 43 31 -12 Items[{id: "minecraft:player_head"}].tag.display.Lore append value '{"text": "Selected.", "color": "green"}'
execute if score .map_mode flag = flag.map_mode.cycle const run data modify block 43 31 -12 Items[{id: "minecraft:magenta_glazed_terracotta"}].tag.display.Lore append value '{"text": "Selected.", "color": "green"}'
