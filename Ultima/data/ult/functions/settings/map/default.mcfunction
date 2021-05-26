execute unless score #maps menu = #map.default menu run data remove block 43 31 -12 Items
scoreboard players operation #maps menu = #map.default menu

scoreboard players set #selected map 0

clear @a[gamemode=!creative] crafting_table

execute if data block 43 31 -12 Items[0] run function ult:settings/map/default_test

loot replace block 43 31 -12 container.5 loot ult:map_icon/manor
loot replace block 43 31 -12 container.6 loot ult:map_icon/woodlands
loot replace block 43 31 -12 container.7 loot ult:map_icon/dungeon
loot replace block 43 31 -12 container.8 loot ult:map_icon/abyss
loot replace block 43 31 -12 container.14 loot ult:map_icon/citadel
loot replace block 43 31 -12 container.15 loot ult:map_icon/wasteland
loot replace block 43 31 -12 container.16 loot ult:map_icon/town_square
loot replace block 43 31 -12 container.17 loot ult:map_icon/last_stand
loot replace block 43 31 -12 container.23 loot ult:map_icon/permafrost
loot replace block 43 31 -12 container.24 loot ult:map_icon/shroom
loot replace block 43 31 -12 container.25 loot ult:map_icon/hellscape
loot replace block 43 31 -12 container.26 loot ult:map_icon/frontier
replaceitem block 43 31 -12 container.11 structure_void{display: {Name:'{"text": "Back", "color": "dark_red", "italic":false, "bold":true}',Lore: ['{"text": "Back to Map Selection...", "color": "gray"}']}}

execute if score #flag map = #select map if score #server map matches 1 run data modify block 43 31 -12 Items[{Slot:5b}].tag.display.Lore append value '{"text": "Selected.", "color": "green"}'
execute if score #flag map = #select map if score #server map matches 2 run data modify block 43 31 -12 Items[{Slot:6b}].tag.display.Lore append value '{"text": "Selected.", "color": "green"}'
execute if score #flag map = #select map if score #server map matches 3 run data modify block 43 31 -12 Items[{Slot:7b}].tag.display.Lore append value '{"text": "Selected.", "color": "green"}'
execute if score #flag map = #select map if score #server map matches 4 run data modify block 43 31 -12 Items[{Slot:8b}].tag.display.Lore append value '{"text": "Selected.", "color": "green"}'
execute if score #flag map = #select map if score #server map matches 5 run data modify block 43 31 -12 Items[{Slot:14b}].tag.display.Lore append value '{"text": "Selected.", "color": "green"}'
execute if score #flag map = #select map if score #server map matches 6 run data modify block 43 31 -12 Items[{Slot:15b}].tag.display.Lore append value '{"text": "Selected.", "color": "green"}'
execute if score #flag map = #select map if score #server map matches 7 run data modify block 43 31 -12 Items[{Slot:16b}].tag.display.Lore append value '{"text": "Selected.", "color": "green"}'
execute if score #flag map = #select map if score #server map matches 8 run data modify block 43 31 -12 Items[{Slot:17b}].tag.display.Lore append value '{"text": "Selected.", "color": "green"}'
execute if score #flag map = #select map if score #server map matches 9 run data modify block 43 31 -12 Items[{Slot:23b}].tag.display.Lore append value '{"text": "Selected.", "color": "green"}'
execute if score #flag map = #select map if score #server map matches 10 run data modify block 43 31 -12 Items[{Slot:24b}].tag.display.Lore append value '{"text": "Selected.", "color": "green"}'
execute if score #flag map = #select map if score #server map matches 11 run data modify block 43 31 -12 Items[{Slot:25b}].tag.display.Lore append value '{"text": "Selected.", "color": "green"}'
execute if score #flag map = #select map if score #server map matches 12 run data modify block 43 31 -12 Items[{Slot:26b}].tag.display.Lore append value '{"text": "Selected.", "color": "green"}'

execute unless score #selected map matches 0 run clear @a[gamemode=!creative] #ult:map_icons
execute if score #selected map matches 1.. unless score #selected map = #server map if score #flag map = #select map run function ult:settings/map/select
execute if score #selected map matches 1.. unless score #flag map = #select map run function ult:settings/map/select

