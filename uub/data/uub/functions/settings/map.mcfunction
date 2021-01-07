clear @a player_head
clear @a dark_oak_planks
clear @a spruce_sapling
clear @a stone_bricks
clear @a blackstone
clear @a diamond_block
clear @a dead_bush
clear @a emerald
clear @a bell
clear @a blue_ice
clear @a crimson_fungus
clear @a nether_star
clear @a end_stone

clear @a grass_block
clear @a snow_block
clear @a trident

scoreboard players set selected n -1

execute unless data block 43 31 -12 {Items:[{id:"minecraft:player_head"}]} run scoreboard players set selected n 0
execute unless data block 43 31 -12 {Items:[{id:"minecraft:dark_oak_planks"}]} run scoreboard players set selected n 1
execute unless data block 43 31 -12 {Items:[{id:"minecraft:spruce_sapling"}]} run scoreboard players set selected n 2
execute unless data block 43 31 -12 {Items:[{id:"minecraft:stone_bricks"}]} run scoreboard players set selected n 3
execute unless data block 43 31 -12 {Items:[{id:"minecraft:blackstone"}]} run scoreboard players set selected n 4
execute unless data block 43 31 -12 {Items:[{id:"minecraft:diamond_block"}]} run scoreboard players set selected n 5
execute unless data block 43 31 -12 {Items:[{id:"minecraft:dead_bush"}]} run scoreboard players set selected n -1
execute unless data block 43 31 -12 {Items:[{id:"minecraft:emerald"}]} run scoreboard players set selected n -1
execute unless data block 43 31 -12 {Items:[{id:"minecraft:bell"}]} run scoreboard players set selected n -1
execute unless data block 43 31 -12 {Items:[{id:"minecraft:blue_ice"}]} run scoreboard players set selected n -1
execute unless data block 43 31 -12 {Items:[{id:"minecraft:crimson_fungus"}]} run scoreboard players set selected n -1
execute unless data block 43 31 -12 {Items:[{id:"minecraft:nether_star"}]} run scoreboard players set selected n -1
execute unless data block 43 31 -12 {Items:[{id:"minecraft:end_stone"}]} run scoreboard players set selected n -1

execute if score selected n = map q run scoreboard players set selected n -1
execute if score selected n matches 0.. run scoreboard players operation map q = selected n

replaceitem block 43 31 -12 container.13 minecraft:player_head{SkullOwner:{Id:[I;-1199508408,588661428,-1958851602,905805244],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTBkMmEzY2U0OTk5ZmVkMzMwZDNhNWQwYTllMjE4ZTM3ZjRmNTc3MTk4MDg2NTczOTZkODMyMjM5ZTEyIn19fQ=="}]}},display:{Name:'{"text": "Cycle Maps","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Click to select.","color": "aqua"}']}} 1
replaceitem block 43 31 -12 container.5 minecraft:dark_oak_planks{display:{Name:'{"text": "Manor","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Click to select.","color": "aqua"}']}} 1
replaceitem block 43 31 -12 container.6 minecraft:spruce_sapling{display:{Name:'{"text": "Woodlands","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Click to select.","color": "aqua"}']}} 1
replaceitem block 43 31 -12 container.7 minecraft:stone_bricks{display:{Name:'{"text": "Dungeon","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Click to select.","color": "aqua"}']}} 1
replaceitem block 43 31 -12 container.8 minecraft:blackstone{display:{Name:'{"text": "Abyss","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Click to select.","color": "aqua"}']}} 1
replaceitem block 43 31 -12 container.14 diamond_block{display:{Name:'{"text": "Citadel","color": "white","bold": true,"italic": false}',Lore:['{"text": "Click to select.","color": "aqua"}']}}
replaceitem block 43 31 -12 container.15 dead_bush{display:{Name:'{"text": "Wasteland","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem block 43 31 -12 container.16 emerald{display:{Name:'{"text": "Town Square","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem block 43 31 -12 container.17 bell{display:{Name:'{"text": "Last Stand","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem block 43 31 -12 container.23 blue_ice{display:{Name:'{"text": "Permafrost","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem block 43 31 -12 container.24 crimson_fungus{display:{Name:'{"text": "Shroom","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem block 43 31 -12 container.25 nether_star{display:{Name:'{"text": "Hellscape","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem block 43 31 -12 container.26 end_stone{display:{Name:'{"text": "Frontier","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}

replaceitem block 43 31 -12 container.0 snow_block{display:{Name:'{"text": "Unnamed Map","color": "white","bold": true,"italic": false}',Lore:['{"text": "Featuring Tucker Lawson!","color": "dark_purple"}','{"text": "Map coming soon.","color": "gray"}']}}
replaceitem block 43 31 -12 container.1 trident{display:{Name:'{"text": "Unnamed Map","color": "white","bold": true,"italic": false}',Lore:['{"text": "Featuring Brayden Smith!","color": "dark_purple"}','{"text": "Map coming soon.","color": "gray"}']},HideFlags:63}
replaceitem block 43 31 -12 container.2 grass_block{display:{Name:'{"text": "Dracula\'s Castle","color": "white","bold": true,"italic": false}',Lore:['{"text": "Featuring Reed Aldridge!","color": "dark_purple"}','{"text": "Map coming soon.","color": "gray"}']},HideFlags:63}
replaceitem block 43 31 -12 container.3 grass_block{display:{Name:'{"text": "Unnamed Map","color": "white","bold": true,"italic": false}',Lore:['{"text": "Featuring Jonathan Deiss!","color": "dark_purple"}','{"text": "Map coming soon.","color": "gray"}']},HideFlags:63}

execute if score map q matches 0 run data modify block 43 31 -12 Items[{Slot:13b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score map q matches 1 run data modify block 43 31 -12 Items[{Slot:5b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score map q matches 2 run data modify block 43 31 -12 Items[{Slot:6b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score map q matches 3 run data modify block 43 31 -12 Items[{Slot:7b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score map q matches 4 run data modify block 43 31 -12 Items[{Slot:8b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score map q matches 5 run data modify block 43 31 -12 Items[{Slot:14b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score map q matches 6 run data modify block 43 31 -12 Items[{Slot:15b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score map q matches 7 run data modify block 43 31 -12 Items[{Slot:16b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score map q matches 8 run data modify block 43 31 -12 Items[{Slot:17b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score map q matches 9 run data modify block 43 31 -12 Items[{Slot:23b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score map q matches 10 run data modify block 43 31 -12 Items[{Slot:24b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score map q matches 11 run data modify block 43 31 -12 Items[{Slot:25b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score map q matches 12 run data modify block 43 31 -12 Items[{Slot:26b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'

execute if score map q matches 0 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"[Cycle Maps]","color":"gold"}'
execute if score map q matches 1 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Manor","color":"dark_purple"}'
execute if score map q matches 2 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Woodlands","color":"dark_purple"}'
execute if score map q matches 3 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Dungeon","color":"dark_purple"}'
execute if score map q matches 4 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Abyss","color":"dark_purple"}'
execute if score map q matches 5 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Citadel","color":"dark_purple"}'

execute if score selected n matches 0.. if score map q matches 0 run tellraw @a [{"text": "Selected map: ","color": "gray"},{"text":"[Cycle Maps]","color":"gold"}]
execute if score selected n matches 0.. if score map q matches 1 run tellraw @a [{"text": "Selected map: ","color": "gray"},{"text":"Manor","color":"dark_purple"}]
execute if score selected n matches 0.. if score map q matches 2 run tellraw @a [{"text": "Selected map: ","color": "gray"},{"text":"Woodlands","color":"dark_purple"}]
execute if score selected n matches 0.. if score map q matches 3 run tellraw @a [{"text": "Selected map: ","color": "gray"},{"text":"Dungeon","color":"dark_purple"}]
execute if score selected n matches 0.. if score map q matches 4 run tellraw @a [{"text": "Selected map: ","color": "gray"},{"text":"Abyss","color":"dark_purple"}]
execute if score selected n matches 0.. if score map q matches 5 run tellraw @a [{"text": "Selected map: ","color": "gray"},{"text":"Citadel","color":"dark_purple"}]
execute if score selected n matches 0.. as @a at @s run playsound entity.item_frame.break master @s

execute if score map q matches 0 run data modify entity @e[tag=msw,limit=1] CustomName set value '""'
execute if score map q matches 1..12 run data modify entity @e[tag=msw,limit=1] CustomName set value '{"text":"by Adam Byle","color":"light_purple"}'
execute if score map q matches 13 run data modify entity @e[tag=msw,limit=1] CustomName set value '{"text":"by Tucker Lawson","color":"light_purple"}'
execute if score map q matches 14 run data modify entity @e[tag=msw,limit=1] CustomName set value '{"text":"by Brayden Smith","color":"light_purple"}'

execute if score map q matches 0 run scoreboard players set randmap q 1
execute if score map q matches 1.. run scoreboard players set randmap q 0
