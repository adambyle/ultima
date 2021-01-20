execute unless score #maps menu = #map.default menu run data remove block 43 31 -12 Items
scoreboard players operation #maps menu = #map.default menu

scoreboard players set #selected map 0

clear @a dark_oak_planks
clear @a spruce_leaves
clear @a stone_bricks
clear @a blackstone
clear @a gold_block
clear @a dead_bush
clear @a emerald
clear @a bell
clear @a packed_ice
clear @a crimson_fungus
clear @a nether_wart_block
clear @a end_stone
clear @a grass_block

execute if data block 43 31 -12 Items[0] run function uub:settings/map/default_test

replaceitem block 43 31 -12 container.5 dark_oak_planks{display:{Name:'{"text":"Manor","color":"white","italic":false,"bold":true}'}}
replaceitem block 43 31 -12 container.6 spruce_leaves{display:{Name:'{"text":"Woodlands","color":"white","italic":false,"bold":true}'}}
replaceitem block 43 31 -12 container.7 stone_bricks{display:{Name:'{"text":"Dungeon","color":"white","italic":false,"bold":true}'}}
replaceitem block 43 31 -12 container.8 blackstone{display:{Name:'{"text":"Abyss","color":"white","italic":false,"bold":true}'}}
replaceitem block 43 31 -12 container.14 gold_block{display:{Name:'{"text":"Citadel","color":"white","italic":false,"bold":true}'}}
replaceitem block 43 31 -12 container.15 dead_bush{display:{Name:'{"text":"Wasteland","color":"white","italic":false,"bold":true}',Lore:['{"text": "Coming soon...","color": "gray"}']}}
replaceitem block 43 31 -12 container.16 emerald{display:{Name:'{"text":"Town Square","color":"white","italic":false,"bold":true}',Lore:['{"text": "Coming soon...","color": "gray"}']}}
replaceitem block 43 31 -12 container.17 bell{display:{Name:'{"text":"Last Stand","color":"white","italic":false,"bold":true}',Lore:['{"text": "Coming soon...","color": "gray"}']}}
replaceitem block 43 31 -12 container.23 packed_ice{display:{Name:'{"text":"Permafrost","color":"white","italic":false,"bold":true}',Lore:['{"text": "Coming soon...","color": "gray"}']}}
replaceitem block 43 31 -12 container.24 crimson_fungus{display:{Name:'{"text":"Shroom","color":"white","italic":false,"bold":true}',Lore:['{"text": "Coming soon...","color": "gray"}']}}
replaceitem block 43 31 -12 container.25 nether_wart_block{display:{Name:'{"text":"Hellscape","color":"white","italic":false,"bold":true}',Lore:['{"text": "Coming soon...","color": "gray"}']}}
replaceitem block 43 31 -12 container.26 end_stone{display:{Name:'{"text":"Frontier","color":"white","italic":false,"bold":true}',Lore:['{"text": "Coming soon...","color": "gray"}']}}
replaceitem block 43 31 -12 container.11 structure_void{display:{Name:'{"text":"Back","color":"dark_red","italic":false,"bold":true}',Lore:['{"text":"Back to Map Selection...","color":"gray"}']}}

execute if score #flag map = #select map if score #server map matches 1 run data modify block 43 31 -12 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 2 run data modify block 43 31 -12 Items[{Slot:6b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 3 run data modify block 43 31 -12 Items[{Slot:7b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 4 run data modify block 43 31 -12 Items[{Slot:8b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 5 run data modify block 43 31 -12 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 6 run data modify block 43 31 -12 Items[{Slot:15b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 7 run data modify block 43 31 -12 Items[{Slot:16b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 8 run data modify block 43 31 -12 Items[{Slot:17b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 9 run data modify block 43 31 -12 Items[{Slot:23b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 10 run data modify block 43 31 -12 Items[{Slot:24b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 11 run data modify block 43 31 -12 Items[{Slot:25b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'
execute if score #flag map = #select map if score #server map matches 12 run data modify block 43 31 -12 Items[{Slot:26b}].tag.display.Lore append value '{"text":"Selected.","color":"green"}'

execute if score #selected map matches 1.. unless score #selected map = #server map if score #flag map = #select map run function uub:settings/map/default/select
execute if score #selected map matches 1.. unless score #flag map = #select map run function uub:settings/map/default/select
